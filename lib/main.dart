import 'package:flutter/material.dart';

void main() => runApp(const AppBurgerKing());

class AppBurgerKing extends StatelessWidget {
  const AppBurgerKing({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LosBurgers(),
    );
  }
}

class LosBurgers extends StatelessWidget {
  const LosBurgers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. AppBar (Lo que ya tienes en tu imagen)
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Burger King",
          style: TextStyle(color: Colors.orange),
        ),
        backgroundColor: Colors.black,
        leading: const Icon(Icons.restaurant_menu, color: Colors.orange),
        actions: [
          IconButton(
            icon: const Icon(Icons.build, color: Color.fromARGB(255, 202, 87, 11)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.emergency, color: Color.fromARGB(255, 255, 124, 2)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt, color: Color.fromARGB(255, 211, 106, 7)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
  padding: EdgeInsets.all(10), // Espaciado alrededor de la lista
  children: [
    // Elemento 1: Notificaciones
    Card(
      elevation: 4,
      child: ListTile(
        leading: Icon(Icons.notifications, color: Colors.deepPurple),
        title: Text('Notificaciones'),
        subtitle: Text('Revisa tus mensajes recientes'),
        trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      ),
    ),

    // Elemento 2: Perfil
    Card(
      elevation: 4,
      child: ListTile(
        leading: Icon(Icons.person, color: Colors.blueAccent),
        title: Text('Mi Perfil'),
        subtitle: Text('Configura tu información'),
        trailing: Icon(Icons.edit, color: Colors.blueAccent),
      ),
    ),

    // Elemento 3: Seguridad
    Card(
      elevation: 4,
      child: ListTile(
        leading: Icon(Icons.security, color: Colors.green),
        title: Text('Seguridad'),
        subtitle: Text('Cambia tu contraseña'),
        trailing: Icon(Icons.lock_outline, color: Colors.green),
      ),
    ),

    // Elemento 4: Pagos
    Card(
      elevation: 4,
      child: ListTile(
        leading: Icon(Icons.payment, color: Colors.orange),
        title: Text('Pagos'),
        subtitle: Text('Historial de transacciones'),
        trailing: Icon(Icons.account_balance_wallet, color: Colors.orange),
      ),
    ),

    // Elemento 5: Salir
    Card(
      elevation: 4,
      child: ListTile(
        leading: Icon(Icons.exit_to_app, color: Colors.redAccent),
        title: Text('Cerrar Sesión'),
        subtitle: Text('Salir de la aplicación'),
        trailing: Icon(Icons.power_settings_new, color: Colors.redAccent),
      ),
    ),
  ],
),
    );
  }
}
