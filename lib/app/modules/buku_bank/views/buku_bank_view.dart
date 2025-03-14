import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrm/app/modules/buku_bank/controllers/buku_bank_controller.dart';

class BukuBankView extends StatelessWidget {
  final BukuBankController controller = Get.put(BukuBankController());

  BukuBankView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text("BUKU",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _buildHeader(context),
          _buildSaldo(context),
          Expanded(child: _buildBonusList(context)),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
        color: Colors.blue[800],
      ),
      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width * 0.04),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Bareil Husein, S. Kom",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 4),
          Text(
            "Manager IT - PUSAT",
            style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, color: Colors.white70),
          ),
        ],
      ),
    );
  }

  Widget _buildSaldo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
      child: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient:
              LinearGradient(colors: [Colors.yellow[700]!, Colors.green[400]!]),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("SISA SALDO ANDA",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
            Obx(() => Text(
                  "Rp. ${controller.saldo.value.toStringAsFixed(0)},-",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.045,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildBonusList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.035),
      child: Obx(() => ListView(
            children: controller.dataBonus.map((bonus) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // **Tampilan daftar bulan dengan border radius**
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[700], // Warna latar belakang
                      borderRadius: BorderRadius.circular(20), // Radius sudut
                    ),
                    margin:
                        EdgeInsets.symmetric(vertical: 4), // Jarak antar bulan
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10), // Radius untuk efek di dalam
                      ),
                      title: Text(
                        bonus["bulan"] as String,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      trailing: Icon(
                        (bonus["isExpanded"] as RxBool).value
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_right,
                        color: Colors.white,
                      ),
                      onTap: () {
                        (bonus["isExpanded"] as RxBool).value =
                            !(bonus["isExpanded"] as RxBool).value;
                      },
                    ),
                  ),

                  // **Tampilkan daftar item jika bulan dipilih**
                  if ((bonus["isExpanded"] as RxBool).value)
                    Column(
                      children: (bonus["items"] as List)
                          .map((item) => _buildBonusItem(item, context))
                          .toList(),
                    ),

                  // **Jarak antar bulan**
                  SizedBox(height: 8),
                ],
              );
            }).toList(),
          )),
    );
  }

 Widget _buildBonusItem(Map<String, dynamic> item, BuildContext context) {
  bool isNegative = item["nominal"] < 0; // Cek apakah nominal negatif

  return Container(
    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03, vertical: MediaQuery.of(context).size.width * 0.023),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item["kode"],
              style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(
                  isNegative ? Icons.remove_circle_outline : Icons.add_circle_outline, // 🔹 Pilih ikon berdasarkan nominal
                  size: 16,
                  color: isNegative ? Colors.red : Colors.green, // 🔹 Warna merah untuk minus, hijau untuk plus
                ),
                SizedBox(width: 4),
                Text(
                  "Rp. ${item["nominal"].abs().toStringAsFixed(0)},-", // 🔹 Gunakan abs() agar angka selalu positif
                  style: TextStyle(color: isNegative ? Colors.red : Colors.black54), // 🔹 Warna merah jika negatif
                ),
              ],
            ),
          ],
        ),
        Text(item["tanggal"], style: TextStyle(color: Colors.black54)),
      ],
    ),
  );
}

}
