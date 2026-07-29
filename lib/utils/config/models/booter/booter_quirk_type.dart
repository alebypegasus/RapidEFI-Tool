class BooterQuirkType {
  final String name;
  final String Function()? commentBuilder;
  final String? _commentFallback;
  final List<String> note;
  BooterQuirkType(
      {this.name = '', this.commentBuilder, String? comment, this.note = const []}) : _commentFallback = comment;

  String get comment => (commentBuilder != null ? commentBuilder!() : null) ?? _commentFallback ?? '';
}
