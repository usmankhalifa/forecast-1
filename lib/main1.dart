import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:forecast/ACEA/cassavaA.dart';
import 'package:forecast/ACEA/cottonA.dart';
import 'package:forecast/ACEA/gingerA.dart';
import 'package:forecast/ACEA/maizeA.dart';
import 'package:forecast/ACEA/riceA.dart';
import 'package:forecast/ACEA/sesameA.dart';
import 'package:forecast/ACEA/soyaA.dart';
import 'package:forecast/cashew.dart';
import 'package:forecast/cassava.dart';
import 'package:forecast/cocoa.dart';
import 'package:forecast/cotton.dart';
import 'package:forecast/ginger.dart';
import 'package:forecast/injection_container.dart';
import 'package:forecast/main.dart';
import 'package:forecast/maize.dart';
import 'package:forecast/oilpalm.dart';
import 'package:forecast/rice.dart';
import 'package:forecast/sesame.dart';
import 'package:forecast/sorghum.dart';
import 'package:forecast/soybeans.dart';
import 'package:forecast/presentation/pages/forecast/forecast.dart';
import 'package:forecast/presentation/pages/search/search.dart';
import 'package:forecast/presentation/providers/forecast_provider.dart';
import 'package:forecast/presentation/providers/location_provider.dart';
import 'package:forecast/presentation/providers/notification_provider.dart';
import 'package:forecast/presentation/providers/settings_provider.dart';
import 'package:forecast/webview.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(MyAppp());
}

//Splash Screen
class MyAppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => BackgroundImageExample()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'assets/downloads.png',
              height: 120,
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

//Continue page
class BackgroundImageExample extends StatefulWidget {
  @override
  _BackgroundImageExampleState createState() => _BackgroundImageExampleState();
}

class _BackgroundImageExampleState extends State<BackgroundImageExample> {
  @override
  Widget build(BuildContext context) {
    // 2. Example that prevents image resizing when the keyboard is shown.
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          // colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
          image: Image.asset("assets/pic.png").image,
          // image: Image.asset('assets/images/pikachu.png').image,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green[900],
              onPrimary: Colors.white70,
              shadowColor: Colors.red,
              elevation: 5,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecHomePage()),
              );
            },
            child: Text('Continue'),
          ),
        ],
      ),
    );
  }
}

class SecHomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Title of App
      title: 'Nirsal',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData.dark(),

      //First Screen of Slider App
      home: Appp(),
    );
  }
}

class Appp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          centerTitle: true,
          title: Text("Home"),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text('Nirsal'),
              ),
              ListTile(
                title: const Text('Planting'),
                onTap: () {
                  Navigator.push<Widget>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => aHomePage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('Knowledge'),
                onTap: () {
                  Navigator.push<Widget>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => bHomePage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('Weather'),
                onTap: () {
                  Navigator.push<Widget>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('Map'),
                onTap: () {
                  Navigator.push<Widget>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApppp(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        body: Center(
            child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              // colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
              image: Image.asset("assets/background3.png").image,
              // image: Image.asset('assets/images/pikachu.png').image,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                items: [
                  //1st Image of Slider
                  Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/flower.jpg'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Stack(
                        children: [
                          new Container(
                              child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: new Text(
                              'Planting',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Aleo',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          )),
                          GestureDetector(onTap: () {
                            Navigator.push<Widget>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => aHomePage(),
                              ),
                            );
                          })
                        ],
                      )),
                  //2nd Image of Slider
                  Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/knowledee.jpg'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Stack(
                        children: [
                          new Container(
                              child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: new Text(
                              'Knowledge',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Aleo',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          )),
                          GestureDetector(onTap: () {
                            Navigator.push<Widget>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => bHomePage(),
                              ),
                            );
                          })
                        ],
                      )),

                  //3rd Image of Slider
                  Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Stack(
                        children: [
                          new Container(
                              child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: new Text(
                              'Weather',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Aleo',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          )),
                          GestureDetector(onTap: () {
                            Navigator.push<Widget>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyApp(),
                              ),
                            );
                          })
                        ],
                      )),
                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ],
          ),
        )));
  }
}

//Planting page
class aHomePage extends StatefulWidget {
  @override
  _aHomePageState createState() => _aHomePageState();
}

class _aHomePageState extends State<aHomePage> {
  String? _selectedGender = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text(
            "Planting",
          ),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              DropdownButton(
                value: _selectedGender,
                items: _dropDownItem(),
                onChanged: (value) {
                  _selectedGender = value as String?;
                  switch (value) {
                    case "Rice":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Rice()),
                      );
                      break;
                    case "Maize":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Maize()),
                      );
                      break;
                    case "Soybeans":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Soybeans()),
                      );
                      break;

                    case "Sesame":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sesame()),
                      );
                      break;

                    case "Sorghum":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sorghum()),
                      );
                      break;

                    case "Cotton":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cotton()),
                      );
                      break;

                    case "Cassava":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cassava()),
                      );
                      break;

                    case "Oil Palm":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Oilpalm()),
                      );
                      break;

                    case "Cocoa":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cocoa()),
                      );
                      break;

                    case "Ginger":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Ginger()),
                      );
                      break;
                    case "Cashew":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cashew()),
                      );
                      break;
                  }
                },
                hint: Text('Select Commodity'),
              ),
            ],
          ),
        ));
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> ddl = [
      "Rice",
      "Maize",
      "Soybeans",
      "Sesame",
      "Sorghum",
      "Cotton",
      "Cassava",
      "Oil Palm",
      "Cocoa",
      "Ginger",
      "Cashew"
    ];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }
}

