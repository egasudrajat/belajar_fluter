// import 'MahasiswaModel.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:flutter/material.dart';
//
// class SqfliteActivity extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => SqfliteActivityState();
// }
//
// class SqfliteActivityState extends State<SqfliteActivity> {
//   final keyFormMahasiswa = GlobalKey<FormState>();
//
//   TextEditingController controllerNim = TextEditingController();
//   TextEditingController controllerName = TextEditingController();
//   TextEditingController controllerDepartment = TextEditingController();
//   TextEditingController controllerSks = TextEditingController();
//
//   String nim = "";
//   String name = "";
//   String department = "";
//   int sks = 0;
//
//   List<MahasiswaModel> mahasiswa = [];
//
//   @override
//   void initState() {
//     super.initState();
//
//     WidgetsBinding.instance.addPostFrameCallback((_) async {
//       mahasiswa = await MySqflite.instance.getMahasiswa();
//       setState(() {});
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               margin: EdgeInsets.only(top: 36, left: 24, bottom: 4),
//               child: Text("Input Mahasiswa",
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//             ),
//             Form(
//               key: keyFormMahasiswa,
//               child: Container(
//                 margin: EdgeInsets.only(left: 24, right: 24),
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       controller: controllerNim,
//                       decoration: InputDecoration(hintText: "NIM"),
//                       validator: (value) => _onValidateText(value),
//                       keyboardType: TextInputType.number,
//                       onSaved: (value) => nim = value,
//                     ),
//                     TextFormField(
//                       controller: controllerName,
//                       decoration: InputDecoration(hintText: "Nama"),
//                       validator: (value) => _onValidateText(value),
//                       onSaved: (value) => name = value,
//                     ),
//                     TextFormField(
//                       controller: controllerDepartment,
//                       decoration: InputDecoration(hintText: "Jurusan"),
//                       validator: (value) => _onValidateText(value),
//                       onSaved: (value) => department = value,
//                     ),
//                     TextFormField(
//                       controller: controllerSks,
//                       decoration: InputDecoration(hintText: "SKS"),
//                       validator: (value) => _onValidateText(value),
//                       keyboardType: TextInputType.number,
//                       onSaved: (value) => sks = int.parse(value),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 24, right: 24),
//               child: RaisedButton(
//                 onPressed: () {
//                   _onSaveMahasiswa();
//                 },
//                 child: Text("Simpan"),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 24, left: 24, bottom: 4),
//               child: Text("Data Mahasiswa",
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//             ),
//             Expanded(
//                 child: ListView.builder(
//                     itemCount: mahasiswa.length,
//                     padding: EdgeInsets.fromLTRB(24, 0, 24, 8),
//                     itemBuilder: (BuildContext context, int index) {
//                       var value = mahasiswa[index];
//                       return Container(
//                         margin: EdgeInsets.only(bottom: 12),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.stretch,
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text("Nim: ${value.nim}"),
//                             Text("Name: ${value.name}"),
//                             Text("Department: ${value.department}"),
//                             Text("SKS: ${value.sks}"),
//                           ],
//                         ),
//                       );
//                     }))
//           ],
//         ));
//   }
//
//   String _onValidateText(String value) {
//     if (value.isEmpty) return 'Tidak boleh kosong';
//     return null;
//   }
//
//   _onSaveMahasiswa() async {
//     FocusScope.of(context).requestFocus(new FocusNode());
//
//     if (keyFormMahasiswa.currentState.validate()) {
//       keyFormMahasiswa.currentState.save();
//       controllerNim.text = "";
//       controllerName.text = "";
//       controllerDepartment.text = "";
//       controllerSks.text = "";
//
//       await MySqflite.instance.insertMahasiswa(MahasiswaModel(
//           nim: nim, name: name, department: department, sks: sks));
//
//       mahasiswa = await MySqflite.instance.getMahasiswa();
//       setState(() {});
//     }
//   }
// }