module ApplicationHelper
  def display_params keys
    keys.inject('') do |result, key|
      result << "<p>#{key.to_s.titleize}: #{ params[key] }</p>" if params.keys.include? key
    end
  end
end
