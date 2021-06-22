import 'package:equatable/equatable.dart';

class HomeEvent extends Equatable {
  HomeEvent();

  @override
  List<Object> get props => throw [];
}

class changeBarScreenEvent extends HomeEvent {
  final int selectedIndex;
  changeBarScreenEvent({required this.selectedIndex});
  @override
  List<Object> get props => throw [selectedIndex];
}
