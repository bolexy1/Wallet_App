import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
       padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [                
                Center(
                  child: Container(
                    // margin: EdgeInsetsDirectional.symmetric(horizontal: 150,),
                    height: 70,
                    width: 70,                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      
                      image: DecorationImage(
                        fit:BoxFit.fill,
                        image: AssetImage("assets/images/8.jpg"))
                    ),
                  ),
                )
              ],
            ),
            Text("Welcome Back", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 5,),
            Text("Promise Bolu", style: TextStyle(fontSize: 17, color: Colors.white),),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FluentSystemIcons.ic_fluent_lock_filled, color: Colors.green,),
                Text("passcode", style: TextStyle(fontSize: 13, color: Colors.white),),
              ],
            ), 
            SizedBox(height: 8,),           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(6, (index) {
                return Padding (
                  padding : const EdgeInsets.all(8),
                child: CircleAvatar (
                  backgroundColor: Colors.grey.shade400,
                  radius: 8,
                )
                );
              })
          ),
     Container(
       padding: EdgeInsets.symmetric(horizontal: 10),
                height: 320, // Set a fixed height
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(), // Prevent scroll inside
                  itemCount: 9,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // 3 columns for keypad layout
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 6,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Handle number tap here
                        print('Tapped: ${index + 1}');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                    
                  },
                ),
              ), 
               SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  children: [                  
                    
                     Text("signin", style: TextStyle(fontSize: 16, color: Colors.green, ),),
                     SizedBox(width: 78,),
                    Text("0", style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),),
                    Expanded(child: Container()),
                    Icon(Icons.face_unlock_sharp, color: Colors.green,),
                  ],
                ),
              )
               ],
        ),
      )
    );
  }
}