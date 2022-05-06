class DashboardHomeMenuTopModel {
  late List<MainStickyMenu>? _mainStickyMenu;
  late List<OfferCodeBanner>? _offerCodeBanner;
  late String? _status;
  late String? _message;

  List<MainStickyMenu>? get mainStickyMenu => _mainStickyMenu;
  List<OfferCodeBanner>? get offerCodeBanner => _offerCodeBanner;
  String? get status => _status;
  String? get message => _message;

  DashboardHomeMenuTopModel.fromJson(Map<String, dynamic> json) {
    if (json['main_sticky_menu'] != null) {
      _mainStickyMenu = <MainStickyMenu>[];
      json['main_sticky_menu'].forEach((v) {
        _mainStickyMenu!.add(MainStickyMenu.fromJson(v));
      });
    }
    if (json['offer_code_banner'] != null) {
      _offerCodeBanner = <OfferCodeBanner>[];
      json['offer_code_banner'].forEach(
        (v) {
          _offerCodeBanner!.add(OfferCodeBanner.fromJson(v));
        },
      );
    }
    _status = json['status'];
    _message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (_mainStickyMenu != null) {
      data['main_sticky_menu'] =
          _mainStickyMenu!.map((v) => v.toJson()).toList();
    }
    if (_offerCodeBanner != null) {
      data['offer_code_banner'] =
          _offerCodeBanner!.map((v) => v.toJson()).toList();
    }
    data['status'] = _status;
    data['message'] = _message;
    return data;
  }
}

class MainStickyMenu {
  String? _title;
  String? _image;
  String? _sortOrder;
  List<SliderImages>? _sliderImages;

  MainStickyMenu(
      {String? title,
      String? image,
      String? sortOrder,
      List<SliderImages>? sliderImages}) {
    if (title != null) {
      _title = title;
    }
    if (image != null) {
      _image = image;
    }
    if (sortOrder != null) {
      _sortOrder = sortOrder;
    }
    if (sliderImages != null) {
      _sliderImages = sliderImages;
    }
  }

  String? get title => _title;
  set title(String? title) => _title = title;
  String? get image => _image;
  set image(String? image) => _image = image;
  String? get sortOrder => _sortOrder;
  set sortOrder(String? sortOrder) => _sortOrder = sortOrder;
  List<SliderImages>? get sliderImages => _sliderImages;
  set sliderImages(List<SliderImages>? sliderImages) =>
      _sliderImages = sliderImages;

  MainStickyMenu.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _image = json['image'];
    _sortOrder = json['sort_order'];
    if (json['slider_images'] != null) {
      _sliderImages = <SliderImages>[];
      json['slider_images'].forEach((v) {
        _sliderImages!.add(SliderImages.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = _title;
    data['image'] = _image;
    data['sort_order'] = _sortOrder;
    if (_sliderImages != null) {
      data['slider_images'] = _sliderImages!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SliderImages {
  String? _title;
  String? _image;
  String? _sortOrder;
  String? _cta;

  SliderImages({String? title, String? image, String? sortOrder, String? cta}) {
    if (title != null) {
      _title = title;
    }
    if (image != null) {
      _image = image;
    }
    if (sortOrder != null) {
      _sortOrder = sortOrder;
    }
    if (cta != null) {
      _cta = cta;
    }
  }

  String? get title => _title;
  set title(String? title) => _title = title;
  String? get image => _image;
  set image(String? image) => _image = image;
  String? get sortOrder => _sortOrder;
  set sortOrder(String? sortOrder) => _sortOrder = sortOrder;
  String? get cta => _cta;
  set cta(String? cta) => _cta = cta;

  SliderImages.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _image = json['image'];
    _sortOrder = json['sort_order'];
    _cta = json['cta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = _title;
    data['image'] = _image;
    data['sort_order'] = _sortOrder;
    data['cta'] = _cta;
    return data;
  }
}

class OfferCodeBanner {
  String? _bannerImage;
  String? _type;

  OfferCodeBanner({String? bannerImage, String? type}) {
    if (bannerImage != null) {
      _bannerImage = bannerImage;
    }
    if (type != null) {
      _type = type;
    }
  }

  String? get bannerImage => _bannerImage;
  set bannerImage(String? bannerImage) => _bannerImage = bannerImage;
  String? get type => _type;
  set type(String? type) => _type = type;

  OfferCodeBanner.fromJson(Map<String, dynamic> json) {
    _bannerImage = json['banner_image'];
    _type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['banner_image'] = _bannerImage;
    data['type'] = _type;
    return data;
  }
}
