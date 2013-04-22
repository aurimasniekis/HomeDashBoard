class PaymentCategory < ActiveRecord::Base
  has_many :children, class_name: 'PaymentCategory', foreign_key: :payment_category_id, dependent: :destroy
  belongs_to :parent, class_name: 'PaymentCategory', foreign_key: :payment_category_id

  scope :first_level, -> { where(payment_category_id: nil) }
  scope :get_all, -> { where('1=1') }

  def self.level(level=nil)
    self.where(payment_category_id: level).load
  end

  def build_tree
    upper = self
    output = []
    while upper != nil do
      output.prepend(upper)
      upper = upper.parent
    end
    output
  end

end
