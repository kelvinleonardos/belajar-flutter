import 'package:flutter/material.dart';

class Product {
  @required String judul;
  @required String images;
  @required String harga;
  @required String deskripsi;

  Product(this.judul, this.images, this.harga, this.deskripsi);
}