def nyc_pigeon_organizer(data)
  names = data[:gender].values.flatten

  names.each_with_object({}) do |name, pigeons_by_name|
    pigeons_by_name[name] = {}

    data.each_pair do |feature, options|
      pigeons_by_name[name][feature] = []

      options.each_pair do |option, pigeons|
        pigeons_by_name[name][feature] << option.to_s if pigeons.include? name
      end
    end
  end
end
