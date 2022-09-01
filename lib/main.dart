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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: screenHeight * 0.020
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 2,
                      ),
                    ),
                    child: Container(
                      height: screenHeight * 0.060,
                      width: screenHeight * 0.070,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: screenHeight * 0.020
                              ),
                              child: Text(
                                '1',style: TextStyle(
                                fontSize: screenHeight* 0.020
                              ),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.pink,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: screenHeight * 0.019
                  ),
                  child: Image.asset(
                    'assets/images/roasted-chicken.png',
                    height: screenHeight * 0.10,
                    width: screenHeight * 0.10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: screenHeight * 0.019
                  ),
                  child: Text(
                    'Chicken',style: TextStyle(
                    color: Colors.pink,
                    fontSize: screenHeight* 0.018,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                      right: screenHeight * 0.019,
                      top: screenHeight * 0.019
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Tk 20',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,

                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005,),
                      Text(
                        'Tk 16',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400

                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.010,),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(height: screenHeight * 0.010,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: screenHeight * 0.020
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 2,
                      ),
                    ),
                    child: Container(
                      height: screenHeight * 0.060,
                      width: screenHeight * 0.070,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenHeight * 0.020
                              ),
                              child: Text(
                                '1',style: TextStyle(
                                  fontSize: screenHeight* 0.020
                              ),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.pink,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: screenHeight * 0.019
                  ),
                  child: Image.asset(
                    'assets/images/goat-meat.jpg',
                    height: screenHeight * 0.10,
                    width: screenHeight * 0.10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: screenHeight * 0.019
                  ),
                  child: Text(
                    'Beef',style: TextStyle(
                      color: Colors.pink,
                      fontSize: screenHeight* 0.018,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                      right: screenHeight * 0.019,
                      top: screenHeight * 0.019
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Tk 20',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,

                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005,),
                      Text(
                        'Tk 16',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400

                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.010,),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(height: screenHeight * 0.010,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: screenHeight * 0.020
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 2,
                      ),
                    ),
                    child: Container(
                      height: screenHeight * 0.060,
                      width: screenHeight * 0.070,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenHeight * 0.020
                              ),
                              child: Text(
                                '1',style: TextStyle(
                                  fontSize: screenHeight* 0.020
                              ),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.pink,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: screenHeight * 0.019
                  ),
                  child: Image.asset(
                    'assets/images/pasta.png',
                    height: screenHeight * 0.10,
                    width: screenHeight * 0.10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: screenHeight * 0.019
                  ),
                  child: Text(
                    'Pasta',style: TextStyle(
                      color: Colors.pink,
                      fontSize: screenHeight* 0.018,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                      right: screenHeight * 0.019,
                      top: screenHeight * 0.019
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Tk 20',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,

                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005,),
                      Text(
                        'Tk 16',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400

                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.010,),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
            SizedBox(height: screenHeight * 0.010,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: screenHeight * 0.020
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 2,
                      ),
                    ),
                    child: Container(
                      height: screenHeight * 0.060,
                      width: screenHeight * 0.070,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenHeight * 0.020
                              ),
                              child: Text(
                                '2',style: TextStyle(
                                  fontSize: screenHeight* 0.020
                              ),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.pink,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: screenHeight * 0.019
                  ),
                  child: Image.asset(
                    'assets/images/pizza.png',
                    height: screenHeight * 0.10,
                    width: screenHeight * 0.10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: screenHeight * 0.019
                  ),
                  child: Text(
                    'Pizza',style: TextStyle(
                      color: Colors.pink,
                      fontSize: screenHeight* 0.018,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                      right: screenHeight * 0.019,
                      top: screenHeight * 0.019
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Tk 14',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,

                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005,),
                      Text(
                        'Tk 11',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400

                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.010,),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(height: screenHeight * 0.010,),
            Padding(
              padding: EdgeInsets.only(
                  left: screenHeight * 0.019
              ),
              child: Text(
                'Add more items',style: TextStyle(
                  color: Colors.pink,
                  fontSize: screenHeight* 0.018,
                  fontWeight: FontWeight.w500
              ),
              ),
            ),
            SizedBox(height: screenHeight * 0.020,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: screenHeight * 0.019
                  ),
                  child: Text('Subtotal',style: TextStyle(
                      fontSize: screenHeight * 0.018,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                      right: screenHeight * 0.019
                  ),
                  child: Text('Tk 60',style: TextStyle(
                      fontSize: screenHeight * 0.016,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.010,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: screenHeight * 0.019
                  ),
                  child: Text('Total',style: TextStyle(
                      fontSize: screenHeight * 0.018,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                ),
                Text('(incl. vat)',style: TextStyle(
                    fontSize: screenHeight * 0.014,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                      right: screenHeight * 0.019
                  ),
                  child: Text('Tk 81',style: TextStyle(
                      fontSize: screenHeight * 0.016,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.010,),
            Padding(
              padding: EdgeInsets.only(
                  right: screenHeight * 0.019,
                  left: screenHeight * 0.019
              ),
              child: Container(
                height: screenHeight * 0.070,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                child: Center(
                  child: Text(
                    'Review payment and address',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
