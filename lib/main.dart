import 'package:flutter/material.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List myData=[
       {
        "profilepic": "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600",
        "instaReel": "https://images.pexels.com/photos/1547813/pexels-photo-1547813.jpeg?auto=compress&cs=tinysrgb&w=600",
    "profileName": "__aarji__",
    "description": "such a wonderful video.....\n#nature#beautiful#nice#instagram#kerala...",
    "songName": "original audio (Alan Walker)",
    "likeCount": "114K",
    "commentCount": "2K",
    "shareCount": "134K"
  },
  {
    "profilepic": "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=600",
    "instaReel": "https://images.pexels.com/photos/1366909/pexels-photo-1366909.jpeg?auto=compress&cs=tinysrgb&w=600",
    "profileName": "nature_lover23",
    "description": "Exploring the mountains... #adventure #mountains #hiking",
    "songName": "Mountain Sounds (Odesza)",
    "likeCount": "89K",
    "commentCount": "1.5K",
    "shareCount": "98K"
  },
  {
    "profilepic": "https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=600",
    "instaReel": "https://images.pexels.com/photos/2086622/pexels-photo-2086622.jpeg?auto=compress&cs=tinysrgb&w=600",
    "profileName": "travel_with_me",
    "description": "A day at the beach! #sunset #beachlife #vacation",
    "songName": "Beach Vibes (Kygo)",
    "likeCount": "120K",
    "commentCount": "3K",
    "shareCount": "150K"
  },
  {
    "profilepic": "https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=600",
    "instaReel": "https://images.pexels.com/photos/1770809/pexels-photo-1770809.jpeg?auto=compress&cs=tinysrgb&w=600",
    "profileName": "foodie_diaries",
    "description": "Delicious homemade pasta #foodporn #yummy #italianfood",
    "songName": "Food and Music (Maroon 5)",
    "likeCount": "200K",
    "commentCount": "5K",
    "shareCount": "220K"
  },
  {
    "profilepic": "https://images.pexels.com/photos/1674752/pexels-photo-1674752.jpeg?auto=compress&cs=tinysrgb&w=600",
    "instaReel": "https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&w=600",
    "profileName": "fitness_freak",
    "description": "Early morning workout #fitness #gym #healthy",
    "songName": "Workout Tunes (Eminem)",
    "likeCount": "78K",
    "commentCount": "2K",
    "shareCount": "80K"
  },
  {
    "profilepic": "https://images.pexels.com/photos/1499327/pexels-photo-1499327.jpeg?auto=compress&cs=tinysrgb&w=600",
    "instaReel": "https://images.pexels.com/photos/1624504/pexels-photo-1624504.jpeg?auto=compress&cs=tinysrgb&w=600",
    "profileName": "artistic_soul",
    "description": "Creating magic with colors #art #painting #creativity",
    "songName": "Color Splash (Lorde)",
    "likeCount": "65K",
    "commentCount": "1K",
    "shareCount": "70K"
  },
  {
    "profilepic": "https://images.pexels.com/photos/678783/pexels-photo-678783.jpeg?auto=compress&cs=tinysrgb&w=600",
    "instaReel": "https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?auto=compress&cs=tinysrgb&w=600",
    "profileName": "tech_guru",
    "description": "Latest gadget review #tech #gadgets #innovation",
    "songName": "Tech Tunes (Daft Punk)",
    "likeCount": "130K",
    "commentCount": "3.5K",
    "shareCount": "140K"
  }
      ];
    return MaterialApp(

      debugShowCheckedModeBanner: false,
home: SafeArea(
  child: Scaffold(
    
   backgroundColor: Colors.black,
  
  body:
  Column(
    children: [
      Padding(
      
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Reels",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26),),
                Icon(Icons.camera_alt_outlined,color: Colors.white,size: 30,)
              ],
            ),
      ),
      
  
      Expanded(
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount:myData.length,
          itemBuilder: (context,Index)=>Container(
            
          decoration: 
          BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(myData[Index]["instaReel"]),
              fit: BoxFit.cover,
          ),),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                  Container(
                    
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                     
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            child: 
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(myData[Index]["profilepic"]),
                      
                                ),
                                SizedBox(width: 10,)
                                ,Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  child: Text(myData[Index]["profileName"],style: TextStyle(color: Colors.white),),

                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.verified_sharp,color: Colors.white,),
                                )
                                ,
                                SizedBox(
                                  width: 30,
                                  ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 11),
                                  child: Container(
                                    height: 20,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(6),
                                      
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 1),
                                      child: Column(
                                        children: [
                                          Text("Follow",style: TextStyle(color: Colors.white,fontSize: 10),)
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                                
                              ],
                              
                            ),
                          )
                          ,Column(
                            children: [
                              Text(
                                  maxLines: 2,
                                  myData[Index]["description"],style: TextStyle(color: Colors.white),),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Container( 
                                    decoration: BoxDecoration(
                                      color: Colors.white10,
                                      borderRadius: BorderRadius.circular(7)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: Row(
                                      children: [
                                        Icon(Icons.music_note_rounded,color: Colors.white,),
                                        Text(myData[Index]["songName"],style: TextStyle(color: Colors.white30))
                                      ],
                                      ),
                                    ),
                                  )
                            ],

                          ),
                        ],
                      ),
                    ),
                  ),
                  
                ],
              ),
               Expanded(
                 child: SizedBox(
                  width: 20,
                 ),
               )
               ,Column(
                          mainAxisAlignment: MainAxisAlignment.end,   
                children: [
                  
                  Container(
                    
                    height: 350,
                    width: 80,
                    decoration: BoxDecoration(
                      
                    ),
                    child: Column(
                      children: [
                          Column(
                             
                            children: [
                              Icon(Icons.favorite_border,color: Colors.white,size: 30,),
                              Text(myData[Index]["likeCount"],style: TextStyle(color: Colors.white),),
SizedBox(height: 30,)
                              ,Icon(Icons.chat_bubble_outline,color: Colors.white,size: 30,),
                               Text(myData[Index]["commentCount"],style: TextStyle(color: Colors.white),),
SizedBox(height: 30,)                               
                              ,Icon(Icons.send,color: Colors.white,size: 30,),
                              Text(myData[Index]["shareCount"],style: TextStyle(color: Colors.white),),
 SizedBox(height: 30,)  
                               ,Icon(Icons.more_horiz,color: Colors.white,size: 30,), 
 SizedBox(height: 30,) ,
                            Positioned(
                              bottom: 0,
                              left: 5,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          bottom: 6,
                                          left:5,
                                          child: Container(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                                  child: Icon(Icons.music_note,color: Colors.black),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )                              
                            ],
                          ),
                        
                      ],
                    ),
                  ),
                  
                ],
                           ),
             
            ],
            
          ),
          
        )),
        
      )
      ,
      
    ],
    
  )
  
    
  ),
)

);
  }
}