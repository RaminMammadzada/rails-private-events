module EventsHelper
  def display_errors(event)
    if event.errors.any?
      pluralize(event.errors.count, 'error')
      messages = []
      event.errors.full_messages.each do |msg|
        messages.push(msg)
      end

      error_counts_message = content_tag(:h2, event.errors.count.to_s + ' errors prohibited this post from being saved:',
                                         class: 'total_errors')
      error_message = content_tag(:ul, class: 'all_errors') do
        messages.each { |msg| concat content_tag(:li, msg) }
      end

      all_error_contents = content_tag(:div, error_counts_message + error_message, class: 'all_error_contents')

      return all_error_contents
    end

    nil
  end

  def display_join(current_user, event)
    if current_user.attended_events.include? event
      content_tag(:td, (link_to 'Unjoin', destroy_path(event_id: event.id, attendee_id: current_user.id)))
    else
      content_tag(:td, (link_to 'Join', join_path(event_id: event.id)))
    end
  end

  def creator_destroy(current_user, event)
    if current_user == event.creator
      content_tag(:td, (link_to 'Destroy', event, method: :delete, data: { confirm: 'Are you sure?' }))
    end
  end

  def operation_name(event)
     event.title == nil ? 'Create Event' : 'Update Event'
  end

end
