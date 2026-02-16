/// Response models for the HTML Entities Encoder/Decoder API.

/// API Response wrapper.
class HtmlentitiesResponse {
  final String status;
  final dynamic error;
  final HtmlentitiesData? data;

  HtmlentitiesResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory HtmlentitiesResponse.fromJson(Map<String, dynamic> json) => HtmlentitiesResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HtmlentitiesData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the HTML Entities Encoder/Decoder API.

class HtmlentitiesData {
  String? action;
  String? original;
  String? encoded;
  List<String>? entitiesReplaced;
  int? count;

  HtmlentitiesData({
    this.action,
    this.original,
    this.encoded,
    this.entitiesReplaced,
    this.count,
  });

  factory HtmlentitiesData.fromJson(Map<String, dynamic> json) => HtmlentitiesData(
      action: json['action'],
      original: json['original'],
      encoded: json['encoded'],
      entitiesReplaced: (json['entities_replaced'] as List?)?.cast<String>(),
      count: json['count'],
    );
}

class HtmlentitiesRequest {
  String html;
  String? action;

  HtmlentitiesRequest({
    required this.html,
    this.action,
  });

  Map<String, dynamic> toJson() => {
      'html': html,
      if (action != null) 'action': action,
    };
}
