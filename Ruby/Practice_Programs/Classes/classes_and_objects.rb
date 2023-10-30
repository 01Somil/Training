# attr_reader -> It is used as a getter method.
# attr_writer -> It is used as a setter method.
# attr_accessor -> It is combined method. (getter & setter)

class Language
  attr_reader :language_name
  attr_reader :topic_name
  attr_writer :topic_name

  def initialize(language_name, topic_name)
    @language_name = language_name
    @topic_name = topic_name
  end
end

obj = Language.new("Ruby", "Accessor Methods")
puts obj.language_name
puts obj.topic_name

obj.topic_name = "Array"
puts obj.topic_name
