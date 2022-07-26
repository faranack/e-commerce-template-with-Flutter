import 'package:ecommerce_12hours/data/api/api_client.dart';
import 'package:ecommerce_12hours/models/signup_body_model.dart';
import 'package:ecommerce_12hours/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo{
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepo({
    required this.apiClient,
    required this.sharedPreferences,
});
  
 Future<Response> registration(SignUpBody signUpBody) async {
   return await apiClient.postData(AppConstants.REGISTERATION_URI, signUpBody.toJson());
  }


  saveUserToken(String token) async {
   apiClient.token = token;
   apiClient.updateHeader(token);
   return await sharedPreferences.setString(AppConstants.TOKEN, token);

  }
}