//Rice page for planting
class Rice extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text(
          "Rice",
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/nirsal.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CroppingCalendar()),
                    );
                  },
                  child: const Text(
                    'Cropping Calendar',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  )),
              SizedBox(height: 100),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => riceACEA()),
                    );
                  },
                  child: const Text(
                    'ACEA',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 115, vertical: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//Maize page for planting
class Maize extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text(
          "Maize",
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/nirsal.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CroppingCalendarMaize()),
                    );
                  },
                  child: const Text(
                    'Cropping Calendar',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  )),
              SizedBox(height: 100),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => maizeACEA()),
                    );
                  },
                  child: const Text(
                    'ACEA',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 115, vertical: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//Soybeans page for planting
class Soybeans extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text(
          "Soybeans",
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/nirsal.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CroppingCalendarSoybeans()),
                    );
                  },
                  child: const Text(
                    'Cropping Calendar',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  )),
              SizedBox(height: 100),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => soyaACEA()),
                    );
                  },
                  child: const Text(
                    'ACEA',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 115, vertical: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//sesame page for planting
class Sesame extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text(
          "Sesame",
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/nirsal.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CroppingCalendarSesame()),
                    );
                  },
                  child: const Text(
                    'Cropping Calendar',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  )),
              SizedBox(height: 100),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => sesameACEA()),
                    );
                  },
                  child: const Text(
                    'ACEA',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 115, vertical: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//sorghum page for planting
class Sorghum extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text(
          "Sorghum",
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/nirsal.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CroppingCalendarSorghum()),
                    );
                  },
                  child: const Text(
                    'Cropping Calendar',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  )),
              SizedBox(height: 100),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'ACEA',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 115, vertical: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//cotton page for planting
class Cotton extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text(
          "Cotton",
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/nirsal.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CroppingCalendarCotton()),
                    );
                  },
                  child: const Text(
                    'Cropping Calendar',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  )),
              SizedBox(height: 100),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => cottonACEA()),
                    );
                  },
                  child: const Text(
                    'ACEA',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 115, vertical: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//cassava page for planting
class Cassava extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text(
          "Cassava",
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/nirsal.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CroppingCalendarCassava()),
                    );
                  },
                  child: const Text(
                    'Cropping Calendar',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  )),
              SizedBox(height: 100),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => cassavaACEA()),
                    );
                  },
                  child: const Text(
                    'ACEA',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 115, vertical: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//oilpalm page for planting
class Oilpalm extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text(
          "Oilpalm",
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/nirsal.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CroppingCalendarOilpalm()),
                    );
                  },
                  child: const Text(
                    'Cropping Calendar',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  )),
              SizedBox(height: 100),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'ACEA',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 115, vertical: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//cocoa page for planting
class Cocoa extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text(
          "Cocoa",
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/nirsal.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CroppingCalendarCocoa()),
                    );
                  },
                  child: const Text(
                    'Cropping Calendar',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  )),
              SizedBox(height: 100),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'ACEA',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 115, vertical: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//ginger page for planting
class Ginger extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text(
          "Ginger",
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/nirsal.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CroppingCalendarGinger()),
                    );
                  },
                  child: const Text(
                    'Cropping Calendar',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  )),
              SizedBox(height: 100),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => gingerACEA()),
                    );
                  },
                  child: const Text(
                    'ACEA',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 115, vertical: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//cashew page for planting
class Cashew extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text(
          "Cashew",
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/nirsal.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CroppingCalendarCashew()),
                    );
                  },
                  child: const Text(
                    'Cropping Calendar',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  )),
              SizedBox(height: 100),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'ACEA',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 115, vertical: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//Cropping calendar for rice
class CroppingCalendar extends StatelessWidget {
  String? _selectedGender = null;
  String? _jelectedGender = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cropping Calendar'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(9)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 140, 16),
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => rice()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 155, 16),
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 80, 16),
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 150, 16),
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 170, 16),
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 180, 16),
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp7()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
        ]))));
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> ddl = ["Male", "Female", "Others"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }

  List<DropdownMenuItem<String>> _jropDownItem() {
    List<String> ddl = ["Jale", "Jemale", "Jthers"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }
}

//Cropping calendar for maize
class CroppingCalendarMaize extends StatelessWidget {
  String? _selectedGender = null;
  String? _jelectedGender = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cropping Calendar'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(9)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 140, 16),
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 155, 16),
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 80, 16),
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 150, 16),
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 170, 16),
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 180, 16),
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize7()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
        ]))));
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> ddl = ["Male", "Female", "Others"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }

  List<DropdownMenuItem<String>> _jropDownItem() {
    List<String> ddl = ["Jale", "Jemale", "Jthers"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }
}

