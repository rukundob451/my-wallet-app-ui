import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_amazingui/data.dart';

import 'cardDetails.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20 ),
            alignment: Alignment.topLeft,
            child: Text('Selected Card', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
        Expanded(child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i){
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            decoration: BoxDecoration(color: primaryColor, boxShadow: customShadow, borderRadius: BorderRadius.circular(20)),

            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  top: 150,
                  bottom: -200,
                  child: Container(decoration: BoxDecoration(
                    boxShadow: customShadow,
                    shape: BoxShape.circle, color: Colors.white38,),),),

                Positioned.fill(
                  left: -320,
                  top: -100,
                  bottom: -150,
                  child: Container(decoration: BoxDecoration(
                    boxShadow: customShadow,
                    shape: BoxShape.circle, color: Colors.white24,),),),

                cardDetails()
              ],
            ),
          );
        }),)
      ],
    );
  }
}
