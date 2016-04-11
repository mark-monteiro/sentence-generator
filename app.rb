# require 'file'
require 'yaml'
require 'json'
require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
    data = YAML.load(File.read('data.yml'))

    name = 'Your'
    subject, object = data['nouns'].sample(2)
    submodifier, objmodifier = data['modifiers'].sample(2)
    verb = data['verb_phrases'].sample
    # bookref = data['book_refs'].sample
    # reviewverb = data['review_verbs'].sample

    sentence1 = "The #{subject} #{submodifier} #{verb} the #{object} #{objmodifier}."
    # sentence2 = "#{name}'s #{bookref} the relationship between the #{subject} #{submodifier} and the #{object} #{objmodifier} #{reviewverb}."
end