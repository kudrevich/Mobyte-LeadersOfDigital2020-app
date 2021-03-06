import 'package:flutter/material.dart';
import 'package:football_screens/models/postdata.dart';

class PostSender extends StatelessWidget {
  final PostData postData;

  PostSender(this.postData);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double _responsiveHeight(double size) => height * (size / 740);
    double _responsiveWidth(double size) => width * (size / 360);
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: _responsiveWidth(10)),
            child: ListTile(
              leading: Container(
                width: _responsiveHeight(40),
                height: _responsiveHeight(40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/item.jpg",//будет общая картинка клуба, она одна для всех постов
                    ),
                  ),
                ),
              ),
              title: Text("Manchester City"),//название клуба
              subtitle: Text(
                postData.location,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
