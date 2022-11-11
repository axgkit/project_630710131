import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_630710131/cal.dart';

class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
            Icons.money
        ),
        title: Text('AXG WEB'),
      ),

      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/money.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "ข้อความ1\n",
                          style: GoogleFonts.kanit(
                            textStyle: Theme.of(context).textTheme.displayMedium?.copyWith(color: Colors.black,),
                          ),
                        ),
                        TextSpan(
                          text: "ข้อความ2",
                          style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  FittedBox(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Moneyconvert();
                          },
                        ));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey,
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "เข้าสู่หน้าแอป",
                              style: Theme.of(context).textTheme.button?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(width: 30, height: 35,),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

