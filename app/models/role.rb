class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |audition|
            audition.actor
        end
    end

    def locations 
        self.auditions.map do |audition|
            audition.location
        end
    end

    def lead
        Audition.first unless Audition.first == nil
        puts "no actor has been hired for this role"
    end

    def understudy
        Audition.second unless Audition.second == nil
        puts "no actor has been hired for understudy for this role"
    end
    
end