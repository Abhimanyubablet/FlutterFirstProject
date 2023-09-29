import 'package:flutter/material.dart';

class MyRegester extends StatefulWidget {
  const MyRegester({super.key});

  @override
  State<MyRegester> createState() => _MyRegesterState();
}

class _MyRegesterState extends State<MyRegester> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/regestration.jpg'),
          fit: BoxFit.cover,
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 45,top: 140),
              child: Text("Create\nAccount", style: TextStyle(
                  color: Colors.white,
                  fontSize:33
              ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.4,
                    right: 35,
                    left: 35
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    SizedBox(
                      height:30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    SizedBox(
                      height:30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [const Padding(padding: EdgeInsets.all(10),
                        child: MyDialog(),
                      ),

                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){
                              Navigator.pushNamed(context, 'login');
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'login');
                          },
                          child :Text("Login",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize:18,
                              color: Color(0xff4c505b),

                            ),),

                        ),

                        // TextButton(
                        //
                        //   onPressed: (){},
                        //   child :Text("Forgot Password",
                        //     style: TextStyle(
                        //       decoration: TextDecoration.underline,
                        //       fontSize:18,
                        //       color: Color(0xff4c505b),
                        //
                        //     ),),
                        //
                        // ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class MyDialog extends StatelessWidget {
  const MyDialog({Key? key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text('You Create an Account'),
          content: Text('Go to Next Login Page'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, 'login'),
              child: Text('Ok'),
            ),
          ],
        ),
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.fromLTRB(0, 15, 15, 15),
        // primary: Colors.black12,
      ),
      child: const Text(
        "Submit",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: Color(0xff4c505b),
        ),
      ),
    );
  }
}
