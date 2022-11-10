import 'dart:convert';

import 'package:countries_app/models/countries_model.dart';
import 'package:http/http.dart';

class ApiServices{
  String endPoint = 'https://restcountries.com/v3.1/all';
  getCountries() async {
    Response response = await get(Uri.parse(endPoint));
    if(response.statusCode == 200){
      final List result = jsonDecode(response.body);
      print(result.toString());
      return result.map(((e) => CountriesModel.fromJson(e)));
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}