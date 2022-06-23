class User {
  String? email;
  String? password;
  String? name;
  String? phoneNumber;
  String? homeAddress;

  User(
      {this.email,
      this.password,
      this.name,
      this.phoneNumber,
      this.homeAddress});

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    name = json['name'];
    phoneNumber = json['phoneNumber'];
    homeAddress = json['homeAddress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['name'] = name;
    data['phoneNumber'] = phoneNumber;
    data['homeAddress'] = homeAddress;
    return data;
  }
}
