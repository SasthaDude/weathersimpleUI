// import 'package:flutter/material.dart';
//
//
// class gstCalculator extends StatefulWidget {
//   const gstCalculator({super.key});
//
//   @override
//   State<gstCalculator> createState() => _gstCalculatorState();
// }
//
// class _gstCalculatorState extends State<gstCalculator> {
//
//   TextEditingController price = TextEditingController();
//   TextEditingController gstRate = TextEditingController();
//   TextEditingController excl = TextEditingController();
//   TextEditingController incl = TextEditingController();
//   TextEditingController cent = TextEditingController();
//   TextEditingController sta = TextEditingController();
//
//
//   void calcGst(){
//     double gst=double.parse(gstRate.text);
//     double prc=double.parse(price.text);
//
//     double  excluding = (gst / 100) * prc;
//     double  including = prc - (prc / (1 + (gst/100)));
//     double  central = excluding / 2;
//     double  state = including / 2;
//
//     gstRate.text.toString();
//     price.text.toString();
//     excl.text = excluding.toStringAsFixed(2);
//     incl.text = including.toStringAsFixed(2);
//     cent.text = central.toStringAsFixed(2);
//     sta.text = state.toStringAsFixed(2);
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text("GST Calculator",
//           style: TextStyle(color: Colors.black),
//         ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text("PRICE (₹)", style: TextStyle(color: Colors.white),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 style: TextStyle(color: Colors.black,
//                     fontSize: 30),
//                 controller: price,
//                 //keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   fillColor: Colors.white,
//                   filled: true,
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//
//             Text("GST RATE (%)", style: TextStyle(color: Colors.white),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 style: TextStyle(color: Colors.black,
//                     fontSize: 30),
//                 controller: gstRate,
//                 // keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: ()
//               {
//                 calcGst();
//               },
//               child: Text("Calculate"),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     Text("Excluding", style: TextStyle(color: Colors.white),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         color: Colors.grey,
//                         height: 80,
//                         width: 160,
//                         child: TextFormField(
//                           style: TextStyle(color: Colors.white,
//                               fontSize: 35),
//                           controller: excl,
//                           //keyboardType: TextInputType.number,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text("Including",style: TextStyle(color: Colors.white),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         color: Colors.grey,
//                         height: 80,
//                         width: 160,
//                         child: TextFormField(
//                           style: TextStyle(color: Colors.white,  fontSize: 35
//                           ),
//                           controller: incl,
//                           // keyboardType: TextInputType.number,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     Text("CGST", style: TextStyle(color: Colors.white),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         color: Colors.grey,
//                         height: 80,
//                         width: 160,
//                         child: TextFormField(
//                           style: TextStyle(color: Colors.white,
//                               fontSize: 35),
//                           controller: cent,
//                           //keyboardType: TextInputType.number,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text("SGST", style: TextStyle(color: Colors.white),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         color: Colors.grey,
//                         height: 80,
//                         width: 160,
//                         child: TextFormField(
//                           style: TextStyle(color: Colors.white,  fontSize: 35),
//                           controller: sta,
//                           //keyboardType: TextInputType.number,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//       backgroundColor: Colors.black,
//     );
//   }
// }



import 'package:flutter/material.dart';

class gstCalculator extends StatefulWidget {
  const gstCalculator({super.key});

  @override
  State<gstCalculator> createState() => _gstCalculatorState();
}

class _gstCalculatorState extends State<gstCalculator> {
  TextEditingController price = TextEditingController();
  TextEditingController gstRate = TextEditingController();
  TextEditingController excl = TextEditingController();
  TextEditingController incl = TextEditingController();
  TextEditingController cent = TextEditingController();
  TextEditingController sta = TextEditingController();

  void calcGst() {
    double gst = double.parse(gstRate.text);
    double prc = double.parse(price.text);

    double excluding = (gst / 100) * prc;
    double including = prc - (prc / (1 + (gst / 100)));
    double central = excluding / 2;
    double state = including / 2;

    gstRate.text.toString();
    price.text.toString();
    excl.text = excluding.toStringAsFixed(2);
    incl.text = including.toStringAsFixed(2);
    cent.text = central.toStringAsFixed(2);
    sta.text = state.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "GST Calculator",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "PRICE (₹)",
              style: TextStyle(color: Colors.white, fontSize: textScaleFactor * 16),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: TextStyle(color: Colors.black, fontSize: textScaleFactor * 30),
                controller: price,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Text(
              "GST RATE (%)",
              style: TextStyle(color: Colors.white, fontSize: textScaleFactor * 16),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: TextStyle(color: Colors.black, fontSize: textScaleFactor * 30),
                controller: gstRate,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: calcGst,
              child: Text("Calculate", style: TextStyle(fontSize: textScaleFactor * 16)),
            ),
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Excluding",
                      style: TextStyle(color: Colors.white, fontSize: textScaleFactor * 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.grey,
                        height: height * 0.1,
                        width: width * 0.4,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white, fontSize: textScaleFactor * 30),
                          controller: excl,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Including",
                      style: TextStyle(color: Colors.white, fontSize: textScaleFactor * 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.grey,
                        height: height * 0.1,
                        width: width * 0.4,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white, fontSize: textScaleFactor * 30),
                          controller: incl,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "CGST",
                      style: TextStyle(color: Colors.white, fontSize: textScaleFactor * 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.grey,
                        height: height * 0.1,
                        width: width * 0.4,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white, fontSize: textScaleFactor * 30),
                          controller: cent,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "SGST",
                      style: TextStyle(color: Colors.white, fontSize: textScaleFactor * 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.grey,
                        height: height * 0.1,
                        width: width * 0.4,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white, fontSize: textScaleFactor * 30),
                          controller: sta,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
