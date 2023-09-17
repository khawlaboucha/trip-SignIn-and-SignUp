
import 'package:flutter/material.dart';
import 'package:trip_registration_login/main.dart';
import 'package:trip_registration_login/signIn_screen.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
          SafeArea(
            child: Column(
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
                const Padding(
                    padding: EdgeInsets.only(top: 50,left: 30),
                    child:Text("Enjoy the trip \nwith me",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          letterSpacing: 1.5
                      ),
                    )),
                Expanded(child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration:const  BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 40,right: 40),
                      child: Row(
                        children: [
                          const Text("New\nAccount",style: TextStyle(fontSize: 25,
                          color: Colors.black,fontWeight: FontWeight.bold
                          ),),
                          const Spacer(),
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                child: Center(child: Icon(Icons.camera_alt_outlined),),
                                decoration:  BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:Border.all(color:Colors.deepOrange,width: 0.5),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const  Text("upload Picture")
                            ],
                          )

                        ],

                      ),
                    ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15,left: 30),
                        child: Text("Email"),
                      ),
                      const CustomTextField(label: "Anastravel@123", prefixIcon: Icons.email_outlined,),

                      const Padding(
                        padding: EdgeInsets.only(top: 15,left: 30),
                        child: Text("Username"),
                      ),
                      const CustomTextField(label: "Anas ", prefixIcon: Icons.person_2_outlined,),

                      const Padding(
                        padding: EdgeInsets.only(top: 15,left: 30),
                        child: Text("Password"),
                      ),
                      const CustomTextField(label: "***********", prefixIcon: Icons.key_outlined,),
                      const SizedBox(height: 10,),
                      CustomButton(label: "Sign Up",
                          btncolor:Colors.deepOrange,
                          txtColor:Colors.white,
                          onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SignInPage()));}),
                  ],),
                )),

  ]),
          ),

        ],
      ),
    );
  }
}
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.label, required this.prefixIcon}) : super(key: key);
  final String label;
  final IconData prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30 ,vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Icon(prefixIcon,size: 15,),
              const SizedBox(width: 10,),
              Text(label)
            ],
          ),
          const SizedBox(height: 5,),
          Container(
            height: 3,
            width: double.infinity,
            color: Colors.deepOrange.withOpacity(0.5),
          ),
          
        ],
      ),
    );
  }
}
