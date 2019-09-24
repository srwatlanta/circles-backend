# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(name: 'shawn', username: 'srwatlanta', password: 'password', email: 'srwatl@gmail.com', member_since: '2014', img_url: 'https://media.licdn.com/dms/image/C5603AQFNFa2LlapzAg/profile-displayphoto-shrink_200_200/0?e=1574294400&v=beta&t=7BSNK2yqhAn9-8t32ep1agRByOBsZgfRwhtTpBLIRiE')
# User.create(name: 'christian', username: 'callim', password: 'password', email: 'cxian@gmail.com', member_since: '2017', img_url: 'https://media.licdn.com/dms/image/C5603AQEZM0VQfTLcjA/profile-displayphoto-shrink_200_200/0?e=1574294400&v=beta&t=-k9b-PnJAuborZTzbo_Ini53lgaSM4NUfCfowQJZIQY')
# User.create(name: 'logan', username: 'lja012', password: 'password', email: 'lja012@gmail.com', member_since: '2019', img_url: 'https://media.licdn.com/dms/image/C5603AQEV9Hv2bWJdbg/profile-displayphoto-shrink_200_200/0?e=1574294400&v=beta&t=jSTxTOxW_f_5I1_9Akr2K6s63yMyLDM2aNdS5Bblpzg')
# User.create(name: 'amanda', username: 'amandapanda', password: 'password', email: 'amandathedev@gmail.com', member_since: '2017', img_url: 'https://media.licdn.com/dms/image/C5603AQGeKtAjG7RUgw/profile-displayphoto-shrink_200_200/0?e=1574294400&v=beta&t=Dc8_VSLW6lo9I2OvT5LK5Vuth0p3Fh4yeO6n0sfiKZ4')

# Circle.create(name: 'basketball boyz', img_url: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fa.espncdn.com%2Fcombiner%2Fi%3Fimg%3D%2Fredesign%2Fassets%2Fimg%2Ficons%2FESPN-icon-basketball.png%26w%3D288%26h%3D288%26transparent%3Dtrue&imgrefurl=https%3A%2F%2Fwww.espn.com%2Fncw%2F&docid=V0985sHcjzhkTM&tbnid=eEJjkypWfk5OyM%3A&vet=10ahUKEwjjnvbVx93kAhU1sXEKHVqRAoIQMwiHASgJMAk..i&w=288&h=288&safe=off&bih=882&biw=1680&q=basketball&ved=0ahUKEwjjnvbVx93kAhU1sXEKHVqRAoIQMwiHASgJMAk&iact=mrc&uact=8' )
# Circle.create(name: 'future art experts', img_url: 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjS3Nzmx93kAhXLFjQIHQpmDsYQjRx6BAgBEAQ&url=https%3A%2F%2Fmymodernmet.com%2Fclaude-monet-paintings%2F&psig=AOvVaw1ErIRq_HUMys3s0IpRK2DO&ust=1569005686212235')

# Friendship.create(user_id: 1, friend_id: 2)
# Friendship.create(user_id: 1, friend_id: 3)
# Friendship.create(user_id: 1, friend_id: 4)
# Friendship.create(user_id: 2, friend_id: 4)
# Friendship.create(user_id: 3, friend_id: 4)

# CircleInvite.create(circle_id: 1, user_id: 1)
# CircleInvite.create(circle_id: 1, user_id: 3)
# CircleInvite.create(circle_id: 2, user_id: 1)
# CircleInvite.create(circle_id: 2, user_id: 2)
# CircleInvite.create(circle_id: 2, user_id: 4)

# Event.create(name: 'Wednesday Basketball', location: '555 Kinzie St.', date: '9/25/2019', start_time: '7pm', price: 'free', user_id: 3, img_url: 'https://i.pinimg.com/originals/6b/c0/92/6bc092e3b6e488fca74b440df9d4c14e.jpg' )
# Event.create(name: 'Second City', location: 'Second City Chicago', date: '10/4/2019', start_time: '6:30pm', price: '$25', user_id: 3, img_url: 'https://us-east.manta.joyent.com/condenast/public/cnt-services/production/2015/06/26/558d7bb03f478ebd25626c2e_chicago-second-city-cr-courtesy.jpg')
# Event.create(name: 'GOING to learn Artz', location: 'AIC', date: '9/10/2019', start_time: '10:30am', price: '$25', user_id: 1, img_url: 'https://www.terraamericanart.org/wp-content/uploads/2015/08/AIC-Facade-North-View-1024x666.jpg')

Invite.create(status: 'invited', circle_id: 1, user_id: 1, event_id: 1)
Invite.create(status: 'going', circle_id: 1, user_id: 3, event_id: 1)
Invite.create(status: 'going', circle_id: 2, user_id: 1, event_id: 2)
Invite.create(status: 'going', circle_id: 2, user_id: 2, event_id: 2)
Invite.create(status: 'invited', circle_id: 2, user_id: 4, event_id: 2)
Invite.create(status: 'not going', circle_id: 2, user_id: 1, event_id: 3)
Invite.create(status: 'invited', circle_id: 2, user_id: 2, event_id: 3)
Invite.create(status: 'invited', circle_id: 2, user_id: 4, event_id: 3)
