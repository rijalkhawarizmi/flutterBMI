import 'package:flutter/material.dart';
import 'result_page.dart';
import 'calculatebrain.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


enum icon{
  male,
  female
}
icon jeniskelamin;
class DesignHome extends StatefulWidget {
  @override
  _DesignHomeState createState() => _DesignHomeState();
}

class _DesignHomeState extends State<DesignHome> {

  int  tinggi=180;
  int weight=60;
  int age=20;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          jeniskelamin=icon.male;
                        });
                      },
                      child:Container(
                          decoration: BoxDecoration(
                            color: jeniskelamin==icon.male ?Colors.red:Colors.indigoAccent,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          height: 170.0,
                          width: 100.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.mars,size: 100.0,color: Colors.white,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('Male',style: TextStyle(letterSpacing:1.5,color: Colors.white,fontFamily: 'BebasNeue',fontSize: 30.0,fontWeight: FontWeight.w900),)
                          ],
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          jeniskelamin=icon.female;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: jeniskelamin==icon.female?Colors.red: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        height: 170.0,
                        width: 100.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.venus,size: 100.0,color: Colors.white,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('Female',style: TextStyle(letterSpacing:2.0,color: Colors.white,fontFamily: 'BebasNeue',fontSize: 30.0,fontWeight: FontWeight.w900),)
                          ],
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                   margin: EdgeInsets.only(left: 15.0,right: 15.0),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                       color: Colors.indigoAccent
                   ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',style: TextStyle(fontFamily:'BebasNeue',letterSpacing:2.5,color:Colors.white,fontSize: 40.0,fontWeight: FontWeight.w900),
                    ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Text(
                         '$tinggi',style: TextStyle(fontFamily:'BebasNeue',letterSpacing:1.5,color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30.0),
                       ),
                       Text('cm',style: TextStyle(color: Colors.white,fontSize: 20),)
                     ],
                   ),
                    SliderTheme(
                        data:SliderTheme.of(context).copyWith(
                            thumbShape:RoundSliderThumbShape(enabledThumbRadius: 10.0)
                        ),
                       child: Slider(
                           value: tinggi.toDouble(),
                           min: 120.0,
                           max: 220.0,
                           inactiveColor: Colors.white,
                           activeColor: Colors.red[500],
                           onChanged: (double value){
                             setState(() {
                               tinggi=value.round();
                             });
                           }
                       ),
                        ),
                  ],
                )

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      height: 170.0,
                      width: 100.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Text('WEIGHT',style: TextStyle(fontFamily:'BebasNeue',letterSpacing:3.5,color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.bold),),
                          Text('$weight',style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.white,
                                ),

                                height: 60.0,
                                width: 60.0,
                                child: FlatButton(
                                    onPressed: (){
                                     setState(() {
                                       weight--;
                                     });
                                    }, child:Text('-',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w900,fontSize: 50.0),)),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.white,
                                ),
                                height: 60.0,
                                width: 60.0,
                                child: FlatButton(
                                    onPressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                    }, child: Text('+',style: TextStyle(color: Colors.black54,fontSize: 50.0,fontWeight: FontWeight.w900,),))
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      height: 170.0,
                      width: 100.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('AGE',style: TextStyle(fontFamily:'BebasNeue',letterSpacing:3.5,color: Colors.white,fontWeight: FontWeight.w900,fontSize: 40.0),),
                          Text('$age',style: TextStyle(color: Colors.white,fontSize:30.0,fontWeight: FontWeight.w900),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.white,
                                ),
                                height: 60.0,
                                width: 60.0,
                                child: FlatButton(
                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    }, child: Text('-',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w900,fontSize: 50.0),),)
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Colors.white,
                                  ),
                                  height: 60.0,
                                  width: 60.0,
                                  child: FlatButton(
                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    }, child: Text('+',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w900,fontSize: 50.0),),)
                              ),
                            ],
                          )
                        ],
                      )
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Calculatebrain calc = Calculatebrain(height: tinggi,weight: weight);
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ResultPage(

                      resultbody:calc.hitung(),
                      pesan: calc.getResult(),
                      resultgambar: calc.getIcon(),



                    );
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
                    color: Colors.indigoAccent
                  ),
                  child: Center(child: Text('CALCULATE',style: TextStyle(fontFamily:'BebasNeue',letterSpacing:2.5,color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50.0),)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
