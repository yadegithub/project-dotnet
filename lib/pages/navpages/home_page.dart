import 'package:flutter/material.dart';
import 'package:project_pfe/wigdet/app_large_text.dart';
import 'package:project_pfe/wigdet/app_text.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images ={
    "welcom1.jpg":"welcom1",
    "welcom2.jfif":"welcom1",
    "welcom3.jfif":"welcom1",
    "img1.png":"welcom1",
  };
  @override
  Widget build(BuildContext context) {
      TabController _tabController =  TabController(length: 3, vsync: this);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //menu text
        children: [
          Container(
            padding: EdgeInsets.only(top: 70,left: 20),
            child: Row(
              children: [
                Icon(Icons.menu,size: 30,color: Colors.black54,),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40,),
          //discover text
         Container(
          margin: const EdgeInsets.only(left: 20),
          child:  AppLargeText(text: "Discover", color: Colors.black,),
         ),
         SizedBox(height: 30,),
         //tabbar
         Container(
          
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              labelPadding: const EdgeInsets.only(left: 20,right: 20),
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: CirceleTabIndicator(color: Colors.black, radius: 4),
              tabs: [
              Tab(text: "places",),
              Tab(text: "inspiration",),
              Tab(text: "Emotion",),
            ]),
          ),
         ),
         Container(
          padding: const EdgeInsets.only(left: 20),
          height: 300,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
           ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
             itemBuilder: (BuildContext context, int index) { 
              return 
               Container(
                margin: const EdgeInsets.only(right: 15,top: 10),
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(image: AssetImage(
                'lib/images/welcom1.jpg' 
                ),
                fit: BoxFit.cover
                ),
              ),
             );
              },
             
           ),
             Text("tree"),
              Text("beye"),
          ]),
         ),
         SizedBox(height: 30,),
         Container(
          margin: const EdgeInsets.only(left: 20,right: 20),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppLargeText(text: "Explore more",size: 22,color: Colors.black,),
              AppText(text: "see all", )
            ],
           ),
         ),
         SizedBox(height: 10,),
         Container(
          height: 100,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left:20),
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_,index){
            return Container(
              margin: const EdgeInsets.only(right: 30),
              child: Column(
                children: [
Container(
 // margin: const EdgeInsets.only(right: 50),
  width: 70,
  height: 70,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: Colors.white,
    image: DecorationImage(
      image:
       AssetImage('lib/images/'+images.keys.elementAt(index) ),
       fit: BoxFit.cover,
      )
  ),
),
SizedBox(height: 10,),
  Container(
          child: AppText(
            text: images.values.elementAt(index),
             ),
         ),
                ],
              ),
            );
          }),
         ),
       
        ],
      ),
    );
  }
}


class CirceleTabIndicator extends Decoration{
  final Color color;
  double radius;
  CirceleTabIndicator({required this.color,required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CircelPainter(color:color,radius:radius);
  }





}
class _CircelPainter extends BoxPainter{
  final Color color;
  double radius;
  _CircelPainter({required this.color,required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color=color;
    _paint.isAntiAlias=true;
 final Offset circeloffset =Offset(configuration.size!.width/2 -radius/2,configuration.size!.height -radius);


    canvas.drawCircle(offset+circeloffset, radius, _paint);
  }
  
}