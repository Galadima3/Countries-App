import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:countries_app/utils/constants.dart';
import 'package:countries_app/utils/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Explore', style: exploreTextStyle),
                  Icon(
                    Icons.light_mode,
                    size: 35,
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12)),
              height: 50,
              width: 330,
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: 'Search Country',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const LanguageWidget(),
                  Row(
                    children: [
                      Icon(Icons.filter_alt_outlined),
                      Text('Filter'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

