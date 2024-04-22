    object_const_def
    
PortCitySignScript:
    opentext
    writetext PortCitySignTextWelcome
    playsound SFX_ITEM
	waitsfx
    writetext PortCitySignTextApology
    waitbutton
    closetext
    end

PortCitySignTextWelcome:
    text "Welcome to the"
    line "Port City!"
    
    done

PortCitySignTextApology:
    text "Try interacting"
    line "with the boat."
    
    para "If you don't see"
    line "any boat, then it"
    
    para "means it's not"
    line "implemented yet"
    done

PortCity_MapScripts:
    def_scene_scripts

    def_callbacks

PortCity_MapEvents:
    db 0, 0 ; filler

    def_warp_events

    def_coord_events

    def_bg_events
	bg_event 22, 20, BGEVENT_READ, PortCitySignScript

    def_object_events