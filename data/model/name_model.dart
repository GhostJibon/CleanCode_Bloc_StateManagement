import 'dart:convert';

NameModel nameModelFromJson(String str) =>
    NameModel.fromJson(json.decode(str));

String nameModelToJson(NameModel data) => json.encode(data.toJson());

// ignore: must_be_immutable
class NameModel extends NameEntities {
  NameModel({
    required super.data,
    required super.perPage,
    required super.currentPage,
    required super.totalPage,
    required super.totalResult,
  });

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "perPage": perPage,
        "currentPage": currentPage,
        "totalPage": totalPage,
        "totalResult": totalResult,
      };

  factory NameModel.fromJson(Map<String, dynamic> json) => NameModel(
        data: List<NameList>.from(
            json["data"].map((x) => NameList.fromJson(x))),
        perPage: json["perPage"],
        currentPage: json["currentPage"],
        totalPage: json["totalPage"],
        totalResult: json["totalResult"],
      );

  String toJson() => json.encode(toMap());
}

class NameList {
  int id;
  String nameNumber;
  int discount;
  int subtotal;
  int name;
  int grandTotal;
  int paid;
  int due;
  String paymentMethod;
  String paymentStatus;
  String shippingName;
  String shippingPhone;
  String shippingEmail;
  String shippingCountry;
  String shippingCity;
  String shippingArea;
  String shippingStreet;
  String shippingPostalCode;
  String shippingLat;
  String shippingLon;
  String status;
  String deliveryCourier;
  bool isDeliveryToCourier;
  DateTime createdAt;
  DateTime updatedAt;
  int shopId;
  List<Product> products;
  String courierList;
  // List<String> payments;

  NameList({
    required this.id,
    required this.nameNumber,
    required this.discount,
    required this.subtotal,
    required this.name,
    required this.grandTotal,
    required this.paid,
    required this.due,
    required this.paymentMethod,
    required this.paymentStatus,
    required this.shippingName,
    required this.shippingPhone,
    required this.shippingEmail,
    required this.shippingCountry,
    required this.shippingCity,
    required this.shippingArea,
    required this.shippingStreet,
    required this.shippingPostalCode,
    required this.shippingLat,
    required this.shippingLon,
    required this.status,
    required this.deliveryCourier,
    required this.isDeliveryToCourier,
    required this.createdAt,
    required this.updatedAt,
    required this.shopId,
    required this.products,
    required this.courierList,
    // required this.payments,
  });

  factory NameList.fromJson(Map<String, dynamic> json) => NameList(
        id: json["id"] ?? 0,
        nameNumber: json["nameNumber"] ?? "",
        discount: json["discount"] ?? 0,
        subtotal: json["subtotal"] ?? 0,
        name: json["name"] ?? 0,
        grandTotal: json["grandTotal"] ?? 0,
        paid: json["paid"] ?? 0,
        due: json["due"] ?? 0,
        paymentMethod: json["paymentMethod"] ?? "",
        paymentStatus: json["paymentStatus"] ?? "",
        shippingName: json["shippingName"] ?? "",
        shippingPhone: json["shippingPhone"] ?? "",
        shippingEmail: json["shippingEmail"] ?? "",
        shippingCountry: json["shippingCountry"] ?? "",
        shippingCity: json["shippingCity"] ?? "",
        shippingArea: json["shippingArea"] ?? "",
        shippingStreet: json["shippingStreet"] ?? "",
        shippingPostalCode: json["shippingPostalCode"] ?? "",
        shippingLat: json["shippingLat"] ?? "",
        shippingLon: json["shippingLon"] ?? "",
        status: json["status"] ?? "",
        deliveryCourier: json["deliveryCourier"] ?? "",
        isDeliveryToCourier: json["isDeliveryToCourier"] ?? false,
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        shopId: json["shopId"] ?? 0,
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
        courierList: json["courierList"] ?? "",
        //    payments: List<String>.from(json["payments"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nameNumber": nameNumber,
        "discount": discount,
        "subtotal": subtotal,
        "name": name,
        "grandTotal": grandTotal,
        "paid": paid,
        "due": due,
        "paymentMethod": paymentMethod,
        "paymentStatus": paymentStatus,
        "shippingName": shippingName,
        "shippingPhone": shippingPhone,
        "shippingEmail": shippingEmail,
        "shippingCountry": shippingCountry,
        "shippingCity": shippingCity,
        "shippingArea": shippingArea,
        "shippingStreet": shippingStreet,
        "shippingPostalCode": shippingPostalCode,
        "shippingLat": shippingLat,
        "shippingLon": shippingLon,
        "status": status,
        "deliveryCourier": deliveryCourier,
        "isDeliveryToCourier": isDeliveryToCourier,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "shopId": shopId,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "courierList": courierList,
        //  "payments": List<dynamic>.from(payments.map((x) => x)),
      };
}

