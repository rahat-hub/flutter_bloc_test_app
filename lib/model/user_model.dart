
class UserModel {
  final int id;
  final String firstName;
  final String lastName;


  UserModel({required this.id, required this.firstName, required this.lastName});


  factory UserModel.formJson(Map<String, dynamic> json) => UserModel(
    id: json['id'] ?? '',
    firstName: json['firstName'] ?? '',
    lastName: json['lastName'] ?? '',
  );



}