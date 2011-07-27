module ApplicationHelper
  def display_params keys
    params.except(:controller, :action).
        keys.inject('') do |result, key|
          result << "<p>#{key.to_s.titleize}: #{ params[key] }</p>" if params.keys.include? key
        end
  end
end
