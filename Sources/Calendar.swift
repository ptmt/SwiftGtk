//
//  Copyright © 2016 Tomas Linhart. All rights reserved.
//

import CGtk

public class Calendar: Widget {
    public override init() {
        super.init()

        widgetPointer = gtk_calendar_new()
    }

    public var year: Int {
        get {
            if let widget = widgetPointer {
              return getProperty(pointer: UnsafeMutablePointer(widget), name: "year")
            } else {
              return 0
            }
        }
        set {
            if let widget = widgetPointer {
              setProperty(pointer: UnsafeMutablePointer(widget), name: "year", newValue: newValue)
            }
        }
    }

    public var showHeading: Bool {
        get {
            if let widget = widgetPointer {
              return getProperty(pointer: UnsafeMutablePointer(widget), name: "show-heading")
            } else {
              return false
            }
        }
        set {
            if let widget = widgetPointer {
              setProperty(pointer: UnsafeMutablePointer(widget), name: "show-heading", newValue: newValue)
            }        
        }
    }
}
