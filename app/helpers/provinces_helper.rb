module ProvincesHelper
  def provinces_for_select
    Province.all.collect {|m| [m.name]}
  end
end
