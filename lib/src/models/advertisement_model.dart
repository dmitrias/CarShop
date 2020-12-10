import 'dart:convert';

class Advertisement {
  Advertisement({
    this.adverts,
    this.total,
    this.page,
  });

  List<Advert> adverts;
  int total;
  Page page;

  factory Advertisement.fromJson(var str) => Advertisement.fromMap(str);

  String toJson() => json.encode(toMap());

  factory Advertisement.fromMap(Map<String, dynamic> json) => Advertisement(
    adverts: json["adverts"] == null ? null : List<Advert>.from(json["adverts"].map((x) => Advert.fromMap(x))),
    total: json["total"] == null ? null : json["total"],
    page: json["page"] == null ? null : Page.fromMap(json["page"]),
  );

  Map<String, dynamic> toMap() => {
    "adverts": adverts == null ? null : List<dynamic>.from(adverts.map((x) => x.toMap())),
    "total": total == null ? null : total,
    "page": page == null ? null : page.toMap(),
  };
}

class Advert {
  Advert({
    this.id,
    this.title,
    this.author,
    this.manufacturer,
    this.model,
    this.generation,
    this.specs,
    this.equipment,
    this.seller,
    this.price,
    this.dealTerms,
    this.location,
    this.images,
    this.upCounter,
    this.isPremium,
    this.inBookmarks,
    this.createdAt,
    this.updatedAt,
    this.lastUpAt,
    this.updatedForTiles,
    this.url,
    this.htmlUrl,
  });

  int id;
  String title;
  Author author;
  Generation manufacturer;
  Generation model;
  Generation generation;
  Specs specs;
  List<Equipment> equipment;
  Seller seller;
  Price price;
  DealTerms dealTerms;
  Location location;
  List<Photo> images;
  int upCounter;
  bool isPremium;
  bool inBookmarks;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime lastUpAt;
  DateTime updatedForTiles;
  String url;
  String htmlUrl;