//Cropping calendar for soybeans
class CroppingCalendarSoybeans extends StatelessWidget {
  String? _selectedGender = null;
  String? _jelectedGender = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cropping Calendar'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(9)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 140, 16),
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => soybeans()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => soybeans2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 155, 16),
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 80, 16),
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => soybeans3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => soybeans4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 150, 16),
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => soybeans5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 170, 16),
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => soybeans6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 180, 16),
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => soybeans7()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
        ]))));
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> ddl = ["Male", "Female", "Others"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }

  List<DropdownMenuItem<String>> _jropDownItem() {
    List<String> ddl = ["Jale", "Jemale", "Jthers"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/nirsal.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

//Cropping calendar for sesame
class CroppingCalendarSesame extends StatelessWidget {
  String? _selectedGender = null;
  String? _jelectedGender = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cropping Calendar'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(9)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 140, 16),
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sesame()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sesame2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 155, 16),
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 80, 16),
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sesame3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sesame4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 150, 16),
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sesame5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 170, 16),
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sesame6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 180, 16),
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sesame7()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
        ]))));
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> ddl = ["Male", "Female", "Others"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }

  List<DropdownMenuItem<String>> _jropDownItem() {
    List<String> ddl = ["Jale", "Jemale", "Jthers"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }
}

//Cropping calendar for sorghum
class CroppingCalendarSorghum extends StatelessWidget {
  String? _selectedGender = null;
  String? _jelectedGender = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cropping Calendar'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(9)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 140, 16),
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sorghum()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sorghum2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 155, 16),
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 80, 16),
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sorghum3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sorghum4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 150, 16),
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sorghum5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 170, 16),
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sorghum6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 180, 16),
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sorghum7()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
        ]))));
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> ddl = ["Male", "Female", "Others"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }

  List<DropdownMenuItem<String>> _jropDownItem() {
    List<String> ddl = ["Jale", "Jemale", "Jthers"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }
}

//Cropping calendar for cotton
class CroppingCalendarCotton extends StatelessWidget {
  String? _selectedGender = null;
  String? _jelectedGender = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cropping Calendar'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(9)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 140, 16),
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cotton()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cotton2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 155, 16),
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 80, 16),
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cotton3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cotton4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 150, 16),
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cotton5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 170, 16),
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cotton6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 180, 16),
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cotton7()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
        ]))));
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> ddl = ["Male", "Female", "Others"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }

  List<DropdownMenuItem<String>> _jropDownItem() {
    List<String> ddl = ["Jale", "Jemale", "Jthers"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }
}

//Cropping calendar for cassava
class CroppingCalendarCassava extends StatelessWidget {
  String? _selectedGender = null;
  String? _jelectedGender = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cropping Calendar'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(9)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 140, 16),
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cassava()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cassava2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 155, 16),
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 80, 16),
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cassava3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cassava4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 150, 16),
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cassava5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 170, 16),
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cassava6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 180, 16),
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cassava7()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
        ]))));
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> ddl = ["Male", "Female", "Others"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }

  List<DropdownMenuItem<String>> _jropDownItem() {
    List<String> ddl = ["Jale", "Jemale", "Jthers"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }
}

//Cropping calendar for oilpalm
class CroppingCalendarOilpalm extends StatelessWidget {
  String? _selectedGender = null;
  String? _jelectedGender = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cropping Calendar'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(9)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 140, 16),
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => oilpalm()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => oilpalm2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 155, 16),
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 80, 16),
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => oilpalm3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => oilpalm4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 150, 16),
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => oilpalm5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 170, 16),
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => oilpalm6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 180, 16),
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => oilpalm7()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
        ]))));
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> ddl = ["Male", "Female", "Others"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }

  List<DropdownMenuItem<String>> _jropDownItem() {
    List<String> ddl = ["Jale", "Jemale", "Jthers"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }
}

//Cropping calendar for cocoa
class CroppingCalendarCocoa extends StatelessWidget {
  String? _selectedGender = null;
  String? _jelectedGender = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cropping Calendar'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(9)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 140, 16),
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cocoa()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cocoa2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 155, 16),
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 80, 16),
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cocoa3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cocoa4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 150, 16),
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cocoa5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 170, 16),
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cocoa6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 180, 16),
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cocoa7()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
        ]))));
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> ddl = ["Male", "Female", "Others"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }

  List<DropdownMenuItem<String>> _jropDownItem() {
    List<String> ddl = ["Jale", "Jemale", "Jthers"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }
}

//Cropping calendar for ginger
class CroppingCalendarGinger extends StatelessWidget {
  String? _selectedGender = null;
  String? _jelectedGender = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cropping Calendar'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(9)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 140, 16),
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ginger()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ginger2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 155, 16),
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 80, 16),
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ginger3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ginger4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 150, 16),
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ginger5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 170, 16),
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ginger6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 180, 16),
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ginger7()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
        ]))));
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> ddl = ["Male", "Female", "Others"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }

  List<DropdownMenuItem<String>> _jropDownItem() {
    List<String> ddl = ["Jale", "Jemale", "Jthers"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }
}

//Cropping calendar for cashew
class CroppingCalendarCashew extends StatelessWidget {
  String? _selectedGender = null;
  String? _jelectedGender = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Cropping Calendar'),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(9)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 140, 16),
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cashew()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cashew2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 155, 16),
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 80, 16),
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cashew3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 200, 16),
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cashew4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 150, 16),
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cashew5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 170, 16),
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cashew6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlineButton(
            padding: EdgeInsets.fromLTRB(16, 16, 180, 16),
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cashew7()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
        ]))));
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> ddl = ["Male", "Female", "Others"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }

  List<DropdownMenuItem<String>> _jropDownItem() {
    List<String> ddl = ["Jale", "Jemale", "Jthers"];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }
}

class bHomePage extends StatefulWidget {
  @override
  _bHomePageState createState() => _bHomePageState();
}

