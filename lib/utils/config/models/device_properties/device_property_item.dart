class DevicePropertyItem {
  // Key
  String? key;

  String? dataType;
  // Value
  String? value;
  // Remark / Note
  String? comment;

  /// Whether iGPU property is used for display output
  bool display;

  DevicePropertyItem({
    required this.key,
    required this.dataType,
    required this.value,
    this.comment = '',
    this.display = true,
  });
  DevicePropertyItem copyWith(
      {String? key,
      String? dataType,
      String? value,
      String? comment,
      bool? display}) {
    return DevicePropertyItem(
      key: key ?? this.key,
      dataType: dataType ?? this.dataType,
      value: value ?? this.value,
      comment: comment ?? this.comment,
      display: display ?? this.display,
    );
  }

  factory DevicePropertyItem.fromJson(Map<String, dynamic> json) {
    return DevicePropertyItem(
      key: json['key'] ?? '',
      dataType: json['dataType'] ?? '',
      value: json['value'] ?? "",
      comment: json['comment'] ?? '',
      display: json['display'] ?? true,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'dataType': dataType,
      'value': value,
      'comment': comment,
      'display': display
    };
  }
}
