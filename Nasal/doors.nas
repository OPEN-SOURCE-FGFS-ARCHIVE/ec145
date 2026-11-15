# =====
# Doors
# =====

Doors = {};

Doors.new = func {
   obj = { parents : [Doors],
           pilot : aircraft.door.new("instrumentation/doors/pilot", 8.0),
		   copilot : aircraft.door.new("instrumentation/doors/copilot", 8.0),
           passengerleft : aircraft.door.new("instrumentation/doors/passengerleft", 8.0),
		   passengerright : aircraft.door.new("instrumentation/doors/passengerright", 8.0),
           clamshell : aircraft.door.new("instrumentation/doors/clamshell", 1.0),
          
         };
   return obj;
};

Doors.crewexport = func {
   me.pilot.toggle();
}

Doors.crewexport = func {
   me.copilot.toggle();
}

Doors.passengerexport = func {
   me.passengerleft.toggle();
}

Doors.passengerexport = func {
   me.passengerright.toggle();
}

Doors.parachuteexport = func {
   me.clamshell.toggle();
}



# ==============
# Initialization
# ==============

# objects must be here, otherwise local to init()
doorsystem = Doors.new();

