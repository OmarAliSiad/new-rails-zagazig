class UsersController  < ApplicationController
  def index
    @users = [ { name: "omar ali", email: "omarali@gmail.com", age: "23" } ]
  end
end
