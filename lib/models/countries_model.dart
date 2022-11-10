import 'package:countries_app/services/networking.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountriesModel {
  final Name name;
  final int population;
  final List capital;

  CountriesModel({required this.population, required this.name, required this.capital});

  factory CountriesModel.fromJson(Map<String, dynamic> parsedJson){
    return CountriesModel(name: Name.fromJson(parsedJson['official'] ?? 'Empty'), capital: parsedJson['capital'][0] ?? 'Empty', population: parsedJson['population'], );
  }
}

class Name{
  final String common;
  final String official;

  Name({required this.common, required this.official});
  factory Name.fromJson(Map<String, dynamic> json){
    return Name(common: json['name'], official: json['official']);
  }
  
}




final countriesProvider = Provider<ApiServices>((ref) => ApiServices());