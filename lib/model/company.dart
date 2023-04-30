import 'dart:convert';

List<Company> companyFromJson(String str) =>
    List<Company>.from(json.decode(str).map((x) => Company.fromJson(x)));

String userToJson(List<Company> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Company {
  Company(
      {this.name,
      this.registerno,
      this.pinCode,
      this.productOrder,
      this.districtCode});

  String? name;
  String? registerno;
  String? pinCode;
  String? productOrder;
  String? districtCode;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: json["name"] ?? "",
        registerno: json["registerno"] ?? "",
        pinCode: json["pincode"] ?? "",
        productOrder: json["productOrder"] ?? "",
        districtCode: json["districtCode"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "registerno": registerno,
        "pincode": pinCode,
        "productOrder": productOrder,
        "districtCode": districtCode
      };
}
