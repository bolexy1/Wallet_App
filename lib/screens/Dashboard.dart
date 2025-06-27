import 'package:class_work1/widget/LargeText.dart';
import 'package:class_work1/widget/smallText.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({super.key});
   // ignore: non_constant_identifier_names
   
   

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int SelectedIndex=-1;
  
  List names = [
    "Bolexy",
    "Sauce",
    "Mayorsky",
    "Adedeni",
    "Lucifer"    
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      body: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 355,
              color: Color(0xFF3f3cef),
              
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dashboard", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),),
                            SizedBox(height: 3,),
                            Text("Good Afternoon",style: TextStyle(color: Colors.white.withOpacity(0.8)),)
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            
                            image: DecorationImage(image: AssetImage("assets/images/8.jpg"),
                            fit: BoxFit.fill)
                          ),
                        )
                      ],
                    ),
                  ),
            
                  SizedBox(height: 20,),
                  Divider(height: 1, color: Colors.white.withOpacity(0.2),),
                  SizedBox(height: 15,),
            
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Smalltext(text: "wallet Balance", color: Colors.white.withOpacity(0.5)),
                            Largetext(text: "\$9,782.42", color: Colors.white,size: 24,)
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Smalltext(text: "Cards Active", color: Colors.white.withOpacity(0.5)),
                            Largetext(text: "3", color: Colors.white,size: 24,)
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            
                          },
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              
                          
                            ),
                            child: Center(child: Text("Edit ID")),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                   Divider(height: 1, color: Colors.white.withOpacity(0.2),),
                   SizedBox(height: 15,),
                   SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                     child: Row(
                      
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          height: 120,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10, left: 8),
                                child: Column(
                                  
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Smalltext(text: "card Balance", color: Colors.black.withOpacity(0.5), size: 13, ),
                                Largetext(text: "\$9,782.42", color: Color(0xFF3f3cef),size: 19,),
                                SizedBox(height: 30,),
                                Text("**** **** **** **** ", style: TextStyle(color: Colors.black54, fontSize: 16),)
                                
                                  ],
                                ),
                              ),
                              Positioned(
                                right: -2,
                                bottom: -30,
                                child: Container(
                                  height: 80,
                                  width: 80,
                                 decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.purple.withOpacity(0.3),
                                  
                                 ),
                                ),
                              ),
                              Positioned(
                                right: -30,
                                bottom: 0,
                                child: Container(
                                  height: 80,
                                  width: 80,
                                 decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.purple.withOpacity(0.3),
                                  
                                 ),
                                ),
                              ),
                              Positioned(
                                right: 95,
                                top:15,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.grey,
                                  backgroundImage: AssetImage('assets/images/B.png'),
                                ),
                              ),
                              Positioned(
                                top: 17,
                                right: 14,
                                child: Smalltext(text: "Bolexy's card", color: Colors.black54.withOpacity(0.5), size: 12,))
                            ],
                          ),
                        ),
                         Container(
                          margin: EdgeInsets.only(left: 15),
                          height: 120,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10, left: 8),
                                child: Column(
                                  
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Smalltext(text: "card Balance", color: Colors.black.withOpacity(0.5), size: 13, ),
                                Largetext(text: "\$9,782.42", color: Color(0xFF3f3cef),size: 19,),
                                SizedBox(height: 30,),
                                Text("**** **** **** **** ", style: TextStyle(color: Colors.black54, fontSize: 16),)
                                
                                  ],
                                ),
                              ),
                              Positioned(
                                right: -2,
                                bottom: -30,
                                child: Container(
                                  height: 80,
                                  width: 80,
                                 decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.purple.withOpacity(0.3),
                                  
                                 ),
                                ),
                              ),
                              Positioned(
                                right: -30,
                                bottom: 0,
                                child: Container(
                                  height: 80,
                                  width: 80,
                                 decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.purple.withOpacity(0.3),
                                  
                                 ),
                                ),
                              ),
                              Positioned(
                                right: 95,
                                top:15,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.grey,
                                  backgroundImage: AssetImage('assets/images/B.png'),
                                ),
                              ),
                              Positioned(
                                top: 17,
                                right: 14,
                                child: Smalltext(text: "Bolexy's card", color: Colors.black54.withOpacity(0.5), size: 12,))
                            ],
                          ),
                        )
                     
                      
                      ],
                     ),
                   )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
                ],
                color: Colors.white
              ),
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Largetext(text: "Change user profile", color: Color(0xFF3f3cef),size: 20,),
                  Smalltext(text: "changes will take up to 5 minutes", color: Colors.grey.withOpacity(0.8), size: 13,)
                ],
              ),
            ),
            SizedBox(height:0),
           Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
             child: SizedBox(
               height: 260, // or any fixed height
               child: GridView.builder(
                 itemCount: 5,
                 physics: const NeverScrollableScrollPhysics(),
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 3,
                   crossAxisSpacing: 8,
                   mainAxisSpacing: 8,
                   childAspectRatio: 1,
                 ),
                 itemBuilder: (context, index) {

                   final number = index + 1;
                   return InkWell(
                    onTap: () {
                     setState(() {
                            SelectedIndex=index;
                          });
                    },
                     child: Container(
                       decoration: BoxDecoration(
                         color: SelectedIndex==index?Color(0xFF3f3cef):Colors.white,
                         borderRadius: BorderRadius.circular(10),
                       ),
                       // padding: const EdgeInsets.only(10),
                       child: Column(
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                                         Text(
                                           '$number',
                                           style: TextStyle(
                                             fontSize: 16,
                                             color:SelectedIndex==index?Colors.white: Colors.black87,
                                           ),
                                         ),
                                         Text(
                                           '$number',
                                           style: TextStyle(
                                             fontSize: 50,
                                             color: Colors.grey.withOpacity(0.5),
                                             fontWeight: FontWeight.bold
                                           ),
                                         ),
                                         
                             ],
                           ),
                           Text(names[index], style: TextStyle(fontSize: 16, color: SelectedIndex==index?Colors.white:Colors.black45),)
                         ],
                       ),
                     ),
                   );
                 },
               ),
             ),
           ),

        ]
      ) ,
         );
  }
  
  // void setState(Null Function() param0) {}
  
}

