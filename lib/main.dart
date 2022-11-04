import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odktic/page_transit.dart';
import 'package:odktic/pages/root_app.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Connexion.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RootApp(),
  ));
}



class MyHomePage extends StatefulWidget {
  //const MyHomePage({super.key, required this.title});

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //initialisation();
  }

  void initialisation() async {
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    // FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    //variables
    RoundedRectangleBorder btnBorder() {
      return const RoundedRectangleBorder(
          side: BorderSide(color: Colors.black, width: 2));
    }

    double LongueurEcran = MediaQuery.of(context).size.height;
    double LargeurEcran = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: LongueurEcran * 0.3,
              //  color: Colors.blueGrey,
              width: LargeurEcran,
              //margin: const EdgeInsets.only(bottom: 2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /* Image.asset(
                    'assets/images/icon.png',
                  ),*/
                  const Text(
                    'Inscription à TikODC',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Gère ton compte, consulte '
                          'les notifications, '
                          'commente des vidéos et bien plus encore',textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  alignment: Alignment.topCenter,
                  child: ListView(
                    children:  [

                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>NumeroPhone()));
                          },
                          child: Card(
                            child: ListTile(

                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(5))),
                              leading:
                              Icon(Icons.phone_android, color: Colors.blue),
                              title: Text('Utiliser un numero ou un nom d\'utilisateur',textAlign: TextAlign.center,),

                            ),
                          ),
                        ),

                      Card(
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          leading:
                          Icon(Icons.facebook_outlined, color: Colors.blue),
                          title: Text('Continuer avec Facebook',textAlign: TextAlign.center,),
                        ),
                      ),
                      Card(

                        child: ListTile(
                          //onTap: () => {},
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          leading: FaIcon(FontAwesomeIcons.google),
                          title: Text('Continuer avec Google',textAlign: TextAlign.center,),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Color.fromARGB(255, 25, 17, 48), width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          leading: FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Color.fromARGB(255, 5, 3, 100),
                          ),
                          title: Text('Continuer avec Twitter',textAlign: TextAlign.center,),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          leading: FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Color.fromARGB(255, 190, 41, 41),
                          ),
                          title: Text('Continuer avec Intagram',textAlign: TextAlign.center,),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'En continuant, tu acceptes nos Conditions d’utilisation '
                              'et reconais avoir lu notre Politique de confidentialité'
                              ' pour savoir comment nous collectons, utilisons et partageons tes données.',
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                      ),


                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

