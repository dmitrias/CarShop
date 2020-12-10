import 'dart:convert';

class Car {
  Car({
    this.id,
    this.title,
    this.description,
    this.author,
    this.manufacturerId,
    this.modelId,
    this.manufacturer,
    this.model,
    this.generation,
    this.specs,
    this.equipment,
    this.location,
    this.seller,
    this.price,
    this.dealTerms,
    this.images,
    this.inBookmarks,
    this.upCounter,
    this.upAvailableIn,
    this.stats,
    this.availableLeasing,
    this.leasings,
    this.createdAt,
    this.updatedAt,
    this.updatedForTiles,
    this.lastUpAt,
    this.closedAt,
    this.url,
    this.htmlUrl,
    this.permissions,
  });

  int id;
  String title;
  String description;
  Author author;
  int manufacturerId;
  int modelId;
  Generation manufacturer;
  Generation model;
  Generation generation;
  Specs specs;
  List<Equipment> equipment;
  Location location;
  Seller seller;
  Price price;
  DealTerms dealTerms;
  List<CarPhoto> images;
  bool inBookmarks;
  int upCounter;
  int upAvailableIn;
  Stats stats;
  List<AvailableLeasing> availableLeasing;
  Leasings leasings;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime updatedForTiles;
  DateTime lastUpAt;
  dynamic closedAt;
  String url;
  String htmlUrl;
  Permissions permissions;

  factory Car.fromJson(var str) => Car.fromMap(str);

  String toJson() => json.encode(toMap());

