 
import 'package:flutter/material.dart';
import 'package:trip_registration_login/signUp_screen.dart'; 
import 'package:trip_registration_login/main.dart';
 

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ColorFiltered(
            colorFilter:ColorFilter.mode(Colors.white.withOpacity(0.2),BlendMode.srcATop),
            child:Image.asset("assets/background_sea.jpg",fit: BoxFit.cover,),

          ),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
           margin: const EdgeInsets.only(top: 70,left: 30),
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
            const Column(
              children: [
                Padding(
          padding: EdgeInsets.only(top: 50,left: 30),
           child:Text("Enjoy the trip \nwith me",
           style: TextStyle(
           fontSize: 35,
          color: Colors.white,
         letterSpacing: 1.5
                  ),
                 )),
              ],
            ),
            Expanded(child: Container(
              margin: const EdgeInsets.only(top: 50),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(35),topLeft: Radius.circular(35))
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30,left: 40,right: 40),
                    child: Row(
                      children: [
                        Text("Welcome back\nAnas",style: TextStyle(fontSize: 25,
                            color: Colors.black,fontWeight: FontWeight.bold
                        ),),
                        Spacer(),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30, backgroundImage: AssetImage("assets/account_icon.jpg"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),
                 const  CustomTextField(label: "***********", prefixIcon: Icons.key_outlined,),
                 const  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Text("Forget Password ?",
                      style: TextStyle(fontSize: 16,color: Colors.deepOrange),),
                    ),
                  ),
                 const  SizedBox(height: 30,),
                  CustomButton(label: "Sign Up",
                      btncolor:Colors.deepOrange,
                      txtColor:Colors.white,
                      onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SignUpPage()));}),
                  const SizedBox(height: 5,),
                  const Center(
                    child: Text("or sign in with",style: TextStyle(fontSize: 14,color: Colors.black),
                    ),
                  ),
                   Container(
                     margin: EdgeInsets.only(top: 5),
                     height: 100,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image.asset("assets/google_icon.png",height: 40,),
                         const SizedBox(width:30),
                         Image.asset("assets/facebook_icon.png",height: 40,),
                         const SizedBox(width:30),
                         Image.asset("assets/twitter_icon.png",height: 40,),
                         ],
                     ),
                   )
                ],
              ),
            ),

            ),




  ])
        ],
      ),
    );
  }
}
