require "spec_helper"

describe "Autocomplete" do
  context "Post" do
    it "should return matching titles" do
      Post.autocomplete(:title, 'a').map(&:title).should include('Alpha')
    end
    it "should not return non-matching titles" do
      Post.autocomplete(:title, 'b').map(&:title).should_not include('Charile')
    end
  end
end