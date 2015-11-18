module.exports =
  dev:
    files: [
      # copy app js
      expand: true
      cwd:    "<%= dirs.base %>"
      src:    "<%= app.js.src %>"
      dest:   "<%= dirs.build %>"
    ,
      # copy app bower js
      expand: true
      cwd:    "<%= dirs.base %>"
      src:    "<%= app.js.lib %>"
      dest:   "<%= dirs.build %>"
    ,
      # copy media/pictures/fonts
      expand: true
      cwd:    "<%= dirs.base %>/assets"
      src:    ["**/*"]
      dest:   "<%= dirs.build %>/assets"
    ,
      # copy app manifests, configs, crawlers, etc
      expand: true
      cwd:    "<%= dirs.base %>/"
      src:    "<%= app.assets %>"
      dest:   "<%= dirs.build %>/"
    ]

  prod:
    files: [
      ###
        prod mostly just copies assets (.txt, .mov, .mp3, etc)
        everything else is crunched and put in the build dir
      ###
      expand: true
      cwd:    "<%= dirs.base %>/"
      src:    "<%= app.assets %>"
      dest:   "<%= dirs.build %>/"
    ]