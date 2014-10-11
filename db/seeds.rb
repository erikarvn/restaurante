# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


rol1 =Rol.create(:name => 'Administrador') #1
rol2 =Rol.create(:name => 'Asistente') #2
rol3 =Rol.create(:name => 'Barman') #3
rol4 =Rol.create(:name => 'Mesero')  #4
rol5 =Rol.create(:name => 'Chef') #5


main_admin = User.create(:email => 'admin@gmail.com', :password => '12345678', 
       :password_confirmation => '12345678', :name => 'admin', :lastname => 'admin' , :telf => '123456789', :rol_id => '1')
main_admin = User.create(:email => 'asistente@gmail.com', :password => '12345678', 
       :password_confirmation => '12345678', :name => 'asistente', :lastname => 'asistente' , :telf => '123456789', :rol_id => '2')
main_admin = User.create(:email => 'barman@gmail.com', :password => '12345678', 
       :password_confirmation => '12345678', :name => 'barman', :lastname => 'barman' , :telf => '123456789', :rol_id => '3')
main_admin = User.create(:email => 'mesero@gmail.com', :password => '12345678', 
       :password_confirmation => '12345678', :name => 'mesero', :lastname => 'mesero' , :telf => '123456789', :rol_id => '4')
main_admin = User.create(:email => 'chef@gmail.com', :password => '12345678', 
       :password_confirmation => '12345678', :name => 'chef', :lastname => 'chef' , :telf => '123456789', :rol_id => '5')
