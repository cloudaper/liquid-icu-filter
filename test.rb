#require 'liquid-icu-filter'

#               # Renders the output => "hi tobi"




# require 'message_format'

# print MessageFormat.new('aha { test } aha', 'en').format({ :test => 'Meh' })



require 'liquid'
require 'message_format'

module Icu

  # Convert the first letter of an input string to upcase and keep the rest
  def upcase_first(input)
    input.to_s.sub(/\S/, &:upcase)
  end

  #def icu(path, icu_args, locale = 'en')
  #  MessageFormat.new(path, locale).format(Liqaml.extract_hash(icu_args))
  #end

  def icu(input, heh)
    MessageFormat.new(input, 'en').format(heh)
  end



  def testicu(input, heh)
    MessageFormat.new(input, 'en').format(eval('{ '+heh+' }'))
  end

end

Liquid::Template.register_filter(Icu)

meh = { :heh => 'baf' }

@template = Liquid::Template.parse("hi {{ name | icu: muh }}")  # Parses and compiles the template
print @template.render( 'name' => 'aha { test } aha', 'muh' => { :test => 'baf' } )


@template = Liquid::Template.parse("{{ name | testicu: \":test => 'hia'\" }}")
print @template.render( 'name' => 'aha { test } aha' )

@template = Liquid::Template.parse('{{ name | testicu: ":test => \'hoa\'" }}')
print @template.render( 'name' => 'aha { test } aha' )