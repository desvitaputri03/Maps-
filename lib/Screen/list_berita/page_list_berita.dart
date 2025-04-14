import 'package:flutter/material.dart';
import 'detail_berita.dart'; // Import halaman detail berita

class PageListBerita extends StatefulWidget {
  const PageListBerita({super.key});

  @override
  State<PageListBerita> createState() => _PageListBeritaState();
}

class _PageListBeritaState extends State<PageListBerita> {
  List<Map<String, dynamic>> listBerita = [
    {
      "judul": "Judul berita 1",
      "gambar": "gambar/pic1.jpeg",
      "tanggal": "15 Maret 2025",
      "rating": "4",
      "isi": "Banyak orang yang tidak bertindak karena takut gagal, padahal tidak bertindak adalah kegagalan yang jelas sudah terjadi"
    },
    {
      "judul": "Judul berita 2",
      "gambar": "gambar/pic2.jpeg",
      "tanggal": "15 Maret 2025",
      "rating": "4",
      "isi": "Miliki keyakinan yang tak tergoyahkan pada dirimu untuk menjadi semua yang kamu inginkan"
    },
    {
      "judul": "Judul berita 3",
      "gambar": "gambar/berita4.jpg",
      "tanggal": "15 Maret 2025",
      "rating": "4",
      "isi": "Fokuslah pada hal-hal yang bisa kamu kontrol, selebihnya bukanlah urusanmu"
    },
    {
      "judul": "Judul berita 4",
      "gambar": "gambar/berita3.jpeg",
      "tanggal": "15 Maret 2025",
      "rating": "4",
      "isi": "Jangan habiskan waktumu memukuli tembok dan berharap bisa mengubahnya menjadi pintu"
    },
    {
      "judul": "Judul berita 5",
      "gambar": "gambar/berita1.jpeg",
      "tanggal": "15 Maret 2025",
      "rating": "4",
      "isi": "Tantangan adalah apa yang membuat hidup menarik dan mengatasinya adalah apa yang membuat hidup bermakna"
    },
    {
      "judul": "Judul berita 6",
      "gambar": "gambar/berita4.jpg",
      "tanggal": "15 Maret 2025",
      "rating": "4",
      "isi": "Tidak masalah dari mana Anda berasal yang penting adalah ke mana Anda akan pergi"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Berita"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: listBerita.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailBerita(berita: listBerita[index]),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          listBerita[index]['gambar'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            listBerita[index]['judul'],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(listBerita[index]['tanggal']),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.star, color: Colors.orange, size: 15),
                              Text(listBerita[index]['rating']),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(listBerita[index]['isi']),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}