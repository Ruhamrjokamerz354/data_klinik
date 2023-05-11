import 'package:data_klinik/model/home.dart';
import 'package:flutter/material.dart';
import 'package:data_klinik/model/pegawai.dart';
import 'package:data_klinik/ui/pegawai_detail.dart';

class PegawaiPage extends StatefulWidget {
  final Home home;

  const PegawaiPage({super.key, required this.home});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Ruhamaja Aslaba"),
              ),
            ),
            onTap: () {
              Pegawai RuhamajaAslaba = Pegawai(
                nip: "12210824",
                namaPegawai: "Ruhamaja Aslaba ",
                tanggalLahir: "08 Mei 2003",
                nomorTelepon: "082138977255",
                email: "12210824@bsi.ac.id",
                password: "354313",
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PegawaiDetail(pegawai: RuhamajaAslaba),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
