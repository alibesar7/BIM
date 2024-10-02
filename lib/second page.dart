// State<MyHomePage> createState() => _MyHomePageState();
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class second extends StatelessWidget {
  const second({super.key, required this.age, required this.ww, required this.hh});
  final int age;
  final int ww;
  final double hh;
    double ccc(double h,int w){
    double res= (w / ( (h/100)*(h/100)));
    // double myNumber = 3.14159;
    // String formattedNumber = myNumber.toStringAsFixed(1);
      String f=res.toStringAsFixed(1);
    // String numberString = "3.14";
    // double number = double.parse(numberString);
    res=double.parse(f);
 return res;
  }
  String ss(){
   double res=ccc(hh, ww);
     if(res<18.4){
       return"UNDERWEIGHT";
     }else if(res<24.9){
       return"HEALTHY";
     }else if(res<29.9){
       return"OVERWEIGHT";
     }else{
       return"OBESE";
     }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
      title: Text( "BMI Calculator",style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white70,
      fontSize: 30,
    ),),
    centerTitle: false,
    backgroundColor : Color(0xFF263238),


    ),
      body:Center(
        child: Column(
          children: [
            Divider(thickness: 2, color: Colors.white70,),
            SizedBox(height: 10,),
            Container(
              width: 400,
              height: 200,
              child: Center(child: Text("Your Result",style: TextStyle(fontSize: 50,color: Colors.white),),),
              color:Color(0xFF263238) ,
            ),
            SizedBox(height: 20,),
            Container(
              width:  390,
              height: 400,
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text("${ss()}",style: TextStyle(fontSize: 50,color: Colors.green),),
                  SizedBox(height: 30),

                  Text("${ccc(hh, ww)}",style: TextStyle(fontSize: 50,color: Colors.white),),
              SizedBox(height: 30),
                  Text("InterPertation",style: TextStyle(fontSize: 50,color: Colors.white)),
                ],
              ),
              decoration: BoxDecoration(
                color:  Color(0xFF37474F),
                borderRadius: BorderRadius.circular(20),
              ),
            ),SizedBox(height: 70,),
            Container(

              child: ElevatedButton(onPressed: ( ){
                Navigator.pop(context);
              },
                  child: Text("RECALCULATE",style: TextStyle(fontSize: 30,color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent)
              ),

              width: 480,
              height: 70,


              color: Colors.redAccent,


            )



          ],
        ),
      ),
      backgroundColor: Color(0xFF263238),
    );
  }

}
