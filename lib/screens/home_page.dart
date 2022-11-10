import 'package:countries_app/utils/constants.dart';
import 'package:countries_app/utils/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return SizedBox(
                              height: 250,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Filter',
                                          style: TextStyle(
                                              fontSize: 18.5,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.close),
                                          onPressed: () => Navigator.pop(context),
                                        )
                                      ],
                                    ),
                                  ),
                                  //
                                  // DropdownButton(items: [
                                  //   DropdownMenuItem(child: Row(
                                  //     children: [Text('Column'),
                                  //     Checkbox(value: _firstValue, onChanged: (value) {
                                  //       setState(() {
                                  //         value = _firstValue;
                                  //       });
                                  //     }, )
                                  //     ],
                                  //   ))
                                  // ], onChanged: (){})
                                ],
                              ),
                            );
                          });
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.filter_alt_outlined),
                        Text('Filter'),
                      ],
                    ),
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
