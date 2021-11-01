import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(20)),
                  child: Image.asset('assets/images/detail1.png',
                      width: ScreenUtil().setWidth(390),
                      height: ScreenUtil().setHeight(412),
                      fit: BoxFit.cover),
                ),
              ),
              Container(    
                padding: EdgeInsets.only(
                  top: ScreenUtil().setHeight(24),
                  left: ScreenUtil().setWidth(24),
                  right: ScreenUtil().setWidth(24),
                ),
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(height: 1.4,
                      color: Colors.pink),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Melinda Veronica, 23 \n',
                            style: TextStyle(
                                // color: Colors.black,
                                fontSize: ScreenUtil().setSp(24),
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'Flutter Developer at Halodoc \n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(15))),
                        TextSpan(
                            text: '120 meters away',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(15))),
                      ]),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: ScreenUtil().setHeight(24),
                  left: ScreenUtil().setWidth(24),
                  right: ScreenUtil().setWidth(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ABOUT ME',
                    style: TextStyle(fontSize: ScreenUtil().setSp(18),
                    fontWeight: FontWeight.bold,
                    )),
                    SizedBox(
                      height: ScreenUtil().setHeight(10)
                    ),
                    RichText(text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: ScreenUtil().setSp(15)
                      ),
                      children: [
                        TextSpan(
                          text: 'Hey guys, This is Malena. I’m here to find someone for hookup. I’m not interested in something serious. I would love to hear your adventurous story.'
                        )
                      ]
                    ))
                  ],
                ),

              )
            ],
          ),
          _appBar(context)
        ],
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return Container(
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
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child:
                  Icon(Icons.arrow_back_ios, size: ScreenUtil().setWidth(24)),
            ),
            Icon(Icons.more_vert, size: ScreenUtil().setHeight(24)),
          ],
        ),
      ),
    );
  }
}