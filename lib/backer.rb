class Backer
    attr_reader :name, :backed_projects
  
  
    def initialize(name)
      @name = name
    end
  
    def backed_projects
      pbs = ProjectBacker.all.select {|projectbacker| projectbacker.backer == self}
      pbs.map {|projectbacker| projectbacker.project}
    end
  
    def back_project(project)
      ProjectBacker.new(project, self)
    end
  
end