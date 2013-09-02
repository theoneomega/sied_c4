namespace :seed do
  desc "Pick a random user as the winner"
  task :update => :environment do

    Route.where(:branch_id => 1).each do |route|
      total_due = 0
      route.orders.each do |order|
        order.update_attribute(:loaded_to_route, true)
        total_due = order.total_due + total_due
      end
      route.update_attributes(:total_route_due => total_due, :current_route_due => 0.0, :total_route_import => 0.0)
    end
    
    Route.where(:branch_id => 2).each do |route|
      total_due = 0
      route.orders.each do |order|
        order.update_attribute(:loaded_to_route, true)
        total_due = order.total_due + total_due
      end
      route.update_attributes(:total_route_due => total_due, :current_route_due => 0.0, :total_route_import => 0.0)
    end
    
  end
end