class LocomotiveEngineer
  def self.generate_list_of_wagons(*arguments)
    arguments
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first, second, locomotive_id, *rest = each_wagons_id
    [locomotive_id, *missing_wagons, *rest, first, second]
  end

  def self.add_missing_stops(destination, **keyword_arguments)
    destination.merge({stops: keyword_arguments.values})
  end

  def self.extend_route_information(route, more_route_information)
    route.merge(more_route_information)
  end
end
