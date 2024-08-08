import 'package:user_connect/model/user_address_model.dart';
import 'package:user_connect/model/user_company_model.dart';

class UserModel {
  int? id;
  String? name;
  String? username;
  String? email;
  String? phone;
  String? website;
  UserAddressModel? address;
  UserCompanyModel? company;

  UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.phone,
    this.website,
    this.address,
    this.company,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      website: json['website'],
      address: json['address'] != null
          ? UserAddressModel.fromJson(json['address'])
          : null,
      company: json['company'] != null
          ? UserCompanyModel.fromJson(json['company'])
          : null,
    );
  }
}
