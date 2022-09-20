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
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:forecast/profile_page.dart';
import 'package:forecast/utils/fire_auth.dart';
import 'package:forecast/utils/validator.dart';
import 'package:google_fonts/google_fonts.dart';





import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forecast/injection_container.dart';
import 'package:forecast/presentation/pages/forecast/forecast.dart';
import 'package:forecast/presentation/pages/search/search.dart';
import 'package:forecast/presentation/providers/forecast_provider.dart';
import 'package:forecast/presentation/providers/location_provider.dart';
import 'package:forecast/presentation/providers/notification_provider.dart';
import 'package:forecast/presentation/providers/settings_provider.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await init();
  runApp(MyAppp());
}

//Splash Screen
class MyAppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => SplashScreen(),
        'second':(context) => LoginPage(),
        'third':(context) => BackgroundImageExample(),
        'fourth':(context) => Appp(),
        'fifth':(context) => ForecastScreen(),


      }
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
      Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => BackgroundImageExample()));
    });
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return true;
      },
      child: Scaffold(
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
      ));
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
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text('Continue'),
          ),
        ],
      ),
    );
  }
}

//firebase page
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();

  bool _isProcessing = false;

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => SecHomePage(
            user: user,
          ),
        ),
      );
    }

    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusEmail.unfocus();
        _focusPassword.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          centerTitle: true,
          title: Text("Login"),
        ),
        body: FutureBuilder(
          future: _initializeFirebase(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            controller: _emailTextController,
                            focusNode: _focusEmail,
                            validator: (value) => Validator.validateEmail(
                              email: value,
                            ),
                            decoration: InputDecoration(
                              hintText: "Email",
                              errorBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          TextFormField(
                            controller: _passwordTextController,
                            focusNode: _focusPassword,
                            obscureText: true,
                            validator: (value) => Validator.validatePassword(
                              password: value,
                            ),
                            decoration: InputDecoration(
                              hintText: "Password",
                              errorBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 24.0),
                          _isProcessing
                              ? CircularProgressIndicator()
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green[900],
                                          onPrimary: Colors.white70,
                                          shadowColor: Colors.red,
                                          elevation: 5,
                                        ),
                                        onPressed: () async {
                                          _focusEmail.unfocus();
                                          _focusPassword.unfocus();

                                          if (_formKey.currentState!
                                              .validate()) {
                                            setState(() {
                                              _isProcessing = true;
                                            });

                                            User? user = await FireAuth
                                                .signInUsingEmailPassword(
                                              email: _emailTextController.text,
                                              password:
                                                  _passwordTextController.text,
                                            );

                                            setState(() {
                                              _isProcessing = false;
                                            });

                                            if (user != null) {
                                              Navigator.of(context)
                                                  .pushReplacement(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProfilePage(user: user),
                                                ),
                                              );
                                            }
                                          }
                                        },
                                        child: Text(
                                          'Sign In',
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}







class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (context) => sl<ForecastProvider>()..loadForecasts()),
          ChangeNotifierProvider(
              create: (context) => sl<LocationProvider>()..checkPermission()),
          ChangeNotifierProvider(create: (context) => sl<SettingsProvider>()),
          ChangeNotifierProxyProvider<ForecastProvider, NotificationProvider>(
              create: (context) {
            return sl<NotificationProvider>()
              ..setForecastProvider(sl<ForecastProvider>());
          }, update: (context, forcastProvider, notificationProvider) {
            notificationProvider!.setForecastProvider(forcastProvider);
            return notificationProvider;
          }),
        ],
        

        child: MaterialApp(
      debugShowCheckedModeBanner: false,

      // Title of App
      title: 'Forcast',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData.dark(),

      //First Screen of Slider App
      home: ForecastScreen(),
    ),
        
        
        
        );
  }
}












class SecHomePage extends StatelessWidget {
  final User user;

