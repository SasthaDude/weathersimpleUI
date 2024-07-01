
// import 'dart:ui';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// class calculator extends StatefulWidget {
//   const calculator({super.key});
//
//   @override
//   State<calculator> createState() => _calculatorState();
// }
//
// class _calculatorState extends State<calculator> {
//
//   final TextEditingController _textEditingController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Icon(Icons.compare_arrows, color: Colors.white,),
//                 Icon(Icons.calculate, color: Colors.white,),
//                 Icon(Icons.apps_sharp, color: Colors.white,),
//                 Icon(Icons.other_houses_outlined, color: Colors.white,),
//                 Icon(Icons.more_vert, color: Colors.white,),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               alignment: Alignment.bottomRight,
//               height: 260,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//               ),
//               child: TextFormField(
//                 controller: _textEditingController,
//                 style: TextStyle(
//                   fontSize: 60,
//                 ),
//                 decoration: InputDecoration(
//                 ),
//                 textAlign: TextAlign.end,
//               ),
//             ),
//           ),
//           Container(
//             height: 510,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                       height: 70,
//                       width: 170,
//                       decoration: BoxDecoration(
//                         border: Border.all(),
//                         color: Colors.deepOrange,
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("AC", style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                         border: Border.all(),
//                         color: Colors.deepOrange,
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("DEL", style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                         border: Border.all(),
//                         color: Colors.deepOrange,
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("MOD", style: TextStyle(
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                       height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                         border: Border.all(),
//                         color: Colors.deepOrange,
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("x²", style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       height:70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                         color: Colors.deepOrange,
//                         //shape: BoxShape.circle,
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("√", style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 35,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           ),
//                         ),
//                       ),
//
//                     ),
//                     Container(
//                       height:70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                         border: Border.all(),
//                         color: Colors.deepOrange,
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap: (){},
//                           child: Text("%", style: TextStyle(
//                             fontSize: 35,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                         border: Border.all(),
//                         color: Colors.deepOrange,
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("÷", style: TextStyle(
//                             fontSize: 50,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                       height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.white)
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("7", style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.white)
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("8", style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.white)
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("9", style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                         border: Border.all(),
//                         color: Colors.deepOrange,
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("x", style: TextStyle(
//                             fontSize: 40,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.white)
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("4", style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.white)
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("5", style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.white)
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("6", style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                         border: Border.all(),
//                         color: Colors.deepOrange,
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("-", style: TextStyle(
//                             fontSize: 50,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.white)
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("1", style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.white)
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("2", style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.white)
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("3", style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                         border: Border.all(),
//                         color: Colors.deepOrange,
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("+", style: TextStyle(
//                             fontSize: 50,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.white,),
//
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("+/-", style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.white)
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text("0", style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                           border: Border.all(color: Colors.white)
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:(){},
//                           child: Text(".", style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       height:60,
//                       width: 65,
//                       decoration: BoxDecoration(
//                         color: Colors.deepOrange,
//                         shape: BoxShape.circle,
//                       ),
//                       child: Center(
//                         child: GestureDetector(
//                           onTap:() {},
//                           child: Text("=", style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 35,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           ),
//                         ),
//                       ),
//
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//
//         ],
//       ),
//       backgroundColor: Colors.black,
//
//     );
//   }
// }



import 'dart:math';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController _textEditingController = TextEditingController();
  String n1 = '';
  String n2 = '';
  String opr = '';
  bool clk = false;

  void calculate() {
    double num1 = double.parse(n1);
    double num2 = double.parse(n2);
    double result = 0;

    switch (opr) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case 'x':
        result = num1 * num2;
        break;
      case '÷':
        result = num1 / num2;
        break;
      case 'MOD':
        result = num1 % num2;
        break;
      case 'x²':
        result = num1 * num1;
        break;
      case '√':
        result = sqrt(num1);
        break;
    }

    _textEditingController.text = result.toString();
    n1 = result.toString();
    n2 = '';
    opr = '';
    clk = false;
  }

  @override
  Widget build(BuildContext context) {
    final double buttonSize = MediaQuery.of(context).size.width * 0.2;
    final double textSize = MediaQuery.of(context).size.width * 0.07;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.compare_arrows, color: Colors.white),
                Icon(Icons.calculate, color: Colors.white),
                Icon(Icons.apps_sharp, color: Colors.white),
                Icon(Icons.other_houses_outlined, color: Colors.white),
                Icon(Icons.more_vert, color: Colors.white),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.bottomRight,
              height: 260,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: TextFormField(
                controller: _textEditingController,
                style: TextStyle(fontSize: textSize),
                decoration: const InputDecoration(),
                textAlign: TextAlign.end,
                readOnly: true,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildButton("AC", buttonSize, textSize, Colors.deepOrange),
                      buildButton("DEL", buttonSize, textSize, Colors.deepOrange),
                      buildButton("MOD", buttonSize, textSize, Colors.deepOrange),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildButton("x²", buttonSize, textSize, Colors.deepOrange),
                      buildButton("√", buttonSize, textSize, Colors.deepOrange),
                      buildButton("%", buttonSize, textSize, Colors.deepOrange),
                      buildButton("÷", buttonSize, textSize, Colors.deepOrange),
                    ],
                  ),
                  buildNumberRow("7", "8", "9", "x", buttonSize, textSize),
                  buildNumberRow("4", "5", "6", "-", buttonSize, textSize),
                  buildNumberRow("1", "2", "3", "+", buttonSize, textSize),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildButton("+/-", buttonSize, textSize, Colors.white),
                      buildButton("0", buttonSize, textSize, Colors.white),
                      buildButton(".", buttonSize, textSize, Colors.white),
                      buildButton("=", buttonSize, textSize, Colors.deepOrange, isCircle: true),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton(String text, double size, double textSize, Color color, {bool isCircle = false}) {
    return GestureDetector(
      onTap: (){
        setState(() {
          onButtonPressed(text);
        });
      },
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          border: Border.all(),
          color: color,
          shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNumberRow(String n1, String n2, String n3, String op, double size, double textSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildButton(n1, size, textSize, Colors.white),
        buildButton(n2, size, textSize, Colors.white),
        buildButton(n3, size, textSize, Colors.white),
        buildButton(op, size, textSize, Colors.deepOrange),
      ],
    );
  }

  void onButtonPressed(String text) {
    if (text == "AC") {
      _textEditingController.text = '';
      n1 = '';
      n2 = '';
      opr = '';
      clk = false;
    } else if (text == "DEL") {
      if (clk) {
        n2 = n2.substring(0, n2.length - 1);
        _textEditingController.text = n2;
      } else {
        n1 = n1.substring(0, n1.length - 1);
        _textEditingController.text = n1;
      }
    } else if (text == "=") {
      calculate();
    } else if ("+-x÷MODx²√%".contains(text)) {
      opr = text;
      clk = true;
      _textEditingController.text = text;
    } else {
      if (clk) {
        n2 += text;
        _textEditingController.text = n2;
      } else {
        n1 += text;
        _textEditingController.text = n1;
      }
    }
  }
}

