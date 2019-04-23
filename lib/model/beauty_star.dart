class BeautyStar {
  String image;
  String des;

  BeautyStar({this.image, this.des});

  static List<BeautyStar> getAllBeautyStars() {
    var allBeautyStars = new List<BeautyStar>();

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/jingtian.jpg", des: "景甜"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/libingbing.jpg", des: "李冰冰"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/liuyan.jpg", des: "柳岩"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/meinv01.jpg", des: "美女01"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/meinv02.jpg", des: "美女02"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/meinv03.jpg", des: "美女03"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/meinv04.jpg", des: "美女04"));

    return allBeautyStars;
  }
}
