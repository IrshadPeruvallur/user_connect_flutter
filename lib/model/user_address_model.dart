class UserAddressModel {
  String? street;
  String? city;
  String? zipcode;

  UserAddressModel({
    this.street,
    this.city,
    this.zipcode,
  });

  factory UserAddressModel.fromJson(Map<String, dynamic> json) {
    return UserAddressModel(
      street: json['street'],
      city: json['city'],
      zipcode: json['zipcode'],
    );
  }
}
