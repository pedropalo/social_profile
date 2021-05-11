import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFEE1ED),
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.top + MediaQuery.of(context).padding.bottom),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Topo
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFCF8EA6),
                            borderRadius: BorderRadius.circular(32)
                          ),
                          width: 32,
                          height: 32,
                        ),

                        Text(
                          "INSTABAE",
                          style: TextStyle(
                            color: Color(0xFFCF8EA6),
                          ),
                        ),

                        Container(
                          width: 32,
                          height: 32,
                          child: Icon(
                            Icons.menu,
                            color: Color(0xFFCF8EA6),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Meio
                  Container(
                    height: 800,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 48,
                          child: 
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 2000,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: NetworkImage("https://images.unsplash.com/photo-1489278353717-f64c6ee8a4d2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(32),
                                  topRight: Radius.circular(32)
                                )
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 16),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width / 2,
                                          child: Column(
                                            children: [
                                              Text(
                                                "1.152",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFFCF8EA6),
                                                ),
                                              ),
                                              Container(height: 8),
                                              Text(
                                                "Followers",
                                                style: TextStyle(
                                                  color: Color(0xFFCF8EA6),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width / 2,
                                          child: Column(
                                            children: [
                                              Text(
                                                "285",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFFCF8EA6),
                                                ),
                                              ),
                                              Container(height: 8),
                                              Text(
                                                "Following",
                                                style: TextStyle(
                                                  color: Color(0xFFCF8EA6),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  Container(height: 32),

                                  Text(
                                    "Juliete Makarov"
                                  ),

                                  Container(height: 8),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "22 y.o | Pro Model",
                                        style: TextStyle(
                                          color: Color(0xFFCF8EA6)
                                        ),
                                      ),
                                    ],
                                  ),

                                  Container(height: 8),

                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.75,
                                    padding: const EdgeInsets.symmetric(vertical: 12),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFEE1ED),
                                      borderRadius: BorderRadius.circular(24)
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Follow",
                                      style: TextStyle(
                                        color: Color(0xFFCF8EA6),
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFCF8EA6),
                                borderRadius: BorderRadius.circular(96)
                              ),
                              width: 96,
                              height: 96,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )


                ],
              ),
            ),
          ),
        ),
        
      ),
    );
  }
}