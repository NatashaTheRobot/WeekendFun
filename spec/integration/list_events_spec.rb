require 'spec_helper'

describe "event listing" do
    it "displays an image of the event" do
        time = Time.now
        event = Fabricate(:event)
        visit '/'
        assert page.has_content?("Choose Your Own Adventure")
        assert page.has_content?(event.title)
        page.should page.should have_xpath("//img[@src=#{event.image}]")
        assert page.has_content?(event.location)
        assert page.has_content?(event.time)
    end
end