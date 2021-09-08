import 'dart:convert';

class UrlModel {
  String raw;
  String full;
  String regular;
  String small;
  String thumb;
  UrlModel({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
  });

  Map<String, dynamic> toMap() {
    return {
      'raw': raw,
      'full': full,
      'regular': regular,
      'small': small,
      'thumb': thumb,
    };
  }

  factory UrlModel.fromMap(Map<String, dynamic> map) {
    return UrlModel(
      raw: map['raw'],
      full: map['full'],
      regular: map['regular'],
      small: map['small'],
      thumb: map['thumb'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UrlModel.fromJson(String source) => UrlModel.fromMap(json.decode(source));
}
