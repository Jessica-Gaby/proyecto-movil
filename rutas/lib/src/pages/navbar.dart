import 'package:flutter/material.dart';

class nav extends StatelessWidget {
  const nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('ErickGuevara'),
            accountEmail:Text('ead.guevara@yavirac.edu.ec'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('images/perfil.jpg'))
            ),
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text('Subir fotos'),
            onTap:() => {Navigator.popAndPushNamed(context, '/Imagenes')},
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Perfil'),
            onTap:() => {Navigator.popAndPushNamed(context, '/Perfil')},
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificaciones'),
            onTap:() => {Navigator.popAndPushNamed(context, '/Notificaciones')},
          ),
          
          ListTile(
            leading: Icon(Icons.dangerous),
            title: Text('Peligro'),
            onTap:() => {Navigator.popAndPushNamed(context, '/Error')},
          ),
        ]
      )
    );
  }
}