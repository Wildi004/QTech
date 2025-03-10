class User {
  int? id;
  String? name;
  String? noInduk;
  String? golongan;
  int? prosentase;
  String? noKtp;
  String? email;
  String? noTelp;
  String? image;
  int? roleId;
  String? role;
  String? dept;
  int? deptId;
  String? regional;
  String? regionalKtp;
  String? alamatKtp;
  String? alamatDomisili;
  String? tempatLahir;
  String? tglLahir;
  String? gender;
  String? agama;
  int? statusKawinId;
  String? tglBergabung;
  int? isActive;
  int? isOnline;
  int? shiftId;
  int? buildingId;
  String? ttd;
  String? statusKaryawan;
  int? dateCreated;
  String? idTelegram;

  User({
    this.id,
    this.name,
    this.noInduk,
    this.golongan,
    this.prosentase,
    this.noKtp,
    this.email,
    this.noTelp,
    this.image,
    this.roleId,
    this.role,
    this.deptId,
    this.regional,
    this.regionalKtp,
    this.alamatKtp,
    this.alamatDomisili,
    this.tempatLahir,
    this.tglLahir,
    this.gender,
    this.agama,
    this.statusKawinId,
    this.tglBergabung,
    this.isActive,
    this.isOnline,
    this.shiftId,
    this.buildingId,
    this.ttd,
    this.statusKaryawan,
    this.dateCreated,
    this.idTelegram,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as int?,
        name: json['name'] as String?,
        noInduk: json['no_induk'] as String?,
        golongan: json['golongan'] as String?,
        prosentase: json['prosentase'] as int?,
        noKtp: json['no_ktp'] as String?,
        email: json['email'] as String?,
        noTelp: json['no_telp'] as String?,
        image: json['image'] as String?,
        roleId: json['role_id'] as int?,
        role: json['role'] as String?,
        deptId: json['dept_id'] as int?,
        regional: json['regional'] as String?,
        regionalKtp: json['regional_ktp'] as String?,
        alamatKtp: json['alamat_ktp'] as String?,
        alamatDomisili: json['alamat_domisili'] as String?,
        tempatLahir: json['tempat_lahir'] as String?,
        tglLahir: json['tgl_lahir'] as String?,
        gender: json['gender'] as String?,
        agama: json['agama'] as String?,
        statusKawinId: json['status_kawin_id'] as int?,
        tglBergabung: json['tgl_bergabung'] as String?,
        isActive: json['is_active'] as int?,
        isOnline: json['is_online'] as int?,
        shiftId: json['shift_id'] as int?,
        buildingId: json['building_id'] as int?,
        ttd: json['ttd'] as String?,
        statusKaryawan: json['status_karyawan'] as String?,
        dateCreated: json['date_created'] as int?,
        idTelegram: json['id_telegram'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'no_induk': noInduk,
        'golongan': golongan,
        'prosentase': prosentase,
        'no_ktp': noKtp,
        'email': email,
        'no_telp': noTelp,
        'image': image,
        'role_id': roleId,
        'role' : role,
        'dept_id': deptId,
        'regional': regional,
        'regional_ktp': regionalKtp,
        'alamat_ktp': alamatKtp,
        'alamat_domisili': alamatDomisili,
        'tempat_lahir': tempatLahir,
        'tgl_lahir': tglLahir,
        'gender': gender,
        'agama': agama,
        'status_kawin_id': statusKawinId,
        'tgl_bergabung': tglBergabung,
        'is_active': isActive,
        'is_online': isOnline,
        'shift_id': shiftId,
        'building_id': buildingId,
        'ttd': ttd,
        'status_karyawan': statusKaryawan,
        'date_created': dateCreated,
        'id_telegram': idTelegram,
      };
  
  static List<User> fromJsonList(List? data) {
    return (data ?? []).map((e) => User.fromJson(e)).toList();
  }
}