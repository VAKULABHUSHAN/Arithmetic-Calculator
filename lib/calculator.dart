import 'dart:math';

import 'package:flutter/material.dart';


class calci extends StatefulWidget {
  const calci({super.key});

  @override
  State<calci> createState() => _calciState();
}

class _calciState extends State<calci> {


  TextEditingController qwer =TextEditingController();

  String val1="",val2="",optr="";

  bool clk = false;


  @override

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: const Icon(Icons.calculate_outlined,color: Colors.white),
          title: const Text("calculator",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
          backgroundColor: Colors.black,

        ),
        body:
        Column(
          children: [
            const SizedBox(height: 5,),
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              child: Center(
                child: TextField(
                  controller: qwer,
                  style: TextStyle(color: Colors.white,fontSize: 35),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("x²",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: () {
                    if(clk)
                    {
                      val2+="x²";
                      qwer.text = val2;
                    }
                    else{
                      val1+="x²";
                      qwer.text=val1;
                    }
                  },
                ),
                GestureDetector(
                    child: Container(
                      height: MediaQuery.of(context).size.height/8,
                      width: MediaQuery.of(context).size.width/4.5,
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child:Center(child: const Text("√",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                    onTap: (){
                      qwer.text = "√";
                      optr = "√";
                      clk =  true;
                    }
                ),
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("x³",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: () {
                    qwer.text = "x³";
                    optr = "x³";
                    clk =  true;
                  },
                ),
                GestureDetector(
                    child: Container(
                      height: MediaQuery.of(context).size.height/8,
                      width: MediaQuery.of(context).size.width/4.5,
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child:Center(child: const Text("AC",style: TextStyle(fontSize: 55,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                    onTap: () {
                      qwer.text = "";
                      optr = "";
                      clk =  false;
                      val2="";
                      val1="";
                    }
                ),
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("7",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: (){
                    if(clk)
                    {
                      val2+="7";
                      qwer.text = val2;
                    }
                    else{
                      val1+="7";
                      qwer.text=val1;
                    }
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("8",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: (){
                    if(clk)
                    {
                      val2+="8";
                      qwer.text = val2;
                    }
                    else{
                      val1+="8";
                      qwer.text=val1;
                    }
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("9",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: (){
                    if(clk)
                    {
                      val2+="9";
                      qwer.text = val2;
                    }
                    else{
                      val1+="9";
                      qwer.text=val1;
                    }
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("/",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: (){
                    qwer.text="/";
                    optr="/";
                    clk=true;

                  },
                ),
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("4",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: (){
                    if(clk)
                    {
                      val2+="4";
                      qwer.text = val2;
                    }
                    else{
                      val1+="4";
                      qwer.text=val1;
                    }
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("5",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: (){
                    if(clk)
                    {
                      val2+="5";
                      qwer.text = val2;
                    }
                    else{
                      val1+="5";
                      qwer.text=val1;
                    }
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("6",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: (){
                    if(clk)
                    {
                      val2+="6";
                      qwer.text = val2;
                    }
                    else{
                      val1+="6";
                      qwer.text=val1;
                    }
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("*",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: (){
                    qwer.text="*";
                    optr="*";
                    clk=true;

                  },
                ),
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("1",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: (){
                    if(clk)
                    {
                      val2+="1";
                      qwer.text = val2;
                    }
                    else{
                      val1+="1";
                      qwer.text=val1;
                    }
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("2",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: (){
                    if(clk)
                    {
                      val2+="2";
                      qwer.text = val2;
                    }
                    else{
                      val1+="2";
                      qwer.text=val1;
                    }
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("3",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: (){
                    if(clk)
                    {
                      val2+="3";
                      qwer.text = val2;
                    }
                    else{
                      val1+="3";
                      qwer.text=val1;
                    }
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("+",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: () {
                    qwer.text="+";
                    optr="+";
                    clk=true;

                  },
                ),
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("0",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: () {
                    if(clk)
                    {
                      val2+="0";
                      qwer.text = val2;
                    }
                    else{
                      val1+="0";
                      qwer.text=val1;
                    }
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text(".",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: () {
                    if(clk)
                    {
                      val2+=".";
                      qwer.text = val2;
                    }
                    else{
                      val1+=".";
                      qwer.text=val1;
                    }
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("=",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: (){
                    if(optr=="+")
                    {
                      double a = double.parse(val1);
                      double b = double.parse(val2);
                      double res = a+b;

                      qwer.text = res.toString();

                    }
                    if(optr=="-")
                    {
                      double a = double.parse(val1);
                      double b = double.parse(val2);
                      double res = a-b;

                      qwer.text = res.toString();

                    }
                    if(optr=="*")
                    {
                      double a = double.parse(val1);
                      double b = double.parse(val2);
                      double res = a*b;

                      qwer.text = res.toString();

                    }
                    if(optr=="/")
                    {
                      double a = double.parse(val1);
                      double b = double.parse(val2);
                      double res = a/b;

                      qwer.text = res.toString();

                    }
                    if(optr=="x²")
                    {
                      double a = double.parse(val1);
                      double b= double.parse(val1);
                      double res = a*b;


                      qwer.text = res.toString();

                    }
                    if(optr == "√")
                    {
                      double g = double.parse(val1);
                      num res = pow(g, (1/2));
                      qwer.text=res.toString();
                    }
                    if(optr == "x³")
                    {
                      double x = double.parse(val1);
                      double res = x*x*x;
                      qwer.text=res.toString();
                    }
                    if(optr == "%")
                    {
                      double a = double.parse(val1);
                      double b = double.parse(val2);
                      double res = (a*b)/100;
                      qwer.text=res.toString();
                    }
                    if(optr == "mod")
                    {
                      double a = double.parse(val1);
                      double b = double.parse(val2);
                      double res = a - b * (a / b).floor();
                      qwer.text = res.toString();
                    }
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("-",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: () {
                    qwer.text="-";
                    optr="-";
                    clk=true;

                  },
                ),
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/11,
                    width: MediaQuery.of(context).size.width/2.25,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("%",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: (){
                    if(clk)
                    {
                      val2+="%";
                      qwer.text = val2;
                    }
                    else{
                      val1+="%";
                      qwer.text=val1;
                    }
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height/11,
                    width: MediaQuery.of(context).size.width/2.25,
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child:Center(child: const Text("mod",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  onTap: (){
                    qwer.text = "mod";
                    optr = "mod";
                    clk =  true;
                  }
                ),

              ],
            ),

          ],
        )
    );
  }
}
