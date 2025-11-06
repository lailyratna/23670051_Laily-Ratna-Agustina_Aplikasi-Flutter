import 'package:flutter/material.dart';
import 'profil.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Laily Ratna',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BiodataPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color mainColor = Colors.deepPurple;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Biodata Laily Ratna"),
        backgroundColor: mainColor,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/laily.jpg'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Laily Ratna",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Mahasiswi Informatika",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const Divider(height: 30, thickness: 1, color: mainColor),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Icon(Icons.home, color: mainColor),
                      SizedBox(width: 10),
                      Text("Alamat: Semarang, Jawa Tengah"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Icon(Icons.email, color: mainColor),
                      SizedBox(width: 10),
                      Text("Email: lailyratna@example.com"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Icon(Icons.phone, color: mainColor),
                      SizedBox(width: 10),
                      Text("Telepon: 0812-3456-7890"),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profil(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    icon: const Icon(Icons.info_outline),
                    label: const Text(
                      "Profil Mahasiswa",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
