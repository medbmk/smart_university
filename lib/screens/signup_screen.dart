import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
   final emailController=TextEditingController();
   final passwordController=TextEditingController();
    final confirmpasswordController=TextEditingController();
   Future SignUp() async{
    
       await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text.trim(), password: passwordController.text.trim()
      );
        Navigator.of(context).pushNamed('/');
      
       }
   
 
  //  void openSignUpScreen (){

  //     Navigator.of(context).pushReplacementNamed('signupScreen');


  //  }
     void singnin (){

      Navigator.of(context).pushReplacementNamed('loginScreen');


   }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
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
      
                    backgroundImage: AssetImage('images/signup.jpeg'),
      
                    radius: 50,
      
                  ),
      
                  SizedBox(
                    height: 20.0,
                  ),
      
                  //text
    
                  Text('SIGN UP',
                  
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
      
                      Icons.key_off,
      
                        color: Colors.cyan
      
                     ) ,
      
                      
      
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
                  
                  
      controller: confirmpasswordController,
                     obscureText: true,
      
                    decoration: InputDecoration(
      
                      border: InputBorder.none,
      
              
      
                       hintText: 'Confirm Password',
      
                     icon:Icon(
      
                      Icons.key,
      
                        color: Colors.cyan
      
                     ) ,
      
                      
      
                    ),
      
                    
      
                      
      
                      
      
                ),
      
              ),
      
            ),
      
          ),
           SizedBox(height: 25,),
          // SizedBox(height: 20,),
      
      Padding(
      
      padding: const EdgeInsets.symmetric(horizontal: 20),
      
      child:  GestureDetector(
       onTap: SignUp,
        child: Container(
        
          
        
        padding: EdgeInsets.all(16),
        
          decoration:BoxDecoration(
        
        borderRadius: BorderRadius.circular(20),
        
              color: Colors.cyan
        
        
        
        
        
        
        
          ),
        
        
        
          child: 
        
        
        
          Text(
        
            
        
            'Sign Up',
        
            style: TextStyle(color: Colors.white,
        
            fontSize: 15),
        
            
        
            
        
            ),),
      ),
      
      ),
      
      SizedBox(height: 25,),
      
      
      
      
      
          Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      
                children: [
      
      
      
                    GestureDetector(
                      onTap: SignUp,
                        child: 
                        GestureDetector(
                          onTap: singnin,
                          child: Text(
                            'Sign In Here',
                          
                          style: GoogleFonts.robotoCondensed(
                          
                          
                          
                              color: Color.fromARGB(255, 255, 255, 255),
                          
                              fontWeight: FontWeight.bold,
                          fontSize: 18
                          
                          
                          ),
                          
                          
                          
                          
                          
                          
                          
                          ),
                        ),
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