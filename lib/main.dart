import 'package:flutter/material.dart';
import 'package:gsg_flutter_assignement1/CardWidget.dart';
import 'package:gsg_flutter_assignement1/transport.dart';

void main() {
  runApp(MaterialApp(home:ListViews()));
}

class ListViews extends StatelessWidget {
  List<Transport>transport = [
    Transport('bike',Icons.bike_scooter),
    Transport('car',Icons.car_repair),
    Transport('boat',Icons.sailing),
    Transport('bus',Icons.bus_alert),
    Transport('railway',Icons.railway_alert),
    Transport('run',Icons.run_circle),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF009788),
        title: Text('ListViews'),
      ),
      body: ListView( 
       children: transport.map((e){
         return CardWidget(e.name, e.symbol);
       }).toList()
      ,) ,
    );
  }
}

