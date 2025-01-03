import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = "progress_screen";

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Center(
      child: const Column(
        children: [
          SizedBox(height: 30,),
          Text('Circular progress indicator'),
          SizedBox(height: 10,),
          CircularProgressIndicator(
            strokeWidth: 2,  
            backgroundColor: Colors.black45,
          ),
          SizedBox(height: 20,),
          Text('Circular indicator controlado'),
          SizedBox(height: 10,),
          CircularProgressIndicator(
            strokeWidth: 2,  
            backgroundColor: Colors.black45,
          )
        ],
      ),
    );
  }
}