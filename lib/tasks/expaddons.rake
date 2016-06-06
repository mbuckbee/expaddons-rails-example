namespace :expaddons do
  desc "Will add the Test (free) Plan for the Expedited Addons"
  task setup: :environment do

  	puts "Creating new Heroku App"
  	`heroku create`

  	puts "Provisioning Test Add-ons"
  	"qrackajack,weightsandmeasures,scrapetastic,useragentidentifier,ipinvestigator,urlxray,resizer,webtopdf,watermarker,iptoearth,geocody,realemail".split(",").each do |ao|
  		puts ao
  		#system("heroku addons:create #{ao}:test")
	end  		
	
	#`heroku addons:create geocody:test`

	puts "Please open the homepage of your new Heroku App"	

  end

end
