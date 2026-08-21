//  parser.dart
//  Created by JeoJay127
//
import 'dart:convert';
import 'dart:io';
import 'package:xml/xml.dart';

enum PlistParseStatus { success, fileNotFound, parseError }

class PlistParseResult {
  final PlistParseStatus status;
  final Map<String, dynamic>? data;
  final String message;

  PlistParseResult({required this.status, this.data, this.message = ''});
}

class PlistParser {
  /// Load and parse plist file
  PlistParseResult loadPlist(
    String filePath, {
    Function(dynamic error)? onError,
  }) {
    try {
      final file = File(filePath);
      if (!file.existsSync()) {
        return PlistParseResult(
          status: PlistParseStatus.fileNotFound,
          data: {},
          message: "File not found: $filePath",
        );
      }
      final content = file.readAsStringSync();
      return _parsePlist(content);
    } catch (e) {
      onError?.call("Error loading $filePath file: $e");
      return PlistParseResult(
        status: PlistParseStatus.parseError,
        data: {},
        message: "Error loading $filePath file: $e",
      );
    }
  }

  /// Save plist file
  bool savePlist(
    String path,
    Map<String, dynamic> plist, {
    Function(dynamic error)? onError,
  }) {
    try {

      Directory(path).parent.createSync(recursive: true);
      final document = XmlDocument([
        XmlDeclaration([
          XmlAttribute(XmlName('version'), '1.0'),
          XmlAttribute(XmlName('encoding'), 'UTF-8'),
        ]),
        XmlDoctype(
          'plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" '
          '"http://www.apple.com/DTDs/PropertyList-1.0.dtd"',
        ),
        XmlElement(
          XmlName('plist'),
          [XmlAttribute(XmlName('version'), '1.0')],
          [_buildDictElement(plist, onError: onError)],
        ),
      ]);

      final xmlString = document.toXmlString(
        pretty: true,
        preserveWhitespace: (node) =>
            node.parent is XmlElement &&
            (node.parent as XmlElement).localName == 'string',
      );

      File(path).writeAsStringSync(xmlString);
      return true;
    } catch (e) {
      onError?.call("Failed to write file! Reason: $e");
      return false;
    }
  }

  /// Parse plist content
  PlistParseResult _parsePlist(
    String content, {
    Function(dynamic error)? onError,
  }) {
    try {
      final document = XmlDocument.parse(content);
      final dictElement = document.findAllElements('dict').firstOrNull;
      if (dictElement == null) {
        throw ArgumentError('Root dictionary element not found');
      }
      final data = _parseDict(dictElement);
      return PlistParseResult(status: PlistParseStatus.success, data: data);
    } catch (e) {
      onError?.call('Failed to parse plist! Reason: $e');
      return PlistParseResult(
        status: PlistParseStatus.parseError,
        data: {},
        message: "Error parsing file content: $e",
      );
    }
  }

  /// Parse array element
  List<dynamic> _parseArray(XmlElement arrayElement) {
    final List<dynamic> result = [];
    for (final element in arrayElement.children) {
      if (element is XmlElement) {
        result.add(_parseValue(element));
      }
    }
    return result;
  }

  /// Parse dictionary element
  Map<String, dynamic> _parseDict(
    XmlElement dictElement, {
    Function(dynamic error)? onError,
  }) {
    final Map<String, dynamic> result = {};
    final keys = dictElement.findElements('key').toList();
    final values = dictElement
        .findElements('key')
        .map((key) => key.nextElementSibling)
        .toList();

    for (int i = 0; i < keys.length; i++) {
      final key = keys[i].innerText;
      final valueElement = values[i];
      final value = _parseValue(valueElement!, onError: onError);
      result[key] = value;
    }

    return result;
  }

  /// Parse value element
  dynamic _parseValue(
    XmlElement valueElement, {
    Function(dynamic error)? onError,
  }) {
    switch (valueElement.name.local) {
      case 'dict':
        return _parseDict(valueElement);
      case 'array':
        return _parseArray(valueElement);
      case 'string':
        return valueElement.innerText;
      case 'integer':
        return int.parse(valueElement.innerText);
      case 'real':
        return double.parse(valueElement.innerText);
      case 'true':
        return true;
      case 'false':
        return false;
      case 'data':
        return base64.decode(valueElement.innerText);
      case 'date':
        return DateTime.parse(valueElement.innerText);
      default:
        onError?.call(
          'Unsupported plist value type: ${valueElement.runtimeType}',
        );
        throw ArgumentError(
          'Unsupported plist value type: ${valueElement.name.local}',
        );
    }
  }

  /// Recursively build dictionary element
  XmlElement _buildDictElement(Map dict, {Function(dynamic error)? onError}) {
    final dictElement = XmlElement(XmlName('dict'));
    dict.forEach((key, value) {
      final keyElement = XmlElement(XmlName('key'));
      keyElement.innerText = key;
      dictElement.children.add(keyElement);

      final valueElement = _buildValueElement(value, onError: onError);
      dictElement.children.add(valueElement);
    });
    return dictElement;
  }

  /// Build value element
  XmlElement _buildValueElement(
    dynamic value, {
    Function(dynamic error)? onError,
  }) {
    if (value is Map) {
      return _buildDictElement(value, onError: onError);
    } else if (value is List<int>) {
      final dataElement = XmlElement(XmlName('data'));
      dataElement.innerText = base64.encode(value);
      return dataElement;
    } else if (value is List<dynamic>) {
      final arrayElement = XmlElement(XmlName('array'));
      // ignore: avoid_function_literals_in_foreach_calls
      value.forEach((element) {
        final elementValue = _buildValueElement(element, onError: onError);
        arrayElement.children.add(elementValue);
      });
      return arrayElement;
    } else if (value is String) {
      final stringElement = XmlElement(XmlName('string'));
      stringElement.innerText = value;
      return stringElement;
    } else if (value is int) {
      final integerElement = XmlElement(XmlName('integer'));
      integerElement.innerText = value.toString();
      return integerElement;
    } else if (value is double) {
      final realElement = XmlElement(XmlName('real'));
      realElement.innerText = value.toString();
      return realElement;
    } else if (value is bool) {
      final boolElement = XmlElement(XmlName(value ? 'true' : 'false'));
      return boolElement;
    } else if (value is DateTime) {
      final dateElement = XmlElement(XmlName('date'));
      dateElement.innerText = value.toIso8601String();
      return dateElement;
    } else {
      onError?.call('Unsupported plist value type: ${value.runtimeType}');
      throw ArgumentError('Unsupported plist value type: ${value.runtimeType}');
    }
  }
}
