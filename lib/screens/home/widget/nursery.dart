class Nursery {
  const Nursery(
      {required this.title,
      required this.image,
      required this.time,
      required this.distance,
      required this.rating,
      required this.price,
      required this.category});
  final String title;
  final String image;
  final String time;
  final String distance;
  final double rating;
  final double price;
  final List<String> category;
}

const List<Nursery> outlet = <Nursery>[
  Nursery(
    title: 'Nursery 1',
    image: 'assets/images/green_house.jfif',
    time: '20 min',
    distance: '20 KM',
    rating: 4.5,
    price: 450,
    category: ['Flower', 'Ceramic', 'Vegetable', 'Religious'],
  ),
  Nursery(
    title: 'Nursery 2',
    image: 'assets/images/green_house.jfif',
    time: '20 min',
    distance: '20 KM',
    rating: 4.5,
    price: 450,
    category: ['Flower', 'Ceramic', 'Vegetable', 'Religious'],
  ),
  Nursery(
    title: 'Nursery 3',
    image: 'assets/images/green_house.jfif',
    time: '20 min',
    distance: '20 KM',
    rating: 4.5,
    price: 450,
    category: ['Flower', 'Ceramic', 'Vegetable', 'Religious'],
  ),
  Nursery(
    title: 'Nursery 1',
    image: 'assets/images/green_house.jfif',
    time: '20 min',
    distance: '20 KM',
    rating: 4.5,
    price: 450,
    category: ['Flower', 'Ceramic', 'Vegetable', 'Religious'],
  ),
];
