class RestaurantDetailFoodWithGroupModel {
  List<Data> data;

  RestaurantDetailFoodWithGroupModel({this.data});

  RestaurantDetailFoodWithGroupModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String name;
  String sId;
  List<Foods> foods;
  String extra;

  Data({this.name, this.sId, this.foods, this.extra});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    sId = json['_id'];
    if (json['foods'] != null) {
      foods = new List<Foods>();
      json['foods'].forEach((v) {
        foods.add(new Foods.fromJson(v));
      });
    }
    extra = json['extra'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['_id'] = this.sId;
    if (this.foods != null) {
      data['foods'] = this.foods.map((v) => v.toJson()).toList();
    }
    data['extra'] = this.extra;
    return data;
  }
}

class Foods {
  List<FoodSpeciality> foodSpeciality;
  List<String> images;
  List<String> keywords;
  int price;
  int discountPercent;
  int discountAmount;
  int minQuantity;
  String sId;
  String name;
  String activeImage;
  String subTitle;
  int calorie;
  String discountType;
  String foodGroup;
  String restaurant;

  Foods(
      {this.foodSpeciality,
        this.images,
        this.keywords,
        this.price,
        this.discountPercent,
        this.discountAmount,
        this.minQuantity,
        this.sId,
        this.name,
        this.activeImage,
        this.subTitle,
        this.calorie,
        this.discountType,
        this.foodGroup,
        this.restaurant});

  Foods.fromJson(Map<String, dynamic> json) {
    if (json['foodSpeciality'] != null) {
      foodSpeciality = new List<FoodSpeciality>();
      json['foodSpeciality'].forEach((v) {
        foodSpeciality.add(new FoodSpeciality.fromJson(v));
      });
    }
    images = json['images'].cast<String>();
    keywords = json['keywords'].cast<String>();
    price = json['price'];
    discountPercent = json['discountPercent'];
    discountAmount = json['discountAmount'];
    minQuantity = json['minQuantity'];
    sId = json['_id'];
    name = json['name'];
    activeImage = json['activeImage'];
    subTitle = json['subTitle'];
    calorie = json['calorie'];
    discountType = json['discountType'];
    foodGroup = json['foodGroup'];
    restaurant = json['restaurant'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.foodSpeciality != null) {
      data['foodSpeciality'] =
          this.foodSpeciality.map((v) => v.toJson()).toList();
    }
    data['images'] = this.images;
    data['keywords'] = this.keywords;
    data['price'] = this.price;
    data['discountPercent'] = this.discountPercent;
    data['discountAmount'] = this.discountAmount;
    data['minQuantity'] = this.minQuantity;
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['activeImage'] = this.activeImage;
    data['subTitle'] = this.subTitle;
    data['calorie'] = this.calorie;
    data['discountType'] = this.discountType;
    data['foodGroup'] = this.foodGroup;
    data['restaurant'] = this.restaurant;
    return data;
  }
}

class FoodSpeciality {
  String sId;
  String name;

  FoodSpeciality({this.sId, this.name});

  FoodSpeciality.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    return data;
  }
}


class Items {
  bool isCheckDefault;
  int quantity;
  String sId;
  int extraPrice;
  String name;

  Items(
      {this.isCheckDefault,
        this.quantity,
        this.sId,
        this.extraPrice,
        this.name});

  Items.fromJson(Map<String, dynamic> json) {
    isCheckDefault = json['isCheckDefault'];
    quantity = json['quantity'];
    sId = json['_id'];
    extraPrice = json['extraPrice'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isCheckDefault'] = this.isCheckDefault;
    data['quantity'] = this.quantity;
    data['_id'] = this.sId;
    data['extraPrice'] = this.extraPrice;
    data['name'] = this.name;
    return data;
  }
}
