import 'package:countries_app/dataprovider/data_provider.dart';
import 'package:countries_app/models/countries_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class TestWidget extends ConsumerWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _data = ref.watch(countriesDataProvider);
    print(_data.hasValue);
    return Scaffold(
      body: _data.when(
          data: (_data) {
            var countriesList = _data.map((e) => e);
            print(countriesList);

            return const Center(child: Text('Congrats'));
          },
          error: (error, stackTrace) => Center(
                child: Text(error.toString()),
              ),
          loading: () => const Center(child: CircularProgressIndicator())),
    );
  }
}
