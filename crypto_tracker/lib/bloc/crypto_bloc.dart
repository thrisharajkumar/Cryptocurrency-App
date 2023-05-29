import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoBloc extends Cubit<CryptoState> {
  final CryptoRepository cryptoRepository;

  CryptoBloc(this.cryptoRepository) : super(CryptoInitial());

  // Add your implementation here
}

// Define the different states for your BLoC
abstract class CryptoState {}

class CryptoInitial extends CryptoState {}

class CryptoLoading extends CryptoState {}

class CryptoLoaded extends CryptoState {
  final List<Crypto> cryptoList;

  CryptoLoaded(this.cryptoList);
}

class CryptoError extends CryptoState {
  final String errorMessage;

  CryptoError(this.errorMessage);
}

//In this code, we define a CryptoBloc class that extends Cubit from the flutter_bloc 
//package. We also define different states that the BLoC can be in.
