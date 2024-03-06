params[
   ["_display", nil, [displayNull]],
   ["_desk",    nil, [objNull]],
   ["_camera",  nil]
];

private _deliveryBox = _desk getVariable ["SHM_deliveryBox", objNull];
private _stateKeyValues = [
   ["display",             _display],
   ["desk",                _desk],
   ["delivery_box",        _deliveryBox],
   ["item_model_3d",       objNull],
   ["camera",              _camera],
   ["category",            "Select a category"],
   ["current_item",        ""],
   ["selected_items",      []],
   ["trade_price",          0],
   ["updt_product_list",   SHM_fnc_updateProductList],
   ["update_description",  SHM_fnc_updateDescriptionBox],
   ["render_item",         SHM_fnc_renderItem3D],
   ["add_purchase",        SHM_fnc_addPurchase],
   ["remove_purchase",     SHM_fnc_removePurchase],
   ["total_trade_cost",    SHM_fnc_getTradePriceLb],
   ["update_trade_frame",  SHM_fnc_updateTradeFrame],
   ["deliver_purchase",    SHM_fnc_deliverPurchase],
   ["charge_purchase",     SHM_fnc_chargePurchase],
   ["update_buy_button",   SHM_fnc_updateBuyButton],
   ["close_shop",          SHM_fnc_closeShop]
];

private _state = createHashmapObject [_stateKeyValues];
localNameSpace setVariable ["SHM_guiState", _state];

_state;