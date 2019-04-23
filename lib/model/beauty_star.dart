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

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/meinv05.jpg", des: "美女05"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/meinv06.jpg", des: "美女06"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/meinv07.jpg", des: "美女07"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/meinv08.jpg", des: "美女08"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/nazha.jpg", des: "古力娜扎"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/nini.jpg", des: "倪妮"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/reba.jpg", des: "迪丽热巴"));
    allBeautyStars
        .add(new BeautyStar(image: "asset/images/tangwei.jpg", des: "汤唯"));
    allBeautyStars
        .add(new BeautyStar(image: "asset/images/tangyan.jpg", des: "唐嫣"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/tangyixin.jpg", des: "唐艺昕"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/wanglikun.jpg", des: "王丽坤"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/yangmi.jpg", des: "杨幂"));

    allBeautyStars.add(
        new BeautyStar(image: "asset/images/yangyin.jpeg", des: "angelababy"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/yangzi.jpg", des: "杨紫"));
    allBeautyStars.add(
        new BeautyStar(image: "asset/images/yuanshanshan.jpg", des: "袁姗姗"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/zhangyuqi.jpg", des: "张雨绮"));

    allBeautyStars
        .add(new BeautyStar(image: "asset/images/zhaoliying.jpg", des: "赵丽颖"));

    return allBeautyStars;
  }
}
