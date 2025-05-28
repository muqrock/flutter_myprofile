import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            // Top Profile Section
            Container(
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/myprofile.jpeg'),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'MUHAMMAD MUQRI BIN MOHAMAD SHABERI',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'D20221104752',
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                  const SizedBox(height: 20),
                  // Contact Options
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.email, color: Colors.white),
                        tooltip: 'Email',
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.phone, color: Colors.white),
                        tooltip: 'Phone',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Bottom Details Section
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  ProfileInfoCard(
                    icon: Icons.email,
                    title: 'Email',
                    subtitle: 'muqrishaberi@gmail.com',
                  ),
                  ProfileInfoCard(
                    icon: Icons.phone,
                    title: 'Mobile',
                    subtitle: '+6010-8832184',
                  ),
                  ProfileInfoCard(
                    icon: Icons.location_on,
                    title: 'State of Origin',
                    subtitle: 'Butterworth, Penang',
                  ),
                  ProfileInfoCard(
                    icon: Icons.cake,
                    title: 'Date of Birth',
                    subtitle: '12 January 2001',
                  ),
                  ProfileInfoCard(
                    icon: Icons.message,
                    title: 'Quote',
                    subtitle:
                        '"Any meeting with more than three people is basically pointless"',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom widget for info card
class ProfileInfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ProfileInfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueGrey),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
