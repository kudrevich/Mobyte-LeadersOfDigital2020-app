import 'dart:ui';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_screens/UI/home_page/widgets/post_action.dart';
import 'package:football_screens/bloc/like_bloc/like_bloc.dart';
import 'package:football_screens/helpers/helpers.dart';
import 'package:football_screens/models/postdata.dart';

class PostInfo extends StatelessWidget {
  final PostData postData;

  PostInfo(this.postData);
  @override
  Widget build(BuildContext context) {
    LikeBlocBloc likeBlocBloc = LikeBlocBloc();
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Helpers.responsiveWidth(30, context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            postData.date,
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 1.0),
                child: Text(
                  "15333",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 9.0),
                    child: Container(
                      width: Helpers.responsiveWidth(50, context),
                      height: Helpers.responsiveHeight(50, context),
                      child: BlocBuilder<LikeBlocBloc, String>(
                        cubit: likeBlocBloc,
                        builder: (context, state) {
                          return FlareActor(
                            'assets/like_button.flr',
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                            animation: state,
                          );
                        },
                      ),
                    ),
                  ),
                  onTap: () => likeBlocBloc.add(TapEvent())),
            ],
          )
        ],
      ),
    );
  }
}
