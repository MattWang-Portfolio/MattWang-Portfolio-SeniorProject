<%@ page  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"  %>
<jsp:useBean id="beanDB" class="bean.DBtest" scope="page"/>

<%
       
       String class_id="";
       if(session.getAttribute("account") != null){
          class_id  =  request.getParameter("classid").trim();
        }
        else{
        }
%>

<class-btn>
    <button class="ui-class ui-btn ui-shadow ui-corner-all" onclick="hiddentext('1')">移動物</button>
      <div data-role="controlgroup" class="hidden-text" id="1">
        <div class="ui-controlgroup-controls">
                <div class="text-item" id="a" onclick="item('a','<%=class_id %>')">推床</div>
					 <div class="text-item" id="b" onclick="item('b','<%=class_id %>')">枕頭</div>
					 <div class="text-item" id="c" onclick="item('c','<%=class_id %>')">太空被</div>
					 <div class="text-item" id="d" onclick="item('d','<%=class_id %>')">移動式 X 光機</div>
        </div>
      </div>
      
      <button class="ui-class ui-btn ui-shadow ui-corner-all" onclick="hiddentext('2')">醫療儀器</button>
       <div data-role="controlgroup" class="hidden-text" id="2">
            <div class="ui-controlgroup-controls">
                <div class="text-item" id="e" onclick="item('e','<%=class_id %>')">血壓計</div>
					 <div class="text-item" id="f" onclick="item('f','<%=class_id %>')">聽診器</div>
					 <div class="text-item" id="g" onclick="item('g','<%=class_id %>')">小筒氧氣</div>
					 <div class="text-item" id="h" onclick="item('h','<%=class_id %>')">插管物品</div>
					 <div class="text-item" id="i" onclick="item('i','<%=class_id %>')">呼吸器</div>
                
        </div>
      </div>

      <button class="ui-class ui-btn ui-shadow ui-corner-all" onclick="hiddentext('3')">耗材</button>
       <div data-role="controlgroup" class="hidden-text" id="3">
            <div class="ui-controlgroup-controls">
                <div class="text-item" id="j" onclick="item('j','<%=class_id %>')">攜帶綠色999敷料與醫材</div>
       		</div>
       </div>

      <button class="ui-class ui-btn ui-shadow ui-corner-all" onclick="hiddentext('4')">藥品</button>
       <div data-role="controlgroup" class="hidden-text" id="4">
         <div class="ui-controlgroup-controls">
                <div class="text-item" id="n" onclick="item('n','<%=class_id %>')">大量傷患藥品</div>
       	</div>
       </div>

      <button class="ui-class ui-btn ui-shadow ui-corner-all" onclick="hiddentext('5')">醫材</button>
       <div data-role="controlgroup" class="hidden-text" id="5">
            <div class="ui-controlgroup-controls">
               <div class="text-item" id="o" onclick="item('o','<%=class_id %>')">急救動員物資(資材)</div>
            </div>
       </div>

</class-btn>