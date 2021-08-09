package com.company.pizza.web.screens.topings;

import com.haulmont.cuba.gui.screen.*;
import com.company.pizza.entity.Topings;

@UiController("pizza_Topings.edit")
@UiDescriptor("topings-edit.xml")
@EditedEntityContainer("topingsDc")
@LoadDataBeforeShow
public class TopingsEdit extends StandardEditor<Topings> {
}