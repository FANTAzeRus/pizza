package com.company.pizza.web.screens.topings;

import com.haulmont.cuba.gui.screen.*;
import com.company.pizza.entity.Topings;

@UiController("pizza_Topings.browse")
@UiDescriptor("topings-browse.xml")
@LookupComponent("topingsesTable")
@LoadDataBeforeShow
public class TopingsBrowse extends StandardLookup<Topings> {
}