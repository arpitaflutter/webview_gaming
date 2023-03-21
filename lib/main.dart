import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_gaming/screens/home/provider/home_provider.dart';
import 'package:webview_gaming/screens/home/view/home_screen.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => home_provider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => home_screen()
        },
      ),
    ),
  );
}