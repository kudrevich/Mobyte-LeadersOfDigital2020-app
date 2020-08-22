class PostData {
  final String location;
  final String imgUrl;
  final String caption;
  final String date; //TODO заменить на DateTime
  final String text;
  final int likesCount;
  final int commentsCount;

  PostData(
      {this.date,
      this.caption,
      this.commentsCount,
      this.imgUrl,
      this.likesCount,
      this.location,
      this.text});
  //TODO добавить разделение на посты от клуба и от болельщиков, пока только от клуба
}
