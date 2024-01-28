class User {
  late int id;
  late String name;
  late String email;
  late String signFile;
  late bool is_new;
  late String kontak;
  late int status;
  late String foto_file;
  late String nik;

  User({
    required this.id,
    required this.name,
    required this.nik,
    required this.email,
    required this.is_new,
    required this.signFile,
    required this.kontak,
    required this.status,
    required this.foto_file,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    name = json['name'] ?? "";
    nik = json['nik'] ?? "";
    is_new = json['is_new'] == 0 || json['is_new'] == "0" ? false : true;
    email = json['email'] ?? "";
    signFile = json['signFile'] ?? "";
    kontak = json['kontak'] ?? "";
    status = json['status'] ?? 0;
    foto_file = json['foto_file'] ?? "";
  }
}
