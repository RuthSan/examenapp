class ImagenModel {
  int ? id;
  String ? name;
  String ? sourceUrl;
  String ? imageUrl;
  String ? createdAt;


ImagenModel({
  this.id,
  this.name,
  this.sourceUrl,
  this.imageUrl,
  this.createdAt,
});
factory ImagenModel.fromMapJson(Map<String, dynamic> data) => ImagenModel(
  id: data['id'],
  name: data['name'],
  sourceUrl: data['sourceUrl'],
  imageUrl: data['imageUrl'],
  createdAt: data['createdAt'],
);
}
