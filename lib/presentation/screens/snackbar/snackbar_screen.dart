import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/router/app_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = "snackbar_screen";

  const SnackbarScreen({super.key});
    
    void showCustomSnackbar(BuildContext context){
      final snackbar = SnackBar(
        content: const Text('Hola mundo'),
        action: SnackBarAction(label: 'Ok!', onPressed: (){}),
        duration: const Duration(seconds: 1),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        snackbar
      );
    }

    void openDialog(BuildContext context){
      showDialog(
        context: context, 
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: const Text('Estas seguro'),
          content: const Text('Lorem ipsum dolor sit amet, consectetur'),
          actions: [
            TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
            FilledButton(onPressed: () => context.pop() , child: const Text('Aceptar')),
          ],
      ));
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y dialogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('lorem ipsum dolor sit amet, consectetur lorem ipsum dolor lorem ipsum dolor lorem ipsum')
                  ]
                );
              }, 
              child: const Text('Licencias usadas')
            ),
            FilledButton.tonal(
              onPressed: (){
                openDialog(context);
              }, 
              child: const Text('Mostrar dialogo')
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          showCustomSnackbar(context);
        }, 
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}