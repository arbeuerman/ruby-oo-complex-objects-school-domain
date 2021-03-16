require 'pry'

# code here!

class School

    attr_reader :roster

    def initialize name 
        @roster = {}
        @name = name
    end

    def add_student(student_name, grade_level)
        if @roster.has_key? grade_level
            @roster[grade_level] << student_name
        else
            @roster[grade_level] = []
            @roster[grade_level] << student_name
        end 
    end

    def grade grade_level
        @roster.fetch(grade_level)        
    end 

    def sort
        @roster.each do |grade, students|
            students.sort!
        end 
    end 
    
end 

#west = School.new #("Madison West High School")
#binding.pry 