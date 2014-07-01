module.exports = function(grunt) {
    var wathcfiles = ["./*.html", "./*.js", "./*.pde"];


    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        watch: {
            options: {
                livereload: true,
            },
            dev: {
                files: wathcfiles

            }
        },
        connect: {
            server: {
                options: {
                    port: 8000,
                    livereload: true,
                    base: './'
                }
            }
        }


    });


    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-connect');

    grunt.registerTask('dev', ['connect','watch:dev']);
    grunt.registerTask('default', ['dev']);



};