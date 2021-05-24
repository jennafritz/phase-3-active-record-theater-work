class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |audition_instance|
            audition_instance.actor
        end
    end

    def locations
        self.auditions.map do |audition_instance|
            audition_instance.location
        end
    end

    def lead
        lead = self.auditions.find do |audition_instance|
            audition_instance.hired = true
        end
        if lead
            lead
        else
            "No actor has been hired for this role."
        end
    end

    def understudy
        understudy = self.auditions.select do |audition_instance|
            audition_instance = true
        end.second
        if understudy
            understudy
        else
            "No actor has been hired for understudy for this role."
        end
    end
end