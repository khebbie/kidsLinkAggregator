require "spec_helper"

describe AdminMailer do
  describe "new_link" do
    let(:mail) { AdminMailer.new_link }

    it "renders the headers" do
      mail.subject.should eq("New link")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
