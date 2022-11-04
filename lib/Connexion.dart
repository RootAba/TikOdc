import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in_down.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:odktic/pages/root_app.dart';

class Connexion extends StatelessWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Inscription', style: TextStyle(color: Colors.black),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.help_outline_sharp, color: Colors.black),
          )
        ],

      ),
      body: Container(
        child:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ListTile(
                title: Text('Code de verification ',style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,

                ),),


                subtitle:Text('Veuillez saisir le code de confirmation'
                    ' envoyer au +223 .........') ,
              ),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 68,
                      width: 64,
                      child:TextField(
                       //   decoration: Border.all(color: Colors.black,width: 1,style: BorderStyle.solid,strokeAlign: StrokeAlign.inside),
                        onChanged: (value){
                          if(value.length ==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ) ,
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child:TextField(
                        onChanged: (value){
                          if(value.length ==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ) ,
                    ), SizedBox(
                      height: 68,
                      width: 64,
                      child:TextField(
                        onChanged: (value){
                          if(value.length ==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ) ,
                    ), SizedBox(
                      height: 68,
                      width: 64,
                      child:TextField(
                        onChanged: (value){
                          if(value.length ==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ) ,
                    ),


                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(

                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>RootApp()));
                  }, child: Text('Confirmer le code')),
            ],
          ),
        )
       
      ),
    );
  }
}




/*
class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  _ConnexionState createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  final numero = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Inscription',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),),
                ),


              ],
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(28.0,10,28,3),
              child: Row(
                children: [
                  Text('Telephone',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                  Spacer(),
                  Text('Par Email',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),)
                ],
              ),

            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              child: Column(
                children: [
                  TextField(
                    controller: numero,

                  ),
                ],
              ),
            ),



          ],
        ),

    );
  }
}*/


class Otp extends StatefulWidget {
  //const Otp({Key key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController chp1= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),
      body: ListView(

        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
            child: Column(

              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      size: 32,
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/videos/tiktok.jpeg'),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Verification',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Entrer le code envoyer sur votre numero",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    //alignment: Alignment.center,
                    padding: EdgeInsets.all(28),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _textFieldOTP(first: true, last: false),
                            _textFieldOTP(first: false, last: false),
                            _textFieldOTP(first: false, last: false),
                            _textFieldOTP(first: false, last: true),
                          ],
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(

                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>RootApp()));
                            },
                            style: ButtonStyle(
                              foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                              shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Text(
                                'Confirmer le code',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Vous n'avez pas recu de code ?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Envoyer un nouveau code",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],

      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      width: 50,
      height: 85,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextFormField(

          validator: (chp1) => chp1 !=null && chp1.isEmpty ? "remplissez les  champs"  : null,
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },

          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.purple),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}

// Inscrition fournissant les indicatifs des pays

class NumeroPhone extends StatefulWidget {
  const NumeroPhone({Key? key}) : super(key: key);

  @override
  _NumeroPhoneState createState() => _NumeroPhoneState();
}

class _NumeroPhoneState extends State<NumeroPhone> {
  @override
  Widget build(BuildContext context) {
    return
        DefaultTabController(
          initialIndex: 1,
          length: 3,

      child: Scaffold(
        appBar: AppBar(
          title: Text('Inscription',style: TextStyle(
            color: Colors.black,
          ),),
          centerTitle: true,
          backgroundColor: Colors.white,
          bottom: const TabBar(
            tabs: <Widget>[
             Text('Telephones',style: TextStyle(color: Colors.black),),
              Text('Email/Nom d\'utilisateur',style: TextStyle(color: Colors.black),),


            ],
          ),
        ),
      body:
      const TabBarView(
        children: <Widget>[

          Tel(),
          Email()

        ],
      ),




      ),
    );
  }
}



class Email extends StatelessWidget {
  const Email({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textConroller =  TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white24,
      body: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _textConroller,
              decoration: InputDecoration(
                hintText: "Adresse e-mail",
                hintStyle: TextStyle(
                  color: Colors.black38,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12, width: 3.0),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textConroller.clear();
                  },
                  icon: const Icon(Icons.clear,color: Colors.black),
                ),
              ),
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 10),
          chec(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: RichText(
              text: TextSpan(
                text: "En continuant, tu acceptes les ",
                style: TextStyle(color: Colors.black38, fontSize: 16),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Conditions d’utilisation',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  TextSpan(text: " de TikTok et confirmes avoir lu les "),
                  TextSpan(
                      text: 'Politiques de confidentialité ',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  TextSpan(text: " de TikTok."),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 300.0,
            height: 40,
            child: Builder(
              builder: (context) => ElevatedButton(

                onPressed: () => {
                  /*Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const InscTelMail(),
                    ),
                  ),*/
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                /*color: Colors.red,
                textColor: Colors.white,*/
                child: Text("Suivant",style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class chec extends StatefulWidget {
  const chec({Key? key}) : super(key: key);

  @override
  State<chec> createState() => _checState();
}

class _checState extends State<chec> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.red,
                value: isChecked,
                shape: CircleBorder(),
                side: BorderSide(color: Colors.black38),
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Text(
                "Reçois du contenu tendance, des newsletters, des \n"
                    "promotions, des recommandations et des mises à \n"
                    "jour du compte par e-mail.",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              SizedBox(height: 20),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}


class Tel extends StatelessWidget {
  const Tel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: SingleChildScrollView(
          child:Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                //   Image.asset('assets/videos/tiktok.jpeg'),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Verification',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Entrer le code envoyer sur votre numero",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                FadeInDown(
                    child:Container(
                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffeeeee),
                                blurRadius: 10,
                                offset: Offset(0 , 4)
                            )
                          ]
                      ),
                      child: Stack(
                        children: [
                          InternationalPhoneNumberInput(
                            onInputChanged: (PhoneNumber value) {

                            },
                            //selectorTextStyle: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                            inputDecoration: InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: 15,left: 0),
                                border: InputBorder.none,
                                hintText: 'Numero de tel',
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade50,
                                  fontSize: 16,
                                )
                            ),
                          ),
                          Positioned(
                              left: 90,
                              top: 0,
                              child: Container(
                                height: 40,
                                width: 1,
                             //   color: Colors.red,
                              ))
                        ],
                      ),


                    )
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(

                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Otp()));
                  },
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.black),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      'Confirmer le code',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ) ,
        ),
      ),
    );
  }
}