class _bHomePageState extends State<bHomePage> {
  String? _selectedGender = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text(
            "Knowledge",
          ),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/nirsal.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              DropdownButton(
                value: _selectedGender,
                items: _dropDownItem(),
                onChanged: (value) {
                  _selectedGender = value as String?;
                  switch (value) {
                    case "Rice":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Rice1()),
                      );
                      break;
                    case "Maize":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Maize1()),
                      );
                      break;
                    case "Soybeans":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Soybeans1()),
                      );
                      break;

                    case "Sesame":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sesame1()),
                      );
                      break;

                    case "Sorghum":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sorghum1()),
                      );
                      break;

                    case "Cotton":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cotton1()),
                      );
                      break;

                    case "Cassava":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cassava1()),
                      );
                      break;

                    case "Oil Palm":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Oil_palm()),
                      );
                      break;

                    case "Cocoa":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cocoa1()),
                      );
                      break;

                    case "Ginger":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Ginger1()),
                      );
                      break;
                    case "Cashew":
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cashew1()),
                      );
                      break;
                  }
                },
                hint: Text('Select Commodity'),
              ),
            ],
          ),
        ));
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> ddl = [
      "Rice",
      "Maize",
      "Soybeans",
      "Sesame",
      "Sorghum",
      "Cotton",
      "Cassava",
      "Oil Palm",
      "Cocoa",
      "Ginger",
      "Cashew"
    ];
    return ddl
        .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
        .toList();
  }
}

class Rice1 extends StatefulWidget {
  const Rice1({Key? key}) : super(key: key);

  @override
  State<Rice1> createState() => _Rice1();
}

class _Rice1 extends State<Rice1> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // ignore: prefer_const_literals_to_create_immutables

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(5),
              child: Container(
                  child: Center(
                    child: Text(
                      'Rice',
                      style: TextStyle(fontSize: 25, height: 1.5),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)))),
            ),
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/rice2.jpg",
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      'The word "bean" and its Germanic cognates (e.g. German Bohne) have existed in common use in West Germanic languages since before the 12th century,[3] referring to broad beans, chickpeas, and other pod-borne seeds. This was long before the New World genus Phaseolus was known in Europe. After Columbian-era contact between Europe and the Americas, use of the word was extended to pod-borne seeds of Phaseolus, such as the common bean and the runner bean, and the related genus Vigna. The term has long been applied generally to many other seeds of similar form,[3][4] such as Old World soybeans, peas, other vetches, and lupins, and even to those with slighter resemblances, such as coffee beans, vanilla beans, castor beans, and cocoa beans. Thus the term "bean" in general usage can refer to a host of different species.[5]Local bean from Nepal.Seeds called beans are often included among the crops called although the words are not always interchangeable usage varies by plant variety and by region Both terms, beans and pulses, are usually reserved for grain crops and thus exclude those legumes that have tiny seeds and are used exclusively for non-grain purposes (forage, hay, and silage), such as clover and alfalfa. The United Nations Food and Agriculture Organization defines "BEANS, DRY" (item code 176)[5] as applicable only to species of Phaseolus. This is one of various examples of how narrower word senses enforced in trade regulations or botany often coexist in natural language with broader senses in culinary use and general use; other common examples are the narrow sense of the word nut and the broader sense of the word nut, and the fact that tomatoes are fruit, botanically speaking, but are often treated as vegetables in culinary and general usage. Relatedly, another detail of usage is that several species of plants that are sometimes called beans, including Vigna angularis (azuki bean), mungo (black gram), radiata (green gram), and aconitifolia (moth bean), were once classified as Phaseolus but later reclassified but the taxonomic revision does not entirely stop the use of well-established senses in general usage.',
                      style: TextStyle(fontSize: 15, height: 1.5),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Maize1 extends StatefulWidget {
  const Maize1({Key? key}) : super(key: key);

  @override
  State<Maize1> createState() => _Maize1();
}

class _Maize1 extends State<Maize1> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // ignore: prefer_const_literals_to_create_immutables

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(5),
              child: Container(
                  child: Center(
                    child: Text(
                      'Maize',
                      style: TextStyle(fontSize: 25, height: 1.5),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)))),
            ),
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/maize.jpg",
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      'The word "bean" and its Germanic cognates (e.g. German Bohne) have existed in common use in West Germanic languages since before the 12th century,[3] referring to broad beans, chickpeas, and other pod-borne seeds. This was long before the New World genus Phaseolus was known in Europe. After Columbian-era contact between Europe and the Americas, use of the word was extended to pod-borne seeds of Phaseolus, such as the common bean and the runner bean, and the related genus Vigna. The term has long been applied generally to many other seeds of similar form,[3][4] such as Old World soybeans, peas, other vetches, and lupins, and even to those with slighter resemblances, such as coffee beans, vanilla beans, castor beans, and cocoa beans. Thus the term "bean" in general usage can refer to a host of different species.[5]Local bean from Nepal.Seeds called beans are often included among the crops called although the words are not always interchangeable usage varies by plant variety and by region Both terms, beans and pulses, are usually reserved for grain crops and thus exclude those legumes that have tiny seeds and are used exclusively for non-grain purposes (forage, hay, and silage), such as clover and alfalfa. The United Nations Food and Agriculture Organization defines "BEANS, DRY" (item code 176)[5] as applicable only to species of Phaseolus. This is one of various examples of how narrower word senses enforced in trade regulations or botany often coexist in natural language with broader senses in culinary use and general use; other common examples are the narrow sense of the word nut and the broader sense of the word nut, and the fact that tomatoes are fruit, botanically speaking, but are often treated as vegetables in culinary and general usage. Relatedly, another detail of usage is that several species of plants that are sometimes called beans, including Vigna angularis (azuki bean), mungo (black gram), radiata (green gram), and aconitifolia (moth bean), were once classified as Phaseolus but later reclassified but the taxonomic revision does not entirely stop the use of well-established senses in general usage.',
                      style: TextStyle(fontSize: 15, height: 1.5),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Soybeans1 extends StatefulWidget {
  const Soybeans1({Key? key}) : super(key: key);

  @override
  State<Soybeans1> createState() => _Soybeans1();
}

