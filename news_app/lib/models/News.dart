// ignore: file_names
//News Models
class News {
  //id of news
  String id="";

  //url of news
  String url="";

  //title of news
  String title="";

  //text of news
  String text="";

  //publisher of news
  String publisher="";

  //author of news
  String author="";

  //image of news
  String image="";

  //data of news
  String date="";

  //Constructor
  News(this.id, this.url, this.title, this.text, this.publisher, this.author,
      this.image, this.date);

  News.fromeJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.url = json['url'];
    this.title = json['title'];
    this.text = json['text'];
    this.publisher = json['publisher'];
    this.author = json['author'];
    this.image = json['image'];
    this.date = json['date'];
  }
}
