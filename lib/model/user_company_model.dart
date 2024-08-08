class UserCompanyModel {
  String? name;
  String? catchPhrase;

  UserCompanyModel({
    this.name,
    this.catchPhrase,
  });

  factory UserCompanyModel.fromJson(Map<String, dynamic> json) {
    return UserCompanyModel(
      name: json['name'],
      catchPhrase: json['catchPhrase'],
    );
  }
}
