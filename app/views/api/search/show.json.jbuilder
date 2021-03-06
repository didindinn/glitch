json.set! :users do
  @users.each do |user|
    json.set! user.username do
      json.partial! user
    end
  end
end
json.set! :videos do
  @videos.each do |video|
    json.set! video.id do
      json.partial! video
    end
  end
end
json.set! :count do
  json.set! :users, @user_count
  json.set! :videos, @video_count
end