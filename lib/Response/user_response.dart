import '../Model/user_model.dart';

class UserResponse {
  late UserModel data;

  UserResponse({required this.data});

  UserResponse.fromJson(Map<String, dynamic> json) {
    data = (json['data'] != null ? UserModel.fromJson(json['data']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data'] = this.data.toJson();
    return data;
  }
}
