import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class InitialResponse {
  String responseUrl;
  String trackingId;
  InitialResponse({
    required this.responseUrl,
    required this.trackingId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'responseUrl': responseUrl,
      'trackingId': trackingId,
    };
  }

  factory InitialResponse.fromMap(Map<String, dynamic> map) {
    return InitialResponse(
      responseUrl: map['responseUrl'] as String,
      trackingId: map['trackingId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory InitialResponse.fromJson(String source) => InitialResponse.fromMap(json.decode(source) as Map<String, dynamic>);
}
