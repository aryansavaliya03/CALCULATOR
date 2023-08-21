import 'package:flutter/material.dart';

import 'calculator.dart';

class white extends StatefulWidget {
  const white({super.key});

  @override
  State<white> createState() => _whiteState();
}

class _whiteState extends State<white> {
  fun(String a) {
    if (a == "C") {
      text = "";
    }
    else if (a == "CE")
    {
      text = text.substring(0, text.length - 1);
    }
    else if (a == "+")
    {
      text1 = text;
      text = "";
      t = 1;
    }
    else if(a == "-")
    {
      text1 = text;
      text = "";
      t = 2;
    }
    else if(a == "x")
    {
      text1 = text;
      text = "";
      t = 3;
    }
    else if(a == "/")
    {
      text1 = text;
      text = "";
      t = 4;
    }
    else if(a == "%")
    {
      text1 = text;
      text = "";
      t =5;
    }
    else if (a == "=") {
      if (t == 1)
      {
        ans = int.parse(text1) + int.parse(text);
        text = ans.toString();
      }
      else if(t==2)
      {
        ans = int.parse(text1) - int.parse(text);
        text = ans.toString();
      }
      else if(t==3)
      {
        ans = int.parse(text1) * int.parse(text);
        text = ans.toString();
      }
      else if(t==4)
      {
        ans = int.parse(text1) ~/ int.parse(text);
        text = ans.toString();
      }
      else if(t==5)
      {
        ans = int.parse(text1)*100 ~/ int.parse(text);
        text = ans.toString();
      }
      setState(() {});
    }
    else
    {
      text = text + a;
    }
    setState(() {});
  }
  @override
  String mod = "";
  String text = "";
  String text1 = "";
  int t = 0;
  int ans = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          SizedBox(width: 1 ,height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return calculator();
                },));
                setState(() {

                });
              }, child: Text("𝐃𝐀𝐑𝐊",style: TextStyle(color: Colors.black)))

            ],
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Container(alignment: Alignment.bottomRight,
                      child: Text(
                        "${text}",
                        style: TextStyle(color: Colors.black, fontSize: 70,),
                      ),
                      height: 350,
                      width: 300,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () => fun("C"),
                  child: Container(
                    child: Text(
                      "C",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
              InkWell(
                  onTap: () => fun("CE"),
                  child: Container(
                    child: Text(
                      "CE",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
              InkWell(
                  onTap: () => fun("%"),
                  child: Container(
                    child: Text(
                      "%",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
              InkWell(
                  onTap: () => fun("/"),
                  child: Container(
                    child: Text(
                      "/",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () => fun("7"),
                  child: Container(
                    child: Text(
                      "7",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
              InkWell(
                  onTap: () => fun("8"),
                  child: Container(
                    child: Text(
                      "8",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
              InkWell(
                  onTap: () => fun("9"),
                  child: Container(
                    child: Text(
                      "9",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
              InkWell(
                  onTap: () => fun("x"),
                  child: Container(
                    child: Text(
                      "x",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () => fun("4"),
                  child: Container(
                    child: Text(
                      "4",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
              InkWell(
                  onTap: () => fun("5"),
                  child: Container(
                    child: Text(
                      "5",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
              InkWell(
                  onTap: () => fun("6"),
                  child: Container(
                    child: Text(
                      "6",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
              InkWell(
                  onTap: () => fun("-"),
                  child: Container(
                    child: Text(
                      "-",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () => fun("1"),
                  child: Container(
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
              InkWell(
                  onTap: () => fun("2"),
                  child: Container(
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
              InkWell(
                  onTap: () => fun("3"),
                  child: Container(
                    child: Text(
                      "3",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
              InkWell(
                  onTap: () => fun("+"),
                  child: Container(
                    child: Text(
                      "+",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () => fun("0"),
                  child: Container(
                    child: Text(
                      "0",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 190,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
              //Container(width: 80,height: 80,margin: EdgeInsets.all(5),decoration: BoxDecoration(color: Colors.white30,borderRadius: BorderRadius.all(Radius.circular(100))),),
              InkWell(
                  onTap: () => fun("."),
                  child: Container(
                    child: Text(
                      ".",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
              InkWell(
                  onTap: () => fun("="),
                  child: Container(
                    child: Text(
                      "=",
                      style: TextStyle(color: Colors.black, fontSize: 35),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  )),
            ],
          ),
        ],
      ),backgroundColor: Colors.white,
    );
  }
}
// Radio(value: "dark", groupValue: mod, onChanged: (value) {
//                   mod=value!;
//                   Navigator.push(context, MaterialPageRoute(builder: (context) {
//                     return white();
//                   },));
//                   setState(() {
//
//                   });
//                 },),
//                 Text("𝐋𝐈𝐆𝐇𝐓",style: TextStyle(color: Colors.white)),