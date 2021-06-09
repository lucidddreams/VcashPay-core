/**
 * @depends {nrs.js}
 */
var NRS = (function (NRS, $, undefined) {

    NRS.pages.buy_vcp = function(){
        NRS.sendRequest("getAliases+", {
            "account": NRS.account,
            "firstIndex": NRS.pageNumber * NRS.itemsPerPage - NRS.itemsPerPage,
            "lastIndex": NRS.pageNumber * NRS.itemsPerPage
        }, function (response) {
        NRS.pageLoaded();
    });
    };


    NRS.setup.buy_vcp = function() {
        var sidebarId = 'sidebar_buy_vcp';
            var options = {
                "id": sidebarId,
                "titleHTML": '<i class="fa fa-plug"></i> <span data-i18n="buy_vcp">Buy VCP</span>',
                "page": 'buy_vcp',
                "desiredPosition": 120
            };
            NRS.addSimpleSidebarMenuItem(options);
        
    };
   

	return NRS;
}(NRS || {}, jQuery));