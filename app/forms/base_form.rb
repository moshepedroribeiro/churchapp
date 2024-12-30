class BaseForm
  include ActiveModel::Model
  include ActiveModel::Attributes
  include ActiveModel::Dirty
  include ActiveModel::Validations::Callbacks

  def save
    return false unless valid?(persisted? ? :update : :create)

    submit

    errors.empty?
  end

  def submit
    raise NotImplementedError
  end

  def new_record?
    !persisted?
  end

  def persisted?
    false
  end
end
