import 'package:flutter/material.dart';
import 'package:wisata_bandung/kalkulator/KalkulatorButton.dart';

class MainKalkulator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
          child: Container(
              color: Theme.of(context).primaryColor,
              child: Align(alignment: Alignment.centerRight, child: Text('0', style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.white))))),
      GridView.count(padding: const EdgeInsets.all(0), shrinkWrap: true, crossAxisCount: 4, children: <Widget>[
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColorLight, foregroundColor: Theme.of(context).primaryColorDark, text: 'C', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColorLight, foregroundColor: Theme.of(context).primaryColorDark, text: '+/-', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColorLight, foregroundColor: Theme.of(context).primaryColorDark, text: '%', onTap: () {}),
        KalkulatorButton.Icon(
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Theme.of(context).primaryColorDark,
            text: 'backspace',
            icon: Icons.backspace,
            onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColorLight, foregroundColor: Theme.of(context).primaryColorDark, text: '7', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColorLight, foregroundColor: Theme.of(context).primaryColorDark, text: '8', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColorLight, foregroundColor: Theme.of(context).primaryColorDark, text: '9', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColor, foregroundColor: Theme.of(context).primaryColorDark, text: '/', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColorLight, foregroundColor: Theme.of(context).primaryColorDark, text: '4', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColorLight, foregroundColor: Theme.of(context).primaryColorDark, text: '5', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColorLight, foregroundColor: Theme.of(context).primaryColorDark, text: '6', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColor, foregroundColor: Theme.of(context).primaryColorDark, text: 'X', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColorLight, foregroundColor: Theme.of(context).primaryColorDark, text: '1', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColorLight, foregroundColor: Theme.of(context).primaryColorDark, text: '2', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColorLight, foregroundColor: Theme.of(context).primaryColorDark, text: '3', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColor, foregroundColor: Theme.of(context).primaryColorDark, text: '-', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColorLight, foregroundColor: Theme.of(context).primaryColorDark, text: '0', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColorLight, foregroundColor: Theme.of(context).primaryColorDark, text: '.', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColorLight, foregroundColor: Theme.of(context).primaryColorDark, text: '=', onTap: () {}),
        KalkulatorButton(backgroundColor: Theme.of(context).primaryColor, foregroundColor: Theme.of(context).primaryColorDark, text: '+', onTap: () {})
      ])
    ]));
  }
}
