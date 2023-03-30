





import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:university/app_data.dart';

import '../widgets/category_item.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  
 
  
 
  



 

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}
class _HomeScreenState extends State<HomeScreen> {
final user=FirebaseAuth.instance.currentUser;
 late File _pikedimage = File('');
void _pickImagesCamera() async{

final picker=ImagePicker();
final pickedimage=await picker.getImage(source: ImageSource.camera);
final pickedImagefile=File(pickedimage!.path);
setState(() {
  _pikedimage=pickedImagefile;
});
}
void _pickImagesGallery() async{

var picker=ImagePicker();
var pickedimage=await picker.getImage(source: ImageSource.gallery);
final pickedImagefile=File(pickedimage!.path);
setState(() {
_pikedimage=pickedImagefile;
});
  
}
void Remove(){

setState(() {
_pikedimage==null;
});
  
}

  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.lightBlue,
     appBar: AppBar(
      
        backgroundColor: Colors.cyan,
        title: Center(child: Text('Smart_University'),),
      ),



       
         body:
          

           
              // GridView( gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
              //           maxCrossAxisExtent: 700,
              //         childAspectRatio: 6/8,
              //         mainAxisSpacing: 10,
              //         crossAxisSpacing: 10), 
              //   children: [
                  
                
                SafeArea(
                child:   Center(
                  child: SingleChildScrollView(
                    child: Column(
                    
                      children: [
                        
                  Stack(
                    children:[
                     Container(
                      margin: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                  
                  
                      child: CircleAvatar(
                  
                        radius: 70,
                        backgroundColor: const Color.fromARGB(255, 225, 231, 231),
                        child: CircleAvatar(
                  
                            radius: 68,
                           backgroundImage: _pikedimage==null?null :FileImage(_pikedimage),
                  
                  
                        ),
                      ),
                  
                     ),
                 
                  Positioned(
                    top: 120,
                    left: 120,
                  child: RawMaterialButton(
                fillColor:Colors.cyan ,
                    elevation: 102,
                    
                    child: Icon(Icons.add_a_photo_rounded),
                    padding: EdgeInsets.all(15),
                    shape: CircleBorder(),
                    
                      onPressed: () {
                        
                     showDialog(context: context, builder: (BuildContext context){
                      return AlertDialog(title: Text('Choose Option',
                      
                      style: TextStyle(
                        
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 13, 165, 211)
                      ),
                      
                      ),
                      content: 
                      SingleChildScrollView(
                        child: ListBody(children: [
                      
                          InkWell(
                            onTap: () {
                              _pickImagesCamera();
                            },
                            
                            splashColor: Color.fromARGB(255, 64, 251, 220),
                          child: Row(children: [
                      
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.camera,color: const Color.fromARGB(255, 13, 165, 211),),
                                ),
                                Text('Camera',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w100),)
                            
                          ]
                          ),
                          ),
                           InkWell(
                            onTap: () {
                              _pickImagesGallery();
                            },
                            
                            splashColor: Color.fromARGB(255, 64, 251, 220),
                          child: Row(children: [
                      
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.image,color: const Color.fromARGB(255, 13, 165, 211),),
                                ),
                                Text('Gallery',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w100),)
                            
                          ]
                          ),
                          ),
                           InkWell(
                            onTap: () {
                              Remove();
                            },
                            
                            splashColor: Color.fromARGB(255, 251, 64, 64),
                          child: Row(children: [
                      
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.highlight_remove,color: const Color.fromARGB(255, 13, 165, 211),),
                                ),
                                Text('Remove',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w100,),)
                            
                          ]
                          ),
                          )
                      
                        ]),
                      ),
                      );
                     });
                        
                     
                    },
                  ),
                  
                  ),
                    
                    
                      
                    ]
                
                         ),
                        Text(
                    user!.email!,
                    style: TextStyle(
                      fontSize: 15,color: Colors.white
                    ),),
                    SizedBox(height: 35),
                         Container(
  margin: EdgeInsets.all(20),
  padding: EdgeInsets.all(10),
  color: Colors.cyan,
  
       

  child: Row(children: [
        Icon(
          Icons.door_back_door_outlined,
          color: Colors.white,),
          SizedBox(width: 15,),
           
        Text(
          'Acceder Au Salle',
          style: TextStyle(
            color: Colors.white,fontSize: 20
            ),
            )
  
  
  ]
  )
 
),

