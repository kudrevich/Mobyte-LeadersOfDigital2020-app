import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'like_state.dart';
part 'like_event.dart';

class LikeBlocBloc extends Bloc<LikeBlocEvent, String> {
  LikeBlocBloc() : super("unlike");

  @override
  Stream<String> mapEventToState(
    LikeBlocEvent event,
  ) async* {
    if (event is TapEvent) yield "like";
    // TODO: implement mapEventToState
  }
}
