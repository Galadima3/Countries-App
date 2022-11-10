
import 'package:countries_app/screens/home_page.dart';
import 'package:countries_app/screens/test.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TestWidget(),
      ),
    ),
  );
}

