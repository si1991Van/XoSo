import 'package:flutter/foundation.dart';

class BaseModel extends ChangeNotifier {
  ValueNotifier<bool>? loading;
  ValueNotifier<String>? error;
  ValueNotifier<String>? success;



  void setLoading({@required bool? loading, @required String? source}) {
    print("setLoading: $source >> $loading");
    this.loading?.value = loading!;
  }

  void setError({@required String? error, @required String? source}) {
    if (error?.isNotEmpty == true)
      print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ERROR>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    print("setError: $source >> $error");
    if (error?.isNotEmpty == true)
      print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>ERROR>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    this.error?.value = error!;
    this.loading?.value = false;
  }

  void setSuccess({@required String? message, @required String? source}) {
    print("setSuccess: $source >> $message");
    this.success?.value = message!;
    this.loading?.value = false;
  }

  void clearError({@required String? source}) {
    setError(error: null, source: source);
  }

}