  const SecHomePage({required this.user});

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
  get user => null;
  bool _isSendingVerification = false;
  bool _isSigningOut = false;
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
                child: Text('NIRSAL'),
              ),
              ListTile(
                title: const Text('Plant Info'),
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
                title: const Text('Cropping Calendar'),
                onTap: () {
                  Navigator.push<Widget>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => croppingHomePage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('Forecast'),
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
                title: const Text('Seasonal Climate Prediction'),
                onTap: () {
                  Navigator.push<Widget>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApppp(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('About app'),
                onTap: () {
                  Navigator.push<Widget>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => aPage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('Sign Out'),
                onTap: () async {
                  setState(() {
                    _isSigningOut = true;
                  });
                  await FirebaseAuth.instance.signOut();
                  setState(() {
                    _isSigningOut = false;
                  });
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
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
                              'Plant\nInfo',
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
                          image: AssetImage("assets/calendar2.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Stack(
                        children: [
                          new Container(
                              child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: new Text(
                              'Cropping\nCalendar',
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
                                builder: (context) => croppingHomePage(),
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
                          image: AssetImage("assets/images.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Stack(
                        children: [
                          new Container(
                              child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: new Text(
                              'Forecast',
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

  void setState(Null Function() param0) {}
}

//Plant Info page
class aHomePage extends StatefulWidget {
  @override
  _aHomePageState createState() => _aHomePageState();
}

class _aHomePageState extends State<aHomePage> {
  String? _selectedGender = null;
  @override
  Widget build(BuildContext context) => WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return true;
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[400],
            title: Text(
              "Plant Info",
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 10.0),
                  child: Text(
                      "PLANT INFO page containes information about a particular commodity on ACEA and Knowledge base of a particular crop.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 100.0),
                ),
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
          )));
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

//Cropping Calendar home page
class croppingHomePage extends StatefulWidget {
  @override
  _croppingHomePageState createState() => _croppingHomePageState();
}

class _croppingHomePageState extends State<croppingHomePage> {
  String? _selectedGender = null;
  @override
  Widget build(BuildContext context) => WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return true;
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[400],
            title: Text(
              "Cropping Calendar",
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 10.0),
                  child: Text(
                      "CROPPING CALENDAR containes date range on different farming activities across different states.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 100.0),
                ),
                DropdownButton(
                  value: _selectedGender,
                  items: _dropDownItems(),
                  onChanged: (value) {
                    _selectedGender = value as String?;
                    switch (value) {
                      case "Rice":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CroppingCalendar()),
                        );
                        break;
                      case "Maize":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CroppingCalendarMaize()),
                        );
                        break;
                      case "Soybeans":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CroppingCalendarSoybeans()),
                        );
                        break;

                      case "Sesame":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CroppingCalendarSesame()),
                        );
                        break;

                      case "Sorghum":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CroppingCalendarSorghum()),
                        );
                        break;

                      case "Cotton":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CroppingCalendarCotton()),
                        );
                        break;

                      case "Cassava":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CroppingCalendarCassava()),
                        );
                        break;

                      case "Oil Palm":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CroppingCalendarOilpalm()),
                        );
                        break;

                      case "Cocoa":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CroppingCalendarCocoa()),
                        );
                        break;

                      case "Ginger":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CroppingCalendarGinger()),
                        );
                        break;
                      case "Cashew":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CroppingCalendarCashew()),
                        );
                        break;
                    }
                  },
                  hint: Text('Select Commodity'),
                ),
              ],
            ),
          )));
}

List<DropdownMenuItem<String>> _dropDownItems() {
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

class aPage extends StatefulWidget {
  @override
  _aPageState createState() => _aPageState();
}

class _aPageState extends State<aPage> {
  String? _selectedGender = null;
  @override
  Widget build(BuildContext context) => WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return true;
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[400],
            title: Text(
              "About App",
            ),
            actions: <Widget>[
              IconButton(
                icon: Image.asset('assets/nirsal.png'),
                onPressed: () {},
              ),
            ],
          ),
          body: Center(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
                  child: Text(
                      "ACEA app, this is an app that provides different functionalites, mainly focusing on providing information about different commodities and how different processes involved in planting this commodities are, the Application provides real-time access to weather information like forecast for current location and forecast across Nigeria with other weather prediction.\n\nAs seen in the home page there are three activities in which the user can choose to navigate like Planting Info, Crop Knowledge, Forecast.\n\nPlanting Info page consists of different commodities which you can select to start see the processes involved in planting that particular commodity, it has the cropping calendar were user can view the calendar dates for different farming activities in various states.\n\nCrop Knowledge page consists of different commodities which you can select to view important information about a particular commodity.\nAnd we have forecast were user can view the real time access to weather information like forecast for current location and forecast across Nigeria with other weather prediction.\n\nOther activities which the user can use is the Maps, which is located on the navigation bar, the maps feature provides user with an interactive map where the user can….",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 100.0),
                ),
              ],
            ),
          ))));
}

//Rice page for planting
class Rice extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) => WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return true;
      },
      child: Scaffold(
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
                Container(
                    padding: EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 100.0),
                    width: 200.00,
                    height: 100.00,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/rice2.jpg'),
                        fit: BoxFit.fitHeight,
                      ),
                    )),
                SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Rice1()),
                      );
                    },
                    child: const Text(
                      'Knowledge Base',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 15),
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
      ));
}

//Maize page for planting
class Maize extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) => WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return true;
      },
      child: Scaffold(
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
                Container(
                    padding: EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 100.0),
                    width: 200.00,
                    height: 100.00,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/maize.jpg'),
                        fit: BoxFit.fitHeight,
                      ),
                    )),
                SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Maize1()),
                      );
                    },
                    child: const Text(
                      'Knowledge Base',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 15),
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
      ));
}

//Soybeans page for planting
class Soybeans extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) => WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return true;
      },
      child: Scaffold(
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
                Container(
                    padding: EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 100.0),
                    width: 200.00,
                    height: 100.00,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/soybeans.jpg'),
                        fit: BoxFit.fitHeight,
                      ),
                    )),
                SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Soybeans1()),
                      );
                    },
                    child: const Text(
                      'Knowledge Base',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 15),
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
      ));
}

//sesame page for planting
class Sesame extends StatelessWidget {
  get style => null;

