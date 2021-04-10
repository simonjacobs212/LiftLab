class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :username, :age, :height, :weight, :id, :exercises, :workouts
end
