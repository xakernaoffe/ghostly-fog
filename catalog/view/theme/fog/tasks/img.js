'use strict';

module.exports = function (gulp, $, CONFIG) {
  /**
   * DEV
   */
  gulp.task('img:dev', function () {
    return gulp.src(CONFIG.PATH.SRC.IMG, {since: gulp.lastRun('img:dev')})
      .pipe($.imagemin())
      .pipe(gulp.dest(CONFIG.PATH.DIST.IMG))
      .pipe($.copy('../../../html/assets'));
  });
  /**
   * PROD
   */
  gulp.task('img:prod', function () {
    return gulp.src(CONFIG.PATH.SRC.IMG, {since: gulp.lastRun('img:prod')})
      .pipe($.imagemin())
      .pipe(gulp.dest(CONFIG.PATH.DIST.IMG));
  });
};
