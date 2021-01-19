class Project

    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title
        self.save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def project_backers
        ProjectBacker.all.select{|pb| pb.project == self}
    end

    def backers
        project_backers.map(&:backer)
    end

end