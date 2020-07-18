class PopularModel {
  String name;
  String image;

  PopularModel(this.name, this.image);
}

List<PopularModel> popular = popularData
    .map((item) => PopularModel(item['name'], item['image']))
    .toList();

var popularData = [
  {
    "name": "Taman Andhang Pangrenan",
    "image":
        "https://lh5.googleusercontent.com/p/AF1QipNgYiOoo-eYMa_R6hTQLV48DAttClulCbzggzt-=w296-h202-n-k-no"
  },
  {
    "name": "Alun-Alun Purwokerto",
    "image":
        "https://lh5.googleusercontent.com/p/AF1QipNfDkJy-t27qbGsNAiiupi8ikmPDBDzZpPrFQNV=w296-h202-n-k-no"
  },
  {
    "name": "Taman Balai Kemambang",
    "image":
        "https://lh5.googleusercontent.com/p/AF1QipM9JVgd6W_ZsGtsVAntL_TJ_Awebmy3ITSHOnx0=w296-h202-n-k-no"
  },
  {
    "name": "Taman Satria Purwokerto",
    "image":
        "https://lh5.googleusercontent.com/p/AF1QipODi4oA1YfQyHVg03l962C2toh8DyxVz8_VWt2p=w296-h202-n-k-no"
  },
  {
    "name": "The Village Purwokerto",
    "image":
        "https://lh5.googleusercontent.com/p/AF1QipOCdN7r8DKxZA9iJhllzb3dlo9cZDru3wDA8b7D=w296-h202-n-k-no"
  },
];
