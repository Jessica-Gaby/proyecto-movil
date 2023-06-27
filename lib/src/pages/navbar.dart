import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  const Nav({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('ErickGuevara'),
            accountEmail: Text('ead.guevara@yavirac.edu.ec'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('images/perfil.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text('Subir fotos'),
            onTap: () => Navigator.popAndPushNamed(context, '/Imagenes'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Perfil'),
            onTap: () => Navigator.popAndPushNamed(context, '/Perfil'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificaciones'),
            onTap: () => Navigator.popAndPushNamed(context, '/Notificaciones'),
          ),
          ListTile(
            leading: Icon(Icons.dangerous),
            title: Text('Lector De Barras'),
            onTap: () => Navigator.popAndPushNamed(context, '/Lector De Barras'),
          ),
        ],
      ),
    );
  }
}
