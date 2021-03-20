import 'dart:ui';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "Welcome To The Space",
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  bool isPressed = false;
  bool isPressedone=false;
  bool isPressedtwo=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Welcome To The Space"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 750,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  isPressed ? "This is The Mars!" : "",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),
                ),
                Text(
                  isPressedtwo ? "This is The Earth!" : "",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                Text(
                  isPressedone ? "This is The Jupiter!" : "",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                   height: 40,
                 ),
                Image.network(
                    isPressed
                    ? 'https://www.pngkit.com/png/detail/20-203388_mars-mars-transparent.png'
                    : "",
                     cacheHeight: 800),
                Image.network(
                    isPressedone ? 'https://i.pinimg.com/originals/aa/e1/52/aae152963feeaf72d2e99bc4a2172c95.png'
                    : "",
                     cacheHeight:800 ),
                Image.network(isPressedtwo
                    ? 'https://www.pngkey.com/png/detail/83-835482_earth-texture-png-svg-download-3d-planet-earth.png'
                    : "",
                     cacheHeight: 800,
                     ),
                SizedBox(
                  height: 90,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        child: Text('MARS',style: TextStyle(color: Colors.white,fontSize: 30),),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey )),
                        onPressed: () {
                          setState(() {
                            isPressed = true;
                            isPressedtwo=false;
                            isPressedone=false;
                          });
                        }),
                    TextButton(
                        child: Text('JUPITER',style: TextStyle(color: Colors.white,fontSize: 30),),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey)),
                        onPressed: () {
                          setState(() {
                            isPressedone = true;
                            isPressed=false;
                            isPressedtwo=false;
                          });
                        }),
                    TextButton(
                        child: Text('EARTH',style: TextStyle(color: Colors.white,fontSize: 30),),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey)),
                        onPressed: () {
                          setState(() {
                            isPressedtwo = true;
                            isPressed=false;
                            isPressedone=false;
                          });
                        })
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}