import 'package:flutter/material.dart';

class Radiobutton extends StatefulWidget {
  @override
  _RadiobuttonState createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  int _rgProgramming = 1;
  String _selectedValue = "";

  final List<RadioGroup> _programmingList = [
    RadioGroup(index: 1, text: "Kotlin"),
    RadioGroup(index: 2, text: "Swift"),
    RadioGroup(index: 3, text: "Flutter"),
    RadioGroup(index: 4, text: "Java"),
    RadioGroup(index: 5, text: "React Native"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter Radio"),
      ),
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Apa bahasa pemrograman yang kamu suka ?"),
            _buildRadioButton(),
            Text("Kamu menyukai pemrograman :"),
            SizedBox(
              height: 8.0,
            ),
            Center(
              child: Text(
                _selectedValue == null ? "Belum memilih" : _selectedValue,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // widget radio
  Widget _buildRadioButton() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      RadioListTile(
          title: Text('1'),
          value: 1,
          groupValue: _rgProgramming,
          onChanged: (val) {
            setState(() {
              _rgProgramming = val as int;
              _selectedValue = '1';
            });
          }),      RadioListTile(
          title: Text('2'),
          value: 2,
          groupValue: _rgProgramming,
          onChanged: (val) {
            setState(() {
              _rgProgramming = val as int;
              _selectedValue = '1';
            });
          })
      //   RadioListTile(
      //   title: Text(programming.text),
      //   value: programming.index,
      //   groupValue: _rgProgramming,
      //   onChanged: (value) {
      //     setState(() {
      //       _rgProgramming = value as int;
      //       _selectedValue = programming.text;
      //     });
      //   },
      // )
    ]);
  }

// Widget _buildRadioButton() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: _programmingList.map((programming) => RadioListTile(
//       title: Text(programming.text),
//       value: programming.index,
//       groupValue: _rgProgramming,
//       onChanged: (value) {
//         setState(() {
//           _rgProgramming = value as int;
//           _selectedValue = programming.text;
//         });
//       },
//     )).toList(),
//   );
// }
}

// widget radio list tile
// Widget _buildRadioButton() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: _programmingList.map((programming) => RadioListTile(
//         title: Text(programming.text),
//         value: programming.index,
//         groupValue: _rgProgramming,
//         controlAffinity: ListTileControlAffinity.trailing,
//         dense: true,
//         onChanged: (value) {
//           setState(() {
//             _rgProgramming = value;
//             _selectedValue = programming.text;
//           });
//         },
//       )).toList(),
//     );
//   }
// }

class RadioGroup {
  final int index;
  final String text;

  RadioGroup({required this.index, required this.text});
}
