part of 'like_bloc.dart';

abstract class LikeBlocState {}

class LikeBlocInitial extends LikeBlocState {
  String animation = 'dislike';
}

class LikeState extends LikeBlocState {
  String animation = 'like';
}
