import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  String email;
  String phoneNumber;
  String nin;
  String password;
  String dp;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.nin,
    required this.password,
    required this.dp,
  });

  //-- empty userModel
  static UserModel emptyUser() => UserModel(
      id: "",
      firstName: "",
      lastName: "",
      email: "",
      phoneNumber: "",
      nin: "",
      password: "",
      dp: "");

  //-- UserModel toJson for user data updates
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "phoneNumber": phoneNumber,
      "nin": nin,
      "password": password,
      "dp": dp
    };
  }

  //-- fetch the users data [fromJson] format
  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot) {
    if (documentSnapshot.data() != null) {
      final data = documentSnapshot.data()!;

      return UserModel(
          id: documentSnapshot.id,
          firstName: data["firstName"] ?? "",
          lastName: data["lastName"] ?? "",
          email: data["email"] ?? "",
          phoneNumber: data["phoneNumber"],
          nin: data["nin"] ?? "",
          password: data["password"] ?? "",
          dp: data["dp"] ?? "");
    }
    return UserModel.fromSnapshot(documentSnapshot);
  }
}
