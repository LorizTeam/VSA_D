/***********************
* Adobe Edge Animate Composition Actions
*
* Edit this file with caution, being careful to preserve 
* function signatures and comments starting with 'Edge' to maintain the 
* ability to interact with these actions from within Adobe Edge Animate
*
***********************/
(function($, Edge, compId){
var Composition = Edge.Composition, Symbol = Edge.Symbol; // aliases for commonly used Edge classes

   //Edge symbol: 'stage'
   (function(symbolName) {
      
      
      Symbol.bindElementAction(compId, symbolName, "${architect}", "mouseover", function(sym, e) {
         sym.$("architect").hide();
         sym.$("vsalogo2").show();
         
         sym.$("vsctlogo2").hide();
         sym.$("engineerin").show();
         
         
         sym.$("wvsCopy").hide();
         sym.$("interior").show();
         
         sym.$("drawing3").show(); 
         sym.$("plzlogo2").hide();

      });
      //Edge binding end

      Symbol.bindElementAction(compId, symbolName, "${vsalogo2}", "mouseout", function(sym, e) {
         sym.$("vsalogo2").hide(); 
         sym.$("architect").show();

      });
      //Edge binding end

      

      

      Symbol.bindTriggerAction(compId, symbolName, "Default Timeline", 4710, function(sym, e) {
         // insert code here
         // Hide an element 
         sym.$("vsalogo2").hide();

      });
      //Edge binding end

      Symbol.bindElementAction(compId, symbolName, "${vsctlogo2}", "mouseout", function(sym, e) {
         sym.$("vsctlogo2").hide(); 
         sym.$("engineerin").show();

      });
      //Edge binding end

      Symbol.bindElementAction(compId, symbolName, "${vsctlogo2}", "click", function(sym, e) {
         window.open("vsct.jsp", "_blank");
         

      });
      //Edge binding end

      Symbol.bindElementAction(compId, symbolName, "${engineerin}", "mouseover", function(sym, e) {
         sym.$("engineerin").hide();
         sym.$("vsctlogo2").show();
         
         
         sym.$("vsalogo2").hide();
         sym.$("architect").show();
         
         
         sym.$("wvsCopy").hide();
         sym.$("interior").show();
         
         sym.$("drawing3").show(); 
         sym.$("plzlogo2").hide();

      });
      //Edge binding end

      Symbol.bindElementAction(compId, symbolName, "${interior}", "mouseover", function(sym, e) {
         sym.$("interior").hide();
         sym.$("wvsCopy").show();
         
         
         sym.$("vsctlogo2").hide();
         sym.$("engineerin").show();
         
         
         sym.$("vsalogo2").hide();
         sym.$("architect").show();
         
         
         sym.$("drawing3").show(); 
         sym.$("plzlogo2").hide();

      });
      //Edge binding end

      

      

      Symbol.bindElementAction(compId, symbolName, "${plzlogo2}", "click", function(sym, e) {
         window.open("plz.jsp", "_blank");

      });
      //Edge binding end

      Symbol.bindElementAction(compId, symbolName, "${plzlogo2}", "mouseout", function(sym, e) {
         sym.$("plzlogo2").hide(); 
         sym.$("drawing3").show();
         

      });
      //Edge binding end

      Symbol.bindElementAction(compId, symbolName, "${drawing3}", "mouseover", function(sym, e) {
         sym.$("plzlogo2").show(); 
         sym.$("drawing3").hide();
         
         
         sym.$("vsctlogo2").hide();
         sym.$("engineerin").show();
         
         
         sym.$("vsalogo2").hide();
         sym.$("architect").show();
         
         
         sym.$("wvsCopy").hide();
         sym.$("interior").show();

      });
      //Edge binding end

      Symbol.bindElementAction(compId, symbolName, "${wvsCopy}", "click", function(sym, e) {
         window.open("wvs.jsp", "_blank");
         
         

      });
      //Edge binding end

      Symbol.bindElementAction(compId, symbolName, "${wvsCopy}", "mouseover", function(sym, e) {
         sym.$("wvsCopy").show(); 
         sym.$("interior").hide();
         
         

      });
      //Edge binding end

      Symbol.bindElementAction(compId, symbolName, "${vsalogo2}", "click", function(sym, e) {
         // insert code for mouse click here
         // Navigate to a new URL in a new window
         // (replace "_blank" with appropriate target attribute)
         window.open("vsa.jsp", "_blank");
         

      });
      //Edge binding end

   })("stage");
   //Edge symbol end:'stage'

})(window.jQuery || AdobeEdge.$, AdobeEdge, "EDGE-1385226");