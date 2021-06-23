import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:gsg_flutter_assignement1/transport.dart';

class CardWidget extends StatelessWidget {
  String name;
  IconData symbol;
  CardWidget(this.name, this.symbol);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(2),
      color: Colors.white,
      elevation: 2.0,
      child: ListTile(
        title: Text('$name'),
        leading: Container(
          child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Icon(
            symbol,
            color: Colors.grey,
          ),
          ),
         
        ),
      ),
    
    );
  }
}