  factory Car.fromMap(Map<String, dynamic> json) => Car(
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
    description: json["description"] == null ? null : json["description"],
    author: json["author"] == null ? null : Author.fromMap(json["author"]),
    manufacturerId: json["manufacturer_id"] == null ? null : json["manufacturer_id"],
    modelId: json["model_id"] == null ? null : json["model_id"],
    manufacturer: json["manufacturer"] == null ? null : Generation.fromMap(json["manufacturer"]),
    model: json["model"] == null ? null : Generation.fromMap(json["model"]),
    generation: json["generation"] == null ? null : Generation.fromMap(json["generation"]),
    specs: json["specs"] == null ? null : Specs.fromMap(json["specs"]),
    equipment: json["equipment"] == null ? null : List<Equipment>.from(json["equipment"].map((x) => Equipment.fromMap(x))),
    location: json["location"] == null ? null : Location.fromMap(json["location"]),
    seller: json["seller"] == null ? null : Seller.fromMap(json["seller"]),
    price: json["price"] == null ? null : Price.fromMap(json["price"]),
    dealTerms: json["deal_terms"] == null ? null : DealTerms.fromMap(json["deal_terms"]),
    images: json["images"] == null ? null : List<CarPhoto>.from(json["images"].map((x) => CarPhoto.fromMap(x))),
    inBookmarks: json["in_bookmarks"] == null ? null : json["in_bookmarks"],
    upCounter: json["up_counter"] == null ? null : json["up_counter"],
    upAvailableIn: json["up_available_in"] == null ? null : json["up_available_in"],
    stats: json["stats"] == null ? null : Stats.fromMap(json["stats"]),
    availableLeasing: json["available_leasing"] == null ? null : List<AvailableLeasing>.from(json["available_leasing"].map((x) => AvailableLeasing.fromMap(x))),
    leasings: json["leasings"] == null ? null : Leasings.fromMap(json["leasings"]),
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    updatedForTiles: json["updated_for_tiles"] == null ? null : DateTime.parse(json["updated_for_tiles"]),
    lastUpAt: json["last_up_at"] == null ? null : DateTime.parse(json["last_up_at"]),
    closedAt: json["closed_at"],
    url: json["url"] == null ? null : json["url"],
    htmlUrl: json["html_url"] == null ? null : json["html_url"],
    permissions: json["permissions"] == null ? null : Permissions.fromMap(json["permissions"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "title": title == null ? null : title,
    "description": description == null ? null : description,
    "author": author == null ? null : author.toMap(),
    "manufacturer_id": manufacturerId == null ? null : manufacturerId,
    "model_id": modelId == null ? null : modelId,
    "manufacturer": manufacturer == null ? null : manufacturer.toMap(),
    "model": model == null ? null : model.toMap(),
    "generation": generation == null ? null : generation.toMap(),
    "specs": specs == null ? null : specs.toMap(),
    "equipment": equipment == null ? null : List<dynamic>.from(equipment.map((x) => x.toMap())),
    "location": location == null ? null : location.toMap(),
    "seller": seller == null ? null : seller.toMap(),
    "price": price == null ? null : price.toMap(),
    "deal_terms": dealTerms == null ? null : dealTerms.toMap(),
    "images": images == null ? null : List<dynamic>.from(images.map((x) => x.toMap())),
    "in_bookmarks": inBookmarks == null ? null : inBookmarks,
    "up_counter": upCounter == null ? null : upCounter,
    "up_available_in": upAvailableIn == null ? null : upAvailableIn,
    "stats": stats == null ? null : stats.toMap(),
    "available_leasing": availableLeasing == null ? null : List<dynamic>.from(availableLeasing.map((x) => x.toMap())),
    "leasings": leasings == null ? null : leasings.toMap(),
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "updated_for_tiles": updatedForTiles == null ? null : updatedForTiles.toIso8601String(),
    "last_up_at": lastUpAt == null ? null : lastUpAt.toIso8601String(),
    "closed_at": closedAt,
    "url": url == null ? null : url,
    "html_url": htmlUrl == null ? null : htmlUrl,
    "permissions": permissions == null ? null : permissions.toMap(),
  };
}

class Author {
  Author({
    this.id,
    this.name,
    this.onlineStatus,
  });

  int id;
  String name;
  dynamic onlineStatus;

  factory Author.fromJson(String str) => Author.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Author.fromMap(Map<String, dynamic> json) => Author(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    onlineStatus: json["online_status"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "online_status": onlineStatus,
  };
}

class AvailableLeasing {
  AvailableLeasing({
    this.company,
    this.image,
    this.link,
    this.cost,
    this.payment,
    this.info,
  });

  String company;
  String image;
  String link;
  Cost cost;
  Payment payment;
  Info info;

  factory AvailableLeasing.fromJson(String str) => AvailableLeasing.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AvailableLeasing.fromMap(Map<String, dynamic> json) => AvailableLeasing(
    company: json["company"] == null ? null : json["company"],
    image: json["image"] == null ? null : json["image"],
    link: json["link"] == null ? null : json["link"],
    cost: json["cost"] == null ? null : Cost.fromMap(json["cost"]),
    payment: json["payment"] == null ? null : Payment.fromMap(json["payment"]),
    info: json["info"] == null ? null : Info.fromMap(json["info"]),
  );

  Map<String, dynamic> toMap() => {
    "company": company == null ? null : company,
    "image": image == null ? null : image,
    "link": link == null ? null : link,
    "cost": cost == null ? null : cost.toMap(),
    "payment": payment == null ? null : payment.toMap(),
    "info": info == null ? null : info.toMap(),
  };
}

class Cost {
  Cost({
    this.amount,
    this.currency,
  });

  String amount;
  Currency currency;

  factory Cost.fromJson(String str) => Cost.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Cost.fromMap(Map<String, dynamic> json) => Cost(
    amount: json["amount"] == null ? null : json["amount"],
    currency: json["currency"] == null ? null : currencyValues.map[json["currency"]],
  );

  Map<String, dynamic> toMap() => {
    "amount": amount == null ? null : amount,
    "currency": currency == null ? null : currencyValues.reverse[currency],
  };
}

enum Currency { BYN, EUR, USD }

final currencyValues = EnumValues({
  "BYN": Currency.BYN,
  "EUR": Currency.EUR,
  "USD": Currency.USD
});

class Info {
  Info({
    this.link,
    this.image,
    this.title,
    this.summary,
  });

  String link;
  String image;
  String title;
  String summary;

  factory Info.fromJson(String str) => Info.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Info.fromMap(Map<String, dynamic> json) => Info(
    link: json["link"] == null ? null : json["link"],
    image: json["image"] == null ? null : json["image"],
    title: json["title"] == null ? null : json["title"],
    summary: json["summary"] == null ? null : json["summary"],
  );

  Map<String, dynamic> toMap() => {
    "link": link == null ? null : link,
    "image": image == null ? null : image,
    "title": title == null ? null : title,
    "summary": summary == null ? null : summary,
  };
}

class Payment {
  Payment({
    this.period,
    this.advance,
    this.monthly,
  });

  int period;
  Cost advance;
  Cost monthly;

  factory Payment.fromJson(String str) => Payment.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Payment.fromMap(Map<String, dynamic> json) => Payment(
    period: json["period"] == null ? null : json["period"],
    advance: json["advance"] == null ? null : Cost.fromMap(json["advance"]),
    monthly: json["monthly"] == null ? null : Cost.fromMap(json["monthly"]),
  );

  Map<String, dynamic> toMap() => {
    "period": period == null ? null : period,
    "advance": advance == null ? null : advance.toMap(),
    "monthly": monthly == null ? null : monthly.toMap(),
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

class CarPhoto {
  CarPhoto({
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

  factory CarPhoto.fromJson(String str) => CarPhoto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CarPhoto.fromMap(Map<String, dynamic> json) => CarPhoto(
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

class Leasings {
  Leasings({
    this.common,
    this.exclusive,
  });

  List<AvailableLeasing> common;
  List<AvailableLeasing> exclusive;

  factory Leasings.fromJson(String str) => Leasings.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Leasings.fromMap(Map<String, dynamic> json) => Leasings(
    common: json["common"] == null ? null : List<AvailableLeasing>.from(json["common"].map((x) => AvailableLeasing.fromMap(x))),
    exclusive: json["exclusive"] == null ? null : List<AvailableLeasing>.from(json["exclusive"].map((x) => AvailableLeasing.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "common": common == null ? null : List<dynamic>.from(common.map((x) => x.toMap())),
    "exclusive": exclusive == null ? null : List<dynamic>.from(exclusive.map((x) => x.toMap())),
  };
}

class Location {
  Location({
    this.country,
    this.region,
    this.city,
  });

  City country;
  City region;
  City city;

  factory Location.fromJson(String str) => Location.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Location.fromMap(Map<String, dynamic> json) => Location(
    country: json["country"] == null ? null : City.fromMap(json["country"]),
    region: json["region"] == null ? null : City.fromMap(json["region"]),
    city: json["city"] == null ? null : City.fromMap(json["city"]),
  );

  Map<String, dynamic> toMap() => {
    "country": country == null ? null : country.toMap(),
    "region": region == null ? null : region.toMap(),
    "city": city == null ? null : city.toMap(),
  };
}

class City {
  City({
    this.id,
    this.name,
  });

  int id;
  String name;

  factory City.fromJson(String str) => City.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory City.fromMap(Map<String, dynamic> json) => City(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
  };
}

class Permissions {
  Permissions({
    this.up,
    this.open,
    this.close,
    this.edit,
    this.viewProfile,
  });

  bool up;
  bool open;
  bool close;
  bool edit;
  bool viewProfile;

  factory Permissions.fromJson(String str) => Permissions.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Permissions.fromMap(Map<String, dynamic> json) => Permissions(
    up: json["up"] == null ? null : json["up"],
    open: json["open"] == null ? null : json["open"],
    close: json["close"] == null ? null : json["close"],
    edit: json["edit"] == null ? null : json["edit"],
    viewProfile: json["view_profile"] == null ? null : json["view_profile"],
  );

  Map<String, dynamic> toMap() => {
    "up": up == null ? null : up,
    "open": open == null ? null : open,
    "close": close == null ? null : close,
    "edit": edit == null ? null : edit,
    "view_profile": viewProfile == null ? null : viewProfile,
  };
}

class Price {
  Price({
    this.amount,
    this.currency,
    this.converted,
  });

  String amount;
  Currency currency;
  Converted converted;

  factory Price.fromJson(String str) => Price.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Price.fromMap(Map<String, dynamic> json) => Price(
    amount: json["amount"] == null ? null : json["amount"],
    currency: json["currency"] == null ? null : currencyValues.map[json["currency"]],
    converted: json["converted"] == null ? null : Converted.fromMap(json["converted"]),
  );

  Map<String, dynamic> toMap() => {
    "amount": amount == null ? null : amount,
    "currency": currency == null ? null : currencyValues.reverse[currency],
    "converted": converted == null ? null : converted.toMap(),
  };
}

class Converted {
  Converted({
    this.byn,
    this.usd,
    this.eur,
  });

  Cost byn;
  Cost usd;
  Cost eur;

  factory Converted.fromJson(String str) => Converted.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Converted.fromMap(Map<String, dynamic> json) => Converted(
    byn: json["BYN"] == null ? null : Cost.fromMap(json["BYN"]),
    usd: json["USD"] == null ? null : Cost.fromMap(json["USD"]),
    eur: json["EUR"] == null ? null : Cost.fromMap(json["EUR"]),
  );

  Map<String, dynamic> toMap() => {
    "BYN": byn == null ? null : byn.toMap(),
    "USD": usd == null ? null : usd.toMap(),
    "EUR": eur == null ? null : eur.toMap(),
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

  dynamic modification;
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
    modification: json["modification"],
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
    "modification": modification,
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
  int torque;
  bool gas;
  bool hybrid;

  factory Engine.fromJson(String str) => Engine.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Engine.fromMap(Map<String, dynamic> json) => Engine(
    type: json["type"] == null ? null : json["type"],
    capacity: json["capacity"] == null ? null : json["capacity"].toDouble(),
    power: json["power"] == null ? null : Odometer.fromMap(json["power"]),
    torque: json["torque"] == null ? null : json["torque"],
    gas: json["gas"] == null ? null : json["gas"],
    hybrid: json["hybrid"] == null ? null : json["hybrid"],
  );

  Map<String, dynamic> toMap() => {
    "type": type == null ? null : type,
    "capacity": capacity == null ? null : capacity,
    "power": power == null ? null : power.toMap(),
    "torque": torque == null ? null : torque,
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

class Stats {
  Stats({
    this.views,
    this.bookmarks,
  });

  Views views;
  Bookmarks bookmarks;

  factory Stats.fromJson(String str) => Stats.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Stats.fromMap(Map<String, dynamic> json) => Stats(
    views: json["views"] == null ? null : Views.fromMap(json["views"]),
    bookmarks: json["bookmarks"] == null ? null : Bookmarks.fromMap(json["bookmarks"]),
  );

  Map<String, dynamic> toMap() => {
    "views": views == null ? null : views.toMap(),
    "bookmarks": bookmarks == null ? null : bookmarks.toMap(),
  };
}

class Bookmarks {
  Bookmarks({
    this.total,
  });

  int total;

  factory Bookmarks.fromJson(String str) => Bookmarks.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Bookmarks.fromMap(Map<String, dynamic> json) => Bookmarks(
    total: json["total"] == null ? null : json["total"],
  );

  Map<String, dynamic> toMap() => {
    "total": total == null ? null : total,
  };
}

class Views {
  Views({
    this.today,
    this.total,
  });

  int today;
  int total;

  factory Views.fromJson(String str) => Views.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Views.fromMap(Map<String, dynamic> json) => Views(
    today: json["today"] == null ? null : json["today"],
    total: json["total"] == null ? null : json["total"],
  );

  Map<String, dynamic> toMap() => {
    "today": today == null ? null : today,
    "total": total == null ? null : total,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
