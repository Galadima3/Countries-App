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
            //This is supposed to display on the screen when the JSON is parsed successfully
            //using the model class
            //return const Center(child: Text('Congrats'));
            List countriesList = _data.toList();
            print(countriesList.length);
          },
          error: (error, stackTrace) => Center(
                child: Text(error.toString()),
              ),
          loading: () => const Center(child: CircularProgressIndicator())),
    );
  }
}

//List countriesList = _data;
            
            // print(countriesList.length);
            // return Column(
            //   children: [
            //     Expanded(child: ListView.builder(
            //       itemCount: countriesList.length,
            //       itemBuilder: (context, index) {
            //        return Padding(
            //          padding: const EdgeInsets.all(8.0),
            //          child: Container(
            //           height: 30,
            //           width: 100,
            //           color: Colors.blue,
            //          ),
            //        );
            //     },))
            //   ],
            // );