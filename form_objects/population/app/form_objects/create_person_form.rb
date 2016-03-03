class CreatePersonForm
  include ActiveModel::Model

  attr_accessor :firstname, :lastname, :age, :gender

  validates :firstname, :lastname, :age, :gender, presence: true

  def save
    begin
      persist! if valid?
    rescue
      false
    end
  end

  def self.model_name
    ActiveModel::Name.new(self, nil, "Person")
  end

  private

  def persist!
    Person.create!(firstname: firstname, lastname: lastname, age: age, gender: gender)
  end
end
