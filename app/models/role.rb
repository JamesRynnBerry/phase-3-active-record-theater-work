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
        lead = self.auditions.where(hired: true)
        if lead == nil
            puts "no actors"
        else 
            lead
    end

end