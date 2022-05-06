class CategoryListModel {
  late List<Categories>? _categories;
  late String? _bannerImage;
  late String? _status;
  late String? _message;

  List<Categories>? get categories => _categories;
  String? get bannerImage => _bannerImage;
  String? get status => _status;
  String? get message => _message;

  CategoryListModel.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      _categories = <Categories>[];
      json['categories'].forEach(
        (v) {
          _categories!.add(Categories.fromJson(v));
        },
      );
    }
    _bannerImage = json['banner_image'] ?? "-";
    _status = json['status'] ?? "-";
    _message = json['message'] ?? "-";
  }
}

class Categories {
  late String? _categoryId;
  late String? _categoryName;
  late String? _parentId;
  late List<Child>? _child;

  String? get categoryId => _categoryId;
  String? get categoryName => _categoryName;
  String? get parentId => _parentId;
  List<Child>? get child => _child;

  Categories.fromJson(Map<String, dynamic> json) {
    _categoryId = json['category_id'] ?? "-";
    _categoryName = json['category_name'] ?? "-";
    _parentId = json['parent_id'] ?? "-";
    if (json['child'] != null) {
      _child = <Child>[];
      json['child'].forEach(
        (v) {
          _child!.add(Child.fromJson(v));
        },
      );
    }
  }
}

class Child {
  late String? _categoryId;
  late String? _categoryName;
  late String? _parentId;

  String? get categoryId => _categoryId;
  String? get categoryName => _categoryName;
  String? get parentId => _parentId;

  Child.fromJson(Map<String, dynamic> json) {
    _categoryId = json['category_id'] ?? "-";
    _categoryName = json['category_name'] ?? "-";
    _parentId = json['parent_id'] ?? "-";
  }
}
