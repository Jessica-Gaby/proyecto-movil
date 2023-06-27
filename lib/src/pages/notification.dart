import 'package:flutter/material.dart';



class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<NotificationItem> notifications = [
    NotificationItem(
      title: 'Activa La verificacion de dos pasos',
      description: 'Para tu seguridad Activa la verificacion para tener mas seguridad en tus compras',
      viewed: false,
    ),
    NotificationItem(
      title: 'Compra Cancelada',
      description: 'Tu compra realizada el 13/06/2023 ha sido cancelada si fue usted por favor acepte esta notificacion',
      viewed: true,
    ),
    NotificationItem(
      title: 'Compra realizada',
      description: 'Tu compra se realizo con exito',
      viewed: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido a tus notificaciones',
        style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'RobotoMono'),),
                backgroundColor: Color.fromARGB(255, 7, 7, 7),
                centerTitle: true,
      ),
      body: Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
      colors: <Color>[
        Color.fromARGB(255, 249, 248, 250),
        Color.fromARGB(255, 233, 133, 61)
        ],
        begin: Alignment.topRight,
        ),
        ),
      child: ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (BuildContext context, int index) {
      return NotificationListItem(
        notification: notifications[index],
      );
    },
  ),
  ));

}
}

class NotificationListItem extends StatefulWidget {
  final NotificationItem notification;

  const NotificationListItem({required this.notification});

  @override
  _NotificationListItemState createState() => _NotificationListItemState();
}

class _NotificationListItemState extends State<NotificationListItem> {
  bool viewed = false;

  @override
  void initState() {
    super.initState();
    viewed = widget.notification.viewed;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.notification.title,
        style: viewed
            ? TextStyle(fontWeight: FontWeight.normal)
            : TextStyle(fontWeight: FontWeight.bold),
      ),
      onTap: () {
        setState(() {
          viewed = true;
          widget.notification.viewed = true;
        });

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(widget.notification.title),
              content: Text(widget.notification.description),
              actions: <Widget>[
                TextButton(
                  child: Text('Cerrar'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class NotificationItem {
  String title;
  String description;
  bool viewed;

  NotificationItem({
    required this.title,
    required this.description,
    required this.viewed,
  });
}