import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/cubit/client_cubit.dart';
import 'package:flutter_application_1/service/client_service.dart';
import 'package:flutter_application_1/screens/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((
    _,
  ) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ClientCubit(ClientService()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Finance App',
        home: LoginPage(),
      ),
    );
  }
}
