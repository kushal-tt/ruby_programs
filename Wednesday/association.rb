# program on association
#example 1

class Student
    attr_reader :name
  
    def initialize(name)
      @name = name
    end
end
  
class Course
    attr_reader :name, :students
  
    def initialize(name)
      @name = name
      @students = []
    end
  
    def enroll(student)
      @students << student
    end
end
  
  student1 = Student.new("Alice")
  student2 = Student.new("Bob")
  course = Course.new("Ruby Programming")
  
  
  course.enroll(student1)
  course.enroll(student2)
  puts "Students enrolled in #{course.name}: #{course.students.map(&:name).join(', ')}"
  
#example 2
class Author
    attr_reader :name

    def initialize(name)
        @name = name
    end
end
  
class Book
    attr_reader :title, :author
  
    def initialize(title, author)
      @title = title
      @author = author
    end
end
  

  author1 = Author.new("J.K. Rowling")
  author2 = Author.new("George Orwell")
  book1 = Book.new("Harry Potter", author1)
  book2 = Book.new("1984", author2)
  
  puts "#{book1.title} is written by #{book1.author.name}"
  puts "#{book2.title} is written by #{book2.author.name}"
  
  