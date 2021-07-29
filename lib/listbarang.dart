class Barang {
  String name;
  int harga;
  String description;
  String imageAsset;

  Barang({
    required this.name,
    required this.description,
    required this.harga,
    required this.imageAsset,
  });
}

var BarangList = [
  Barang(
      name: 'Armless-Couch',
      description: 'deskripsi',
      harga: 1000000,
      imageAsset: 'assets/images/sofa.jpg'),
  Barang(
      name: 'Side Table',
      description: 'deskripsi',
      harga: 240000,
      imageAsset: 'assets/images/sidetable.png'),
  Barang(
      name: 'Black Sofa',
      description: 'Deskirpsi',
      harga: 500000,
      imageAsset: 'assets/images/blacksofa.png'),
  Barang(
      name: 'Cup Board',
      description: 'desk',
      harga: 235000,
      imageAsset: 'assets/images/sofa')
];
