class Animal < ApplicationRecord
  validates :name, :type_animal, presence: true

  after_create :send_confirmation

  private

  def send_confirmation
    AnimalMailer.with(animal: self).confirmation.deliver_later
  end
end
