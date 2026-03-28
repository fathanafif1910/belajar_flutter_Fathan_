import 'package:flutter/material.dart';

void main() {
  runApp(const PraktikumApp());
}

class PraktikumApp extends StatelessWidget {
  const PraktikumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 2 Praktikum',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PraktikumPage(),
    );
  }
}

class PraktikumPage extends StatefulWidget {
  const PraktikumPage({super.key});

  @override
  State<PraktikumPage> createState() => _PraktikumPageState();
}

class _PraktikumPageState extends State<PraktikumPage> {
  bool _showImage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Praktikum Tugas 2"),
      ),
      body: Column(
        children: [
          // SCROLL TEXT
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: const Text(
                "Kopi Khop (atau sering disebut Kopi Telungkup) adalah cara penyajian kopi yang sangat unik dan ikonik dari Meulaboh, Aceh Barat.Bagi kamu yang sedang menempuh studi di Universitas Syiah Kuala (USK), Banda Aceh, tentu sudah tidak asing lagi dengan budaya ngopi yang kuat di Aceh, namun Kopi Khop memiliki daya tarik visual dan cara minum yang sangat berbeda dari kopi saring atau kopi pancung biasa.Berikut adalah deskripsi lengkap mengenai keunikan Kopi Khop:\n\n"
                "1. Cara Penyajian yang Unik\n\n"
                "Ciri khas utamanya adalah gelas yang disajikan dalam kondisi terbalik di atas piring kecil (lepek). Kopi tetap berada di dalam gelas tanpa tumpah ke luar piring karena tekanan udara.\n\n"
                "2. Cara Minum yang Unik (Menggunakan Sedotan)\n\n"
                "Karena gelasnya terbalik, kamu tidak bisa langsung menyeruputnya dari bibir gelas. Cara minumnya adalah:\n"
                ">Gunakan sedotan plastik yang diletakkan di bawah celah gelas.\n"  
                ">Tiup perlahan melalui sedotan agar tekanan udara mendorong cairan kopi keluar sedikit demi sedikit ke piring kecil.\n" 
                "Seruput kopi yang sudah keluar di piring tersebut.\n\n"
                "3. Filosofi dan Sejarah\n\n"   
                "Konon, tradisi ini muncul dari kebiasaan para nelayan di pesisir Aceh Barat pada masa lalu. Mereka sering meninggalkan kopi untuk bekerja (menjaring ikan). Agar kopi tetap hangat, tidak masuk debu, dan tidak dicemari lalat saat ditinggal lama, gelasnya dibalikkan.\n\n"
                "4. Cita Rasa\n\n"
                "Kopi yang digunakan biasanya adalah Kopi Robusta yang digiling kasar. Ada dua varian populer:\n"
                ">Kopi Khop Hitam: Kopi pahit pekat dengan aroma khas robusan pesisir.\n"
                "Kopi Khop Susu: Dicampur dengan susu kental manis di bagian bawah (yang menjadi bagian atas saat gelas dibalik), memberikan sensasi manis-gurih saat bercampur perlahan.\n\n"
                "5. Pengalaman Visual\n\n"
                "Secara estetika, Kopi Khop sangat menarik untuk difoto karena bentuknya yang tidak lazim. Gelasnya biasanya berukuran sedang dengan pinggiran yang tebal agar tidak mudah pecah saat dibalik."
                ,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // IMAGE / CONTAINER
          Container(
            height: 200,
            width: double.infinity,
            color: _showImage ? Colors.transparent : Colors.grey[300],
            child: _showImage
                ? Image.asset(
                    'assets/kopi.jpg',
                    fit: BoxFit.contain,
                  )
                : const Center(
                    child: Text(
                      "Warna Background",
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
          ),

          const SizedBox(height: 10),

          // BUTTON
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showImage = !_showImage;
                  });
                },
                child: Text(
                  _showImage ? "Kembali ke Warna" : "Tampilkan Gambar",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Tombol lain ditekan!"),
                    ),
                  );
                },
                child: const Text("Tombol Lain"),
              ),
            ],
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}