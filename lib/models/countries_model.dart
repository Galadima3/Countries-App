import 'package:countries_app/services/networking.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// To parse this JSON data, do
//
//     final countryModel = countryModelFromJson(jsonString);


import 'dart:convert';

// CountryModel countryModelFromJson(String str) => CountryModel.fromJson(json.decode(str));

// String countryModelToJson(CountryModel data) => json.encode(data.toJson());

class CountryModel {
    CountryModel({
        required this.name,
        required this.capital,
        required this.languages,
        required this.currencies,
        required this.car,
        required this.timezones,
        required this.area,
        required this.continents,
    });

    final Name name;
    final List<String> capital;
    final Languages languages;
    final Currencies currencies;
    final Car car;
    final List<String> timezones;
    final int area;
    final List<String> continents;

    factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        name: Name.fromJson(json["name"]),
        capital: List<String>.from(json["capital"].map((x) => x)),
        languages: Languages.fromJson(json["languages"]),
        currencies: Currencies.fromJson(json["currencies"]),
        car: Car.fromJson(json["car"]),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        area: json["area"],
        continents: List<String>.from(json["continents"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "capital": List<dynamic>.from(capital.map((x) => x)),
        "languages": languages.toJson(),
        "currencies": currencies.toJson(),
        "car": car.toJson(),
        "timezones": List<dynamic>.from(timezones.map((x) => x)),
        "area": area,
        "continents": List<dynamic>.from(continents.map((x) => x)),
    };
}

class Car {
    Car({
        required this.side,
    });

    final String side;

    factory Car.fromJson(Map<String, dynamic> json) => Car(
        side: json["side"],
    );

    Map<String, dynamic> toJson() => {
        "side": side,
    };
}

class Currencies {
    Currencies({
        required this.bbd,
    });

    final Bbd bbd;

    factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        bbd: Bbd.fromJson(json["BBD"]),
    );

    Map<String, dynamic> toJson() => {
        "BBD": bbd.toJson(),
    };
}

class Bbd {
    Bbd({
        required this.name,
    });

    final String name;

    factory Bbd.fromJson(Map<String, dynamic> json) => Bbd(
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
    };
}

class Languages {
    Languages({
        required this.eng,
    });

    final String eng;

    factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        eng: json["eng"],
    );

    Map<String, dynamic> toJson() => {
        "eng": eng,
    };
}

class Name {
    Name({
        required this.official,
    });

    final String official;

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        official: json["official"],
    );

    Map<String, dynamic> toJson() => {
        "official": official,
    };
}

final countriesProvider = Provider<ApiServices>((ref) => ApiServices());