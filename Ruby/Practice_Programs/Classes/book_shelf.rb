class Book
    attr_accessor:title
    attr_accessor:author

    def initialize(title,author)
        @title=title
        @author=author
    end

    def getTitle
        return "Title: #{@title}"
    end

    def getAuthor
        return "Author: #{@author}"
    end

end

pp=Book.new("Pride and Prejudice","Jane Austen")
h=Book.new("Hamlet","William Shakespeare")
wp=Book.new("War and Peace","Leo Tolstoy")
hp=Book.new("Harry Potter","J.K. Rowling")
puts hp.title
puts hp.author
puts hp.getTitle
puts hp.getAuthor
