class AMemberHasManyArticles < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :member, index: true
  end
end
