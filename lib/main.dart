import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:task1/second%20page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const Center(
        child: MyHomePage(
          title: 'BMI' ,

        ),
      ),
    );

  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterage = 18;
  int _counterwe=60;


  void _incrementage() {
    setState(() {
      _counterage++;
    });
  }

  void _decrmentage(){
    if(_counterage>1){
      setState(() {
        _counterage--;
      });
    }
  }

  void _incrementwe() {
    setState(() {
      _counterwe++;
    });
  }
  void _decrmentwe(){
    if(_counterwe>1){
      setState(() {
        _counterwe--;
      });
    }
  }
  TextEditingController controller= TextEditingController();
  double _currentValue = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text( "BMI Calculator",style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white70,
          fontSize: 30,
        ),),
        centerTitle: false,
        backgroundColor : Color(0xFF263238),


      ),
      body:

      Center(

        child:

        Column(
            children: [
              Divider(thickness: 2, color: Colors.white70,),
              SizedBox(height: 10,),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 180,
                    height :210,

                    child: Column(
                      children: [
                        ElevatedButton(onPressed: (){},

                          child:Column(
                            children: [

                              Icon(Icons.male,size: 150,color: Colors.white,),
                              Text("MALE",style: TextStyle(
                                color:Colors.white ,
                                fontSize: 30,
                              ),),

                            ],

                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF37474F),


                          ),

                        )
                      ],
                    ),
                    decoration: BoxDecoration(

                      color: Color(0xFF37474F),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Container(
                    width: 180,
                    height :210,

                    child: Column(
                      children: [
                        ElevatedButton(onPressed: (){},

                          child:Column(
                            children: [

                              Icon(Icons.female,size: 150,color: Colors.white,),
                              Text("FEMAL",style: TextStyle(
                                color:Colors.white ,
                                fontSize: 30,
                              ),),

                            ],

                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF37474F),


                          ),

                        )
                      ],
                    ),
                    decoration: BoxDecoration(

                      color: Color(0xFF37474F),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                width: 380,
                height: 200,

                child:
                Column(
                  children: [
                    Text("HEIGHT",style: TextStyle(fontSize: 35,color: Colors.white),),

                    SizedBox(height: 10,),
                    Text("${_currentValue.toInt()}",style: TextStyle(fontSize: 35,color: Colors.white),)
                    , Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(" cm",style:TextStyle(color: Colors.white,fontSize: 15),)
                    ),
                    SizedBox(height:11,),

                    SliderTheme(
                      data: SliderThemeData(
                        activeTrackColor: Colors.red,
                        inactiveTrackColor: Colors.red[100],
                        thumbColor: Colors.red,
                      ),
                      child: Slider(
                        value: _currentValue,
                        min: 0,
                        max: 250,
                        divisions: 250,
                        onChanged: (double newValue) {
                          setState(() {
                            _currentValue = newValue;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(

                  color: Color(0xFF37474F),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text("WEIGHT",style: TextStyle(fontSize: 35,color: Colors.white),),
                        SizedBox(height: 20,),
                        Text("$_counterwe",style: TextStyle(fontSize: 35,color: Colors.white),),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                                onPressed: _incrementwe,
                                child: Icon(Icons.add,size: 15,)),

                            ElevatedButton(
                                onPressed: _decrmentwe,
                                child: Icon(Icons.minimize_outlined,size: 15,)),

                          ],
                        )

                      ],
                    ),
                    width: 180,
                    height :210,
                    decoration: BoxDecoration(

                      color: Color(0xFF37474F),
                      borderRadius: BorderRadius.circular(15),
                    ),

                  ),
                  Container(
                    child: Column(
                      children: [
                        Text("AGE",style: TextStyle(fontSize: 35,color: Colors.white),),
                        SizedBox(height: 20,),
                        Text("$_counterage",style: TextStyle(fontSize: 35,color: Colors.white),),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                                onPressed: _incrementage,
                                child: Icon(Icons.add,size: 15,)),

                            ElevatedButton(
                                onPressed: _decrmentage,
                                child: Icon(Icons.minimize_outlined,size: 15,)),

                          ],
                        )

                      ],
                    ),
                    width: 180,
                    height :210,
                    decoration: BoxDecoration(

                      color: Color(0xFF37474F),
                      borderRadius: BorderRadius.circular(15),
                    ),

                  ),

                ],
              )
              ,
              SizedBox(height: 20,),
              Container(

                child: ElevatedButton(onPressed: ( ){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> second(age:_counterage, ww:_counterwe ,hh: _currentValue,)),
                  );
                },
                    child: Text("CALCULATE",style: TextStyle(fontSize: 30,color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent)
                ),

                width: 480,
                height: 70,


                color: Colors.redAccent,


              )
            ]


        )
        ,
      )
      ,
      backgroundColor: Color(0xFF263238),
    );
  }
}
 