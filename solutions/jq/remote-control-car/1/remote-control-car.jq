def new_remote_control_car:
  # Populate the object with the required attributes
  {
     "battery_percentage": 100,
     "distance_driven_in_meters": 0,
     "nickname": null
   }
;

def new_remote_control_car($nickname):
  # Populate the object with the required attributes
  {
     "battery_percentage": 100,
     "distance_driven_in_meters": 0,
     "nickname": $nickname
  }
;

def display_distance:
  .distance_driven_in_meters | tostring + " meters"
;

def display_battery:
  "Battery " + "\(if (.battery_percentage > 0) then (.battery_percentage | tostring | "at " + . + "%") else "empty" end)"
;

def drive:
  if (.battery_percentage > 0) then 
    .distance_driven_in_meters += 20 | .battery_percentage -= 1
  end
;
