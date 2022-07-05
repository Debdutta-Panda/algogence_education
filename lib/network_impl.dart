import 'dart:convert';

import 'package:algogence_education/constants.dart';
import 'package:algogence_education/models/login_response.dart';

import 'network.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class NetworkImpl extends Network {
  SharedPreferences sharedPreferences;

  NetworkImpl(this.sharedPreferences);

  @override
  Future<RestResponse<LoginResponse>> login(String email, String password) async {
    var uri =
    Uri.https('education.algogence.com', '/api/login', {
      "email": email,
      "password": password
    });

    /*var headers = {
      'X-API-KEY': dotenv.env['X_API_KEY']!,
    };*/

    try {
      var r = await http.get(uri/*, headers: headers*/);
      if (r.statusCode == 200) {
        var map = json.decode(r.body);
        var ob = LoginResponse.fromJson(map);
        return RestResponse(success: true, error: null, data: ob);
      } else {
        return RestResponse(success: false, error: null, data: null);
      }
    } catch (e) {
      return RestResponse(success: false, error: e, data: null);
    }
  }
}