import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp(
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding:EdgeInsets.only(
                  left: screenHeight * 0.030,
                  top: screenHeight * 0.010
                ),
                child: Icon(
                  CupertinoIcons.clear,
                  color: Colors.pink[400],
                ),
              ),
              SizedBox(width: screenHeight * 0.030,),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.019
                    ),
                    child: Text('Cart',style: TextStyle(
                      fontSize: screenHeight * 0.022,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  SizedBox(height: screenHeight * 0.005,),
                  Padding(
                    padding: EdgeInsets.only(
                      left: screenHeight * 0.010
                    ),
                    child: Text('Diamond Hotel',style: TextStyle(
                        fontSize: screenHeight * 0.015,
                    ),),
                  ),


                ],
              )
            ],
          ),
          SizedBox(height: screenHeight * 0.025,),
          Row(
            children: [
              Container(
                width: screenWidth * .65,
                child: Divider(
                  thickness: 3.0,
                  color: Colors.pink[400],
                ),
              ),
              Expanded(
                child: Container(
                  child: Divider(
                    thickness: 3.0,
                    color: Colors.grey[400],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenHeight * 0.019,
              right: screenHeight * 0.019
            ),
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: screenHeight * 0.019
                    ),
                    child: Image.asset(
                        'assets/images/download.jpg',
                      height: screenHeight * 0.10,
                      width: screenHeight * 0.10,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.015
                        ),
                        child: Text('Estimated delivery',style: TextStyle(
                          fontSize: screenHeight * 0.015,
                          color: Colors.grey
                        ),),
                      ),
                      SizedBox(height: screenHeight * 0.005,),
                      Text('ASAP (25 min)',style: TextStyle(
                          fontSize: screenHeight * 0.018,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),
                      SizedBox(height: screenHeight * 0.005,),
                      Text('change',style: TextStyle(
                          fontSize: screenHeight * 0.018,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink
                      ),),
                    ],
                  )
                ],
              ),
            ),

          ),
          SizedBox(height: screenHeight * 0.020,),
          Card(
            child: Container(
              height: screenHeight * 0.040,
              width: screenHeight * 0.070,
              child: Text(
                '1'
              ),
            ),
          )

        ],
      )
    );
  }
}
