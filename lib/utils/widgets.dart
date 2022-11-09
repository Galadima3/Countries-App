import 'package:flutter/material.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () async {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Languages',
                              style: TextStyle(
                                  fontSize: 18.5, fontWeight: FontWeight.w600),
                            ),
                            IconButton(
                              icon: Icon(Icons.cancel),
                              onPressed: () => Navigator.pop(context),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: Row(
              children: [
                Icon(
                  Icons.language,
                  size: 30,
                ),
                SizedBox(
                  width: 3,
                ),
                Text('EN'),
              ],
            )),
      ],
    );
  }
}