InkWell(
   splashColor: Color.fromARGB(255, 251, 148, 64),
  child:   Container(
  
  
  
    margin: EdgeInsets.all(20),
  
    padding: EdgeInsets.all(10),
  
    
  
  color: Colors.cyan,
  
    child: Row(children: [
  
  
  
          Icon(
  
            Icons.report_problem_outlined,
  
            color: Colors.white,),
  
            SizedBox(width: 15,),
  
          Text(
  
            'Signaler Panne',
  
            style: TextStyle(
  
              color: Colors.white,fontSize: 20),),
  
              
  
  
  
      
  
    ]),
  
  ),
),
Container(
  margin: EdgeInsets.all(20),
  padding: EdgeInsets.all(10),
  
color: Colors.cyan,
  child: Row(children: [

        Icon(
          Icons.change_circle_outlined,
          color: Colors.white,),
          SizedBox(width: 15,),
        Text(
          'Demander Salle',
          style: TextStyle(
            color: Colors.white,fontSize: 20),)

    
  ]),
), 

                     
                     
                        
                        Container(
                
                 
                         
                        
                margin: EdgeInsets.all(20),
                padding: const EdgeInsets.symmetric(horizontal:10),
                
                        color: Colors.cyan,
                child: Row(children: [
                        
                      Icon(
                Icons.logout,
                color: Colors.white,),
                SizedBox(width: 15,),
                      Text(
                'Deconnecter',
                style: TextStyle(
                  color: Colors.white,fontSize: 20),),
                      MaterialButton(
                
                onPressed:(){
                        
                  FirebaseAuth.instance.signOut();
                        
                } ,
                      )
                        
                  
                ]),
                        ),
                     ],
                    
                    
                    
                   
                 
                  ),
                )
                
                 
                )
                ),
               
            
            
          );
   
  }
 
          
  
//      Container(
//   margin: EdgeInsets.all(20),
//   padding: EdgeInsets.all(10),
//   color: Colors.cyan,
  
       

//   child: Row(children: [
//         Icon(
//           Icons.door_back_door_outlined,
//           color: Colors.white,),
//           SizedBox(width: 15,),
           
//         Text(
//           'Acceder Au Salle',
//           style: TextStyle(
//             color: Colors.white,fontSize: 20
//             ),
//             )
  
  
//   ]
//   )
 
// ),

// InkWell(
//    splashColor: Color.fromARGB(255, 251, 148, 64),
//   child:   Container(
  
  
  
//     margin: EdgeInsets.all(20),
  
//     padding: EdgeInsets.all(10),
  
    
  
//   color: Colors.cyan,
  
//     child: Row(children: [
  
  
  
//           Icon(
  
//             Icons.report_problem_outlined,
  
//             color: Colors.white,),
  
//             SizedBox(width: 15,),
  
//           Text(
  
//             'Signaler Panne',
  
//             style: TextStyle(
  
//               color: Colors.white,fontSize: 20),),
  
              
  
  
  
      
  
//     ]),
  
//   ),
// ),
// Container(
//   margin: EdgeInsets.all(20),
//   padding: EdgeInsets.all(10),
  
// color: Colors.cyan,
//   child: Row(children: [

//         Icon(
//           Icons.change_circle_outlined,
//           color: Colors.white,),
//           SizedBox(width: 15,),
//         Text(
//           'Demander Salle',
//           style: TextStyle(
//             color: Colors.white,fontSize: 20),)

    
//   ]),
// ), 


  
  }

