class Person < ApplicationRecord
    has_and_belongs_to_many :locations
    has_and_belongs_to_many :affiliations
    
    validates :first_name, presence: true
    # validates :last_name, :weapon, :vehicle, allow_nil: true
    # validates :weapon, allow_nil: true
    # validates :vehicle, allow_nil: true
    # validate :at_least_one_affiliation

    before_save :titlecase_names

#   private

#   def at_least_one_affiliation
#     errors.add(:affiliation, 'should be present') if affiliations.empty?
#   end

  def titlecase_names
    self.first_name = first_name.titlecase if first_name.present?
    self.last_name = last_name.titlecase if last_name.present?
  end
end
