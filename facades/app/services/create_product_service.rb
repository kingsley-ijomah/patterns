class CreateProductService
  def self.build
    new(CreateProductForm.build)
  end

  def initialize(create_form_service)
    @create_form_service = create_form_service
  end

  def call(params)
    success, object = create_form_service.call(params)
    if success 
      object.save! 
    else
      [success, object]
    end
  end

  private

  attr_reader :create_form_service
end
