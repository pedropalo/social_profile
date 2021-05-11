import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_profile/theme/theme.dart';

void main() {
  runApp(MyApp());

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppThemeData.to.colors.primary,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
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
    double tamanhoItemMenu = MediaQuery.of(context).size.width / 5.0;


    _imagenContainer() {
      double tamanho = MediaQuery.of(context).size.width / 2;
      String urlImage = "https://images.unsplash.com/photo-1620720192386-7452fdd36a29?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80";
      return Container(
        width: tamanho,
        height: tamanho,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              urlImage,
            )
          )
        ),
      );
    }

    _bottomNavigation() {
      return Container(
        height: 112,
        alignment: Alignment.bottomCenter,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 56,
                decoration: BoxDecoration(
                  color: AppThemeData.to.colors.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)
                  )
                ),
                child: 
                  Stack(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: tamanhoItemMenu,
                              child: Icon(
                                Icons.home_rounded,
                                color: AppThemeData.to.colors.dark,
                              ),
                            ),
                            Container(
                              width: tamanhoItemMenu,
                              child: Icon(
                                Icons.search_rounded,
                                color: AppThemeData.to.colors.dark,
                              ),
                            ),

                            Container(
                              width: tamanhoItemMenu,
                            ),

                            Container(
                              width: tamanhoItemMenu,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Icon(
                                      Icons.notifications_rounded,
                                      color: AppThemeData.to.colors.dark,
                                    ),
                                  ),
                                  Positioned(
                                    top: 12,
                                    left: tamanhoItemMenu / 2,
                                    child: Container(
                                      height: 12,
                                      width: 12,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          width: 2,
                                          color: AppThemeData.to.colors.primary
                                        )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: tamanhoItemMenu,
                              child: Icon(
                                Icons.account_circle_outlined,
                                color: AppThemeData.to.colors.dark,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),

            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      child: 
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: AppThemeData.to.colors.dark,
                            borderRadius: BorderRadius.circular(64)
                          ),
                          child: Icon(
                            Icons.add_rounded,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                    ),
                  ],
                )
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        color: AppThemeData.to.colors.primary,
        child: SafeArea(
          child: Stack(
            children: [
              Container(
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
                                color: AppThemeData.to.colors.dark,
                                borderRadius: BorderRadius.circular(32)
                              ),
                              width: 32,
                              height: 32,
                            ),

                            Text(
                              "INSTABAE",
                              style: TextStyle(
                                color: AppThemeData.to.colors.dark,
                              ),
                            ),

                            Container(
                              width: 32,
                              height: 32,
                              child: Icon(
                                Icons.menu,
                                color: AppThemeData.to.colors.dark,
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
                                                      color: AppThemeData.to.colors.dark,
                                                    ),
                                                  ),
                                                  Container(height: 8),
                                                  Text(
                                                    "Followers",
                                                    style: TextStyle(
                                                      color: AppThemeData.to.colors.dark,
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
                                                      color: AppThemeData.to.colors.dark,
                                                    ),
                                                  ),
                                                  Container(height: 8),
                                                  Text(
                                                    "Following",
                                                    style: TextStyle(
                                                      color: AppThemeData.to.colors.dark,
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
                                              color: AppThemeData.to.colors.dark,
                                            ),
                                          ),
                                        ],
                                      ),

                                      Container(height: 8),

                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.75,
                                        margin: EdgeInsets.only(bottom: 12),
                                        padding: const EdgeInsets.symmetric(vertical: 12),
                                        decoration: BoxDecoration(
                                          color: AppThemeData.to.colors.primary,
                                          borderRadius: BorderRadius.circular(24)
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Follow",
                                          style: TextStyle(
                                            color: AppThemeData.to.colors.dark,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),

                                      // Abas
                                      Container(
                                        color: AppThemeData.to.colors.primary,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context).size.width / 2 - 8,
                                              height: 48,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Colors.black.withOpacity(0.24)

                                                  )
                                                ],
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(32)
                                                )
                                              ),
                                              child:
                                                Text(
                                                  "Photos",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: AppThemeData.to.colors.dark
                                                  ),
                                                ),
                                            ),

                                            Container(
                                              color: Colors.white,
                                              child: Container(
                                                width: MediaQuery.of(context).size.width / 2 - 8,
                                                height: 48,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: AppThemeData.to.colors.primary,
                                                  borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(32)
                                                  ),
                                                ),
                                                child: 
                                                  Text(
                                                    "Videos",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: AppThemeData.to.colors.dark
                                                    ),
                                                  ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Container(
                                        color: Colors.white,
                                        height: 20,
                                        width: MediaQuery.of(context).size.width,
                                      ),

                                      Stack(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 600,
                                            child: 
                                              GridView.count(
                                                crossAxisCount: 3,
                                                mainAxisSpacing: 8,
                                                crossAxisSpacing: 8,
                                                
                                                children: [
                                                  _imagenContainer(),
                                                  _imagenContainer(),
                                                  _imagenContainer(),
                                                  _imagenContainer(),
                                                  _imagenContainer(),
                                                  _imagenContainer(),
                                                  _imagenContainer(),
                                                  _imagenContainer(),
                                                  _imagenContainer(),
                                                  _imagenContainer(),
                                                  _imagenContainer(),
                                                  _imagenContainer(),
                                                  _imagenContainer(),
                                                ],
                                              )
                                          ),
                                        ],
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
                                    color: AppThemeData.to.colors.dark,
                                    borderRadius: BorderRadius.circular(96)
                                  ),
                                  width: 96,
                                  height: 96,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      


                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0, 
                child: _bottomNavigation()
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}