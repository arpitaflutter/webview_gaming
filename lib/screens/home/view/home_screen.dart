import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_gaming/screens/home/provider/home_provider.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {

  home_provider? ht,hf;
  @override
  Widget build(BuildContext context) {

    hf = Provider.of<home_provider>(context,listen: false);
    ht = Provider.of<home_provider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Gaming app"),
            centerTitle: true,
          ),
          body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: hf!.images.length,
            itemBuilder: (context, index) => Container(
             padding: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(hf!.images[index],fit: BoxFit.cover),
              ),
            ),
          )
      ),
    );
  }
}
