
import 'package:countries_app/models/countries_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countriesDataProvider = FutureProvider((ref) {
  return ref.watch(countriesProvider).getCountries();
});