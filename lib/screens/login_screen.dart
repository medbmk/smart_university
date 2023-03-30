
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController=TextEditingController();
   final passwordController=TextEditingController();
   Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(), password: passwordController.text.trim());
   }
   void openSignUpScreen (){

      Navigator.of(context).pushReplacementNamed('signupScreen');


   }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text('Smart_University'),),
      ),

        backgroundColor: Colors.lightBlue,
        
body: SafeArea(
  child:   Center(
    child: SingleChildScrollView(
      child: Column(
      
        mainAxisAlignment: MainAxisAlignment.center,
      
      
      
              children: [
      
                  //image
      
                  CircleAvatar(
      
                    backgroundImage: AssetImage('images/log.jpg'),
      
                    radius: 50,
      
                  ),
      
                  SizedBox(
                    height: 20.0,
                  ),
      
                  //text
    
                  Text('SIGN IN',
                  
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 40,  fontWeight: FontWeight.bold
    
    
                  ),
                  
                  ),
                  SizedBox(height: 20),
      
      
      
      
      
      
      
      
                  //EmaiL
      
                 
          Padding(
      
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
      
            child: Container(
      
          
      
              decoration: BoxDecoration(
      
          
      
          
      
                color: Colors.white,
      
                borderRadius:BorderRadius.circular(12)
      
              ),
      
      
      
              child: Padding(
      
                padding: const EdgeInsets.symmetric(horizontal:20),
      
                child: TextField(
      
                     
                  controller: emailController,
                    decoration: InputDecoration(
      
                      border: InputBorder.none,
      
              
      
                       hintText: 'Email',
      
                      icon: Icon(
      
                        Icons.email,
      
                        color: Colors.cyan
      
                        
      
                        ,
      
                      ),
      
                      
      
                    ),
      
                    
      
                      
      
                      
      
                ),
      
              ),
      
            ),
      
          ),
                    SizedBox(height: 15.0,),
      
          //password
      
           Padding(
      
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
      
            child: Container(
      
          
      
              decoration: BoxDecoration(
      
          
      
          
      
                color: Colors.white,
      
                borderRadius:BorderRadius.circular(12)
      
              ),
      
      
      
              child: Padding(
      
                padding: const EdgeInsets.symmetric(horizontal:20),
      
                child:
      
                 TextField(
                  
                  
      controller: passwordController,
                     obscureText: true,
      
                    decoration: InputDecoration(
      
                      border: InputBorder.none,
      
              
      
                       hintText: 'Password',
      
                     icon:Icon(
      
                      Icons.key,
      
                        color: Colors.cyan
      
                     ) ,
      
                      
      
                    ),
      
                    
      
                      
      
                      
      
                ),
      
              ),
      
            ),
      
          ),
           SizedBox(height: 20,),
      
      Padding(
      
      padding: const EdgeInsets.symmetric(horizontal: 20),
      
      child:  GestureDetector(
       onTap: signIn,
        child: InkWell(
           splashColor: Color.fromARGB(255, 251, 64, 126),
          child: Container(
          
            
          
          padding: EdgeInsets.all(16),
          
            decoration:BoxDecoration(
          
          borderRadius: BorderRadius.circular(20),
          
                color: Colors.cyan
          
          
          
          
          
          
          
            ),
          
          
          
            child: 
          
          
          
            Text(
          
              
          
              'Sign In',
          
              style: TextStyle(color: Colors.white,
          
              fontSize: 15),
          
              
          
              
          
              ),),
        ),
      ),
      
      ),
      
      SizedBox(height: 45,),
      
      
      
      
      
          Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      
                children: [
      
      
      
                    GestureDetector(
                      //onTap: openSignUp,
                        child: 
                        GestureDetector(
                          onTap: openSignUpScreen,
                          child: Text(
                            'Sign Up Now',
                          
                          style: GoogleFonts.robotoCondensed(
                          
                          
                          
                              color: Color.fromARGB(255, 255, 255, 255),
                          
                              fontWeight: FontWeight.bold,
                          fontSize: 18
                          
                          
                          ),
                          
                          
                          
                          
                          
                          
                          
                          ),
                        ),
                      ),
      
                        Text ('Forgot Your Password',
      
                         style: GoogleFonts.robotoCondensed(
      
      
      
                          color: Color.fromARGB(255, 255, 255, 255),
      
                          fontWeight: FontWeight.bold,
       fontSize: 18
                        
      
                        
                         )
                        
      
                        
      
                        ),
      
                        
      
      
      
      
      
      
      
                ],
      
      
      
      
      
      
      
          )
      
      
      
      ],
      
      ),
    ),
)


),





    
    
    
    
    
    
    
                
    
                  
    
    
    
    
    
    
    
    );
  





    
  }
}