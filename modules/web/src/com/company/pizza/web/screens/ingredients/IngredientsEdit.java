package com.company.pizza.web.screens.ingredients;

import com.haulmont.cuba.gui.screen.*;
import com.company.pizza.entity.Ingredients;

@UiController("pizza_Ingredients.edit")
@UiDescriptor("ingredients-edit.xml")
@EditedEntityContainer("ingredientsDc")
@LoadDataBeforeShow
public class IngredientsEdit extends StandardEditor<Ingredients> {
}