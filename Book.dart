//นายเอกรัฐ ทะยะ  ปสสท.3  รหัส 3651051541127
class Book{
  String? _title;
  String? _publisher ;
  double? _price ;

  Book(this._title, this._publisher, this._price);
  Book.setValue({String? publisher, double? price}){
    this._publisher=publisher;
    this._price = price;
  }


  String get title => _title! ;
  set title(String title) => this._title = title;
  double get price => _price! ;
  set price(double price) => this._price = price ;
  String get publisher => _publisher! ;
  set publisher(String publisher) => this._publisher = publisher;

  void displayBook(publisherDiscount){
    print('ชื่อหนังสือ: $title');
    print('ชื่อสำนักพิมพ์: $publisher');
    print('ราคา: $price');
    if (publisher.contains(publisherDiscount)) {
      price = price * 10 / 100 ;
    }
    print('ราคาหลังหักส่วนลด: $price');
  }

}