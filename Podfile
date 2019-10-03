
# Podfile
 
platform :ios, '10.0'

workspace 'MovieBox.xcworkspace'

use_frameworks!
 
# My other pods
 
def pods
    pod 'Alamofire', '~> 5.0.0-rc.2'
    pod 'Kingfisher'
    pod 'NVActivityIndicatorView'

end


target 'MovieBox' do
project 'MovieBox/MovieBox.xcodeproj'
    pods
end


target 'MovieBoxAPI' do
project 'MovieBoxAPI/MovieBoxAPI.xcodeproj'
    pods
end
