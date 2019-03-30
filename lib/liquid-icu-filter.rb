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

  def icu(input)
    MessageFormat.new('aha { test } aha', 'en').format({ :test => 'Meh' })
  end

end

Liquid::Template.register_filter(Icu)
