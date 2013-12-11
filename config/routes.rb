EmployeeManagementSystem::Application.routes.draw do
    root to: "home#index" 
    resources  :equipments, :employees do resources :borrowed_equipments end

end