class CardModel {
  final String imageUrl;
  final String title;
  final String subTitle;

  CardModel(this.imageUrl, this.title, this.subTitle);
}

List<CardModel> cards = [
  CardModel('assets/model1.jpeg', 'Peggy Gou', 'DJ Kicks'),
  CardModel('assets/model2.jpeg', 'Four Tet', 'Teenage Birdsong'),
  CardModel('assets/model3.jpeg', 'Lily Allen', 'ElRey Theartre'),
  CardModel('assets/model4.jpeg', 'Dua Lipa', 'New Rules'),
  CardModel('assets/model5.jpeg', 'Phoebe Bridgers', 'At Home'),
  CardModel('assets/model6.jpeg', 'Megan T Stallion', 'WAP'),
];