class _Soybeans1 extends State<Soybeans1> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // ignore: prefer_const_literals_to_create_immutables

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(5),
              child: Container(
                  child: Center(
                    child: Text(
                      'Soybeans',
                      style: TextStyle(fontSize: 25, height: 1.5),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)))),
            ),
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/soybeans.jpg",
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      'The word "bean" and its Germanic cognates (e.g. German Bohne) have existed in common use in West Germanic languages since before the 12th century,[3] referring to broad beans, chickpeas, and other pod-borne seeds. This was long before the New World genus Phaseolus was known in Europe. After Columbian-era contact between Europe and the Americas, use of the word was extended to pod-borne seeds of Phaseolus, such as the common bean and the runner bean, and the related genus Vigna. The term has long been applied generally to many other seeds of similar form,[3][4] such as Old World soybeans, peas, other vetches, and lupins, and even to those with slighter resemblances, such as coffee beans, vanilla beans, castor beans, and cocoa beans. Thus the term "bean" in general usage can refer to a host of different species.[5]Local bean from Nepal.Seeds called beans are often included among the crops called although the words are not always interchangeable usage varies by plant variety and by region Both terms, beans and pulses, are usually reserved for grain crops and thus exclude those legumes that have tiny seeds and are used exclusively for non-grain purposes (forage, hay, and silage), such as clover and alfalfa. The United Nations Food and Agriculture Organization defines "BEANS, DRY" (item code 176)[5] as applicable only to species of Phaseolus. This is one of various examples of how narrower word senses enforced in trade regulations or botany often coexist in natural language with broader senses in culinary use and general use; other common examples are the narrow sense of the word nut and the broader sense of the word nut, and the fact that tomatoes are fruit, botanically speaking, but are often treated as vegetables in culinary and general usage. Relatedly, another detail of usage is that several species of plants that are sometimes called beans, including Vigna angularis (azuki bean), mungo (black gram), radiata (green gram), and aconitifolia (moth bean), were once classified as Phaseolus but later reclassified but the taxonomic revision does not entirely stop the use of well-established senses in general usage.',
                      style: TextStyle(fontSize: 15, height: 1.5),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Sesame1 extends StatefulWidget {
  const Sesame1({Key? key}) : super(key: key);

  @override
  State<Sesame1> createState() => _Sesame1();
}

class _Sesame1 extends State<Sesame1> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // ignore: prefer_const_literals_to_create_immutables

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(5),
              child: Container(
                  child: Center(
                    child: Text(
                      'Sesame',
                      style: TextStyle(fontSize: 25, height: 1.5),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)))),
            ),
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/sesajme.jpg",
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      'The word "bean" and its Germanic cognates (e.g. German Bohne) have existed in common use in West Germanic languages since before the 12th century,[3] referring to broad beans, chickpeas, and other pod-borne seeds. This was long before the New World genus Phaseolus was known in Europe. After Columbian-era contact between Europe and the Americas, use of the word was extended to pod-borne seeds of Phaseolus, such as the common bean and the runner bean, and the related genus Vigna. The term has long been applied generally to many other seeds of similar form,[3][4] such as Old World soybeans, peas, other vetches, and lupins, and even to those with slighter resemblances, such as coffee beans, vanilla beans, castor beans, and cocoa beans. Thus the term "bean" in general usage can refer to a host of different species.[5]Local bean from Nepal.Seeds called beans are often included among the crops called although the words are not always interchangeable usage varies by plant variety and by region Both terms, beans and pulses, are usually reserved for grain crops and thus exclude those legumes that have tiny seeds and are used exclusively for non-grain purposes (forage, hay, and silage), such as clover and alfalfa. The United Nations Food and Agriculture Organization defines "BEANS, DRY" (item code 176)[5] as applicable only to species of Phaseolus. This is one of various examples of how narrower word senses enforced in trade regulations or botany often coexist in natural language with broader senses in culinary use and general use; other common examples are the narrow sense of the word nut and the broader sense of the word nut, and the fact that tomatoes are fruit, botanically speaking, but are often treated as vegetables in culinary and general usage. Relatedly, another detail of usage is that several species of plants that are sometimes called beans, including Vigna angularis (azuki bean), mungo (black gram), radiata (green gram), and aconitifolia (moth bean), were once classified as Phaseolus but later reclassified but the taxonomic revision does not entirely stop the use of well-established senses in general usage.',
                      style: TextStyle(fontSize: 15, height: 1.5),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Sorghum1 extends StatefulWidget {
  const Sorghum1({Key? key}) : super(key: key);

  @override
  State<Sorghum1> createState() => _Sorghum1();
}

