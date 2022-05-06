class DashboardHomeMenuMiddleModel {
  late List<Category>? _category;
  late List<Unstitched>? _unstitched;
  late List<BoutiqueCollection>? _boutiqueCollection;
  late String? _status;
  late String? _message;

  List<Category>? get category => _category;
  List<Unstitched>? get unstitched => _unstitched;
  List<BoutiqueCollection>? get boutiqueCollection => _boutiqueCollection;
  String? get status => _status;
  String? get message => _message;

  DashboardHomeMenuMiddleModel.fromJson(Map<String, dynamic> json) {
    if (json['category'] != null) {
      _category = <Category>[];
      json['category'].forEach(
        (v) {
          _category!.add(Category.fromJson(v));
        },
      );
    }
    if (json['Unstitched'] != null) {
      _unstitched = <Unstitched>[];
      json['Unstitched'].forEach(
        (v) {
          _unstitched!.add(Unstitched.fromJson(v));
        },
      );
    }
    if (json['boutique_collection'] != null) {
      _boutiqueCollection = <BoutiqueCollection>[];
      json['boutique_collection'].forEach(
        (v) {
          _boutiqueCollection!.add(BoutiqueCollection.fromJson(v));
        },
      );
    }
    _status = json['status'] ?? "-";
    _message = json['message'] ?? "-";
  }
}

class Category {
  late String? _categoryId;
  late String? _name;
  late String? _tintColor;
  late String? _image;
  late String? _sortOrder;

  String? get categoryId => _categoryId;
  String? get name => _name;
  String? get tintColor => _tintColor;
  String? get image => _image;
  String? get sortOrder => _sortOrder;

  Category.fromJson(Map<String, dynamic> json) {
    _categoryId = json['category_id'] ?? "-";
    _name = json['name'] ?? "-";
    _tintColor = json['tint_color'] ?? "-";
    _image = json['image'] ?? "-";
    _sortOrder = json['sort_order'] ?? "-";
  }
}

class Unstitched {
  late String? _rangeId;
  late String? _name;
  late String? _image;

  String? get rangeId => _rangeId;
  String? get name => _name;
  String? get image => _image;

  Unstitched.fromJson(Map<String, dynamic> json) {
    _rangeId = json['range_id'] ?? "-";
    _name = json['name'] ?? "-";
    _image = json['image'] ?? "-";
  }
}

class BoutiqueCollection {
  late String? _bannerImage;
  late String? _bannerType;
  late String? _bannerId;

  String? get bannerImage => _bannerImage;
  String? get bannerType => _bannerType;
  String? get bannerId => _bannerId;

  BoutiqueCollection.fromJson(Map<String, dynamic> json) {
    _bannerImage = json['banner_image'] ?? "-";
    _bannerType = json['banner_type'] ?? "-";
    _bannerId = json['banner_id'] ?? "-";
  }
}
