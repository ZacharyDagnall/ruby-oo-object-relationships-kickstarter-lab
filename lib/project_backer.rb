class ProjectBacker

    attr_accessor :project, :backer
    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        self.save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    




end