import 'package:flutter/material.dart';
import 'package:watch/widgets/LikedTile.dart';
import 'package:watch/widgets/authorTile.dart';
import 'package:watch/widgets/bottomNavBar.dart';
import 'package:watch/widgets/specification.dart';
import 'package:watch/widgets/watchTitle.dart';

class HomePage extends StatefulWidget {
  static String id='watch_screen';
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey[60],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(icon: Icon(Icons.ios_share,color: Colors.black,size: 30,), onPressed: (){})
        ],
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios,size: 28,color: Colors.black,),),
      ),
      bottomNavigationBar: Container(
        child: BottomNavBar(),
      ),
      body: ListView(
        padding: EdgeInsets.all(25),
        children: [
          SizedBox(height: 100,),
          Container(
            height: 250,
            color: Colors.transparent,
            child: Image.asset('images/image 668.png',fit: BoxFit.fitHeight,),
          ),
          watchTitle(),
          specificationTile(),
          aboutTheAuthor(),
          youMayAlsoLike(),
        ],
      ),
    );
  }
}
