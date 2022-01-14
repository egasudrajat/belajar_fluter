import 'package:flutter/material.dart';

class SelectedListItem extends StatefulWidget {
  @override
  _SelectedListItemState createState() => _SelectedListItemState();
}

class _SelectedListItemState extends State<SelectedListItem> {

  final List<int> _selectedItems = <int>[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Select List Items'),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return
              Container(
                color: (_selectedItems.contains(index)) ? Colors.blue : Colors.transparent,
                child: ListTile(
                  onTap: (){
                    if(_selectedItems.contains(index)){
                      setState(() {
                        _selectedItems.removeWhere((val) => val == index);
                      });
                    }
                  },
                  onLongPress: (){
                    if(! _selectedItems.contains(index)){
                      setState(() {
                        _selectedItems.add(index);
                      });
                    }
                  },
                  title: Text('$index'),
                ),
              );
          },
        ),
      ),
    );
  }
}