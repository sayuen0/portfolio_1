module MemberSearchService
  extend ActiveSupport::Concern

  class_methods do
    def intro
      self.where("id >= 10").count
    end
  end
end