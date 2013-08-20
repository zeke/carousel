module.exports = (grunt) ->

  grunt.initConfig

    coffee:
      app:
        options:
          bare: false
          join: true
        files:
          'index.js': ['index.coffee']

    watch:
      coffee:
        files: ['index.coffee']
        tasks: ['coffee']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.registerTask 'default', ['watch']