import 'package:mobx/mobx.dart';


abstract class _ErrorStore with Store {

  // disposers
  late List<ReactionDisposer> _disposers;

  // store variables:-----------------------------------------------------------
  @observable
  String errorMessage = '';


  // actions:-------------------------------------------------------------------
  @action
  void setErrorMessage(String message) {
    this.errorMessage = message;
  }

  @action
  void reset(String value) {
    print('calling reset');
    errorMessage = '';
  }

  // dispose:-------------------------------------------------------------------
  @action
  dispose() {
    for (final d in _disposers) {
      d();
    }
  }
}