import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        drawerTheme:const DrawerThemeData(scrimColor: Colors.transparent)),
      title: 'Whatsapp UI',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context){
    
    return  Scaffold(
      key : _globalKey,
      backgroundColor: Colors.black,
      
      body: Stack(
        children: [
          
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 5,right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                
                     IconButton(
                      onPressed: () {
                        _globalKey.currentState!.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      )
                    ),
                
                    IconButton(
                      onPressed: () {},
                      icon:const Icon(
                        Icons.search,
                        color: Colors.white,
                        )
                    ),
                
                  ],
                ),
              ),
          
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left:10),
                  children:[
                    TextButton(
                      onPressed: () {},
                      child: const Text("Message",
                      style: TextStyle(color: Colors.white,fontSize: 20)
                    )
                    ),
          
                    const SizedBox(
                      width: 35,
                    ),
                              
                    TextButton(
                      onPressed: () {},
                      child: const Text("Online",
                      style: TextStyle(color: Colors.grey,fontSize: 20)
                    )
                    ),
          
                    const SizedBox(
                      width: 35,
                    ),
                             
                    TextButton(
                      onPressed: () {},
                      child: const Text("Groups",
                      style: TextStyle(color: Colors.grey,fontSize: 20)
                    )
                    ),
          
                    const SizedBox(
                      width: 35,
                    ),
                             
                    TextButton(
                      onPressed: () {},
                      child: const Text("Calls",
                      style: TextStyle(color: Colors.grey,fontSize: 20)
                    )
                    ),
          
                    const SizedBox(
                      width: 35,
                    ),

                  ]
                ),
              )
                  
            ],
          ),

          Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 15,left: 25,right: 25),
              height: 220,
              decoration: const BoxDecoration(
                
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )
              ),

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const Text("Favourites",style: TextStyle(color: Colors.white),),
                      IconButton(
                      onPressed: () {},
                      icon:const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ),
                  ],
                ),

                SizedBox(
                  height: 92,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildContactAvatar('Alla','img1.png'),
                      buildContactAvatar('ben','img2.png'),
                      buildContactAvatar('joe','img3.png'),
                      buildContactAvatar('san','img1.png'),
                      buildContactAvatar('duke','img2.png'),
                      buildContactAvatar('Alla','img3.png')
                      
                    ],
                  ),
                )

                

                ],
              ),

            ),
          ),

          Positioned(
            top:365,
            left:0,
            right: 0,
            bottom: 0,
            child: Container(
             
             padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Color(0xFFEFFFFC),
              ),

                child: ListView(
                  padding: const EdgeInsets.only(left: 25),
                  children:  [
                    buildConversationRow('laura','Hello how are you','img3.png',0),
                    buildConversationRow('mukesh','Hi joe','img1.png',1),
                    buildConversationRow('ugen','I am Alla','img2.png',12),
                    buildConversationRow('laura','hello how are you','img1.png',0),
                    buildConversationRow('ugen','Hi','img2.png',1),
                    buildConversationRow('mukesh','Hi san ','img3.png',1),
                    buildConversationRow('ugen','I am ironman','img1.png',1),
                  ],
                ),
            ),
          )
        ],
      ),
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
       
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF27c1a9),
          child: const Icon(Icons.edit_outlined,size: 30,),
          onPressed: (){},
        ),
      ),
      
      drawer:  Drawer(
        width: 275,
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xF71F1E1E),
            borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
           boxShadow: [
            BoxShadow(
              color: Color(0x3D000000),spreadRadius: 30,blurRadius: 20)
           ]
          ),
          
          child: const Padding(
            padding: EdgeInsets.fromLTRB(20,50,20,20),
            
            child: Column(
              children: [
                
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 56,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                  ],
                ),
          
                SizedBox(
                  height: 30,
                ),
          
                Row(
                  children: [
                    UserAvatar(filename: 'img1.png'),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Tom Brenan',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
          
                SizedBox(
                  height: 20,
                ),
          
                DrawerItem(title: 'Account',icon: Icons.key,),
                DrawerItem(title: 'Chat',icon: Icons.chat_bubble,),
                DrawerItem(title: 'Notification',icon: Icons.notifications,),
                DrawerItem(title: 'Data and Storage',icon: Icons.storage,),
                DrawerItem(title: 'Help',icon: Icons.help,),
                Divider(
                  height: 32,
                  color: Colors.green,
                ),
                DrawerItem(title:'Invite Friends', icon: Icons.people_outline),
                SizedBox(height: 291,),
                DrawerItem(title: 'Log Out', icon: Icons.logout)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column buildConversationRow(String name,String message,String filename,int msgCount) {
    return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children:[
                    
                            UserAvatar(filename: filename),
                            const SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name,
                                  style: const TextStyle(color: Colors.black),
                                ),
                                const SizedBox(height: 5,),
                                Text(
                                  message,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                        
                        Padding(
                    
                          padding: const EdgeInsets.only(right: 25,top: 5),
                          child: Column(
                            children: [
                              const Text(
                                '16:04',
                                style: TextStyle(fontSize: 10),
                              ),
                              const SizedBox(height: 15,),

                              if(msgCount>0)
                              CircleAvatar(
                                radius: 7,
                                backgroundColor: const Color(0xFF27c1a9),
                                child: Text(
                                  msgCount.toString(),
                                  style: const TextStyle(
                                    fontSize: 10,color:Colors.white
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      indent: 70,
                    )
                  ],
                );
  }

  Padding buildContactAvatar(String name,String filename) {
    return Padding(
      padding: const EdgeInsets.only(right:20),
      child: Column(
                        children: [
                          UserAvatar(filename: filename),
                          
                          const SizedBox(
                            height: 5,
                          ),
      
                           Text(
                            name,
                            style: const TextStyle(color: Colors.white,fontSize: 16),
                          )
                        ],
                      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem({
    super.key, required this.title, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(bottom:25),
        child: Row(
          children: [
            Icon(
             icon,
              color: Colors.white,
              size: 20,
            ),
        
            const SizedBox(
              width: 56,
            ),
            
            Text(
              title,
              style: const TextStyle(color: Colors.white,fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({
    super.key, required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset('assets/images/$filename').image,
        
      ),
    );
  }
}