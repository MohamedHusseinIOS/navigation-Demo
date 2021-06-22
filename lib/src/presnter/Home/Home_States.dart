import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final int version;

  HomeState(this.version);

  @override
  List<Object> get props => throw [];
}

class StartState extends HomeState {
  StartState() : super(0);
}

class EndState extends HomeState {
  EndState() : super(0);
}

class ChangeBarScreenState extends HomeState {
  final int selectedIndex;
  ChangeBarScreenState({required this.selectedIndex}) : super(0);
  @override
  List<Object> get props => throw [selectedIndex];
}
