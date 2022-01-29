
import 'package:ecommerce/Shared/colors.dart';
import 'package:ecommerce/Shared/network/remote/dio_helper.dart';
import 'package:ecommerce/business_logic/home_cubit.dart';
import 'package:ecommerce/presentation/homeScreen.dart';
import 'package:ecommerce/Shared/models.dart';
import 'package:ecommerce/presentation/productScreen.dart';
import 'package:ecommerce/presentation/register_screen/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_bloc_observer.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  BlocOverrides.runZoned(
        () {
          runApp(MyApp());
      // Use cubits...
    },
    blocObserver: MyBlocObserver(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit()..getProductData()..getCategoryData(),),
      ],
      child: MaterialApp(

        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),

        home:LoginScreen(),
      ),
    );
  }
}