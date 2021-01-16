class RestaurantDetailModel {
  Address address;
  Geo geo;
  List<String> image;
  List<String> agreementDoc;
  List<String> keywords;
  List<String> famousFor;
  List<String> availableFoodCategory;
  List<String> dietPlans;
  bool userPickup;
  bool hasOwnDelivery;
  bool hasDeliveryCondition;
  String sId;
  String name;
  String region;
  String regionID;
  String email;
  String phoneNumber;
  String website;
  String description;
  String category;
  int deliveryCharge;
  int minimumSpentForFreeDelivery;
  int minimumSpentToCheckout;
  bool favorite = false;
  bool sponsored = true;

  RestaurantDetailModel(
      {this.address,
        this.geo,
        this.image,
        this.agreementDoc,
        this.keywords,
        this.famousFor,
        this.availableFoodCategory,
        this.dietPlans,
        this.userPickup,
        this.hasOwnDelivery,
        this.hasDeliveryCondition,
        this.sId,
        this.name,
        this.region,
        this.regionID,
        this.email,
        this.phoneNumber,
        this.website,
        this.description,
        this.category,
        this.deliveryCharge,
        this.minimumSpentForFreeDelivery,
        this.minimumSpentToCheckout});

  RestaurantDetailModel.fromJson(Map<String, dynamic> json) {
    address =
    json['address'] != null ? new Address.fromJson(json['address']) : null;
    geo = json['geo'] != null ? new Geo.fromJson(json['geo']) : null;
    image = json['image'].cast<String>();
    if (json['agreementDoc'] != null) {
      agreementDoc = new List<Null>();
      json['agreementDoc'].forEach((v) {
        agreementDoc.add(v);
      });
    }
    keywords = json['keywords'].cast<String>();
    famousFor = json['famousFor'].cast<String>();
    availableFoodCategory = json['availableFoodCategory'].cast<String>();
    dietPlans = json['dietPlans'].cast<String>();
    userPickup = json['userPickup'];
    hasOwnDelivery = json['hasOwnDelivery'];
    hasDeliveryCondition = json['hasDeliveryCondition'];
    sId = json['_id'];
    name = json['name'];
    region = json['region'];
    regionID = json['regionID'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    website = json['website'];
    description = json['description'];
    category = json['category'];
    deliveryCharge = json['deliveryCharge'];
    minimumSpentForFreeDelivery = json['minimumSpentForFreeDelivery'];
    minimumSpentToCheckout = json['minimumSpentToCheckout'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.address != null) {
      data['address'] = this.address.toJson();
    }
    if (this.geo != null) {
      data['geo'] = this.geo.toJson();
    }
    data['image'] = this.image;
    if (this.agreementDoc != null) {
      data['agreementDoc'] = this.agreementDoc.map((v) => v).toList();
    }
    data['keywords'] = this.keywords;
    data['famousFor'] = this.famousFor;
    data['availableFoodCategory'] = this.availableFoodCategory;
    data['dietPlans'] = this.dietPlans;
    data['userPickup'] = this.userPickup;
    data['hasOwnDelivery'] = this.hasOwnDelivery;
    data['hasDeliveryCondition'] = this.hasDeliveryCondition;
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['region'] = this.region;
    data['regionID'] = this.regionID;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    data['website'] = this.website;
    data['description'] = this.description;
    data['category'] = this.category;
    data['deliveryCharge'] = this.deliveryCharge;
    data['minimumSpentForFreeDelivery'] = this.minimumSpentForFreeDelivery;
    data['minimumSpentToCheckout'] = this.minimumSpentToCheckout;
    return data;
  }
}

class Address {
  String state;
  String city;
  String street;
  int zipCode;

  Address({this.state, this.city, this.street, this.zipCode});

  Address.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    city = json['city'];
    street = json['street'];
    zipCode = json['zipCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this.state;
    data['city'] = this.city;
    data['street'] = this.street;
    data['zipCode'] = this.zipCode;
    return data;
  }

  String get formatted => this.state + " " + this.city + " " + this.street;
}

class Geo {
  double latitude;
  double longitude;

  Geo({this.latitude, this.longitude});

  Geo.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
