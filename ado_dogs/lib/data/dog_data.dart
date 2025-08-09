
class Dog {
  final String name;
  final String breed;
  final String age;
  final String imageUrl;
  final String gender;
  final String centre;
  final String quote;
  final List<String>? otherPhotos;

  Dog({
    required this.name,
    required this.breed,
    required this.age,
    required this.imageUrl,
    required this.gender,
    required this.centre,
    required this.quote,
    this.otherPhotos,
  });
}

final List<Dog> dogs = [
  Dog(
    name: "Hunter",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "assets/Hunter.png",
    age: "2022-12-20",
    centre: "SPCA",
    quote: "I bounce to catch your attention!",
    otherPhotos: [
      "assets/Hunter_2.jpg",
      "assets/Hunter_3.jpg",
    ],
  ),
  Dog(
    name: "Nancy",
    breed: "Mongrel",
    gender: "Female(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2023/09/Nancy-PN-529599.jpg",
    age: "2022-04-01",
    centre: "SPCA",
    quote: "TBC"
  ),
  Dog(
    name: "Thor",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/10/Thor-PN-502501.jpg",
    age: "2019-02-13",
    centre: "SPCA",
    quote: "TBC"
  ),
  Dog(
    name: "Harley",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2023/09/Harley-PN-545307.jpg",
    age: "2023-01-31",
    centre: "SPCA",
    quote: "TBC"

  ),
  Dog(
    name: "Mika",
    breed: "Mongrel", 
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/07/Mika-PN-542966.jpg",
    age: "2022-12-29",
    centre: "SPCA",
    quote: "TBC"

  ),
  Dog(
    name: "Lyon",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2023/09/Lyon-PN-549320-001.jpg",
    age: "2023-04-26",
    centre: "SPCA",
    quote: "TBC"

  ),
  Dog(
    name: "Jolli",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2025/05/IMG_3129-scaled.jpg",
    age: "2022-11-01",
    centre: "SPCA",
    quote: "TBC"

  ),
  Dog(
    name: "SiuFu",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/10/Siu-Fu-PN-376731-1.jpg",
    age: "2015-10-29",
    centre: "SPCA",
    quote: "TBC"

  ),
  Dog(
    name: "Duncan",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/10/Duncan-PN-545986.jpg",
    age: "2023-02-10",
    centre: "SPCA",
    quote: "TBC"

  ),
  Dog(
    name: "Esme",
    breed: "Mongrel",
    gender: "Female(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/10/Esme-PN-543259-2.jpg",
    age: "2022-11-23",
    centre: "SPCA",
    quote: "TBC"

  ),
  Dog(
    name: "Casper",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2025/05/casper-3.jpg",
    age: "2022-10-07",
    centre: "SPCA",
    quote: "TBC"

  ),
  Dog(
    name: "Brown 蓮子",
    breed: "Mongrel",
    gender: "Female(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/07/Brown-蓮子-PN-552908.jpg",
    age: "2023-05-09",
    centre: "SPCA",
    quote: "TBC"

  ),
  Dog(
    name: "Fun",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2023/10/Fun-PN-554769-Studio-shot-by-CM-Leung.jpg",
    age: "2023-07-25",
    centre: "SPCA",
    quote: "TBC"

  ),
  Dog(
    name: "Circle",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/10/Circle-PN-554771.jpg",
    age: "2023-08-04",
    centre: "SPCA",
    quote: "TBC"

  ),
  Dog( 
    name: "Joe",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/10/joe.jpg",
    age: "2022-12-15",
    centre: "SPCA",
    quote: "TBC"

  ),
    Dog(
    name: "Dori",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/07/Dori-PN-545975-2.jpg",
    age: "2020-03-17",
    centre: "SPCA",
    quote: "TBC"

    ),
    Dog(
    name: "Max",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/10/Max-PN-549740-3.jpg",
    age: "2023-05-01",
    centre: "SPCA",
    quote: "TBC"

    ),
    Dog(
    name: "Sum Wat",
    breed: "Mongrel",
    gender: "Female(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/10/Sum-Wat-PN-558044-1.jpg",
    age: "2023-07-11",
    centre: "SPCA",
    quote: "TBC"

    ),
    Dog(
    name: "Apollo",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/07/Apollo-PN-557872.jpg",
    age: "2023-06-30",
    centre: "SPCA",
    quote: "TBC"

    ),
    Dog( 
    name: "Pei Pei",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/10/Pei-Pei-PN-550718-3.jpg",
    age: "2022-09-08",
    centre: "SPCA",
    quote: "TBC"

    ),
    Dog(
    name: "Chu Chu",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/04/Chu-Chu-PN-565848.jpg",
    age: "2023-05-05",
    centre: "SPCA",
    quote: "TBC"

    ),
    Dog(
    name: "Megi 美芝",
    breed: "Mongrel",
    gender: "Female(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/07/Megi-美芝-PN-562575.jpg",
    age: "2023-12-27",
    centre:"SPCA",
    quote: "TBC"

    ),
    Dog(
    name: "Tommy",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/10/Tommy-PN-568395.jpg",
    age: "2024-03-10",
    centre: "SPCA",
    quote: "TBC"

    ),
    Dog(
    name: "Pan Pan",
    breed: "Mongrel",
    gender: "Male(Desexed)",
    imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/10/pan-pan-4.jpg",
    age: "2024-05-10",
    centre:"SPCA",
    quote: "TBC"

    ),
    Dog(
      name: "Neo",
      breed: "Mongrel",
      gender: "Male(Desexed)",
      imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/10/Neo-PN-577222.jpg",
      age: "2024-05-20",
      centre: "SPCA",
      quote: "TBC"

    ),
    Dog(
      name: "Nolan",
      breed: "Mongrel",
      gender: "Male(Desexed)",
      imageUrl: "https://www.spca.org.hk/wp-content/uploads/2025/05/Nolan-a1.jpg",
      age: "2024-05-20",
      centre: "SPCA",
      quote: "TBC"

    ),
    Dog(
      name: "Apple",
      breed: "Mongrel",
      gender: "Female(Desexed)",
      imageUrl: "https://www.spca.org.hk/wp-content/uploads/2025/04/Apple-PN-575866.jpg",
      age: "2024-07-21",
      centre: "SPCA",
      quote: "TBC"

    ),
    Dog(
      name: "Bambi",
      breed: "Mongrel",
      gender: "Female(Desexed)",
      imageUrl: "https://www.spca.org.hk/wp-content/uploads/2025/01/Bambi-PN-577313.jpg",
      age: "2024-03-18",
      centre:"SPCA",
      quote: "TBC"

      ),
      Dog(
      name: "Lung Jai",
      breed: "Mongrel",
      gender: "Male(Desexed)",
      imageUrl: "https://www.spca.org.hk/wp-content/uploads/2025/04/Lung-Jai-PN-579020.jpg",
      age: "2024-08-15",
      centre: "SPCA",
      quote: "TBC"

      ),
      Dog(
      name: "Kammi",
      breed: "Mongrel",
      gender: "Female(Desexed)",
      imageUrl: "https://www.spca.org.hk/wp-content/uploads/2025/04/Kammi-PN-576038-2.jpg",
      age: "2024-07-09",
      centre: "SPCA",
      quote: "TBC"

      ),
      Dog(
      name: "Tan Jai",
      breed: "Mongrel",
      gender: "Male(Desexed)",
      imageUrl: "https://www.spca.org.hk/wp-content/uploads/2025/04/Tan-Jai-579021-shot-by-Emily.jpg",
      age: "2024-08-15",
      centre: "SPCA",
      quote: "TBC"

      ),
      Dog(
      name: "Nash",
      breed: "Mongrel",
      gender: "Male(Desexed)",
      imageUrl: "https://www.spca.org.hk/wp-content/uploads/2024/11/IMG_0506-1-scaled.jpeg",
      age: "2024-06-01",
      centre: "SPCA",
      quote: "TBC"

      ),
      Dog(
      name: "Sesame",
      breed: "Mongrel",
      gender: "Female(Desexed)",
      imageUrl: "https://www.spca.org.hk/wp-content/uploads/2025/01/Sesame-PN-578589.jpg",
      age: "2024-09-02",
      centre: "SPCA",
      quote: "TBC"

      ),
      Dog(
      name: "Solar",
      breed: "Mongrel",
      gender: "Male(Desexed)",
      imageUrl: "https://www.spca.org.hk/wp-content/uploads/2025/01/Solar-PN-578590.jpg",
      age: "2024-09-02",
      centre: "SPCA",
      quote: "TBC"

      ),
      Dog(
      name: "James",
      breed: "Mongrel",
      gender: "Male(Desexed)",
      imageUrl: "https://www.spca.org.hk/wp-content/uploads/2025/06/WhatsApp-Image-2025-06-21-at-14.30.15-2.jpeg",
      age: "2024-09-23",
      centre: "SPCA",
      quote: "TBC"

      ),
      Dog(
      name: "Gigi",
      breed: "Mongrel",
      gender: "Female(Desexed)",
      imageUrl: "https://www.spca.org.hk/wp-content/uploads/2025/08/Gigi-PN-578585.jpg",
      age: "2024-09-02",
      centre: "SPCA",
      quote: "TBC"

      ),
];
