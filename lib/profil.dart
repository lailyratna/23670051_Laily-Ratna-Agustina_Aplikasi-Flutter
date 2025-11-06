import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    const Color mainColor = Colors.deepPurple;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Mahasiswa"),
        backgroundColor: mainColor,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Profil Mahasiswa Informatika",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              "Saya adalah Mahasiswa Program Studi Informatika dengan ketertarikan yang mendalam "
              "di bidang pengembangan perangkat lunak, kecerdasan buatan (AI), dan analisis sistem. "
              "Selama studi, saya aktif terlibat dalam berbagai proyek pengembangan aplikasi, mulai "
              "dari aplikasi mobile, website interaktif, hingga sistem berbasis database yang memberikan "
              "solusi nyata.\n\n"
              "Saya memiliki kemampuan dalam logika dan pemecahan masalah, serta pengalaman dalam bekerja "
              "secara kolaboratif dalam tim. Saya terus berupaya mengikuti perkembangan teknologi terbaru "
              "seperti Flutter, Python, dan machine learning, serta meningkatkan keterampilan teknis dan soft skills "
              "melalui kursus online, penelitian pribadi, dan kompetisi IT.\n\n"
              "Tujuan saya dalam karier ini adalah menjadi Software Engineer yang inovatif dan profesional, "
              "dengan menciptakan solusi digital yang tidak hanya efisien tetapi juga berdampak positif bagi masyarakat. "
              "Saya ingin berkontribusi dalam pengembangan teknologi yang memberikan manfaat bagi Indonesia.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 35),
            const Divider(thickness: 1, color: mainColor),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                FeatureIcon(icon: Icons.computer, title: "Programming"),
                FeatureIcon(icon: Icons.memory, title: "AI & Data"),
                FeatureIcon(icon: Icons.web, title: "Web & Mobile"),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              "Moto: \"Koding bukan sekadar menulis baris kode, "
              "tapi juga menciptakan solusi yang berdampak.\"",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureIcon extends StatelessWidget {
  final IconData icon;
  final String title;

  const FeatureIcon({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    const Color mainColor = Colors.deepPurple;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            // ignore: deprecated_member_use
            color: mainColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: mainColor, width: 1.2),
          ),
          child: Icon(icon, color: mainColor, size: 40),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: mainColor,
          ),
        ),
      ],
    );
  }
}
