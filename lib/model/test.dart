/// restaurants : [{"id":"rqdv5juczeskfw1e867","name":"Melting Pot","description":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.","pictureId":"https://restaurant-api.dicoding.dev/images/medium/14","city":"Medan","rating":4.2,"menus":{"foods":[{"name":"Paket rosemary"}],"drinks":[{"name":"Es krim"}]}}]

class Test {
  Test({
      List<Restaurants>? restaurants,}){
    _restaurants = restaurants;
}

  Test.fromJson(dynamic json) {
    if (json['restaurants'] != null) {
      _restaurants = [];
      json['restaurants'].forEach((v) {
        _restaurants?.add(Restaurants.fromJson(v));
      });
    }
  }
  List<Restaurants>? _restaurants;

  List<Restaurants>? get restaurants => _restaurants;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_restaurants != null) {
      map['restaurants'] = _restaurants?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "rqdv5juczeskfw1e867"
/// name : "Melting Pot"
/// description : "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet."
/// pictureId : "https://restaurant-api.dicoding.dev/images/medium/14"
/// city : "Medan"
/// rating : 4.2
/// menus : {"foods":[{"name":"Paket rosemary"}],"drinks":[{"name":"Es krim"}]}

class Restaurants {
  Restaurants({
      String? id, 
      String? name, 
      String? description, 
      String? pictureId, 
      String? city, 
      double? rating, 
      Menus? menus,}){
    _id = id;
    _name = name;
    _description = description;
    _pictureId = pictureId;
    _city = city;
    _rating = rating;
    _menus = menus;
}

  Restaurants.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _pictureId = json['pictureId'];
    _city = json['city'];
    _rating = json['rating'];
    _menus = json['menus'] != null ? Menus.fromJson(json['menus']) : null;
  }
  String? _id;
  String? _name;
  String? _description;
  String? _pictureId;
  String? _city;
  double? _rating;
  Menus? _menus;

  String? get id => _id;
  String? get name => _name;
  String? get description => _description;
  String? get pictureId => _pictureId;
  String? get city => _city;
  double? get rating => _rating;
  Menus? get menus => _menus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['description'] = _description;
    map['pictureId'] = _pictureId;
    map['city'] = _city;
    map['rating'] = _rating;
    if (_menus != null) {
      map['menus'] = _menus?.toJson();
    }
    return map;
  }

}

/// foods : [{"name":"Paket rosemary"}]
/// drinks : [{"name":"Es krim"}]

class Menus {
  Menus({
      List<Foods>? foods, 
      List<Drinks>? drinks,}){
    _foods = foods;
    _drinks = drinks;
}

  Menus.fromJson(dynamic json) {
    if (json['foods'] != null) {
      _foods = [];
      json['foods'].forEach((v) {
        _foods?.add(Foods.fromJson(v));
      });
    }
    if (json['drinks'] != null) {
      _drinks = [];
      json['drinks'].forEach((v) {
        _drinks?.add(Drinks.fromJson(v));
      });
    }
  }
  List<Foods>? _foods;
  List<Drinks>? _drinks;

  List<Foods>? get foods => _foods;
  List<Drinks>? get drinks => _drinks;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_foods != null) {
      map['foods'] = _foods?.map((v) => v.toJson()).toList();
    }
    if (_drinks != null) {
      map['drinks'] = _drinks?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// name : "Es krim"

class Drinks {
  Drinks({
      String? name,}){
    _name = name;
}

  Drinks.fromJson(dynamic json) {
    _name = json['name'];
  }
  String? _name;

  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    return map;
  }

}

/// name : "Paket rosemary"

class Foods {
  Foods({
      String? name,}){
    _name = name;
}

  Foods.fromJson(dynamic json) {
    _name = json['name'];
  }
  String? _name;

  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    return map;
  }

}