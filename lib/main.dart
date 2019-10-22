import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crud_with_bloc_library/bloc/user_bloc.dart';
import 'package:flutter_crud_with_bloc_library/ui/user/list.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => UserBloc(),
      child: MaterialApp(
          debugShowCheckedModeBanner: true,
          theme: ThemeData(brightness: Brightness.dark),
          home: (UserListScreen())),
    );
  }
}
