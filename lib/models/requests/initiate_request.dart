// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class InitialRequest {
  String vuaId;
  String templateType;
  String trackingId;
  String redirectionUrl;

  InitialRequest(
      {required this.vuaId,
      required this.templateType,
      required this.trackingId,
      required this.redirectionUrl});



  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vuaId': vuaId,
      'templateType': templateType,
      'trackingId': trackingId,
      'redirectionUrl': redirectionUrl,
    };
  }

  factory InitialRequest.fromMap(Map<String, dynamic> map) {
    return InitialRequest(
      vuaId: map['vuaId'] as String,
      templateType: map['templateType'] as String,
      trackingId: map['trackingId'] as String,
      redirectionUrl: map['redirectionUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory InitialRequest.fromJson(String source) => InitialRequest.fromMap(json.decode(source) as Map<String, dynamic>);
}
