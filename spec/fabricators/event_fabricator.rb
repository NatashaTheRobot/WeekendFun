# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  location   :string(255)
#  start_time :datetime
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

time = Time.now

Fabricator(:event) do
    title       "Artichoke Bread"
    location    "Pascadero, CA"
    start_time  time.strftime("%A, %B #{time.day.ordinalize}")
    image       "https://img.skitch.com/20120922-c373ihgy6nux34uuanndaphe2e.jpg"
end
