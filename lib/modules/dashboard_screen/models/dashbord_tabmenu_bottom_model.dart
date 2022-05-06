class DashboardHomeMenuBottomModel {
  late List<RangeOfPattern>? _rangeOfPattern;
  late List<DesignOccasion>? _designOccasion;
  late String? _status;
  late String? _message;

  List<RangeOfPattern>? get rangeOfPattern => _rangeOfPattern;
  List<DesignOccasion>? get designOccasion => _designOccasion;
  String? get status => _status;
  String? get message => _message;

  DashboardHomeMenuBottomModel.fromJson(Map<String, dynamic> json) {
    if (json['range_of_pattern'] != null) {
      _rangeOfPattern = <RangeOfPattern>[];
      json['range_of_pattern'].forEach(
        (v) {
          _rangeOfPattern!.add(RangeOfPattern.fromJson(v));
        },
      );
    }
    if (json['design_occasion'] != null) {
      _designOccasion = <DesignOccasion>[];
      json['design_occasion'].forEach(
        (v) {
          _designOccasion!.add(DesignOccasion.fromJson(v));
        },
      );
    }
    _status = json['status'] ?? "-";
    _message = json['message'] ?? "-";
  }
}

class RangeOfPattern {
  late String? _productId;
  late String? _image;
  late String? _name;

  String? get productId => _productId;
  String? get image => _image;
  String? get name => _name;

  RangeOfPattern.fromJson(Map<String, dynamic> json) {
    _productId = json['product_id'] ?? "-";
    _image = json['image'] ?? "-";
    _name = json['name'] ?? "-";
  }
}

class DesignOccasion {
  late String? _productId;
  late String? _name;
  late String? _image;
  late String? _subName;
  late String? _cta;

  String? get productId => _productId;
  String? get name => _name;
  String? get image => _image;
  String? get subName => _subName;
  String? get cta => _cta;

  DesignOccasion.fromJson(Map<String, dynamic> json) {
    _productId = json['product_id'] ?? "-";
    _name = json['name'] ?? "-";
    _image = json['image'] ?? "-";
    _subName = json['sub_name'] ?? "-";
    _cta = json['cta'] ?? "-";
  }
}
