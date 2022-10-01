import 'package:flutter/material.dart';
import 'package:travelling/pages/second_page.dart';
import 'package:travelling/utils/images.dart';
import 'package:travelling/utils/models.dart';
import 'dart:math';
import 'package:sizer/sizer.dart';

Random random = new Random();
int randomint=random.nextInt(6);
class MainPage extends StatefulWidget {
  String email;

  MainPage({Key? key,required this.email}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}
List tools=[MyModels(MyImages.boating,"Boating",),
  MyModels(MyImages.bus,"Bus"),
  MyModels(MyImages.flying,"Flying"),
  MyModels(MyImages.cycling,"Cycling"),
  MyModels(MyImages.train,"Train"),
  MyModels(MyImages.walking,"Walking"),
];
class _MainPageState extends State<MainPage> {
  String getEmail(BuildContext context) {
    return widget.email;
  }
  @override
  Widget build(BuildContext context) {
    String email;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.yellow[500],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(tools[randomint].img),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    SizedBox(height: 12,),
                    Text("Travelling",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
                    SizedBox(height: 8,),
                    Text(getEmail(context),style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal))
                  ],

                ),),),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home),
              ),
            ),
            drawers(context, 2, Icon(Icons.airplane_ticket_outlined)),
            drawers(context, 3, Icon(Icons.motorcycle)),
            drawers(context, 1, Icon(Icons.directions_bus)),
            Divider(height: 1,color: Colors.grey,),
            Container(
              margin: EdgeInsets.only(top: 12,left: 20),
              child: Text("Profile",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.grey),),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: const ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log out"),
              ),
            ),
            SizedBox(height: 20,),
            Divider(height: 1,color: Colors.grey,),
            Container(
              margin: EdgeInsets.only(top: 12,left: 20),
              child: Text("Communicate",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.grey),),
            ),
            InkWell(
              onTap: () {
                var snackBar = SnackBar(
                    content: Text("Sorry, but this function isn't aviable right now("),
                    duration: Duration(seconds: 3),
                    behavior: SnackBarBehavior.floating,
                    action: SnackBarAction(
                      label: "Ok",
                      onPressed: () {},
                    )
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
              ),
            ),
            InkWell(
              onTap: () {
                var snackBar = SnackBar(
                  content: Text("Sorry, but this function isn't aviable right now("),
                  duration: Duration(seconds: 3),
                  behavior: SnackBarBehavior.floating,
                  action: SnackBarAction(
                    label: "Ok",
                    onPressed: () {},
                  )
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const ListTile(
                leading: Icon(Icons.star_rate),
                title: Text("Rate Us!"),
              ),
            ),



          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            color: Colors.white,
            height: 820,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(tools[randomint].img),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        right: 4,
                      ),
                      Positioned(
                        top: 60,
                        left: 22,
                          child: Text("Travelling",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w800),)),
                      Positioned(
                        top: 90,
                          left: 30,
                          child: Text("Start a new Journey",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    height: 550,
                    child: GridView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                        itemCount: 6,
                        itemBuilder: (BuildContext ctx, index) {
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage(model: tools[index])));
                              setState((){
                                randomint=random.nextInt(6);
                              });
                            },
                            splashColor: Colors.red,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 90,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(tools[index].img),
                                          fit: BoxFit.cover
                                        )
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12    ,),
                                  Text(tools[index].title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800),)
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}

Widget drawers(BuildContext context,int number, Icon icon ){
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage(model: tools[number])));
    },
    child: ListTile(
        title: Text(tools[number].title),
        leading: icon,
    ),
  );
}