var gulp        = require('gulp');
var stylus      = require('gulp-stylus');
var browserSync = require("browser-sync").create();
var reload      = browserSync.reload;
var plumber     = require('gulp-plumber');
var watch       = require('gulp-watch');
var jade        = require('gulp-jade');
var coffee      = require('gulp-coffee');

gulp.task('coffee', function() { 
    gulp.src(['./src/coffee/*.coffee'])
      .pipe(plumber())
      .pipe(coffee())
      .pipe(gulp.dest('./dist/js'))
      .pipe(reload({stream: true}));
});

gulp.task('stylus', function() {
    gulp.src(['./src/stylus/*.styl', './src/stylus/**/*.styl'])
      .pipe(plumber())
      .pipe(stylus())
      .pipe(gulp.dest('./dist/css'))
      .pipe(reload({stream: true}));
});
gulp.task('default', ['stylus','jade', 'coffee', 'copy']);

gulp.task('jade', function () {
  gulp.src(['src/jade/*.jade','src/jade/**/*.jade'])
    .pipe(plumber())
    .pipe(jade({
      pretty: true
    }))
    .pipe(gulp.dest('./dist/'))
    .pipe(reload({stream: true}));
});

gulp.task('copy', function() {
  gulp.src('src/images/**').pipe(gulp.dest('dist/images')).pipe(reload({stream: true}));
  gulp.src('src/js/**').pipe(gulp.dest('dist/js')).pipe(reload({stream: true}));
});

gulp.task('watch', ['default'], function() {
  browserSync.init({
    server: {
      baseDir: "./dist"
    }
  });
  gulp.watch(['src/stylus/*.styl', 'src/stylus/**/*.styl'], ['stylus']);
  gulp.watch(['src/jade/*.jade', 'src/jade/**/*.jade'], ['jade']);
  gulp.watch(['src/coffee/*.coffee'], ['coffee']);
  gulp.watch(['src/images/**'], ['copy']);
});