namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    
    # 1.  Scheduled to run every Sunday at 5pm
    # 2.  Iterate ofver all employees
    # 3.  Skip AminUsers
    # 4.  Send a message htat has instructions and a link to log time

    #User.all each do |user|
      #SmsTool.send_sms()
    #end
    #number: "111-222-5555"
    #number:"1112225555"
    # No spaces or dashes
    # Exactly  10 characters
    # all characters have to be a number
  end
end
