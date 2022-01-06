import 'package:flutter/material.dart';
import 'package:barcode_scan2/barcode_scan2.dart';

class ScannerQR extends StatefulWidget {
  @override
  State<ScannerQR> createState() => _ScannerQRState();
}

class _ScannerQRState extends State<ScannerQR> {
  String result_ = "";

  void scanner() async {
    var result = await BarcodeScanner.scan();
    setState(() {
      result_ = result.rawContent;
    });
    print(result.type); // The result type (barcode, cancelled, failed)
    print(result.rawContent); // The barcode content
    print(result.format); // The barcode format (as enum)
    print(result.formatNote); // If a unknown format was scanned this field contains a note
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scanner')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  scanner();
                },
                child: Text('Scan')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Hasil : '), Text(result_)],
            )
          ],
        ),
      ),
    );
  }
}