class _Sorghum1 extends State<Sorghum1> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // ignore: prefer_const_literals_to_create_immutables

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(5),
              child: Container(
                  child: Center(
                    child: Text(
                      'Sorghum',
                      style: TextStyle(fontSize: 25, height: 1.5),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)))),
            ),
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/sorghum.jpg",
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      'The word "bean" and its Germanic cognates (e.g. German Bohne) have existed in common use in West Germanic languages since before the 12th century,[3] referring to broad beans, chickpeas, and other pod-borne seeds. This was long before the New World genus Phaseolus was known in Europe. After Columbian-era contact between Europe and the Americas, use of the word was extended to pod-borne seeds of Phaseolus, such as the common bean and the runner bean, and the related genus Vigna. The term has long been applied generally to many other seeds of similar form,[3][4] such as Old World soybeans, peas, other vetches, and lupins, and even to those with slighter resemblances, such as coffee beans, vanilla beans, castor beans, and cocoa beans. Thus the term "bean" in general usage can refer to a host of different species.[5]Local bean from Nepal.Seeds called beans are often included among the crops called although the words are not always interchangeable usage varies by plant variety and by region Both terms, beans and pulses, are usually reserved for grain crops and thus exclude those legumes that have tiny seeds and are used exclusively for non-grain purposes (forage, hay, and silage), such as clover and alfalfa. The United Nations Food and Agriculture Organization defines "BEANS, DRY" (item code 176)[5] as applicable only to species of Phaseolus. This is one of various examples of how narrower word senses enforced in trade regulations or botany often coexist in natural language with broader senses in culinary use and general use; other common examples are the narrow sense of the word nut and the broader sense of the word nut, and the fact that tomatoes are fruit, botanically speaking, but are often treated as vegetables in culinary and general usage. Relatedly, another detail of usage is that several species of plants that are sometimes called beans, including Vigna angularis (azuki bean), mungo (black gram), radiata (green gram), and aconitifolia (moth bean), were once classified as Phaseolus but later reclassified but the taxonomic revision does not entirely stop the use of well-established senses in general usage.',
                      style: TextStyle(fontSize: 15, height: 1.5),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Cotton1 extends StatefulWidget {
  const Cotton1({Key? key}) : super(key: key);

  @override
  State<Cotton1> createState() => _Cotton1();
}

class _Cotton1 extends State<Cotton1> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // ignore: prefer_const_literals_to_create_immutables

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(5),
              child: Container(
                  child: Center(
                    child: Text(
                      'Cotton',
                      style: TextStyle(fontSize: 25, height: 1.5),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)))),
            ),
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/cotton.jpg",
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      'The word "bean" and its Germanic cognates (e.g. German Bohne) have existed in common use in West Germanic languages since before the 12th century,[3] referring to broad beans, chickpeas, and other pod-borne seeds. This was long before the New World genus Phaseolus was known in Europe. After Columbian-era contact between Europe and the Americas, use of the word was extended to pod-borne seeds of Phaseolus, such as the common bean and the runner bean, and the related genus Vigna. The term has long been applied generally to many other seeds of similar form,[3][4] such as Old World soybeans, peas, other vetches, and lupins, and even to those with slighter resemblances, such as coffee beans, vanilla beans, castor beans, and cocoa beans. Thus the term "bean" in general usage can refer to a host of different species.[5]Local bean from Nepal.Seeds called beans are often included among the crops called although the words are not always interchangeable usage varies by plant variety and by region Both terms, beans and pulses, are usually reserved for grain crops and thus exclude those legumes that have tiny seeds and are used exclusively for non-grain purposes (forage, hay, and silage), such as clover and alfalfa. The United Nations Food and Agriculture Organization defines "BEANS, DRY" (item code 176)[5] as applicable only to species of Phaseolus. This is one of various examples of how narrower word senses enforced in trade regulations or botany often coexist in natural language with broader senses in culinary use and general use; other common examples are the narrow sense of the word nut and the broader sense of the word nut, and the fact that tomatoes are fruit, botanically speaking, but are often treated as vegetables in culinary and general usage. Relatedly, another detail of usage is that several species of plants that are sometimes called beans, including Vigna angularis (azuki bean), mungo (black gram), radiata (green gram), and aconitifolia (moth bean), were once classified as Phaseolus but later reclassified but the taxonomic revision does not entirely stop the use of well-established senses in general usage.',
                      style: TextStyle(fontSize: 15, height: 1.5),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Cassava1 extends StatefulWidget {
  const Cassava1({Key? key}) : super(key: key);

  @override
  State<Cassava1> createState() => _Cassava1();
}

