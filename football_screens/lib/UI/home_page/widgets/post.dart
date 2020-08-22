import 'package:flutter/material.dart';
import 'package:football_screens/UI/home_page/widgets/post_caption.dart';
import 'package:football_screens/UI/home_page/widgets/post_info.dart';
import 'package:football_screens/UI/home_page/widgets/post_sender.dart';
import 'package:football_screens/UI/news_detail_page/news_detail_page.dart';
import 'package:football_screens/helpers/helpers.dart';
import 'package:football_screens/models/postdata.dart';

class Post extends StatelessWidget {
  final PostData postData;

  Post(this.postData);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => NewsDetailScreen(this),
      )),
      child: Column(
        children: [
          PostCaption(postData),
          Container(
            height: Helpers.responsiveHeight(310, context),
            width: Helpers.responsiveWidth(310, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  postData.imgUrl,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Helpers.responsiveHeight(15, context),
          ),
          // SizedBox(
          //   height: Helpers.responsiveHeight(1, context),
          // ),
          PostInfo(postData),
        ],
      ),
    );
  }
}
