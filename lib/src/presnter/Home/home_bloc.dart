import 'package:flutter_bloc/flutter_bloc.dart';
import 'Home_States.dart';
import 'home_event.dart';
import 'dart:async';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(0));

  ChangeBarScreenState changeBarScreen(HomeEvent event) {
    var index = (event as changeBarScreenEvent).selectedIndex;
    return ChangeBarScreenState(selectedIndex: index);
  }

  Stream<HomeState> setupState({required HomeState state}) async* {
    yield StartState();
    yield state;
    yield EndState();
  }

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    final state = changeBarScreen(event);
    yield* setupState(state: state);
  }
}
