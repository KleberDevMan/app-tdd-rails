# Preview all emails at http://localhost:3000/rails/mailers/animal
class AnimalPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/animal/confirmation
  def confirmation
    animal = Animal.first
    AnimalMailer.with(animal: animal).confirmation
  end

end
