class ShowAllModel {
  String name;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String image;

  ShowAllModel(this.name, this.description, this.openDays, this.openTime,
      this.ticketPrice, this.image);
}

List<ShowAllModel> showAll = showAllData
    .map((item) => ShowAllModel(item['name'], item['description'],
        item['openDays'], item['openTime'], item['ticketPrice'], item['image']))
    .toList();

var showAllData = [
  {
    "name": "Taman Andhang Pangrenan",
    "description":
        "Taman Andhang Pangrenan merupakan fasilitas umum dan tempat rekreasi yang multifungsi. Merupakan ruang terbuka hijau di sisi selatan kota Purwokerto dengan fasilitas cukup lengkap dan bisa dimanfaatkan untuk berbagai keperluan oleh masyarakat umum.",
    "openDays": "Open Everyday",
    "openTime": "08.00 - 22.00",
    "ticketPrice": "Rp 2.500",
    "image":
        "https://lh5.googleusercontent.com/p/AF1QipNgYiOoo-eYMa_R6hTQLV48DAttClulCbzggzt-=w296-h202-n-k-no"
  },
  {
    "name": "Alun-Alun Purwokerto",
    "description":
        "Alun-Alun Purwokerto merupakan fasilitas umum dan tempat rekreasi yang multifungsi. Merupakan ruang terbuka hijau di pusat kota Purwokerto dengan fasilitas cukup lengkap dan bisa dimanfaatkan untuk berbagai keperluan oleh masyarakat umum.",
    "openDays": "Open Everyday",
    "openTime": "Open Everytime",
    "ticketPrice": "Free",
    "image":
        "https://lh5.googleusercontent.com/p/AF1QipNfDkJy-t27qbGsNAiiupi8ikmPDBDzZpPrFQNV=w296-h202-n-k-no"
  },
  {
    "name": "Taman Balai Kemambang",
    "description":
        "Taman yang diresmikan pada tahun 2014 ini merupakan Ruang Terbuka Hijau (RTH) berada di Kelurahan Karangkobar, Bancarkembar, Purwokerto, Jawa Tengah. Sebagai upaya untuk melakukan penghijauan di puat-pusat kota. Keberadaan Balai Kemambang ini untuk melengkapi ruang publik yang sudah ada, seperti Taman Satria, Taman Andang Pangrenan, Hutan Kota dan lainnya. Meski demikian, kebutuhan ruang publik hijau yang ada belum cukup bila dibandingkan dengan luas wilayah dan jumlah penduduk.",
    "openDays": "Open Everyday",
    "openTime": "08.00 - 21.00",
    "ticketPrice": "Rp 2.500",
    "image":
        "https://lh5.googleusercontent.com/p/AF1QipM9JVgd6W_ZsGtsVAntL_TJ_Awebmy3ITSHOnx0=w296-h202-n-k-no"
  },
  {
    "name": "Taman Satria Purwokerto",
    "description":
        "Taman satria yang berada di lokasi yang sejuk dan sepi ini mempunyai kesan tersendiri untuk dikunjungi. Tidak banyak orang yang mengenal Taman Satria ini, terlihat seperti taman yang kurang diurus memang, tapi jika orang yang tau taman ini pasti menyukai taman ini karena ada permainan seperti jungkat-jungkit, ayunan, dan bangku panjang yang tersedia untuk beristirahat.",
    "openDays": "Open Everyday",
    "openTime": "Open Everytime",
    "ticketPrice": "Free",
    "image":
        "https://lh5.googleusercontent.com/p/AF1QipODi4oA1YfQyHVg03l962C2toh8DyxVz8_VWt2p=w296-h202-n-k-no"
  },
  {
    "name": "The Village Purwokerto",
    "description":
        "Semakin banyak pilihan destinasi wisata yang dekat dengan pusat kota Purwokerto, The Village hadir dengan gaya unik ala eropa. Desain bangunan yang sangat berbeda sudah terlihat menyolok jika lewat jalan raya Baturraden.",
    "openDays": "Wednesday - Monday",
    "openTime": "10.00 - 21.00",
    "ticketPrice": "Rp 10.000 - Rp 18.000",
    "image":
        "https://lh5.googleusercontent.com/p/AF1QipOCdN7r8DKxZA9iJhllzb3dlo9cZDru3wDA8b7D=w296-h202-n-k-no"
  },
  {
    "name": "The Forest Purwokerto",
    "description":
        "The Forest Island Purwokerto hadir melengkapi tujuan wisata kota Purwokerto. Berbeda dengan The Village yang banyak wahana berbayarnya, disini hanya bayar tiket masuk saja, tidak / belum ada wahana berbayar, tapi sudah cukup lengkap, sangat instagramable, dan bisa bersantai bersama keluarga.",
    "openDays": "Saturday - Thursday",
    "openTime": "09.00 - 21.00",
    "ticketPrice": "Rp 10.000 - Rp 15.000",
    "image":
        "https://lh5.googleusercontent.com/p/AF1QipNyf-xaxa3bvlSeN1BX_bktoTGI_d7p1AViWLoa=w296-h202-n-k-no"
  },
];
