// import 'package:Instagram/helper/story.dart';
import 'helper/story.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'models/story_model.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: MainRoom()
//    );
//   }
// }
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<StoryModel> story = new List<StoryModel>();

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    story = getStories();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
           backgroundColor:Colors.black,
           leading: new IconButton(icon: Icon(Icons.camera_alt,color: Colors.grey,), onPressed: null),
           title: Text('Instagram',style: TextStyle(color: Colors.grey),),
           actions: <Widget>[
             new IconButton(icon: Icon(Icons.message,color: Colors.grey,), onPressed: null),
           ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 82,
               child: ListView.builder(
               itemCount: story.length,
               shrinkWrap: true,
               scrollDirection: Axis.horizontal,
               itemBuilder: (context,index){
                 return StoryList(
                   imageUrl: story[index].imageUrl,
                   userName: story[index].userName,
                 );
               },
             ),

            ),
             Divider(thickness: 0.3,color: Colors.pink[100],),
            Container(
              height: 460,
               child: ListView.builder(
               itemCount: story.length,
               shrinkWrap: true,
               scrollDirection: Axis.vertical,
               itemBuilder: (context,index){
                 return ContentList(
                   imageUrl: story[index].imageUrl,
                   userName: story[index].userName,
                 );
               },
             ),
               
            ),
            Container(
              height: 30.0,
              color: Colors.black,
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top:10.0,left:17.0),
                    child: Icon(EvaIcons.home,color: Colors.white,),
                  ),
                  Container(
                    padding: EdgeInsets.only(top:10.0,left:49.0),
                    child: Icon(EvaIcons.search,color: Colors.white,),
                  ),
                  Container(
                    padding: EdgeInsets.only(top:10.0,left:49.0),
                    child: Icon(EvaIcons.upload,color: Colors.white,),
                  ),
                  Container(
                    padding: EdgeInsets.only(top:10.0,left:49.0),
                    child: Icon(EvaIcons.heart,color: Colors.white,),
                  ),
                   Container(
                    padding: EdgeInsets.only(top:10.0,left:49.0),
                    child: CircleAvatar()
                  ),
                ],
              ),
            )
          ],
        ),
     
      ),
         
    );
  }
}

class StoryList extends StatelessWidget {
  final imageUrl , userName;
  StoryList({this.imageUrl,this.userName});
  @override
  Widget build(BuildContext context) {
   
    return Container(
      // margin: EdgeInsets.only(right:10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
                  Container(
                    height: 65.0,
                    width: 65.0,
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(100.0),
                      border: Border.all(width:3,color: Colors.pink[100])
                    ),
                    padding: EdgeInsets.all(2.0),
                    child: ClipRRect(
                       borderRadius: BorderRadius.circular(60),
                       child:Image.network(imageUrl,fit:BoxFit.cover,),
                    ),
                
                 ),         
           Container(
               child:Text(userName,style: TextStyle(color: Colors.white,),),
           ),
           
        ]
        ),
    );
  }
}
class ContentList extends StatelessWidget {
  final imageUrl , userName;
  ContentList({this.imageUrl,this.userName});
  @override
  Widget build(BuildContext context) {
   
    return Container(
     
      // margin: EdgeInsets.only(right:10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
            
          Container(
             height: 50.0,
            child:new Row(
               children: <Widget>[
                 Container(
                   child: ClipRRect(
                       borderRadius: BorderRadius.circular(60),
                       child:Image.network(imageUrl,width: 40,height: 40,fit:BoxFit.cover,),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left:7.0),
                    child:Text(userName,style: TextStyle(color: Colors.white,),),
                  ),

               ],
            )
          ),
         
          Container(
              height: 370.0,
              width: 365.0,
              padding: EdgeInsets.only(top:5.0),
              child: Image.network(imageUrl,width: 50,height: 50,fit:BoxFit.cover,),
          ),  
          Container(
            padding: EdgeInsets.only(top:10.0),
            child: Row(
              children: <Widget>[
            
              Container(
               padding: EdgeInsets.only(left:7.0),
                child: Icon(EvaIcons.heart,color: Colors.red,),
              ),
              Container(
                 padding: EdgeInsets.only(left:15.0),
                 child: Icon(EvaIcons.messageCircle,color: Colors.white,),
              ),
               Container(
                  padding: EdgeInsets.only(left:15.0),
                 child: Icon(Icons.share,color: Colors.white,),
              ),
              ],
            ),
          ),
          Container(
           alignment: Alignment.centerLeft,
           padding: EdgeInsets.only(left:12.0,top: 9.0),
           child: Text('70 likes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
          ),
          Container(
           alignment: Alignment.centerLeft,
           padding: EdgeInsets.only(left:12.0,top: 2.0),
           child: Text('mein muskiloon se kya daru m khud keher hazar hu!!',style: TextStyle(color: Colors.white,),),
          ) ,
          Container(
           alignment: Alignment.centerLeft,
           padding: EdgeInsets.only(left:12.0,top: 2.0),
           child: Text('view 18 comments',style: TextStyle(color: Colors.grey,),),
          )     
           
        ]
        ),
    );
  }
}