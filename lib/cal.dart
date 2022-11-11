import 'package:flutter/material.dart';

class Moneyconvert extends StatefulWidget{
  @override
  State<Moneyconvert> createState() => _MoneyconvertState();
}

class _MoneyconvertState extends State<Moneyconvert> {
  final _cel  = TextEditingController();
  var result = '';


  void dollatobath() {
    var n = double.tryParse(_cel.text);

    if (n == null) {
      print('Input Error!!!');
      setState(() {
        result = 'Input Error!!!';
      });
    } else {
      var b = 37.36 * n;
      setState(() {
        result = '$n Dolla = $b Bath';
      });
    }
  }
  void eurotobath() {
    var n = double.tryParse(_cel.text);

    if (n == null) {
      print('Input Error!!!');
      setState(() {
        result = 'Input Error!!!';
      });
    } else {
      var b = 37.35 * n;
      setState(() {
        result = '$n Euro = $b Bath';
      });
    }
  }
  void krwtobath() {
    var n = double.tryParse(_cel.text);

    if (n == null) {
      print('Input Error!!!');
      setState(() {
        result = 'Input Error!!!';
      });
    } else {
      var b = 0.027 * n;
      setState(() {
        result = '$n Koreawon = $b Bath';
      });
    }
  }
  void bathtodolla() {
    var n = double.tryParse(_cel.text);

    if (n == null) {
      print('Input Error!!!');
      setState(() {
        result = 'Input Error!!!';
      });
    } else {
      var d = n / 37.36;
      setState(() {
        result = '$n Bath = $d Dolla';
      });
    }
  }
  void bathtoeuro() {
    var n = double.tryParse(_cel.text);

    if (n == null) {
      print('Input Error!!!');
      setState(() {
        result = 'Input Error!!!';
      });
    } else {
      var e = n / 37.35;
      setState(() {
        result = '$n Bath = $e Euro';
      });
    }
  }
  void bathtokrw() {
    var n = double.tryParse(_cel.text);

    if (n == null) {
      print('Input Error!!!');
      setState(() {
        result = 'Input Error!!!';
      });
    } else {
      var k = n / 0.027;
      setState(() {
        result = '$n Bath = $k Koreawon';
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AXG WEB')),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/money.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Text('Calculator Money'),
              TextField(
                controller: _cel,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter amout to convert'
                ),
              ),
              ElevatedButton(
                onPressed: dollatobath ,
                child: Text('Dolla to Bath'),
              ),

              ElevatedButton(
                onPressed: eurotobath ,
                child: Text('Euro to Bath'),
              ),

              ElevatedButton(
                onPressed: krwtobath ,
                child: Text('KRW to Bath'),
              ),

              ElevatedButton(
                onPressed: bathtodolla ,
                child: Text('Bath to Dolla'),
              ),
              ElevatedButton(
                onPressed: bathtoeuro ,
                child: Text('Bath to Euro'),
              ),
              ElevatedButton(
                onPressed: bathtokrw ,
                child: Text('Bath to KRW'),
              ),
              Text(result),

            ],
          ),
        ),
      ),
    );
  }
}