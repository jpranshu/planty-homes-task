class Choice {
  const Choice({required this.title, required this.image});
  final String title;
  final String image;
}

const List<Choice> choices = <Choice>[
  Choice(
    title: 'Flower',
    image: 'assets/images/flower.jfif',
  ),
  Choice(
    title: 'Fruits',
    image: 'assets/images/fruits.jfif',
  ),
  Choice(
    title: 'Vegetables',
    image: 'assets/images/vegetable.jfif',
  ),
  Choice(
    title: 'Ceramic',
    image: 'assets/images/cereals.jfif',
  ),
  Choice(
    title: 'Hanging',
    image: 'assets/images/hanging.jfif',
  ),
  Choice(
    title: 'Spices',
    image: 'assets/images/spices.jfif',
  ),
  Choice(
    title: 'Religious',
    image: 'assets/images/religious.jfif',
  ),
  Choice(
    title: 'Green Plant',
    image: 'assets/images/green_house.jfif',
  ),
];
