class Country {
  Country({
    this.code,
    this.id,
    this.urlImage,
    this.symbol,
    this.name,
  });

  String code;
  int id;
  String urlImage;
  String symbol;
  String name;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        code: json["Code"],
        id: json["ID"],
        urlImage: json["UrlImage"],
        symbol: json["Symbol"],
        name: json["Name"],
      );

  Map<String, dynamic> toJson() => {
        "Code": code,
        "ID": id,
        "UrlImage": urlImage,
        "Symbol": symbol,
        "Name": name,
      };
}