class _Cassava1 extends State<Cassava1> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // ignore: prefer_const_literals_to_create_immutables

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(5),
              child: Container(
                  child: Center(
                    child: Text(
                      'Cassava',
                      style: TextStyle(fontSize: 25, height: 1.5),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)))),
            ),
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/cassava.jpg",
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      'The word "bean" and its Germanic cognates (e.g. German Bohne) have existed in common use in West Germanic languages since before the 12th century,[3] referring to broad beans, chickpeas, and other pod-borne seeds. This was long before the New World genus Phaseolus was known in Europe. After Columbian-era contact between Europe and the Americas, use of the word was extended to pod-borne seeds of Phaseolus, such as the common bean and the runner bean, and the related genus Vigna. The term has long been applied generally to many other seeds of similar form,[3][4] such as Old World soybeans, peas, other vetches, and lupins, and even to those with slighter resemblances, such as coffee beans, vanilla beans, castor beans, and cocoa beans. Thus the term "bean" in general usage can refer to a host of different species.[5]Local bean from Nepal.Seeds called beans are often included among the crops called although the words are not always interchangeable usage varies by plant variety and by region Both terms, beans and pulses, are usually reserved for grain crops and thus exclude those legumes that have tiny seeds and are used exclusively for non-grain purposes (forage, hay, and silage), such as clover and alfalfa. The United Nations Food and Agriculture Organization defines "BEANS, DRY" (item code 176)[5] as applicable only to species of Phaseolus. This is one of various examples of how narrower word senses enforced in trade regulations or botany often coexist in natural language with broader senses in culinary use and general use; other common examples are the narrow sense of the word nut and the broader sense of the word nut, and the fact that tomatoes are fruit, botanically speaking, but are often treated as vegetables in culinary and general usage. Relatedly, another detail of usage is that several species of plants that are sometimes called beans, including Vigna angularis (azuki bean), mungo (black gram), radiata (green gram), and aconitifolia (moth bean), were once classified as Phaseolus but later reclassified but the taxonomic revision does not entirely stop the use of well-established senses in general usage.',
                      style: TextStyle(fontSize: 15, height: 1.5),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Oil_palm extends StatefulWidget {
  const Oil_palm({Key? key}) : super(key: key);

  @override
  State<Oil_palm> createState() => _Oil_palm();
}

class _Oil_palm extends State<Oil_palm> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // ignore: prefer_const_literals_to_create_immutables

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(5),
              child: Container(
                  child: Center(
                    child: Text(
                      'Cocoa',
                      style: TextStyle(fontSize: 25, height: 1.5),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)))),
            ),
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/oilpalm.jpg",
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      'The word "bean" and its Germanic cognates (e.g. German Bohne) have existed in common use in West Germanic languages since before the 12th century,[3] referring to broad beans, chickpeas, and other pod-borne seeds. This was long before the New World genus Phaseolus was known in Europe. After Columbian-era contact between Europe and the Americas, use of the word was extended to pod-borne seeds of Phaseolus, such as the common bean and the runner bean, and the related genus Vigna. The term has long been applied generally to many other seeds of similar form,[3][4] such as Old World soybeans, peas, other vetches, and lupins, and even to those with slighter resemblances, such as coffee beans, vanilla beans, castor beans, and cocoa beans. Thus the term "bean" in general usage can refer to a host of different species.[5]Local bean from Nepal.Seeds called beans are often included among the crops called although the words are not always interchangeable usage varies by plant variety and by region Both terms, beans and pulses, are usually reserved for grain crops and thus exclude those legumes that have tiny seeds and are used exclusively for non-grain purposes (forage, hay, and silage), such as clover and alfalfa. The United Nations Food and Agriculture Organization defines "BEANS, DRY" (item code 176)[5] as applicable only to species of Phaseolus. This is one of various examples of how narrower word senses enforced in trade regulations or botany often coexist in natural language with broader senses in culinary use and general use; other common examples are the narrow sense of the word nut and the broader sense of the word nut, and the fact that tomatoes are fruit, botanically speaking, but are often treated as vegetables in culinary and general usage. Relatedly, another detail of usage is that several species of plants that are sometimes called beans, including Vigna angularis (azuki bean), mungo (black gram), radiata (green gram), and aconitifolia (moth bean), were once classified as Phaseolus but later reclassified but the taxonomic revision does not entirely stop the use of well-established senses in general usage.',
                      style: TextStyle(fontSize: 15, height: 1.5),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Cocoa1 extends StatefulWidget {
  const Cocoa1({Key? key}) : super(key: key);

  @override
  State<Cocoa1> createState() => _Cocoa1();
}

class _Cocoa1 extends State<Cocoa1> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // ignore: prefer_const_literals_to_create_immutables

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(5),
              child: Container(
                  child: Center(
                    child: Text(
                      'Cocoa',
                      style: TextStyle(fontSize: 25, height: 1.5),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)))),
            ),
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/cocoa.jpg",
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      'The word "bean" and its Germanic cognates (e.g. German Bohne) have existed in common use in West Germanic languages since before the 12th century,[3] referring to broad beans, chickpeas, and other pod-borne seeds. This was long before the New World genus Phaseolus was known in Europe. After Columbian-era contact between Europe and the Americas, use of the word was extended to pod-borne seeds of Phaseolus, such as the common bean and the runner bean, and the related genus Vigna. The term has long been applied generally to many other seeds of similar form,[3][4] such as Old World soybeans, peas, other vetches, and lupins, and even to those with slighter resemblances, such as coffee beans, vanilla beans, castor beans, and cocoa beans. Thus the term "bean" in general usage can refer to a host of different species.[5]Local bean from Nepal.Seeds called beans are often included among the crops called although the words are not always interchangeable usage varies by plant variety and by region Both terms, beans and pulses, are usually reserved for grain crops and thus exclude those legumes that have tiny seeds and are used exclusively for non-grain purposes (forage, hay, and silage), such as clover and alfalfa. The United Nations Food and Agriculture Organization defines "BEANS, DRY" (item code 176)[5] as applicable only to species of Phaseolus. This is one of various examples of how narrower word senses enforced in trade regulations or botany often coexist in natural language with broader senses in culinary use and general use; other common examples are the narrow sense of the word nut and the broader sense of the word nut, and the fact that tomatoes are fruit, botanically speaking, but are often treated as vegetables in culinary and general usage. Relatedly, another detail of usage is that several species of plants that are sometimes called beans, including Vigna angularis (azuki bean), mungo (black gram), radiata (green gram), and aconitifolia (moth bean), were once classified as Phaseolus but later reclassified but the taxonomic revision does not entirely stop the use of well-established senses in general usage.',
                      style: TextStyle(fontSize: 15, height: 1.5),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Ginger1 extends StatefulWidget {
  const Ginger1({Key? key}) : super(key: key);

  @override
  State<Ginger1> createState() => _Ginger1();
}

