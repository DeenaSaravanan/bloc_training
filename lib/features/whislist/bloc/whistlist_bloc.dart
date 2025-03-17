import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'whistlist_event.dart';
part 'whistlist_state.dart';

class WhistlistBloc extends Bloc<WhistlistEvent, WhistlistState> {
  WhistlistBloc() : super(WhistlistInitial()) {
    on<WhistlistEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
