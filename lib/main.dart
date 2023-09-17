import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_registration_login/signIn_screen.dart';
import 'package:trip_registration_login/signUp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstSecreen (),
    );
  }
}
 class FirstSecreen extends StatelessWidget {
   const FirstSecreen({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Stack(
         fit: StackFit.expand,
         children: [
           ColorFiltered(
             colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.srcATop),
               child: Image.asset("assets/background_sea.jpg",fit: BoxFit.cover,)),
           SafeArea(
             child: Column(
               children: [
                 Container(
                   margin: const EdgeInsets.only(top: 70,right: 280),
                   height: 60,
                   width: 80,
                   decoration:const  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15))),
                   child:Container(
                     width: 30,height: 40,
                     child: IconButton(
                       icon: Image.asset("assets/icon_sea.png"),
                       iconSize: 15,
                       onPressed:(){},

                     ),
                   ),

                 ),
                 const Padding(
                     padding: EdgeInsets.only(top: 30,right: 140),
                  child:Text("Enjoy the trip \nwith me",
                 style: TextStyle(
                   fontSize: 35,
                   color: Colors.white,
                   letterSpacing: 1.5
                 ),
                 )),
                 const Spacer(),
                 CustomButton(label: "Sign Up",
                     btncolor:Colors.deepOrange,
                     txtColor:Colors.white,
                     onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpPage()));}),
                 CustomButton(label: "Sign In",
                     btncolor:Colors.white,
                     txtColor:Colors.deepOrange ,
                     onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignInPage()));}),
                 const SizedBox(height: 80,)
               ],
             ),
           )
         ],
       ),
     );
   }
 }
class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.btncolor,
    required this.txtColor,
    required this.onPressed,
  }) : super(key: key);

  final String label;
  final Color btncolor;
  final Color txtColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: btncolor,
        ),
        child: Align
          (alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 22,
              color: txtColor,

            ),
          ),
        ),
      ),
    );
  }
}

