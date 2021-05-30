class MenuModel {
  String name;
  String image;
  String rating;
  String ingredient;
  double price;
  String detailImage;
  String ofBuy;
  String ingredients1;
  String ingredients2;
  String description;

  MenuModel({
    this.name,
    this.image,
    this.rating,
    this.ingredient,
    this.price,
    this.detailImage,
    this.ofBuy,
    this.ingredients1,
    this.ingredients2,
    this.description,
  });
}

var menuModelList = [
  MenuModel(
    name: 'Cafe Latte',
    ingredient: 'with Oat Milk',
    image: 'assets/menu1.png',
    rating: '4.8',
    price: 4.20,
    detailImage: 'assets/detail_menu1.png',
    ofBuy: '6.678',
    ingredients1: 'assets/been.png',
    ingredients2: 'assets/milk.png',
    description:
        'A cafe latter is as a coffee drink made with espresso and steamed milk. The term...',
  ),
  MenuModel(
    name: 'Cappucino',
    ingredient: 'with Chocolate',
    image: 'assets/menu2.png',
    rating: '4.8',
    price: 3.14,
    detailImage: 'assets/detail_menu2.png',
    ofBuy: '5.983',
    ingredients1: 'assets/been.png',
    ingredients2: 'assets/chocolate.png',
    description:
        'A cappucino is a coffee-based drink made primarily from espresso and milk, it consist of...',
  ),
  MenuModel(
    name: 'Aceh Gayo',
    ingredient: 'Espresso 100% Arabica',
    image: 'assets/menu3.png',
    rating: '4.9',
    price: 2.80,
    detailImage: 'assets/detail_menu3.png',
    ofBuy: '3.789',
    ingredients1: 'assets/been.png',
    ingredients2: 'assets/sugar.png',
    description:
        'A Gayo Coffee is is an Arabica coffee variety which is one of the leading commodities  ...',
  ),
];
