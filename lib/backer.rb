class Backer

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def project_backers
        ProjectBacker.all.select{|pb| pb.backer == self}
    end

    def backed_projects
        project_backers.map(&:project)
    end

end