import 'package:flutter/material.dart';
import 'package:flutter_amazingui/widgets/expenses.dart';
import 'package:flutter_amazingui/widgets/header.dart';
import 'package:flutter_amazingui/widgets/cardSection.dart';

import 'data.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circular'),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[

          SizedBox(height: 20,),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(child: CardSection(),),
          Expanded(child: ExpenseSection(),)
        ],
      ),
    );
  }
}
