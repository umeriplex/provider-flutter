import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class WhyProviderScreen extends StatefulWidget {
  const WhyProviderScreen({Key? key}) : super(key: key);

  @override
  State<WhyProviderScreen> createState() => _WhyProviderScreenState();
}

class _WhyProviderScreenState extends State<WhyProviderScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Why Provider'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(count.toString()),
          ),
        ],
      ),
    );
  }
}
