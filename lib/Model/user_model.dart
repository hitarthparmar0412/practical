class UserModel {
  late String profilePic;
  late String name;
  late String emailId;

  UserModel(
      {required this.profilePic, required this.name, required this.emailId});

  UserModel.fromJson(Map<String, dynamic> json) {
    profilePic = json['profile_pic'];
    name = json['name'];
    emailId = json['email_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['profile_pic'] = profilePic;
    data['name'] = name;
    data['email_id'] = emailId;
    return data;
  }
}