// enum PaymentStatus {
//     UNPAID
// }

// final paymentStatusValues = EnumValues({
//     "unpaid": PaymentStatus.UNPAID
// });

class Product {
  int id;
  int nameId;
  String sku;
  String customSku;
  String name;
  String slug;
  String thumbnail;
  int price;
  int discountedPrice;
  int quantity;
  int totalPrice;
  String status;
  Category category;
  String brand;
  List<Attribute> attributes;

  Product({
    required this.id,
    required this.nameId,
    required this.sku,
    required this.customSku,
    required this.name,
    required this.slug,
    required this.thumbnail,
    required this.price,
    required this.discountedPrice,
    required this.quantity,
    required this.totalPrice,
    required this.status,
    required this.category,
    required this.brand,
    required this.attributes,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"] ?? 0,
        nameId: json["nameId"] ?? 0,
        sku: json["sku"] ?? "",
        customSku: json["customSku"] ?? "",
        name: json["name"] ?? "",
        slug: json["slug"] ?? "",
        thumbnail: json["thumbnail"] ?? "",
        price: json["price"] ?? 0,
        discountedPrice: json["discountedPrice"] ?? "",
        quantity: json["quantity"] ?? 0,
        totalPrice: json["totalPrice"] ?? 0,
        status: json["status"] ?? "",
        category: Category.fromJson(json["category"]),
        brand: json["brand"] ?? "",
        attributes: List<Attribute>.from(
            json["attributes"].map((x) => Attribute.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nameId": nameId,
        "sku": sku,
        "customSku": customSku,
        "name": name,
        "slug": slug,
        "thumbnail": thumbnail,
        "price": price,
        "discountedPrice": discountedPrice,
        "quantity": quantity,
        "totalPrice": totalPrice,
        "status": status,
        "category": category.toJson(),
        "brand": brand,
        "attributes": List<dynamic>.from(attributes.map((x) => x.toJson())),
      };
}

class Attribute {
  int id;
  int nameProductId;
  // Key key;
  String value;

  Attribute({
    required this.id,
    required this.nameProductId,
    //  required this.key,
    required this.value,
  });

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        id: json["id"] ?? 0,
        nameProductId: json["nameProductId"] ?? 0,
        // key: Key[json["key"]],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nameProductId": nameProductId,
        // "key": keyValues.reverse[key],
        "value": value,
      };
}

class Category {
  int id;
  String logo;
  String name;
  String slug;
  String sizeChart;
  String code;
  bool isFeatured;
  String status;
  bool leaf;

  Category({
    required this.id,
    required this.logo,
    required this.name,
    required this.slug,
    required this.sizeChart,
    required this.code,
    required this.isFeatured,
    required this.status,
    required this.leaf,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"] ?? 0,
        logo: json["logo"] ?? "",
        name: json["name"] ?? "",
        slug: json["slug"] ?? "",
        sizeChart: json["sizeChart"] ?? "",
        code: json["code"] ?? "",
        isFeatured: json["isFeatured"] ?? false,
        status: json["status"] ?? "",
        leaf: json["leaf"] ?? false,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "logo": logo,
        "name": name,
        "slug": slug,
        "sizeChart": sizeChart,
        "code": code,
        "isFeatured": isFeatured,
        "status": status,
        "leaf": leaf,
      };
}
