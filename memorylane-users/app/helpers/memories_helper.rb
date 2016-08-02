module MemoriesHelper
  def memory_button_color(memory_type)
    case memory_type
    when 'Trip'
      'green'
    when 'Concert'
      'blue'
    when 'Achievement'
      'pink'
    end
  end

  def memory_pin_name(memory_type)
    case memory_type
    when 'Trip'
      'icons/pin-map.svg'
    when 'Concert'
      'icons/pin-microphone.svg'
    when 'Achievement'
      'icons/pin-medal.svg'
    else
      'memoryrandom'
    end
  end
end
