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
  String data="";

  //Constructor
  News(this.id, this.url, this.title, this.text, this.publisher, this.author,
      this.image, this.data);

  News.fromeJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    title = json['title'];
    text = json['text'];
    publisher = json['publisher'];
    author = json['author'];
    image = json['image'];
    data = json['data'];
  }
}
