Rails.application.routes.draw do
  
  get("/", {controller => "math", :action => "calculation"})
end
