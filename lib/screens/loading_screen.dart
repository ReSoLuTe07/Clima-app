import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState(){
    super.initState();
    getLocation();
    requestlocation();
  }
  void getLocation() async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      print(position);
  }
  void requestlocation() async{

    LocationPermission permission = await Geolocator.requestPermission();
    print(permission);
  }

  @override
  Widget build(BuildContext context) {
    String myMargn ='10';
    double? MyMarginAsDouble;
    try {
       MyMarginAsDouble = double.parse(myMargn);

    }
    catch(e){
      print(e);

    }
    return Scaffold(
      body: Container(

        margin: EdgeInsets.all(MyMarginAsDouble ?? 20.0),
        color: Colors.red,
      ),
    );

  }
}
