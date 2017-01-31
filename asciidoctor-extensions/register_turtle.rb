require 'pygments'

::Pygments::Lexer.create name: 'Turtle', aliases: ['turtle'],
    filenames: ['*.ttl'], mimetypes: ['text/turtle', 'application/x-turtle']
