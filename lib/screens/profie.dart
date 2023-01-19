// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../log_in/firebase_auth.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class Profile extends StatefulWidget {
//   const Profile({Key? key}) : super(key: key);
//
//   @override
//   State<Profile> createState() => _ProfileState();
// }
//
// class _ProfileState extends State<Profile> {
//   String dummy = "";
//   SharedPreferences? logindata;
//   String? usernumber;
//   // String?name1;
//   // String?email1;
//   // String?phone1;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     initial();
//   }
//
//   void initial() async {
//     logindata = await SharedPreferences.getInstance();
//     setState(() {
//       usernumber = logindata?.getString('usernumber');
//         // email1 = logindata?.getString('email')!;
//         // name1= logindata?.getString('name')!;
//         // phone1 = logindata?.getString('phone')!;
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: ListView(children: [
//           // Center(
//           //   child: Column(
//           //     mainAxisAlignment: MainAxisAlignment.center,
//           //     mainAxisSize: MainAxisSize.max,
//           //     children: <Widget>[
//           //
//           //       Padding(padding: EdgeInsets.all(30)),
//           //       (imageUrl == null)
//           //           ? CircleAvatar(backgroundColor: Colors.black, radius: 60)
//           //           : CircleAvatar(
//           //         backgroundImage: NetworkImage(
//           //           imageUrl!,
//           //         ),
//           //         radius: 60,
//           //         backgroundColor: Colors.transparent,
//           //       ),
//           //       SizedBox(height: 40),
//           //       //   Text("Number :",style: GoogleFonts.poppins( fontSize: 15,
//           //       //       fontWeight: FontWeight.bold,
//           //       //       color: Colors.black54)
//           //       // ),
//           //       Row(
//           //         children: [
//           //           Padding(padding: EdgeInsets.only(left: 15,right: 15)),
//           //           Icon(Icons.person),
//           //           SizedBox(
//           //             width: 10,
//           //           ),
//           //           Text(
//           //             'NAME : ',
//           //             style: GoogleFonts.poppins(
//           //                 fontWeight: FontWeight.bold, color: Colors.black54),
//           //           ),
//           //
//           //           (name == null)
//           //               ? Text("$dummy")
//           //               : Text(
//           //             name!,
//           //             style: (GoogleFonts.poppins(
//           //                 color: Colors.black,
//           //                 fontWeight: FontWeight.bold)),
//           //           ),
//           //         ],
//           //       ),
//           //       SizedBox(height: 20),
//           //       Row(
//           //         children: [
//           //           Padding(padding: EdgeInsets.only(left: 15,right: 15)),
//           //           Icon(Icons.email),
//           //           SizedBox(
//           //             width: 10,
//           //           ),
//           //           Text(
//           //             'EMAIL : ',
//           //             style: GoogleFonts.poppins(
//           //                 fontSize: 15,
//           //                 fontWeight: FontWeight.bold,
//           //                 color: Colors.black54),
//           //           ),
//           //           (email == null)
//           //               ? Text("$dummy")
//           //               : Text(
//           //             email!,
//           //             style: TextStyle(
//           //                 color: Colors.black,
//           //                 fontWeight: FontWeight.bold),
//           //           ),
//           //         ],
//           //       ),
//           //       SizedBox(height: 20),
//           //       Row(
//           //         children: [
//           //           Padding(padding: EdgeInsets.only(left: 15,right: 15)),
//           //           Icon(Icons.phone),
//           //           SizedBox(
//           //             width: 10,
//           //           ),
//           //           Text(
//           //             'Phone number : ',
//           //             style: GoogleFonts.poppins(
//           //                 fontSize: 15,
//           //                 fontWeight: FontWeight.bold,
//           //                 color: Colors.black54),
//           //           ),
//           //           (usernumber == null)
//           //               ? Text("$dummy")
//           //               : Text(
//           //             "$usernumber",
//           //             style: (GoogleFonts.poppins(
//           //                 color: Colors.black,
//           //                 fontWeight: FontWeight.bold)),
//           //           ),
//           //         ],
//           //       ),
//           //       // SizedBox(height: 40),
//           //       // ElevatedButton(
//           //       //   onPressed: () {
//           //       //     signOutGoogle();
//           //       //     Navigator.of(context).pushAndRemoveUntil(
//           //       //         MaterialPageRoute(builder: (context) {
//           //       //           return Barnew();
//           //       //         }), ModalRoute.withName('/'));
//           //       //   },
//           //       //   child: Padding(
//           //       //     padding: const EdgeInsets.all(8.0),
//           //       //     child: Text(
//           //       //       'Back',
//           //       //       style: TextStyle(fontSize: 25, color: Colors.white),
//           //       //     ),
//           //       //   ),
//           //       // )
//           //     ],
//           //   ),
//           // ),
//           // coomemted centre now
//        Text("$usernumber")
//         ]),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slacks/log_in/login.dart';
class My_profile extends StatefulWidget {
  @override
  _My_profileState createState() => _My_profileState();
}
class _My_profileState extends State<My_profile> {
  SharedPreferences ? logindata;
  String ?email;
  String ? name;
  String? usernumber;
  String? phone ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      email = logindata?.getString('email')!;
      name = logindata?.getString('name')!;
      phone = logindata?.getString('phone')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: ListView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(30)),
                  CircleAvatar(backgroundColor: Colors.black,radius: 60),
                  Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'NAME : ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black54),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      (name == null)
                          ? Text("")
                          : Text(
                        name!,
                        style: (TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'EMAIL :$email ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black54),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      (email == null)
                          ? Text("")
                          : Text(
                        email!,
                        style: (TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Row(children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10,),
                    Text( 'Phone :$phone ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black54),),
                    (phone == null)
                        ? Text('$usernumber')
                        : Text(
                      phone!,
                      style: (TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                    ),
                  ],)
                ],
              ),
            ),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.black,
            //     ),
            //     onPressed: () {
            //       logindata!.setBool('login', true);
            //       Navigator.pushReplacement(context,
            //           MaterialPageRoute(builder: (context) => LOG()));
            //     },
            //     child: Text(('LogOut'),)
            // )
          ],
        ),
      ),
    );
  }
}