  @override
  Widget build(BuildContext context) => WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return true;
      },
      child: Scaffold(
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
                Container(
                    padding: EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 100.0),
                    width: 200.00,
                    height: 100.00,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/sesajme.jpg'),
                        fit: BoxFit.fitHeight,
                      ),
                    )),
                SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sesame1()),
                      );
                    },
                    child: const Text(
                      'Knowledge Base',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 15),
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
      ));
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
              Container(
                  padding: EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 100.0),
                  width: 200.00,
                  height: 100.00,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/sorghum.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  )),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sorghum1()),
                    );
                  },
                  child: const Text(
                    'Knowledge base',
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
              Container(
                  padding: EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 100.0),
                  width: 200.00,
                  height: 100.00,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/cotton.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  )),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cotton1()),
                    );
                  },
                  child: const Text(
                    'Knowledge Base',
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
              Container(
                  padding: EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 100.0),
                  width: 200.00,
                  height: 100.00,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/cassava.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  )),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cassava1()),
                    );
                  },
                  child: const Text(
                    'Knowledge Base',
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
              Container(
                  padding: EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 100.0),
                  width: 200.00,
                  height: 100.00,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/oilpalm.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  )),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Oil_palm()),
                    );
                  },
                  child: const Text(
                    'Knowledge base',
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
              Container(
                  padding: EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 100.0),
                  width: 200.00,
                  height: 100.00,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/cocoa.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  )),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cocoa1()),
                    );
                  },
                  child: const Text(
                    'Knowledge base',
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
              Container(
                  padding: EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 100.0),
                  width: 200.00,
                  height: 100.00,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/ginger.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  )),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Ginger1()),
                    );
                  },
                  child: const Text(
                    'Knowledge Base',
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
              Container(
                  padding: EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 100.0),
                  width: 200.00,
                  height: 100.00,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/cashew.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  )),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cashew1()),
                    );
                  },
                  child: const Text(
                    'Knowledge Base',
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
          title: Text('Farming activities'),
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
          OutlinedButton(
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => rice()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
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
          title: Text('Farming activities'),
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
          OutlinedButton(
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize6()),
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
          title: Text('Farming activities'),
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
          OutlinedButton(
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => soybeans()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => soybeans2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => soybeans3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => soybeans4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => soybeans5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => soybeans6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => soybeans6()),
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
        child: ElevatedButton(
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
          title: Text('Farming activities'),
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
          OutlinedButton(
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sesame()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sesame2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sesame3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sesame4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sesame5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sesame6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
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
          title: Text('Farming activities'),
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
          OutlinedButton(
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sorghum()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sorghum2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sorghum3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sorghum4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sorghum5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sorghum6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
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
          title: Text('Farming activities'),
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
          OutlinedButton(
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cotton()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cotton2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cotton3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cotton4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cotton5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cotton6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
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
          title: Text('Farming activities'),
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
          OutlinedButton(
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cassava()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cassava2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cassava3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cassava4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cassava5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cassava6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
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
          title: Text('Farming activities'),
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
          OutlinedButton(
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => oilpalm()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => oilpalm2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => oilpalm3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => oilpalm4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => oilpalm5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => oilpalm6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
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
          title: Text('Farming activities'),
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
          OutlinedButton(
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cocoa()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cocoa2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cocoa3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cocoa4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cocoa5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cocoa6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
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
          title: Text('Farming activities'),
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
          OutlinedButton(
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ginger()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ginger2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ginger3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ginger4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ginger5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ginger6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
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
          title: Text('Farming activities'),
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
          OutlinedButton(
            child: Text(
              "Land Preperation",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cashew()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Planting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cashew2()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Pre Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maize8()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "First Fertilizer Application",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cashew3()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Weeding",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cashew4()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Post Emergence",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cashew5()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "2nd Fertilizer",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cashew6()),
              );
            },
          ),
          Padding(padding: EdgeInsets.all(19)),
          OutlinedButton(
            child: Text(
              "Harvesting",
              style: TextStyle(fontSize: 15.0),
            ),
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(250, 20),
            ),
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
            "Knowledge Base",
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
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 10.0),
                child: Text(
                    "KNOWLEDGE BASE defines the particular information about a particular crop",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 100.0),
              ),
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
                      style: GoogleFonts.anekTelugu(
                        fontSize: 25,
                        height: 1.5)
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
                      '''Rice (Oryza sativa) is an edible starchy cereal grain of the monocotyledonous flowering plants commonly known as Poaceae grasses family. It is a staple food considered the most vital part of nutrition in Asia, Latin America, Africa, and the Caribbean. The global production of rice was estimated at 756 million tonnes in 2019, which makes rice world’s third-most produced agricultural crop after sugarcane and maize (FAOSTAT,2016).\n\nRice is believed to have originated from China and parts of Asia as far back as 2500 B.C. Its cultivation spread throughout Sri Lanka and India, then passed onto Greece and areas of the Mediterranean.The Two popular cultivated rice varieties are Oryza sativa and Oryza glaberrima. Rice production started in Nigeria in 1500 BC with the low-yielding indigenous red grain species O. glaberrima Steud, then widely grown in the Niger delta area (FAO). They are over 70 seeds variety for rice in Nigeria. However, some of the commonly used improved varieties in Nigeria are FARO 44, FARO 52, FARO 61, FARO 60, FARO 57, FARO 59, FARO 66 and FARO 67, cultivated across the various guinea savannah ecologies. \n\n
The annual production of rice in Nigeria is estimated at 8.17 million tonnes in 2022 with a growing average annual rate of 8.74%. (FAOSTAT). Rice is produced in almost all the states in Nigeria but the main Rice producing states in Nigeria are; Ebonyi, Kaduna, Kano, Niger, Benue, Taraba and Borno. Enugu and Cross River. Kebbi State has the highest production with of 2.05 million metric tonnes in the wet season and 1.51 million in the dry season. \n\n
The production peak in the past 10 years for rice is estimated at 8.43 million tonnes. Rice, paddy production of Nigeria increased from 388,000 tonnes in 1971 to 8.17 million tonnes in 2020. It is expected that the demand for rice will be sustained and increased in the foreseeable future and Rice being the most consumed staple food crop makes it one of the most important consumer value chains under the NIRSAL 5-4-3-2-1+ commodities.\n
Key value chain challenges\n  •Lack of access to information on seed selection for ecological suitability match, by small holder farmers\n•	Lack of access to soil and ecological suitability analysis services  \n•	Unstructured farming practices; scattered and isolated farmer structure\n •	Lack of access to right irrigation facilities; water damns and irrigation system to attain economies of scale in production\n 
NIRSAL’s Approach to fixing the Value Chain Challenges.\n•	The NIRSAL’s Farmers Agro Geo-Cooperative (F-AGC) model was developed to tackle most of the challenges through clustered farming provided with irrigation services for fee and Mapping to Market approach.\n

                      ''',
                       style: GoogleFonts.anekTelugu(
                        fontSize: 15,
                        height: 1.5),
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
                      style: GoogleFonts.anekTelugu(
                        fontSize: 25,
                        height: 1.5)
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
                      '''Maize, Zea mays L. (corn), is the most abundantly produced cereal in the world. It is grown in every continent except Antarctica. It is the most important cereal crop in sub-Saharan Africa (SSA) and an important staple food for more than 1.2 billion people in SSA and Latin America. More than 300 million Africans depend on maize as the main staple food crop. The global annual production of maize is about 1.16Billion Metric tonnes with the United States of America being the highest producing country in the world. Due to Nigeria’s increasing population, the demand for maize continues to grow annually. Its local maize demand continues to surpass supply thus creating an annual demand gap of about 4 million metric tonnes annually.\n\nMaize is an ancient grain that is believed to have originated in Southern Americas, where it was cultivated by ancient Mexican civilizations like the Olmec and Maya tribes. From there maize spread throughout Southern America and travelled to the North Americas. It quickly migrated during the age of Exploration (which started in the late 15th century) due to its adaptability to various environments and climates and became a staple food in many countries. It was introduced to West Africa by the Portuguese in the 10thcentury. Maize is one of the important grains in Nigeria, not only on the basis of the number of farmers that engaged in its cultivation, but also in its economic value. About 50 species exist and consist of different colors, textures, and grain shapes and sizes. \n\n
Nigeria currently produces an average of 13,940,000 Metric Tonnes of maize per annum, in about 20 states, with the largest producing states termed as “the Maize Belt” made up of Plateau, Nasarawa, Kogi, Niger, Kaduna, Katsina and Zamfara (FMARD 2022). \n\n
The maize commodity is categorized under industrial commodities in the NIRSAL’s 5-4-3-2-1 + focus commodities and due to low poor yield of maize and existence of official export ban.\n
Key value chain challenges\n•	Land policy laws within the country inhibits the cultivation of more land \n•		Fast ecological changes resulting in decreased soil fertility, suitability and drought during rainfed production season\n•	Poor adoption rate on use certified seeds by farmers\n•	 Lack of quality control for specific blends of fertilizer for maize production\n
NIRSAL’s Approach to fixing the Value Chain Challenges.\n•	NIRSAL has engaged MAAN, MAGPAMAN and other stakeholders in maize value chain and facilitated finance for value chain actors.\n•	NIRSAL under the M2M and F-AGCs model has facilitated sensitization & trainings to farmers nationwide on adoption and use of certified seeds \n

                      ''',
                       style: GoogleFonts.anekTelugu(
                        fontSize: 15,
                        height: 1.5),
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
                      style: GoogleFonts.anekTelugu(
                        fontSize: 25,
                        height: 1.5)
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
                      '''Soybean (Glycine max) also referred to as soya bean is an annual legume of the pea family (Fabaceae) and is also an edible seed. The global soybean global production was estimated at 353million MTs and an estimated export value of &2.54billion (Tridge.com, 2020). \n\nSoybean originated in Southeast Asia but was domesticated in China in the 11th Century B.C. Soybean was first introduced to sub-Saharan Africa by Chinese traders in the 19th century and was cultivated as an economic crop as early as 1903 in South Africa, therefore, South Africa, Nigeria, Zambia, and Uganda are the leading soybean producers in Africa (sciencedirect.com, 2018). There are three major soybean types, and they are yellow, green, and black.  \n\n
The annual production of soybeans in Nigeria is estimated at 600,000MTs in 2020 with a growing average annual rate of 7.57% (FAOSTAT). The major producing states for soybeans in Nigeria are Kaduna, Niger, Kebbi, Benue, Nasarawa, Kwara, Oyo, Jigawa, Taraba, Borno, Benue, Bauchi, Lagos, Sokoto, Plateau, Zamfara and FCT.  \n\n
The production peak reached an all-time high of 936,887MTs in 2016 but has periodically declined to 600,000MTs per annum as at 2020. According to the June 25 Global Agricultural Information Network report from USDA, it has been forecasted that Nigeria soybean production will reach 1.25million MTs/annum, which is a 43% from the most recent 2020-2021 USDA estimate. Nigeria’s soybean consumption has been forecasted to reach 1.275million MTs, which indicates a rapid increase in local and global demand. The soybean value chain has been categorized under the Industrial commodities in the NIRSAL 5-4-3-2-1+ focus commodities. \n
Key value chain challenges\n	•	Lack of access to higher yield seed varieties\n	•	High post-harvest losses \n •	High operating cost for soybean processors \n •	Poor adoption of Good Agronomic Practices by small holder farmers\n\n
NIRSAL’s Approach to fixing the Value Chain Challenges.\n	•	NIRSAL is currently piloting its Proof-of-Concept (POC) projects to develop Standard Agribusiness Protocols which will be used to optimize yield per hectare and productivity for Soybean farmers.\n•	NIRSAL’s Agro Geo-Cooperative (AGC) model can also be adopted by the soybean SHFs to aid in structuring and aggregating the farmers/farmlands to encourage access to commercial funding. \n •	NIRSAL can layer its CRG in the processing segment of the value chain to set up adequate machineries for value addition and oil extraction.  \n

                      ''',
                       style: GoogleFonts.anekTelugu(
                        fontSize: 15,
                        height: 1.5),
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
                      style: GoogleFonts.anekTelugu(
                        fontSize: 25,
                        height: 1.5)
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
                      '''Sesame Seed (Sesamum Indicum) commonly referred to as “big treasure in little capsules” is one of the most valuable oil seeds in the world, with global production at 6.2million tones annually (FAOSTAT, 2018) and an estimated export value of 1.5bn dollars (prices per tonne vary significantly depending on variety and market forces.\n\nArchaeological remnants of charred sesame dating to about 3500-3050 BCE suggest sesame was domesticated in the Indian subcontinent at least 5500 years ago. The first cultivation of Sesame in Africa was traced to Egypt during the during the Ptolemaic period 1350 BC and was introduced to Nigeria after the Second World War. It is mostly cultivated as a minor crop in the Northern and Central part of Nigeria until 1974 when it began to gain prominence as a major cash crop (Agriculture Nigeria, 2017). There are four types of Sesame seed; black, brown, red, and white, each is preferred for specific purposes. \n\n
Currently, Nigeria produces an average of 460,000 tonnes of Sesame Seed with the largest producing states being Jigawa, Nasarawa, Benue and Taraba. About a total of 26 States grow Sesame some of which include Ebonyi, Delta, Cross River, Kebbi, Plateau, Kwara, Jigawa, Bauchi, Kano, Katsina, Kogi, Yobe, Gombe, Nasarawa, Benue and Taraba. According to FOASTAT, Nigeria’s Sesame production has increased from 56,000MT to 460,988MT in 2016. \n\n
Production peaked at 994,800MT in 2012 before declining to 584,980MT the following year (FAOSTAT, 2018). Historically, Sesame production has been increasing steadily in the country, with a few declines at some points, but the trend has generally been positive and is predicted to increase even further. An estimated 94% of the Sesame seed grown in Nigeria is exported (Mordor Intelligence, 2018), so the value chain is directly affected by global demand and export prices. Thus, Sesame is categorized under Export Commodities in the NIRSAL 5-4-3-2-1+ Focus Commodities.\n
Key value chain challenges\n•	Its yield per hectare is small when compared to other oilseeds.\n•	Absence of proper processing plants that can enhance the quality of seeds, especially for export.\n•	Lack of access to financing for value chain players.\n•	Poor agronomic practices.\n
NIRSAL’s Approach to fixing the Value Chain Challenges.\n•	NIRSAL is currently piloting a Proof-of-concept project to develop Standard agribusiness protocols that will be used to optimize yield per hectare and productivity by Sesame Seed farmers.\n•	NIRSAL is supporting processors using our Credit Risk Guarantee to acquire processing machines for value addition before export.\n

                      ''',
                       style: GoogleFonts.anekTelugu(
                        fontSize: 15,
                        height: 1.5),
                        ),
                    
                    decoration: BoxDecoration(
                      color: Colors.white,
                    )),
                    
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
                      style: GoogleFonts.anekTelugu(
                        fontSize: 25,
                        height: 1.5)
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
                      '''Sorghum (Sorghum bicolor [L.] Moench) also known as guinea-corn or millet, is considered by agronomists as one of the five most widely cultivated cereal crops in the world after maize, wheat, rice and barley, with global production of up to 62.0 million metric tons per annum, and estimated total trade value of &1.75B in 2020.\n\nNigeria's bulk of sorghum production is derived from the the Sahel, Sudan and Guinea Savannah ecological zones of Northern Nigeria. Sorghum is a warm short cycle annual plant, drought resistant and adapted to withstand higher average temperatures compared to other cereal crops. It can be cultivated  in almost all the Nigerian states but thrives better in the north  where the arid and semi-arid temperatures are well suited for good yield. The major producing states include; Adamawa, Bauchi, Benue, Borno,  Gombe,  Jigawa,  Kaduna,  Kano, Katsina,  Kebbi,  Kogi,  Kwara, Nasarawa,  Niger,Plateau, Sokoto, Taraba, and Zamfara States. Sorghum is primarily consumed as a traditional food crop in Nigeria and occasionally fermented for malting and preparing local brewing products. Industrially, sorghum is used by companies producing beverages, breakfast cereals, confectionery and a small percentage of the grain is also used as animal feed and biofuel. \n\n
Nigeria as the second largest producer of sorghum in the world and accounting for over 60 per cent of the total production in West Africa. In 2020, the United States, produced an estimated 8.7 million tons of Sorghum from 2.0 million hectares, followed closely by Nigeria (6.9 million tons and 5.4 million hectares), Ethiopia (5.3 million tons and 1.9 million hectares), and Sudan (3.7 million tons in 6.8 million hectares). In 2020, Nigeria exported &106k in Sorghum, making it the 48th largest exporter of Sorghum in the world. In the same year, Sorghum was the 340th most exported product in Nigeria. (FAOSAT 2021) \n\n

Key value chain challenges\n•	The crop's economic potential has not been fully realised in Nigeria due to a number of production and productivity constraints. Lack of high yielding sorghum varieties, declining soil fertility, drought stress, Striga infestation, limited access to production inputs and credit facility and finance are among the factors accounting for the low sorghum production and product development.\n
NIRSAL’s Approach to fixing the Value Chain Challenges.\n•	NIRSAL is currently piloting a Proof-of-concept project to develop Standard agribusiness protocols that will be used to optimize yield per hectare and productivity. NIRSAL is also providing support and facilitating finance to  processors using its Credit Risk Guarantee to acquire processing machines for value addition before export.\n

                      ''',
                       style: GoogleFonts.anekTelugu(
                        fontSize: 15,
                        height: 1.5),
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
                      style: GoogleFonts.anekTelugu(
                        fontSize: 25,
                        height: 1.5)
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
                      '''Cotton plant is the most miraculous natural fibre under the sun, with history dating back to 8,000 years of existence. Its origin is traced to the Indus River Valley in India region (currently in Pakistan) where cotton was grown, spun and woven into cloth around 3,000 BC. At about the same time, natives of Egypt's Nile valley were also known to be making and wearing cotton clothing. Cotton has multifarious uses, given its comfort. It also provides thousands of useful products and supports millions of jobs as it moves from field to fabric. \n\nCotton development started in Nigeria in 1903 and can be grown in 24 States across the six geopolitical zones and the FCT. Cotton grows phonologically between 5 and 8 months depending on types. Cotton fibre is the major cost driver in the Nigerian Textile Industry contributing 69% in spinning, 75% in weaving and 57% in dying, printing, and finishing. Cotton therefore offers an avenue for raising incomes and improving livelihood in those areas in which poverty is heavily concentrated. Cotton provides fiber for the textile mills, edible oil for human consumption/ industrial uses, and the by-product for livestock feed. The Textile industry in Nigeria today is capable of an average output of between 150,000 metric tonnes and 300,000 metric tonnes with a ginning capacity of 650,000 metric tonnes at 80 per cent capacity utilization (CBN, 2021).Cotton development started in Nigeria in 1903 and can be grown in 24 States across the six geopolitical zones and the FCT. Cotton grows phonologically between 5 and 8 months depending on types. Cotton fibre is the major cost driver in the Nigerian Textile Industry contributing 69% in spinning, 75% in weaving and 57% in dying, printing, and finishing. Cotton therefore offers an avenue for raising incomes and improving livelihood in those areas in which poverty is heavily concentrated. Cotton provides fiber for the textile mills, edible oil for human consumption/ industrial uses, and the by-product for livestock feed. The Textile industry in Nigeria today is capable of an average output of between 150,000 metric tonnes and 300,000 metric tonnes with a ginning capacity of 650,000 metric tonnes at 80 per cent capacity utilization (CBN, 2021). \n\n
Cotton in Nigeria has strong linkages with the domestic industries which consume up to 50% of the total production and the rest is exported to EU, China, South Korea, and Taiwan. Nigeria had a well-developed textile industry till the 1980’s and was one of the finest and most vibrant industries in the world. At its peak in the 1980s, the industry provided about 500,000 direct jobs with well over 250 functional factories (AGOA 2016). \n\n

Key value chain challenges\n• 	Significantly high cost of production due to factors such as high cost of labour, lack of mechanized harvesters, and poor storage facilities.\n•		Inefficient farm practices and farming techniques characterized by very poor leverage of technology and high level of illiteracy among the cotton producers.\n•		Inefficient farm practices and farming techniques characterized by very poor leverage of technology and high level of illiteracy among the cotton producers.\n•		Lack of proper coordination, market structures and linkages among cotton value chain.\n
NIRSAL’s Approach to fixing the Value Chain Challenges.\n•		The NIRSAL’s Mapping to Markets (M2M) strategy and the F-AGC Model is being activated to enhance the mechanized production linked to structured markets. \n•		Round table discussions between NIRSAL, aggregators, processors, development partners and government agencies to address to challenges encountered in the Cotton Value Chain.\n

                      ''',
                       style: GoogleFonts.anekTelugu(
                        fontSize: 15,
                        height: 1.5),
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
                      style: GoogleFonts.anekTelugu(
                        fontSize: 25,
                        height: 1.5)
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
                      '''Cassava, (Manihot esculenta), also called manioc, mandioca, or yuca, is an important crop that is being cultivated both in subsistence and commercial farming. Between 1971 and 2020, global cassava production grew substantially from 98.7 million to 302 million tonnes. Cassava is among the world's 664th most traded product in 2022, with a total trade volume of &2.56B(OEC). \n\n
Cassava is a perennial woody shrub with an edible root, which grows in tropical and subtropical areas of the world, with origin traced to have originated from Southern American region of Brazil and Bolivia. It was first introduced into Africa in the Congo basin by the Portuguese around 1558 and the cultivation in Nigeria started around the 19th century. Nigeria is the world-leading producer of cassava, with approximately 60 million metric tons per year from a cultivated area of approximately 3.7 million hectares (FAO, 2019; Ikuemonisan et al., 2020).  \n\n
PCurrently, Nigeria produces an average of 34,000 metric tons of CASSAVA with the largest producing states being Benue, Taraba, Kogi, Imo and Cross River. More than 26 States grow cassava, some of which include Anambra, Enugu, Ogun, Ondo, Kwara, Oyo, Osun, Delta and Edo. According to FOASTAT, the production of cassava in Nigeria increased from 9.17 million tons in 1971 to 60 million tons in 2020 growing at an average annual rate of 4.25%.\n\n Cassava is categorized under Industrial Commodities in the NIRSAL 5-4-3-2-1+ Focus Commodities\n\n
Key value chain challenges\n•	Post-Harvest management\n•	Poor access industrial markets by Small Holder Farmers\n•	High cost of mechanization.\n•	Lack of access to credit facilities by cassava farmers.\n
NIRSAL’s Approach to fixing the Value Chain Challenges.\n•	NIRSAL under its Risk Sharing Guarantee Facility is supporting processors to establish processing hubs in major Cassava producing clusters\n•	NIRSAL’s Train the Trainers Model (TTM) and NIRSAL Business School (anchored by MTN) provides avenue for farmers to gain knowledge on good agronomic practice along the value chain.\n

                      ''',
                       style: GoogleFonts.anekTelugu(
                        fontSize: 15,
                        height: 1.5),
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
                      style: GoogleFonts.anekTelugu(
                        fontSize: 25,
                        height: 1.5)
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
                      '''Oil palm is the second largest source of edible oil, next only to soybean. It contributes approximately one-fifth of the world’s production of oils and fats, and belongs to the genus (Eloeis). \n\n
The global oil palm production is estimated to be 73 million metric tons in the marketing year 2020/21, increasing from approximately 72.94 million metric tons in 2019/2020. In that period, Indonesia and Malaysia were the leading exporters of palm oil worldwide. source (global production volume 2012/13-2021/22 by M. Shahbandeh) Estimated Export value of palm oil globally from 2015/2016 to 2021/2022(in 1,000 metric tons). \n\n
The human use of oil palms is believed to be dated back as far as 5,000 years. In the late 1800s, archaeologists discovered a substance in a tomb at Abydos that they concluded was originally palm oil which dated back to 3,000 BC. It is thought that Arab traders had brought the oil to Egypt. \n\n
Oil palm is grown mainly in the humid tropics, stretching from 19o N in Dominican Republic to 15o S in Brazil. It is grown commercially in more than 20 countries with most oil palm growing areas located within 10o N and S of the Equator. There are three major varieties of oil palm which are as follows: Dura palms (have kernels with a thick shell), Pisfera palms (have kernels with no shell) and Tenera palms (is the cross between dura and Pisfera variety).\n\n
Nigeria oil palm production for 2021 is estimated to be 1,015 thousand metric tons, remaining stable compared to the previous year. Between 2010 and 2020, the palm oil crop in the country increased overall, registering the highest growth in 2010, when the production grew by 14 percent compared to the previous year. Nigeria is one of the leading five producers of palm oil worldwide.\n\n
The top five major oil palm producing states in Nigeria includes Delta, Enugu, Bayelsa, Abia and Rivers. Other oil palm producing states are Kogi, Imo Benue, Ondo, Ebonyi and Kaduna respectively. In 2020 Nigeria exported &1.06M in Palm Oil making it the 69th largest exporter in the world. Although Oil Palm is not a NIRSAL focused commodity, but it is an export commodity in Nigeria.\n\n

Key value chain challenges\n•		Poor yield per tree due to low adoption of improved varieties seedling. \n•		Poor quality oil due to lack of standardized processing facilities\n •	Lack of access to credit facility by SHFs and SMEs in the value chain.\n
NIRSAL’s Approach to fixing the Value Chain Challenges.\n•	NIRSAL is supporting oil palm processors using using CRG to acquire standard processing machine and increase production. \n

                      ''',
                       style: GoogleFonts.anekTelugu(
                        fontSize: 15,
                        height: 1.5),
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
                      style: GoogleFonts.anekTelugu(
                        fontSize: 25,
                        height: 1.5)
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
                      '''Theobroma cacao or cocoa bean, simply referred to as cocoa, is the dried and fully fermented fatty seed of which cocoa solids and cocoa oil are extracted. Cocoa crop thrives in tropical climate and production is therefore dominated by countries in those regions, while consumption is mostly by countries in temperate regions of the world. Thus, it is described as “The daughter of tropic and bride of temperate”. Cocoa flourishes in areas that are not more than 20 degrees north or south of the equator. West Africa is a major producer accounting for approximately 70% of global production which fluctuates annually with climatic variations. In the 2018/2019 cocoa season, a total of 4.8 million tons of cocoa was produced worldwide. \n\n
Cocoa originated from Southern American region of Brazil around the Amazon forest, and was introduced to West Africa in the 19th century, about the year 1874.  The major cocoa producing states in Nigeria are Ondo, Cross Rivers, Ogun, Akwa Ibom, Ekiti, Delta, Osun and Oyo. Cocoa is of three varieties, Forastero, Criollo and Trinitario. However, multiple hybrids exist of each strain. The hybrid varieties developed by the Cocoa Research Institute of Nigeria (CRIN) include T9/15, T12/11, T19/9, T24/12, T50/32 and T86/2. \n\n
Nigeria is the sixth largest producer of cocoa in the world, estimated to produce 500,000 MT in 2022. The global cocoa processing market was valued at about 12.4 billion U.S. dollars in 2020 and is forecasted to reach 14.6 billion dollars by 2027. Nigeria’s cocoa export dwindled in the last five years. Export value of cocoa was &627.03 million in 2014 and drastically diminished to &302.06 million by 2018, more than 50% decrease rate in 4 years. \n
Key value chain challenges\n•		Absence of global standard processing technologies \n•	Lack of access to early maturity hybrid seedlings for replacement of aged trees that past their production peak.\n•		Decline in soil fertility and prevalence of pests & diseases \n•	Lack of access to finance for cocoa farmers (primary producers)\n •	Weak industry regulation\n
NIRSAL’s Approach to fixing the Value Chain Challenges.\n•	NIRSAL under its Risk Sharing Guarantee Facility is supporting processors to establish cocoa processing plants.\n•	NIRSAL is supporting Cocoa farmers in facilitating finance for existing plantation maintenance to improve productivity.  \n

                      ''',
                       style: GoogleFonts.anekTelugu(
                        fontSize: 15,
                        height: 1.5),
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
                      style: GoogleFonts.anekTelugu(
                        fontSize: 25,
                        height: 1.5)
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
                      '''Ginger (Zingiber officinale) is a flowering plant whose rhizome, ginger root or ginger, is widely used for different purposes. It is a herbaceous perennial plant which grows annual pseudo stems. The global production of ginger was 4.3 million tonnes in 2020 (FAOSTAT, 2021) with estimated export value of &1.15 bn (Tridge, 2021) costs per tonne change essentially contingent upon variety and market influences\n\n
Ginger originated in Maritime Southeast Asia (475-221 BC) and domesticated first by Austronesian people. it was transported with them throughout the Indo-Pacific during the Austronesian expansion (5000 BP). It was first cultivated in ceylon (Sri Lanka), raw and preserved ginger was imported into Europe during the Middle Ages where it was described in the official pharmacopeias of several countries. Ginger was first grown in Nigeria in 1927 in southern Zaria of Kaduna State. There are four types of ginger which are yellow ginger (cream garland), white ginger (coronarium), spring ginger and culinary ginger. \n\n
Nigeria produces 734,295 tonnes of ginger in 2020 (FAOSTAT, 2021. Ginger can grow in all part of the country but the following states Kaduna, Gombe, Bauchi, Benue and Nasarawa has comparative advantage which made them the major producing states. Nigeria’s ginger production has increased from 349,895MT in 2017 to 522,096MT in 2016 (FAOSTAT, 2019)\n\nProduction peaked at 834,634MT in 2017 before declining to 700,000MT in 2018 and the following year (FAOSTAT, 2022). Previously, ginger production has been fluctuating in the country but generally or so far it has been positively with few declines. The ginger production trends has been as follows from 2010-2020. 162,223MT in 2010, 460,170MT in 2011, 380,000MT in 2012, 496,920MT in 2013, 168,128MT in 2014, 413,382MT in 2015, 774,887MT in 2016, 834,634MT in 2017, 700,000MT in 2018, 647,041 in 2019 and 734,295MT in 2020. Nigeria accounts for 14% of the global market share of ginger production. Ginger is categorized under Export Commodities in the NIRSAL 5-4-3-2-1+ Focus Commodities. 
Key value chain challenges\n•		Lack of access to financing for value chain players.\n•		Lack of Mechanization of Farm Operations\n•		Poor Level of Industrialization\n•		High cost of inputs \n •	Security challenges\n
NIRSAL’s Approach to fixing the Value Chain Challenges.\n•		NIRSAL AGC has been able to structure ginger farmers into F-AGCs and provided capacity empowerment to help eliminate challenges faced with primary production.\n•		NIRSAL is supporting processors using our Credit Risk Guarantee(CRG) to acquire processing machines for value addition before export.\n

                      ''',
                       style: GoogleFonts.anekTelugu(
                        fontSize: 15,
                        height: 1.5),
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
                      style: GoogleFonts.anekTelugu(
                        fontSize: 25,
                        height: 1.5)
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
                      '''The cashew tree (Anacardium occidentale) is a tropical evergreen plant that yields cashew seed and cashew apple. it is a multipurpose tree crop of great economic importance to many countries, particularly third-world countries (2022, Statista). With a global nut production of 4.18 million metric tonnes in 2020, the value of export trade is estimated to be 6.87 billion dollars. Nigeria, as one of the cashew nut producers, earned  192 million dollars in export in 2020. \n\n
Cashew tree is tropical plant, native to Brazil. It was introduced to Nigeria by Portuguese traders around the 16th century" (Woodroof 1967; Ohler 1979). Cashew is primarily grown in tropical regions where the climate is warm and humid. Cashew is grown in over 32 countries around the world, including Vietnam, India, Nigeria, Brazil, Benin, Guinea-Bissau, Cote D'Ivoire, and the Philippines. Ghana, Mozambique, among others. There are numerous cashew varieties in the world, but the most well-known are the Brazilian Cashew, the Chinese Cashew, and the Indian Variety. \n\n
Nigeria is ranked third in Africa and sixth in the world, with 225 metric tonnes of cashew nuts (in shell) produced in 2020 (NEPC). In Nigeria, cashew is produced in more than 20 states, with Kogi, Kwara, Oyo Kaduna, Abia, Enugu, Niger, Imo, Taraba, and Abuja FCT been considered as the leaders.  Kogi comes first, accounting for more than 60% of the nation’s output. \n\n Nigeria had the highest nut production output in 2018 with total of 240MT. Unfortunately, the local production has been dwindling year in year out since the peak production recorded in 2018(NEPC). Though Nigeria has the lowest RCN export taxes in Africa, more than 85% of Nigeria's cashew is exported in shell form (NEPC), thus limiting its earnings. Cashew is classified as an export commodity in the NIRSAL 5-4-3-2-1+ focus commodities of Interest.\n
Key value chain challenges\n•	Poor nuts standardization and pricing.\n•	Lack of adequate processing, only about 5% of the total cashew nuts produced are added value locally before export. \n•	Lack of access to finance by value chain actors\n•	Lack of access to improved seedlings and poor agronomic practices.\n
NIRSAL’s Approach to fixing the Value Chain Challenges.\n•	NIRSAL has developed a model project called “Embedded Modular Processors Cluster”. The model integrates primary processing (value addition) into Commercial Cashew production clusters, to mitigate value loss due to lack of value addition before export.\n•	NIRSAL is supporting processors using our Credit Risk Guarantee to acquire processing machines for value addition.\n

                      ''',
                       style: GoogleFonts.anekTelugu(
                        fontSize: 15,
                        height: 1.5),
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
