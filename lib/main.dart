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
    String urlProfilePhoto = "https://images.unsplash.com/photo-1489278353717-f64c6ee8a4d2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80";

    List<String> listaImagens = [
      "https://images.unsplash.com/photo-1488646953014-85cb44e25828?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=933&q=80",
      "https://images.unsplash.com/photo-1508672019048-805c876b67e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1393&q=80",
      "https://images.unsplash.com/photo-1552733407-5d5c46c3bb3b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=714&q=80",
      "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1505118380757-91f5f5632de0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=562&q=80",
      "https://images.unsplash.com/photo-1500835556837-99ac94a94552?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1506929562872-bb421503ef21?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=704&q=80",
      "https://images.unsplash.com/photo-1517760444937-f6397edcbbcd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80",
      "https://images.unsplash.com/photo-1506197603052-3cc9c3a201bd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
      "https://images.unsplash.com/photo-1533105079780-92b9be482077?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1504609773096-104ff2c73ba4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80",
      "https://images.unsplash.com/photo-1507608616759-54f48f0af0ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80",
      "https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=624&q=80",
    ];

    _imagenContainer(String url) {
      double tamanho = MediaQuery.of(context).size.width / 2;
      String urlImage = url;
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
                                        color: AppThemeData.to.colors.dark,
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
                  physics: const NeverScrollableScrollPhysics(),
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
                                borderRadius: BorderRadius.circular(32),
                                border: Border.all(
                                  width: 2,
                                  color: AppThemeData.to.colors.dark
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    urlProfilePhoto
                                  )
                                )
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
                                            padding: EdgeInsets.only(bottom: 96),
                                            child: 
                                              GridView.count(
                                                crossAxisCount: 3,
                                                mainAxisSpacing: 8,
                                                crossAxisSpacing: 8,
                                                children: List.generate(listaImagens.length, (index) => _imagenContainer(listaImagens[index]))
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
                                    borderRadius: BorderRadius.circular(96),
                                    border: Border.all(
                                      width: 2,
                                      color: AppThemeData.to.colors.dark
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(urlProfilePhoto)
                                    )
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