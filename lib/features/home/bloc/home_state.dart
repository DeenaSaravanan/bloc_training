part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

abstract class HomeActionState extends HomeState{}

final class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState{}

class HomeLoadedSucessState extends HomeState{}

class HomeErrorState extends HomeState{}

class HomeNavigateToWhislistPage extends HomeActionState{}

class HomeNavigateToCartPage extends HomeActionState{}
