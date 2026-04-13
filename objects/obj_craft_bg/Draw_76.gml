// 如果 surface 不存在，则创建
// if (!surface_exists(package_surface)) {
//     package_surface = surface_create(
//     cols * col_width + extra_w ,
//     visible_rows * row_height + extra_h - 60)
// }
if (!surface_exists(card_surface)) {
    // 创建表面用于绘制圆形头像
    card_surface = surface_create(600,815);
}