  factory Advert.fromJson(String str) => Advert.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Advert.fromMap(Map<String, dynamic> json) => Advert(
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
    author: json["author"] == null ? null : Author.fromMap(json["author"]),
    manufacturer: json["manufacturer"] == null ? null : Generation.fromMap(json["manufacturer"]),
    model: json["model"] == null ? null : Generation.fromMap(json["model"]),
    generation: json["generation"] == null ? null : Generation.fromMap(json["generation"]),
    specs: json["specs"] == null ? null : Specs.fromMap(json["specs"]),
    equipment: json["equipment"] == null ? null : List<Equipment>.from(json["equipment"].map((x) => Equipment.fromMap(x))),
    seller: json["seller"] == null ? null : Seller.fromMap(json["seller"]),
    price: json["price"] == null ? null : Price.fromMap(json["price"]),
    dealTerms: json["deal_terms"] == null ? null : DealTerms.fromMap(json["deal_terms"]),
    location: json["location"] == null ? null : Location.fromMap(json["location"]),
    images: json["images"] == null ? null : List<Photo>.from(json["images"].map((x) => Photo.fromMap(x))),
    upCounter: json["up_counter"] == null ? null : json["up_counter"],
    isPremium: json["is_premium"] == null ? null : json["is_premium"],
    inBookmarks: json["in_bookmarks"] == null ? null : json["in_bookmarks"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    lastUpAt: json["last_up_at"] == null ? null : DateTime.parse(json["last_up_at"]),
    updatedForTiles: json["updated_for_tiles"] == null ? null : DateTime.parse(json["updated_for_tiles"]),
    url: json["url"] == null ? null : json["url"],
    htmlUrl: json["html_url"] == null ? null : json["html_url"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "title": title == null ? null : title,
    "author": author == null ? null : author.toMap(),
    "manufacturer": manufacturer == null ? null : manufacturer.toMap(),
    "model": model == null ? null : model.toMap(),
    "generation": generation == null ? null : generation.toMap(),
    "specs": specs == null ? null : specs.toMap(),
    "equipment": equipment == null ? null : List<dynamic>.from(equipment.map((x) => x.toMap())),
    "seller": seller == null ? null : seller.toMap(),
    "price": price == null ? null : price.toMap(),
    "deal_terms": dealTerms == null ? null : dealTerms.toMap(),
    "location": location == null ? null : location.toMap(),
    "images": images == null ? null : List<dynamic>.from(images.map((x) => x.toMap())),
    "up_counter": upCounter == null ? null : upCounter,
    "is_premium": isPremium == null ? null : isPremium,
    "in_bookmarks": inBookmarks == null ? null : inBookmarks,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "last_up_at": lastUpAt == null ? null : lastUpAt.toIso8601String(),
    "updated_for_tiles": updatedForTiles == null ? null : updatedForTiles.toIso8601String(),
    "url": url == null ? null : url,
    "html_url": htmlUrl == null ? null : htmlUrl,
  };
}

class Author {
  Author({
    this.id,
    this.name,
  });

  int id;
  String name;

  factory Author.fromJson(String str) => Author.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Author.fromMap(Map<String, dynamic> json) => Author(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
  };
}

class DealTerms {
  DealTerms({
    this.customsClearance,
    this.exchange,
    this.includeVat,
  });

  bool customsClearance;
  bool exchange;
  bool includeVat;

  factory DealTerms.fromJson(String str) => DealTerms.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DealTerms.fromMap(Map<String, dynamic> json) => DealTerms(
    customsClearance: json["customs_clearance"] == null ? null : json["customs_clearance"],
    exchange: json["exchange"] == null ? null : json["exchange"],
    includeVat: json["include_vat"] == null ? null : json["include_vat"],
  );

  Map<String, dynamic> toMap() => {
    "customs_clearance": customsClearance == null ? null : customsClearance,
    "exchange": exchange == null ? null : exchange,
    "include_vat": includeVat == null ? null : includeVat,
  };
}

class Equipment {
  Equipment({
    this.id,
    this.name,
    this.items,
  });

  String id;
  String name;
  List<Item> items;

  factory Equipment.fromJson(String str) => Equipment.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Equipment.fromMap(Map<String, dynamic> json) => Equipment(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    items: json["items"] == null ? null : List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "items": items == null ? null : List<dynamic>.from(items.map((x) => x.toMap())),
  };
}

class Item {
  Item({
    this.id,
    this.name,
    this.value,
  });

  String id;
  String name;
  dynamic value;

  factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Item.fromMap(Map<String, dynamic> json) => Item(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    value: json["value"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "value": value,
  };
}

class Generation {
  Generation({
    this.id,
    this.name,
    this.slug,
  });

  int id;
  String name;
  String slug;

  factory Generation.fromJson(String str) => Generation.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Generation.fromMap(Map<String, dynamic> json) => Generation(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    slug: json["slug"] == null ? null : json["slug"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "slug": slug == null ? null : slug,
  };
}

class Photo {
  Photo({
    this.original,
    this.the1900X1180,
    this.the800X800,
    this.the600X370,
    this.the380X240,
    this.the100X100,
    this.the80X80,
  });

  String original;
  String the1900X1180;
  String the800X800;
  String the600X370;
  String the380X240;
  String the100X100;
  String the80X80;

  factory Photo.fromJson(String str) => Photo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Photo.fromMap(Map<String, dynamic> json) => Photo(
    original: json["original"] == null ? null : json["original"],
    the1900X1180: json["1900x1180"] == null ? null : json["1900x1180"],
    the800X800: json["800x800"] == null ? null : json["800x800"],
    the600X370: json["600x370"] == null ? null : json["600x370"],
    the380X240: json["380x240"] == null ? null : json["380x240"],
    the100X100: json["100x100"] == null ? null : json["100x100"],
    the80X80: json["80x80"] == null ? null : json["80x80"],
  );

  Map<String, dynamic> toMap() => {
    "original": original == null ? null : original,
    "1900x1180": the1900X1180 == null ? null : the1900X1180,
    "800x800": the800X800 == null ? null : the800X800,
    "600x370": the600X370 == null ? null : the600X370,
    "380x240": the380X240 == null ? null : the380X240,
    "100x100": the100X100 == null ? null : the100X100,
    "80x80": the80X80 == null ? null : the80X80,
  };
}

class Location {
  Location({
    this.country,
    this.region,
    this.city,
  });

  Author country;
  Author region;
  Author city;

  factory Location.fromJson(String str) => Location.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Location.fromMap(Map<String, dynamic> json) => Location(
    country: json["country"] == null ? null : Author.fromMap(json["country"]),
    region: json["region"] == null ? null : Author.fromMap(json["region"]),
    city: json["city"] == null ? null : Author.fromMap(json["city"]),
  );

  Map<String, dynamic> toMap() => {
    "country": country == null ? null : country.toMap(),
    "region": region == null ? null : region.toMap(),
    "city": city == null ? null : city.toMap(),
  };
}

class Price {
  Price({
    this.amount,
    this.currency,
    this.converted,
  });

  String amount;
  String currency;
  Converted converted;

  factory Price.fromJson(String str) => Price.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Price.fromMap(Map<String, dynamic> json) => Price(
    amount: json["amount"] == null ? null : json["amount"],
    currency: json["currency"] == null ? null : json["currency"],
    converted: json["converted"] == null ? null : Converted.fromMap(json["converted"]),
  );

  Map<String, dynamic> toMap() => {
    "amount": amount == null ? null : amount,
    "currency": currency == null ? null : currency,
    "converted": converted == null ? null : converted.toMap(),
  };
}

class Converted {
  Converted({
    this.byn,
    this.usd,
    this.eur,
  });

  Byn byn;
  Byn usd;
  Byn eur;

  factory Converted.fromJson(String str) => Converted.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Converted.fromMap(Map<String, dynamic> json) => Converted(
    byn: json["BYN"] == null ? null : Byn.fromMap(json["BYN"]),
    usd: json["USD"] == null ? null : Byn.fromMap(json["USD"]),
    eur: json["EUR"] == null ? null : Byn.fromMap(json["EUR"]),
  );

  Map<String, dynamic> toMap() => {
    "BYN": byn == null ? null : byn.toMap(),
    "USD": usd == null ? null : usd.toMap(),
    "EUR": eur == null ? null : eur.toMap(),
  };
}

class Byn {
  Byn({
    this.amount,
    this.currency,
  });

  String amount;
  String currency;

  factory Byn.fromJson(String str) => Byn.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Byn.fromMap(Map<String, dynamic> json) => Byn(
    amount: json["amount"] == null ? null : json["amount"],
    currency: json["currency"] == null ? null : json["currency"],
  );

  Map<String, dynamic> toMap() => {
    "amount": amount == null ? null : amount,
    "currency": currency == null ? null : currency,
  };
}

class Seller {
  Seller({
    this.type,
    this.name,
    this.phones,
    this.call,
    this.chatPreferred,
  });

  String type;
  String name;
  List<String> phones;
  Call call;
  bool chatPreferred;

  factory Seller.fromJson(String str) => Seller.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Seller.fromMap(Map<String, dynamic> json) => Seller(
    type: json["type"] == null ? null : json["type"],
    name: json["name"] == null ? null : json["name"],
    phones: json["phones"] == null ? null : List<String>.from(json["phones"].map((x) => x)),
    call: json["call"] == null ? null : Call.fromMap(json["call"]),
    chatPreferred: json["chat_preferred"] == null ? null : json["chat_preferred"],
  );

  Map<String, dynamic> toMap() => {
    "type": type == null ? null : type,
    "name": name == null ? null : name,
    "phones": phones == null ? null : List<dynamic>.from(phones.map((x) => x)),
    "call": call == null ? null : call.toMap(),
    "chat_preferred": chatPreferred == null ? null : chatPreferred,
  };
}

class Call {
  Call({
    this.from,
    this.to,
  });

  String from;
  String to;

  factory Call.fromJson(String str) => Call.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Call.fromMap(Map<String, dynamic> json) => Call(
    from: json["from"] == null ? null : json["from"],
    to: json["to"] == null ? null : json["to"],
  );

  Map<String, dynamic> toMap() => {
    "from": from == null ? null : from,
    "to": to == null ? null : to,
  };
}

class Specs {
  Specs({
    this.modification,
    this.bodyType,
    this.year,
    this.state,
    this.color,
    this.engine,
    this.transmission,
    this.drivetrain,
    this.odometer,
    this.manualControl,
    this.warranty,
  });

  String modification;
  String bodyType;
  int year;
  String state;
  String color;
  Engine engine;
  String transmission;
  String drivetrain;
  Odometer odometer;
  bool manualControl;
  bool warranty;

  factory Specs.fromJson(String str) => Specs.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Specs.fromMap(Map<String, dynamic> json) => Specs(
    modification: json["modification"] == null ? null : json["modification"],
    bodyType: json["body_type"] == null ? null : json["body_type"],
    year: json["year"] == null ? null : json["year"],
    state: json["state"] == null ? null : json["state"],
    color: json["color"] == null ? null : json["color"],
    engine: json["engine"] == null ? null : Engine.fromMap(json["engine"]),
    transmission: json["transmission"] == null ? null : json["transmission"],
    drivetrain: json["drivetrain"] == null ? null : json["drivetrain"],
    odometer: json["odometer"] == null ? null : Odometer.fromMap(json["odometer"]),
    manualControl: json["manual_control"] == null ? null : json["manual_control"],
    warranty: json["warranty"] == null ? null : json["warranty"],
  );

  Map<String, dynamic> toMap() => {
    "modification": modification == null ? null : modification,
    "body_type": bodyType == null ? null : bodyType,
    "year": year == null ? null : year,
    "state": state == null ? null : state,
    "color": color == null ? null : color,
    "engine": engine == null ? null : engine.toMap(),
    "transmission": transmission == null ? null : transmission,
    "drivetrain": drivetrain == null ? null : drivetrain,
    "odometer": odometer == null ? null : odometer.toMap(),
    "manual_control": manualControl == null ? null : manualControl,
    "warranty": warranty == null ? null : warranty,
  };
}

class Engine {
  Engine({
    this.type,
    this.capacity,
    this.power,
    this.torque,
    this.gas,
    this.hybrid,
  });

  String type;
  double capacity;
  Odometer power;
  dynamic torque;
  bool gas;
  bool hybrid;

  factory Engine.fromJson(String str) => Engine.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Engine.fromMap(Map<String, dynamic> json) => Engine(
    type: json["type"] == null ? null : json["type"],
    capacity: json["capacity"] == null ? null : json["capacity"].toDouble(),
    power: json["power"] == null ? null : Odometer.fromMap(json["power"]),
    torque: json["torque"],
    gas: json["gas"] == null ? null : json["gas"],
    hybrid: json["hybrid"] == null ? null : json["hybrid"],
  );

  Map<String, dynamic> toMap() => {
    "type": type == null ? null : type,
    "capacity": capacity == null ? null : capacity,
    "power": power == null ? null : power.toMap(),
    "torque": torque,
    "gas": gas == null ? null : gas,
    "hybrid": hybrid == null ? null : hybrid,
  };
}

class Odometer {
  Odometer({
    this.value,
    this.unit,
  });

  int value;
  String unit;

  factory Odometer.fromJson(String str) => Odometer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Odometer.fromMap(Map<String, dynamic> json) => Odometer(
    value: json["value"] == null ? null : json["value"],
    unit: json["unit"] == null ? null : json["unit"],
  );

  Map<String, dynamic> toMap() => {
    "value": value == null ? null : value,
    "unit": unit == null ? null : unit,
  };
}

class Page {
  Page({
    this.limit,
    this.items,
    this.current,
    this.last,
  });

  int limit;
  int items;
  int current;
  int last;

  factory Page.fromJson(String str) => Page.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Page.fromMap(Map<String, dynamic> json) => Page(
    limit: json["limit"] == null ? null : json["limit"],
    items: json["items"] == null ? null : json["items"],
    current: json["current"] == null ? null : json["current"],
    last: json["last"] == null ? null : json["last"],
  );

  Map<String, dynamic> toMap() => {
    "limit": limit == null ? null : limit,
    "items": items == null ? null : items,
    "current": current == null ? null : current,
    "last": last == null ? null : last,
  };
}
