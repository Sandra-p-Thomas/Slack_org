import 'dart:math';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../provider/provider.dart';
import '../cart_screen.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  SharedPreferences?logindata;
  String ? usernumber;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      usernumber = logindata!.getString('usernumber');
    });
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        body: getBody(),
      );
  }
  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/baggy.png"),
                  fit: BoxFit.cover,),
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back)),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: FavoriteButton(
                valueChanged: (_isFavorite) {
                  // print('Is Favorite $_isFavorite)');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.45),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30,),
                    Row(
                      children: <Widget>[
                    Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3)),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text("Blue"),
              ),
            ),
                        Padding(padding: EdgeInsets.all(10)),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(3)),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text("Baggy"),
                          ),
                        ),
                        SizedBox(width: 50,),
                        Container(
                          child: Row(
                            children: [
                              IconButton(onPressed: (){ add();}, icon: Icon(Icons.add)),
                              Container(
                                  child: Text(
                                    ' $_n',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  )),
                              IconButton(onPressed: (){ minus();
                                },
                                  icon: Icon(Icons.remove))
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: Row(children: [
                        Text("Description:"),
                       Text("Stylish blue color baggy jeans  ",softWrap: true),
                     ] ),
                    ),
                    SizedBox(height: 20,),
                    Text("Gallery",style: TextStyle(
                        fontSize: 18
                    ),),
                    SizedBox(height: 20,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(image: AssetImage("assets/images/baggy_1.png"),fit: BoxFit.cover)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage("assets/images/baggy_2.png"),
                                      fit: BoxFit.cover)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(image: AssetImage("assets/images/baggy_3.png"),fit: BoxFit.cover)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 150,
                        height: 75,
                        padding: EdgeInsets.all(15),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: StadiumBorder()),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Cart())); //add payment method
                          },
                          child: Text('BUY NOW'),
                        ),
                      ),
               ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  var _n = 1;
  var _amt = 100;
  void add() {
    setState(() {
      if(_n!=0)
        _amt = _amt + 100;
      _n++;

    });
  }
  void minus() {
    setState(() {
      if (_n != 1) _n--;
      _amt=max(_amt-100,100);

    });
  }
}