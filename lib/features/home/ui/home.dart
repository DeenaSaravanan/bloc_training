import 'package:bloc_training/features/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc=HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
       bloc: HomeBloc(),
      // listenWhen: (previous, current) {},
       //buildWhen: (previous, current) {},
      listener: (context, state) {
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Saravanan Grocery App"),
            actions: [
              IconButton(
                onPressed: (){
                   homeBloc.add(HomeWishlistButtonNavigateEvent());

                }, icon: Icon(Icons.favorite_border_outlined)),
                IconButton(onPressed: (){
                  homeBloc.add(HomeCartButtonNavigateEvent());

                }, icon: Icon(Icons.shopping_bag_outlined))
            ],
          ),
        );
      },
    );
  }
}
