/// Response models for the HTML Entities Encoder/Decoder API.

/// API Response wrapper.
class HtmlentitiesResponse {
  final String status;
  final dynamic error;
  final HtmlentitiesData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  HtmlentitiesResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory HtmlentitiesResponse.fromJson(Map<String, dynamic> json) => HtmlentitiesResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HtmlentitiesData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the HTML Entities Encoder/Decoder API.

class HtmlentitiesData {
  String? action;
  String? original;
  String? encoded;
  List<String>? entitiesReplaced;
  num? count;

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