class _Ginger1 extends State<Ginger1> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // ignore: prefer_const_literals_to_create_immutables

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(5),
              child: Container(
                  child: Center(
                    child: Text(
                      'Ginger',
                      style: TextStyle(fontSize: 25, height: 1.5),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)))),
            ),
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/ginger.jpg",
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      'The word "bean" and its Germanic cognates (e.g. German Bohne) have existed in common use in West Germanic languages since before the 12th century,[3] referring to broad beans, chickpeas, and other pod-borne seeds. This was long before the New World genus Phaseolus was known in Europe. After Columbian-era contact between Europe and the Americas, use of the word was extended to pod-borne seeds of Phaseolus, such as the common bean and the runner bean, and the related genus Vigna. The term has long been applied generally to many other seeds of similar form,[3][4] such as Old World soybeans, peas, other vetches, and lupins, and even to those with slighter resemblances, such as coffee beans, vanilla beans, castor beans, and cocoa beans. Thus the term "bean" in general usage can refer to a host of different species.[5]Local bean from Nepal.Seeds called beans are often included among the crops called although the words are not always interchangeable usage varies by plant variety and by region Both terms, beans and pulses, are usually reserved for grain crops and thus exclude those legumes that have tiny seeds and are used exclusively for non-grain purposes (forage, hay, and silage), such as clover and alfalfa. The United Nations Food and Agriculture Organization defines "BEANS, DRY" (item code 176)[5] as applicable only to species of Phaseolus. This is one of various examples of how narrower word senses enforced in trade regulations or botany often coexist in natural language with broader senses in culinary use and general use; other common examples are the narrow sense of the word nut and the broader sense of the word nut, and the fact that tomatoes are fruit, botanically speaking, but are often treated as vegetables in culinary and general usage. Relatedly, another detail of usage is that several species of plants that are sometimes called beans, including Vigna angularis (azuki bean), mungo (black gram), radiata (green gram), and aconitifolia (moth bean), were once classified as Phaseolus but later reclassified but the taxonomic revision does not entirely stop the use of well-established senses in general usage.',
                      style: TextStyle(fontSize: 15, height: 1.5),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Cashew1 extends StatefulWidget {
  const Cashew1({Key? key}) : super(key: key);

  @override
  State<Cashew1> createState() => _Cashew1();
}

class _Cashew1 extends State<Cashew1> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // ignore: prefer_const_literals_to_create_immutables

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(5),
              child: Container(
                  child: Center(
                    child: Text(
                      'Cashew',
                      style: TextStyle(fontSize: 25, height: 1.5),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)))),
            ),
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/cashew.jpg",
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      'The word "bean" and its Germanic cognates (e.g. German Bohne) have existed in common use in West Germanic languages since before the 12th century,[3] referring to broad beans, chickpeas, and other pod-borne seeds. This was long before the New World genus Phaseolus was known in Europe. After Columbian-era contact between Europe and the Americas, use of the word was extended to pod-borne seeds of Phaseolus, such as the common bean and the runner bean, and the related genus Vigna. The term has long been applied generally to many other seeds of similar form,[3][4] such as Old World soybeans, peas, other vetches, and lupins, and even to those with slighter resemblances, such as coffee beans, vanilla beans, castor beans, and cocoa beans. Thus the term "bean" in general usage can refer to a host of different species.[5]Local bean from Nepal.Seeds called beans are often included among the crops called although the words are not always interchangeable usage varies by plant variety and by region Both terms, beans and pulses, are usually reserved for grain crops and thus exclude those legumes that have tiny seeds and are used exclusively for non-grain purposes (forage, hay, and silage), such as clover and alfalfa. The United Nations Food and Agriculture Organization defines "BEANS, DRY" (item code 176)[5] as applicable only to species of Phaseolus. This is one of various examples of how narrower word senses enforced in trade regulations or botany often coexist in natural language with broader senses in culinary use and general use; other common examples are the narrow sense of the word nut and the broader sense of the word nut, and the fact that tomatoes are fruit, botanically speaking, but are often treated as vegetables in culinary and general usage. Relatedly, another detail of usage is that several species of plants that are sometimes called beans, including Vigna angularis (azuki bean), mungo (black gram), radiata (green gram), and aconitifolia (moth bean), were once classified as Phaseolus but later reclassified but the taxonomic revision does not entirely stop the use of well-established senses in general usage.',
                      style: TextStyle(fontSize: 15, height: 1.5),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class dHomePage extends StatefulWidget {
  @override
  _dHomePageState createState() => _dHomePageState();
}

class _dHomePageState extends State<dHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text("Weather"),
      ),
      body: Container(
        child: ElevatedButton(child: const Text('Open route'), onPressed: null),
      ),
    );
  }
}
