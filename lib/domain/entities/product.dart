class Resp {
  Resp({
    this.error,
    this.message,
    this.data,
  });

  bool error;
  String message;
  Product data;

  factory Resp.fromJson(Map<String, dynamic> json) => Resp(
        error: json["error"],
        message: json["message"],
        data: Product.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
        "data": data.toJson(),
      };
}

class Items {
  Items({
    this.items,
    this.count,
    this.scannedCount,
  });

  List<Product> items;
  int count;
  int scannedCount;

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        items:
            List<Product>.from(json["Items"].map((x) => Product.fromJson(x))),
        count: json["Count"],
        scannedCount: json["ScannedCount"],
      );

  Map<String, dynamic> toJson() => {
        "Items": List<dynamic>.from(items.map((x) => x.toJson())),
        "Count": count,
        "ScannedCount": scannedCount,
      };
}

class Product {
  Product({
    this.barcode,
    this.brand,
    this.nameProduct,
    this.price,
    this.description,
    this.url,
    this.sku,
  });

  int barcode;
  String brand;
  String nameProduct;
  int price;
  String description;
  String url;
  String sku;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        barcode: json["barcode"],
        brand: json["brand"],
        nameProduct: json["nameProduct"],
        price: json["price"],
        description: json["description"],
        url: json["url"],
        sku: json["sku"],
      );

  Map<String, dynamic> toJson() => {
        "barcode": barcode,
        "brand": brand,
        "nameProduct": nameProduct,
        "price": price,
        "description": description,
        "url": url,
        "sku": sku,
      };
}
