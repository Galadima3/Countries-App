import 'dart:convert';
import 'dart:developer';

import 'package:countries_app/models/countries_model.dart';
import 'package:http/http.dart';

class ApiServices {
  String endPoint = 'https://restcountries.com/v3.1/all';
  Future getCountries() async {
    Response response = await get(Uri.parse(endPoint));
    if (response.statusCode == 200) {
      try {
        final List result = jsonDecode(response.body);
        //The error seems to be from the model class
        var rex = result.map((e) => CountryModel.fromJson(e));
        return rex;
      } on Exception catch (e) {
        log(e.toString());
      }
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
