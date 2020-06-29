import 'package:flutter/material.dart';



class ResultPage extends StatelessWidget {
  String pesan;
  String resultbody;
  String resultgambar;


  ResultPage({@required this.pesan,@required this.resultbody,@required this.resultgambar});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
           gradient: LinearGradient(
             begin: Alignment.topCenter,
             end: Alignment.bottomCenter,
             colors: [
               Color(0xff3594dd),
               Color(0xff4563db),
               Color(0xff5036d5),
               Color(0xff5b16d0)
             ]
           ),
          ),
          child: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(child: Text('Your Result',style: TextStyle(fontFamily: 'BebasNeue',fontSize: 70.0,color: Colors.white),)),
                  Center(child: Text('$resultbody',style: TextStyle(color: Colors.white,fontSize: 60.0,fontFamily: 'BebasNeue',),)),
                  Center(child: Text('$pesan',style: TextStyle(color: Colors.white,fontSize: 60.0,fontFamily: 'BebasNeue',))),
                  Center(child: Text('$resultgambar',style: TextStyle(fontSize: 60.0),)),
                ],
              ),
              Positioned(
                bottom: 00.0,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 130.0,
                    width: 420.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),topLeft: Radius.circular(10.0)),
                       color: Colors.indigoAccent
                    ),
                    child: Center(child: Text('RE-CALCULATE',style: TextStyle(color: Colors.white,fontSize: 50.0,fontFamily: 'BebasNeue'),))
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
