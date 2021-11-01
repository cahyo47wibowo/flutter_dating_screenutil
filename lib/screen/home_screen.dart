import 'package:flutter/material.dart';
import 'package:flutter_dating_screenutil/screen/detail_screen.dart';
import 'package:flutter_dating_screenutil/widgets/bottom_nav.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_screenutil/screenutil.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';



class HomeScreen extends StatelessWidget {
  // const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 414, height:896, allowFontScaling: false);
    return Scaffold(
      body: Column(
        children: <Widget> [
         _appBar(),
         SizedBox(
           height: ScreenUtil().setHeight(24)
         ),
         GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (_) {
               return DetailScreen();
             }
            ));
           },
           child: Stack(
             children: [
               ClipRRect(
                 borderRadius: BorderRadius.circular(20),
                 child: Image.asset('assets/images/profile.png',
                 width: ScreenUtil().setWidth(366),
                 height: ScreenUtil().setHeight(622),
                 fit: BoxFit.cover,),
               ),
               Positioned(
                 right: 0,
                 top: ScreenUtil().setHeight(486),
                 child: Container(
                   width: ScreenUtil().setWidth(342),
                   height: ScreenUtil().setHeight(104),
                   decoration: BoxDecoration(
                     color: Colors.white.withOpacity(0.9),
                     borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(20),
                       topLeft: Radius.circular(20)
                     )
                   ),
                   child: Container(
                     padding: EdgeInsets.only(
                       left: ScreenUtil().setWidth(24),
                       top: ScreenUtil().setHeight(24)
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      //  mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text("Melinda Veronica, 23",
                         style: TextStyle(
                         color: Colors.pink,  
                         fontSize : ScreenUtil().setSp(24),
                         fontWeight: FontWeight.bold)),
                         Text("Flutter Developer at Halodoc",
                         style: TextStyle(fontSize : ScreenUtil().setSp(15)))
                       ],
                     ),
                   )
                 ),
               )
             ],
           ),
         ),
         Container(
           height: ScreenUtil().setHeight(137),
           child: BottomNav( 
             width: ScreenUtil().setWidth(248),
             height: ScreenUtil().setHeight(64),
             size1: ScreenUtil().setWidth(64),  
             size2: ScreenUtil().setWidth(56),
             size3: ScreenUtil().setWidth(64),
           ),
         )
        ],
      ),
    );
  }

  Widget _appBar(){
    return  Container(
            height: ScreenUtil().setHeight(100).toDouble(),
            padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(24),
              right: ScreenUtil().setWidth(24),
              // bottom: ScreenUtil().setHeight(24),
              top: ScreenUtil().setHeight(56),
            ),
            child: Container(
              height: ScreenUtil().setHeight(34).toDouble(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset('assets/images/gridicons_user.png',
                  width: ScreenUtil().setWidth(24),
                  height: ScreenUtil().setHeight(24)),
                  Text('For You', style:TextStyle(fontSize:24, fontWeight: FontWeight.bold)),
                  Image.asset('assets/images/chatbubble.png',
                  width: ScreenUtil().setWidth(24),
                  height: ScreenUtil().setHeight(24)), 
                ],
              ),
            ),
          );
  }
}