import 'package:flutter/material.dart';
import 'package:calcpublish/calcpublish.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HesapMakinesiEkrani(),
    ),
  );
}

class HesapMakinesiEkrani extends StatefulWidget {
  const HesapMakinesiEkrani({super.key});

  @override
  State<HesapMakinesiEkrani> createState() => _HesapMakinesiEkraniState();
}

class _HesapMakinesiEkraniState extends State<HesapMakinesiEkrani> {
  final TextEditingController s1Controller = TextEditingController();
  final TextEditingController s2Controller = TextEditingController();
  String sonuc = "0";

  void hesapla(String islem) {
    int s1 = int.tryParse(s1Controller.text) ?? 0;
    int s2 = int.tryParse(s2Controller.text) ?? 0;

    setState(() {
      if (islem == '+') sonuc = add(s1, s2).toString();
      if (islem == '-') sonuc = subtract(s1, s2).toString();
      if (islem == '*') sonuc = multiply(s1, s2).toString();
      if (islem == '/') sonuc = divide(s1, s2).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Benim Hesap Makinesi'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: s1Controller,
              decoration: const InputDecoration(labelText: '1. Sayı'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            TextField(
              controller: s2Controller,
              decoration: const InputDecoration(labelText: '2. Sayı'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => hesapla('+'),
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () => hesapla('-'),
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () => hesapla('*'),
                  child: const Text('x'),
                ),
                ElevatedButton(
                  onPressed: () => hesapla('/'),
                  child: const Text('/'),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'Sonuç: $sonuc',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
