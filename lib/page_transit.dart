import 'dart:async';
import 'dart:math' as math;
import 'dart:math';
import  'package:flutter/material.dart';
import 'package:odktic/pages/root_app.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _setpasswordController = new TextEditingController();
  TextEditingController _confirmpasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 100),
          alignment: Alignment.center,
          //const - Constant - Value - String , Int  - Fix Rahega  - Use Karna
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GlithEffect(child: const Text("Welcome To TikTok" ,style: TextStyle(fontWeight: FontWeight.w900 , fontSize: 30),)),
              SizedBox(height: 25,),
              InkWell(
              /*  onTap: () {
                  AuthController.instance.pickImage();

                },*/
                child: Stack(
                  children: [
                    const CircleAvatar(backgroundImage: NetworkImage("https://st3.depositphotos.com/1767687/16607/v/450/depositphotos_166074422-stock-illustration-default-avatar-profile-icon-grey.jpg"), radius: 60,),
                    Positioned( bottom: 0, right: 0, child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Icon(Icons.edit , size: 20,color: Colors.black,)))
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _emailController,
                  myLabelText: "Email",
                  myIcon: Icons.email,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _setpasswordController,
                  myLabelText: "Set Password",
                  myIcon: Icons.lock,
                  toHide: true,
                ),
              ),

              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _confirmpasswordController,
                  myLabelText: "Confirm Password",
                  myIcon: Icons.lock,
                  toHide: true,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _usernameController,
                  myLabelText: "Username",
                  myIcon: Icons.person,
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                  onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>RootApp()));
               // AuthController.instance.SignUp(_usernameController.text, _emailController.text,_setpasswordController.text, AuthController.instance.proimg);
              }, child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50 , vertical: 10),

                  child: Text("Sign Up")))
            ],
          ),

        ),
      ),
    );
  }
}

class TextInputField extends StatelessWidget {
  // final - Jab Aapko Pata ho ki ye ab change nahi hoga - const But Widgets/Methods Ke Liye
  final TextEditingController controller;
  final  IconData myIcon;
  final String myLabelText;
  final bool toHide;
  TextInputField({Key? key ,
    required this.controller,
    required this.myIcon,
    required this.myLabelText,
    this.toHide = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderColor = Colors.grey;
    return TextField(
      obscureText: toHide,
      controller: controller,
      decoration: InputDecoration(
        icon: Icon(myIcon),

        labelText: myLabelText,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:  BorderSide(
              color: borderColor,
            )),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide:  BorderSide(
            color: borderColor,
          ), ),

      ),


    );
  }
}


class GlithEffect extends StatefulWidget {
  GlithEffect({required this.child});

  final Widget child;

  @override
  _GlithEffectState createState() => _GlithEffectState();
}

class _GlithEffectState extends State<GlithEffect>
    with SingleTickerProviderStateMixin {
  late GlitchController _controller;
  late Timer _timer;

  @override
  void initState() {
    _controller = GlitchController(
      duration: Duration(
        milliseconds: 400,
      ),
    );

    _timer = Timer.periodic(
      Duration(seconds: 3),
          (_) {
        _controller
          ..reset()
          ..forward();
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (_, __) {
          var color = getRandomColor().withOpacity(0.5);
          if (!_controller.isAnimating) {
            return widget.child;
          }
          return Stack(
            children: [
              if (random.nextBool()) _clipedChild,
              Transform.translate(
                offset: randomOffset,
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: <Color>[
                        color,
                        color,
                      ],
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.srcATop,
                  child: _clipedChild,
                ),
              ),
            ],
          );
        });
  }

  Offset get randomOffset => Offset(
    (random.nextInt(10) - 5).toDouble(),
    (random.nextInt(10) - 5).toDouble(),
  );
  Widget get _clipedChild => ClipPath(
    clipper: GlitchClipper(),
    child: widget.child,
  );
}

var random = math.Random();

class GlitchClipper extends CustomClipper<Path> {
  final deltaMax = 15;
  final min = 3;

  @override
  getClip(Size size) {
    var path = Path();
    var y = randomStep;
    while (y < size.height) {
      var yRandom = randomStep;
      var x = randomStep;

      while (x < size.width) {
        var xRandom = randomStep;
        path.addRect(
          Rect.fromPoints(
            Offset(x, y.toDouble()),
            Offset(x + xRandom, y + yRandom),
          ),
        );
        x += randomStep * 2;
      }
      y += yRandom;
    }

    path.close();
    return path;
  }

  double get randomStep => min + random.nextInt(deltaMax).toDouble();

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}

class GlitchController extends Animation<int>
    with
        AnimationEagerListenerMixin,
        AnimationLocalListenersMixin,
        AnimationLocalStatusListenersMixin {
  GlitchController({required this.duration ,});

  late Duration duration;
  late List<Timer> _timers = [];
  late bool isAnimating = false;

  forward() {
    isAnimating = true;
    var oneStep = (duration.inMicroseconds / 3).round();
    _status = AnimationStatus.forward;
    _timers = [
      Timer(
        Duration(microseconds: oneStep),
            () => setValue(1),
      ),
      Timer(
        Duration(microseconds: oneStep * 2),
            () => setValue(2),
      ),
      Timer(
        Duration(microseconds: oneStep * 3),
            () => setValue(3),
      ),
      Timer(
        Duration(microseconds: oneStep * 4),
            () {
          _status = AnimationStatus.completed;
          isAnimating = false;
          notifyListeners();
        },
      ),
    ];
  }

  setValue(value) {
    _value = value;
    notifyListeners();
  }

  reset() {
    _status = AnimationStatus.dismissed;
    _value = 0;
  }

  @override
  void dispose() {
    _timers.forEach((timer) => timer.cancel());
    super.dispose();
  }

  @override
  AnimationStatus get status => _status;
  late AnimationStatus _status;

  @override
  int get value => _value;
  late int _value;
}
getRandomColor() => [
  Colors.blueAccent,
  Colors.redAccent,
  Colors.greenAccent,
][Random().nextInt(3)];