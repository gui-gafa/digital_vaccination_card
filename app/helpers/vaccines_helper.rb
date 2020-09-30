module VaccinesHelper
  def to_currency(float)
    sprintf('R$ %.2f', float).gsub('.', ',')
  end
end
