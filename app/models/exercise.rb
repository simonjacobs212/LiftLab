class Exercise < ApplicationRecord
    belongs_to :workout

    validates_presence_of :workout_id

    before_save :calculate_one_rep
    after_save :convert_one_rep


    def calculate_one_rep
        case self.reps
            when 1
                self.one_rep = self.load * 1
            when 2
                self.one_rep = self.load * 1.05
            when 3
                self.one_rep = self.load * 1.08
            when 4
                self.one_rep = self.load * 1.11
            when 5
                self.one_rep = self.load * 1.15
            when 6
                self.one_rep = self.load * 1.18
            when 7
                self.one_rep = self.load * 1.2
            when 8
                self.one_rep = self.load * 1.25
            when 9
                self.one_rep = self.load * 1.30
            when 10
                self.one_rep = self.load * 1.33
            when 11
                self.one_rep = self.load * 1.43
            when 12
                self.one_rep = self.load * 1.49
            when 15
                self.one_rep = self.load * 1.54
        end
    end

    def convert_one_rep
        self.one_rep.to_i
    end
end
