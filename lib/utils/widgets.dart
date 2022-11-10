import 'package:flutter/material.dart';

class LanguageWidget extends StatefulWidget {
  const LanguageWidget({Key? key}) : super(key: key);

  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends State<LanguageWidget> {
 
  int? _groupValue;
  Widget _radioItem(String text, int value) {
    return ListTile(
      title: Text(text),
      leading: Radio<int>(
        groupValue: _groupValue,
        value: value,
        onChanged: (int? value) {
          setState(() {
            _groupValue = value;
          });
        },
      ),
    );
  }

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
                      //
                      const LanguageSelectionWidget()
                    ],
                  );
                },
              );
            },
            //TODO:
            //1. Add Radio button
            //2. Add a checkbox in homepage
            //

            child: Row(
              children: const [
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


enum Languages { english, russian, arabic, espanyol }

class LanguageSelectionWidget extends StatefulWidget {
  const LanguageSelectionWidget({super.key});

  @override
  State<LanguageSelectionWidget> createState() =>
      _LanguageSelectionWidgetState();
}

class _LanguageSelectionWidgetState extends State<LanguageSelectionWidget> {
   Languages? languages = Languages.english;
   void _handleRadioValueChange(Languages? value) {
    setState(() {
     languages = value;
    });
   
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('English'),
          leading: Radio<Languages>(
            value: Languages.english,
            groupValue: languages,
            onChanged: _handleRadioValueChange
          ),
        ),
        ListTile(
          title: const Text('Russian'),
          leading: Radio<Languages>(
            value: Languages.russian,
            groupValue: languages,
            onChanged: _handleRadioValueChange
          ),
          
        ),
        ListTile(
          title: const Text('Arabic'),
          leading: Radio<Languages>(
            value: Languages.arabic,
            groupValue: languages,
            onChanged: _handleRadioValueChange
          ),
        ),
        ListTile(
          title: const Text('Spanish'),
          leading: Radio<Languages>(
            value: Languages.espanyol,
            groupValue: languages,
            onChanged: _handleRadioValueChange
          ),
        ),
      ],
    );
  }
}
