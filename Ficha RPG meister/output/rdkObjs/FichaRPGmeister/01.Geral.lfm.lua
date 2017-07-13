require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmFichaRPGmeister1_svg()
    __o_rrpgObjs.beginObjectsLoading();

    local obj = gui.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmFichaRPGmeister1_svg");
    obj:setAlign("client");
    obj:setTheme("dark");
    obj:setMargins({top=1});

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.popAtributo = gui.fromHandle(_obj_newObject("popup"));
    obj.popAtributo:setParent(obj.scrollBox1);
    obj.popAtributo:setName("popAtributo");
    obj.popAtributo:setWidth(570);
    obj.popAtributo:setHeight(165);
    obj.popAtributo:setBackOpacity(0.4);

    obj.flowLayout1 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.popAtributo);
    obj.flowLayout1:setAlign("top");
    obj.flowLayout1:setAutoHeight(true);
    obj.flowLayout1:setMaxControlsPerLine(11);
    obj.flowLayout1:setMargins({bottom=4});
    obj.flowLayout1:setHorzAlign("center");
    obj.flowLayout1:setName("flowLayout1");

    obj.flowPart1 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout1);
    obj.flowPart1:setMinWidth(50);
    obj.flowPart1:setMaxWidth(50);
    obj.flowPart1:setHeight(15);
    obj.flowPart1:setName("flowPart1");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.flowPart1);
    obj.label1:setAlign("top");
    obj.label1:setFontSize(10);
    obj.label1:setText("Inicial");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setWordWrap(true);
    obj.label1:setTextTrimming("none");
    obj.label1:setAutoSize(true);
    obj.label1:setName("label1");

    obj.flowPart2 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart2:setParent(obj.flowLayout1);
    obj.flowPart2:setMinWidth(50);
    obj.flowPart2:setMaxWidth(50);
    obj.flowPart2:setHeight(15);
    obj.flowPart2:setName("flowPart2");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.flowPart2);
    obj.label2:setAlign("top");
    obj.label2:setFontSize(10);
    obj.label2:setText("Raça");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setWordWrap(true);
    obj.label2:setTextTrimming("none");
    obj.label2:setAutoSize(true);
    obj.label2:setName("label2");

    obj.flowPart3 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart3:setParent(obj.flowLayout1);
    obj.flowPart3:setMinWidth(50);
    obj.flowPart3:setMaxWidth(50);
    obj.flowPart3:setHeight(15);
    obj.flowPart3:setName("flowPart3");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.flowPart3);
    obj.label3:setAlign("top");
    obj.label3:setFontSize(10);
    obj.label3:setText("NEP");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setWordWrap(true);
    obj.label3:setTextTrimming("none");
    obj.label3:setAutoSize(true);
    obj.label3:setName("label3");

    obj.flowPart4 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart4:setParent(obj.flowLayout1);
    obj.flowPart4:setMinWidth(50);
    obj.flowPart4:setMaxWidth(50);
    obj.flowPart4:setHeight(15);
    obj.flowPart4:setName("flowPart4");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.flowPart4);
    obj.label4:setAlign("top");
    obj.label4:setFontSize(10);
    obj.label4:setText("Inerente");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setWordWrap(true);
    obj.label4:setTextTrimming("none");
    obj.label4:setAutoSize(true);
    obj.label4:setName("label4");

    obj.flowPart5 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart5:setParent(obj.flowLayout1);
    obj.flowPart5:setMinWidth(50);
    obj.flowPart5:setMaxWidth(50);
    obj.flowPart5:setHeight(15);
    obj.flowPart5:setName("flowPart5");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.flowPart5);
    obj.label5:setAlign("top");
    obj.label5:setFontSize(10);
    obj.label5:setText("Tamanho");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setWordWrap(true);
    obj.label5:setTextTrimming("none");
    obj.label5:setAutoSize(true);
    obj.label5:setName("label5");

    obj.flowPart6 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart6:setParent(obj.flowLayout1);
    obj.flowPart6:setMinWidth(50);
    obj.flowPart6:setMaxWidth(50);
    obj.flowPart6:setHeight(15);
    obj.flowPart6:setName("flowPart6");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.flowPart6);
    obj.label6:setAlign("top");
    obj.label6:setFontSize(10);
    obj.label6:setText("Outros");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setWordWrap(true);
    obj.label6:setTextTrimming("none");
    obj.label6:setAutoSize(true);
    obj.label6:setName("label6");

    obj.flowPart7 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart7:setParent(obj.flowLayout1);
    obj.flowPart7:setMinWidth(20);
    obj.flowPart7:setMaxWidth(20);
    obj.flowPart7:setHeight(15);
    obj.flowPart7:setName("flowPart7");

    obj.flowPart8 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart8:setParent(obj.flowLayout1);
    obj.flowPart8:setMinWidth(50);
    obj.flowPart8:setMaxWidth(50);
    obj.flowPart8:setHeight(15);
    obj.flowPart8:setName("flowPart8");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.flowPart8);
    obj.label7:setAlign("top");
    obj.label7:setFontSize(10);
    obj.label7:setText("Melhoria");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setWordWrap(true);
    obj.label7:setTextTrimming("none");
    obj.label7:setAutoSize(true);
    obj.label7:setName("label7");

    obj.flowPart9 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart9:setParent(obj.flowLayout1);
    obj.flowPart9:setMinWidth(50);
    obj.flowPart9:setMaxWidth(50);
    obj.flowPart9:setHeight(15);
    obj.flowPart9:setName("flowPart9");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.flowPart9);
    obj.label8:setAlign("top");
    obj.label8:setFontSize(10);
    obj.label8:setText("Dn Temp.");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setWordWrap(true);
    obj.label8:setTextTrimming("none");
    obj.label8:setAutoSize(true);
    obj.label8:setName("label8");

    obj.flowPart10 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart10:setParent(obj.flowLayout1);
    obj.flowPart10:setMinWidth(50);
    obj.flowPart10:setMaxWidth(50);
    obj.flowPart10:setHeight(15);
    obj.flowPart10:setName("flowPart10");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.flowPart10);
    obj.label9:setAlign("top");
    obj.label9:setFontSize(10);
    obj.label9:setText("Dn Perm.");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setWordWrap(true);
    obj.label9:setTextTrimming("none");
    obj.label9:setAutoSize(true);
    obj.label9:setName("label9");

    obj.flowPart11 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart11:setParent(obj.flowLayout1);
    obj.flowPart11:setMinWidth(50);
    obj.flowPart11:setMaxWidth(50);
    obj.flowPart11:setHeight(15);
    obj.flowPart11:setName("flowPart11");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.flowPart11);
    obj.label10:setAlign("top");
    obj.label10:setFontSize(10);
    obj.label10:setText("Temp.");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setWordWrap(true);
    obj.label10:setTextTrimming("none");
    obj.label10:setAutoSize(true);
    obj.label10:setName("label10");

    obj.flowLayout2 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout2:setParent(obj.popAtributo);
    obj.flowLayout2:setAlign("top");
    obj.flowLayout2:setAutoHeight(true);
    obj.flowLayout2:setMaxControlsPerLine(11);
    obj.flowLayout2:setMargins({bottom=4});
    obj.flowLayout2:setHorzAlign("center");
    obj.flowLayout2:setName("flowLayout2");

    obj.flowPart12 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart12:setParent(obj.flowLayout2);
    obj.flowPart12:setMinWidth(50);
    obj.flowPart12:setMaxWidth(50);
    obj.flowPart12:setHeight(20);
    obj.flowPart12:setName("flowPart12");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.flowPart12);
    obj.edit1:setAlign("client");
    obj.edit1:setField("inicialFor");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setFontSize(12);
    obj.edit1:setType("number");
    obj.edit1:setName("edit1");

    obj.flowPart13 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart13:setParent(obj.flowLayout2);
    obj.flowPart13:setMinWidth(50);
    obj.flowPart13:setMaxWidth(50);
    obj.flowPart13:setHeight(20);
    obj.flowPart13:setName("flowPart13");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.flowPart13);
    obj.edit2:setAlign("client");
    obj.edit2:setField("racaFor");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setFontSize(12);
    obj.edit2:setType("number");
    obj.edit2:setName("edit2");

    obj.flowPart14 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart14:setParent(obj.flowLayout2);
    obj.flowPart14:setMinWidth(50);
    obj.flowPart14:setMaxWidth(50);
    obj.flowPart14:setHeight(20);
    obj.flowPart14:setName("flowPart14");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.flowPart14);
    obj.edit3:setAlign("client");
    obj.edit3:setField("nepFor");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setFontSize(12);
    obj.edit3:setType("number");
    obj.edit3:setName("edit3");

    obj.flowPart15 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart15:setParent(obj.flowLayout2);
    obj.flowPart15:setMinWidth(50);
    obj.flowPart15:setMaxWidth(50);
    obj.flowPart15:setHeight(20);
    obj.flowPart15:setName("flowPart15");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.flowPart15);
    obj.edit4:setAlign("client");
    obj.edit4:setField("inerenteFor");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setFontSize(12);
    obj.edit4:setType("number");
    obj.edit4:setName("edit4");

    obj.flowPart16 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart16:setParent(obj.flowLayout2);
    obj.flowPart16:setMinWidth(50);
    obj.flowPart16:setMaxWidth(50);
    obj.flowPart16:setHeight(20);
    obj.flowPart16:setName("flowPart16");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.flowPart16);
    obj.edit5:setAlign("client");
    obj.edit5:setField("tamanhoFor");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setFontSize(12);
    obj.edit5:setType("number");
    obj.edit5:setName("edit5");

    obj.flowPart17 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart17:setParent(obj.flowLayout2);
    obj.flowPart17:setMinWidth(50);
    obj.flowPart17:setMaxWidth(50);
    obj.flowPart17:setHeight(20);
    obj.flowPart17:setName("flowPart17");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.flowPart17);
    obj.edit6:setAlign("client");
    obj.edit6:setField("outrosFor");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setFontSize(12);
    obj.edit6:setType("number");
    obj.edit6:setName("edit6");

    obj.flowPart18 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart18:setParent(obj.flowLayout2);
    obj.flowPart18:setMinWidth(20);
    obj.flowPart18:setMaxWidth(20);
    obj.flowPart18:setHeight(20);
    obj.flowPart18:setName("flowPart18");

    obj.flowPart19 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart19:setParent(obj.flowLayout2);
    obj.flowPart19:setMinWidth(50);
    obj.flowPart19:setMaxWidth(50);
    obj.flowPart19:setHeight(20);
    obj.flowPart19:setName("flowPart19");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.flowPart19);
    obj.edit7:setAlign("client");
    obj.edit7:setField("melhoriaFor");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setFontSize(12);
    obj.edit7:setType("number");
    obj.edit7:setName("edit7");

    obj.flowPart20 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart20:setParent(obj.flowLayout2);
    obj.flowPart20:setMinWidth(50);
    obj.flowPart20:setMaxWidth(50);
    obj.flowPart20:setHeight(20);
    obj.flowPart20:setName("flowPart20");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.flowPart20);
    obj.edit8:setAlign("client");
    obj.edit8:setField("danoTempFor");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setFontSize(12);
    obj.edit8:setType("number");
    obj.edit8:setName("edit8");

    obj.flowPart21 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart21:setParent(obj.flowLayout2);
    obj.flowPart21:setMinWidth(50);
    obj.flowPart21:setMaxWidth(50);
    obj.flowPart21:setHeight(20);
    obj.flowPart21:setName("flowPart21");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.flowPart21);
    obj.edit9:setAlign("client");
    obj.edit9:setField("danoPermFor");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setFontSize(12);
    obj.edit9:setType("number");
    obj.edit9:setName("edit9");

    obj.flowPart22 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart22:setParent(obj.flowLayout2);
    obj.flowPart22:setMinWidth(50);
    obj.flowPart22:setMaxWidth(50);
    obj.flowPart22:setHeight(20);
    obj.flowPart22:setName("flowPart22");

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.flowPart22);
    obj.edit10:setAlign("client");
    obj.edit10:setField("temporarioFor");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setFontSize(12);
    obj.edit10:setType("number");
    obj.edit10:setName("edit10");

    obj.dataLink1 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.popAtributo);
    obj.dataLink1:setFields({'inicialFor', 'racaFor', 'nepFor', 'inerenteFor', 'tamanhoFor', 'outrosFor', 'melhoriaFor', 'danoTempFor', 'danoPermFor', 'temporarioFor'});
    obj.dataLink1:setName("dataLink1");

    obj.flowLayout3 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout3:setParent(obj.popAtributo);
    obj.flowLayout3:setAlign("top");
    obj.flowLayout3:setAutoHeight(true);
    obj.flowLayout3:setMaxControlsPerLine(11);
    obj.flowLayout3:setMargins({bottom=4});
    obj.flowLayout3:setHorzAlign("center");
    obj.flowLayout3:setName("flowLayout3");

    obj.flowPart23 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart23:setParent(obj.flowLayout3);
    obj.flowPart23:setMinWidth(50);
    obj.flowPart23:setMaxWidth(50);
    obj.flowPart23:setHeight(20);
    obj.flowPart23:setName("flowPart23");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.flowPart23);
    obj.edit11:setAlign("client");
    obj.edit11:setField("inicialDes");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setFontSize(12);
    obj.edit11:setType("number");
    obj.edit11:setName("edit11");

    obj.flowPart24 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart24:setParent(obj.flowLayout3);
    obj.flowPart24:setMinWidth(50);
    obj.flowPart24:setMaxWidth(50);
    obj.flowPart24:setHeight(20);
    obj.flowPart24:setName("flowPart24");

    obj.edit12 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.flowPart24);
    obj.edit12:setAlign("client");
    obj.edit12:setField("racaDes");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setFontSize(12);
    obj.edit12:setType("number");
    obj.edit12:setName("edit12");

    obj.flowPart25 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart25:setParent(obj.flowLayout3);
    obj.flowPart25:setMinWidth(50);
    obj.flowPart25:setMaxWidth(50);
    obj.flowPart25:setHeight(20);
    obj.flowPart25:setName("flowPart25");

    obj.edit13 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.flowPart25);
    obj.edit13:setAlign("client");
    obj.edit13:setField("nepDes");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setFontSize(12);
    obj.edit13:setType("number");
    obj.edit13:setName("edit13");

    obj.flowPart26 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart26:setParent(obj.flowLayout3);
    obj.flowPart26:setMinWidth(50);
    obj.flowPart26:setMaxWidth(50);
    obj.flowPart26:setHeight(20);
    obj.flowPart26:setName("flowPart26");

    obj.edit14 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.flowPart26);
    obj.edit14:setAlign("client");
    obj.edit14:setField("inerenteDes");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setFontSize(12);
    obj.edit14:setType("number");
    obj.edit14:setName("edit14");

    obj.flowPart27 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart27:setParent(obj.flowLayout3);
    obj.flowPart27:setMinWidth(50);
    obj.flowPart27:setMaxWidth(50);
    obj.flowPart27:setHeight(20);
    obj.flowPart27:setName("flowPart27");

    obj.edit15 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.flowPart27);
    obj.edit15:setAlign("client");
    obj.edit15:setField("tamanhoDes");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setFontSize(12);
    obj.edit15:setType("number");
    obj.edit15:setName("edit15");

    obj.flowPart28 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart28:setParent(obj.flowLayout3);
    obj.flowPart28:setMinWidth(50);
    obj.flowPart28:setMaxWidth(50);
    obj.flowPart28:setHeight(20);
    obj.flowPart28:setName("flowPart28");

    obj.edit16 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.flowPart28);
    obj.edit16:setAlign("client");
    obj.edit16:setField("outrosDes");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setFontSize(12);
    obj.edit16:setType("number");
    obj.edit16:setName("edit16");

    obj.flowPart29 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart29:setParent(obj.flowLayout3);
    obj.flowPart29:setMinWidth(20);
    obj.flowPart29:setMaxWidth(20);
    obj.flowPart29:setHeight(20);
    obj.flowPart29:setName("flowPart29");

    obj.flowPart30 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart30:setParent(obj.flowLayout3);
    obj.flowPart30:setMinWidth(50);
    obj.flowPart30:setMaxWidth(50);
    obj.flowPart30:setHeight(20);
    obj.flowPart30:setName("flowPart30");

    obj.edit17 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.flowPart30);
    obj.edit17:setAlign("client");
    obj.edit17:setField("melhoriaDes");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setFontSize(12);
    obj.edit17:setType("number");
    obj.edit17:setName("edit17");

    obj.flowPart31 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart31:setParent(obj.flowLayout3);
    obj.flowPart31:setMinWidth(50);
    obj.flowPart31:setMaxWidth(50);
    obj.flowPart31:setHeight(20);
    obj.flowPart31:setName("flowPart31");

    obj.edit18 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.flowPart31);
    obj.edit18:setAlign("client");
    obj.edit18:setField("danoTempDes");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setFontSize(12);
    obj.edit18:setType("number");
    obj.edit18:setName("edit18");

    obj.flowPart32 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart32:setParent(obj.flowLayout3);
    obj.flowPart32:setMinWidth(50);
    obj.flowPart32:setMaxWidth(50);
    obj.flowPart32:setHeight(20);
    obj.flowPart32:setName("flowPart32");

    obj.edit19 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.flowPart32);
    obj.edit19:setAlign("client");
    obj.edit19:setField("danoPermDes");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setFontSize(12);
    obj.edit19:setType("number");
    obj.edit19:setName("edit19");

    obj.flowPart33 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart33:setParent(obj.flowLayout3);
    obj.flowPart33:setMinWidth(50);
    obj.flowPart33:setMaxWidth(50);
    obj.flowPart33:setHeight(20);
    obj.flowPart33:setName("flowPart33");

    obj.edit20 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.flowPart33);
    obj.edit20:setAlign("client");
    obj.edit20:setField("temporarioDes");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setFontSize(12);
    obj.edit20:setType("number");
    obj.edit20:setName("edit20");

    obj.dataLink2 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.popAtributo);
    obj.dataLink2:setFields({'inicialDes', 'racaDes', 'nepDes', 'inerenteDes', 'tamanhoDes', 'outrosDes', 'melhoriaDes', 'danoTempDes', 'danoPermDes', 'temporarioDes'});
    obj.dataLink2:setName("dataLink2");

    obj.flowLayout4 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout4:setParent(obj.popAtributo);
    obj.flowLayout4:setAlign("top");
    obj.flowLayout4:setAutoHeight(true);
    obj.flowLayout4:setMaxControlsPerLine(11);
    obj.flowLayout4:setMargins({bottom=4});
    obj.flowLayout4:setHorzAlign("center");
    obj.flowLayout4:setName("flowLayout4");

    obj.flowPart34 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart34:setParent(obj.flowLayout4);
    obj.flowPart34:setMinWidth(50);
    obj.flowPart34:setMaxWidth(50);
    obj.flowPart34:setHeight(20);
    obj.flowPart34:setName("flowPart34");

    obj.edit21 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.flowPart34);
    obj.edit21:setAlign("client");
    obj.edit21:setField("inicialCon");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setFontSize(12);
    obj.edit21:setType("number");
    obj.edit21:setName("edit21");

    obj.flowPart35 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart35:setParent(obj.flowLayout4);
    obj.flowPart35:setMinWidth(50);
    obj.flowPart35:setMaxWidth(50);
    obj.flowPart35:setHeight(20);
    obj.flowPart35:setName("flowPart35");

    obj.edit22 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.flowPart35);
    obj.edit22:setAlign("client");
    obj.edit22:setField("racaCon");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setFontSize(12);
    obj.edit22:setType("number");
    obj.edit22:setName("edit22");

    obj.flowPart36 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart36:setParent(obj.flowLayout4);
    obj.flowPart36:setMinWidth(50);
    obj.flowPart36:setMaxWidth(50);
    obj.flowPart36:setHeight(20);
    obj.flowPart36:setName("flowPart36");

    obj.edit23 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.flowPart36);
    obj.edit23:setAlign("client");
    obj.edit23:setField("nepCon");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setFontSize(12);
    obj.edit23:setType("number");
    obj.edit23:setName("edit23");

    obj.flowPart37 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart37:setParent(obj.flowLayout4);
    obj.flowPart37:setMinWidth(50);
    obj.flowPart37:setMaxWidth(50);
    obj.flowPart37:setHeight(20);
    obj.flowPart37:setName("flowPart37");

    obj.edit24 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.flowPart37);
    obj.edit24:setAlign("client");
    obj.edit24:setField("inerenteCon");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setFontSize(12);
    obj.edit24:setType("number");
    obj.edit24:setName("edit24");

    obj.flowPart38 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart38:setParent(obj.flowLayout4);
    obj.flowPart38:setMinWidth(50);
    obj.flowPart38:setMaxWidth(50);
    obj.flowPart38:setHeight(20);
    obj.flowPart38:setName("flowPart38");

    obj.edit25 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.flowPart38);
    obj.edit25:setAlign("client");
    obj.edit25:setField("tamanhoCon");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setFontSize(12);
    obj.edit25:setType("number");
    obj.edit25:setName("edit25");

    obj.flowPart39 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart39:setParent(obj.flowLayout4);
    obj.flowPart39:setMinWidth(50);
    obj.flowPart39:setMaxWidth(50);
    obj.flowPart39:setHeight(20);
    obj.flowPart39:setName("flowPart39");

    obj.edit26 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.flowPart39);
    obj.edit26:setAlign("client");
    obj.edit26:setField("outrosCon");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setFontSize(12);
    obj.edit26:setType("number");
    obj.edit26:setName("edit26");

    obj.flowPart40 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart40:setParent(obj.flowLayout4);
    obj.flowPart40:setMinWidth(20);
    obj.flowPart40:setMaxWidth(20);
    obj.flowPart40:setHeight(20);
    obj.flowPart40:setName("flowPart40");

    obj.flowPart41 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart41:setParent(obj.flowLayout4);
    obj.flowPart41:setMinWidth(50);
    obj.flowPart41:setMaxWidth(50);
    obj.flowPart41:setHeight(20);
    obj.flowPart41:setName("flowPart41");

    obj.edit27 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.flowPart41);
    obj.edit27:setAlign("client");
    obj.edit27:setField("melhoriaCon");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setFontSize(12);
    obj.edit27:setType("number");
    obj.edit27:setName("edit27");

    obj.flowPart42 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart42:setParent(obj.flowLayout4);
    obj.flowPart42:setMinWidth(50);
    obj.flowPart42:setMaxWidth(50);
    obj.flowPart42:setHeight(20);
    obj.flowPart42:setName("flowPart42");

    obj.edit28 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.flowPart42);
    obj.edit28:setAlign("client");
    obj.edit28:setField("danoTempCon");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setFontSize(12);
    obj.edit28:setType("number");
    obj.edit28:setName("edit28");

    obj.flowPart43 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart43:setParent(obj.flowLayout4);
    obj.flowPart43:setMinWidth(50);
    obj.flowPart43:setMaxWidth(50);
    obj.flowPart43:setHeight(20);
    obj.flowPart43:setName("flowPart43");

    obj.edit29 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.flowPart43);
    obj.edit29:setAlign("client");
    obj.edit29:setField("danoPermCon");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setFontSize(12);
    obj.edit29:setType("number");
    obj.edit29:setName("edit29");

    obj.flowPart44 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart44:setParent(obj.flowLayout4);
    obj.flowPart44:setMinWidth(50);
    obj.flowPart44:setMaxWidth(50);
    obj.flowPart44:setHeight(20);
    obj.flowPart44:setName("flowPart44");

    obj.edit30 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.flowPart44);
    obj.edit30:setAlign("client");
    obj.edit30:setField("temporarioCon");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setFontSize(12);
    obj.edit30:setType("number");
    obj.edit30:setName("edit30");

    obj.dataLink3 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.popAtributo);
    obj.dataLink3:setFields({'inicialCon', 'racaCon', 'nepCon', 'inerenteCon', 'tamanhoCon', 'outrosCon', 'melhoriaCon', 'danoTempCon', 'danoPermCon', 'temporarioCon'});
    obj.dataLink3:setName("dataLink3");

    obj.flowLayout5 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout5:setParent(obj.popAtributo);
    obj.flowLayout5:setAlign("top");
    obj.flowLayout5:setAutoHeight(true);
    obj.flowLayout5:setMaxControlsPerLine(11);
    obj.flowLayout5:setMargins({bottom=4});
    obj.flowLayout5:setHorzAlign("center");
    obj.flowLayout5:setName("flowLayout5");

    obj.flowPart45 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart45:setParent(obj.flowLayout5);
    obj.flowPart45:setMinWidth(50);
    obj.flowPart45:setMaxWidth(50);
    obj.flowPart45:setHeight(20);
    obj.flowPart45:setName("flowPart45");

    obj.edit31 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.flowPart45);
    obj.edit31:setAlign("client");
    obj.edit31:setField("inicialInt");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setFontSize(12);
    obj.edit31:setType("number");
    obj.edit31:setName("edit31");

    obj.flowPart46 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart46:setParent(obj.flowLayout5);
    obj.flowPart46:setMinWidth(50);
    obj.flowPart46:setMaxWidth(50);
    obj.flowPart46:setHeight(20);
    obj.flowPart46:setName("flowPart46");

    obj.edit32 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.flowPart46);
    obj.edit32:setAlign("client");
    obj.edit32:setField("racaInt");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setFontSize(12);
    obj.edit32:setType("number");
    obj.edit32:setName("edit32");

    obj.flowPart47 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart47:setParent(obj.flowLayout5);
    obj.flowPart47:setMinWidth(50);
    obj.flowPart47:setMaxWidth(50);
    obj.flowPart47:setHeight(20);
    obj.flowPart47:setName("flowPart47");

    obj.edit33 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.flowPart47);
    obj.edit33:setAlign("client");
    obj.edit33:setField("nepInt");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setFontSize(12);
    obj.edit33:setType("number");
    obj.edit33:setName("edit33");

    obj.flowPart48 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart48:setParent(obj.flowLayout5);
    obj.flowPart48:setMinWidth(50);
    obj.flowPart48:setMaxWidth(50);
    obj.flowPart48:setHeight(20);
    obj.flowPart48:setName("flowPart48");

    obj.edit34 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.flowPart48);
    obj.edit34:setAlign("client");
    obj.edit34:setField("inerenteInt");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setFontSize(12);
    obj.edit34:setType("number");
    obj.edit34:setName("edit34");

    obj.flowPart49 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart49:setParent(obj.flowLayout5);
    obj.flowPart49:setMinWidth(50);
    obj.flowPart49:setMaxWidth(50);
    obj.flowPart49:setHeight(20);
    obj.flowPart49:setName("flowPart49");

    obj.edit35 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.flowPart49);
    obj.edit35:setAlign("client");
    obj.edit35:setField("tamanhoInt");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setFontSize(12);
    obj.edit35:setType("number");
    obj.edit35:setName("edit35");

    obj.flowPart50 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart50:setParent(obj.flowLayout5);
    obj.flowPart50:setMinWidth(50);
    obj.flowPart50:setMaxWidth(50);
    obj.flowPart50:setHeight(20);
    obj.flowPart50:setName("flowPart50");

    obj.edit36 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.flowPart50);
    obj.edit36:setAlign("client");
    obj.edit36:setField("outrosInt");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setFontSize(12);
    obj.edit36:setType("number");
    obj.edit36:setName("edit36");

    obj.flowPart51 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart51:setParent(obj.flowLayout5);
    obj.flowPart51:setMinWidth(20);
    obj.flowPart51:setMaxWidth(20);
    obj.flowPart51:setHeight(20);
    obj.flowPart51:setName("flowPart51");

    obj.flowPart52 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart52:setParent(obj.flowLayout5);
    obj.flowPart52:setMinWidth(50);
    obj.flowPart52:setMaxWidth(50);
    obj.flowPart52:setHeight(20);
    obj.flowPart52:setName("flowPart52");

    obj.edit37 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.flowPart52);
    obj.edit37:setAlign("client");
    obj.edit37:setField("melhoriaInt");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setFontSize(12);
    obj.edit37:setType("number");
    obj.edit37:setName("edit37");

    obj.flowPart53 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart53:setParent(obj.flowLayout5);
    obj.flowPart53:setMinWidth(50);
    obj.flowPart53:setMaxWidth(50);
    obj.flowPart53:setHeight(20);
    obj.flowPart53:setName("flowPart53");

    obj.edit38 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.flowPart53);
    obj.edit38:setAlign("client");
    obj.edit38:setField("danoTempInt");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setFontSize(12);
    obj.edit38:setType("number");
    obj.edit38:setName("edit38");

    obj.flowPart54 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart54:setParent(obj.flowLayout5);
    obj.flowPart54:setMinWidth(50);
    obj.flowPart54:setMaxWidth(50);
    obj.flowPart54:setHeight(20);
    obj.flowPart54:setName("flowPart54");

    obj.edit39 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.flowPart54);
    obj.edit39:setAlign("client");
    obj.edit39:setField("danoPermInt");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setFontSize(12);
    obj.edit39:setType("number");
    obj.edit39:setName("edit39");

    obj.flowPart55 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart55:setParent(obj.flowLayout5);
    obj.flowPart55:setMinWidth(50);
    obj.flowPart55:setMaxWidth(50);
    obj.flowPart55:setHeight(20);
    obj.flowPart55:setName("flowPart55");

    obj.edit40 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.flowPart55);
    obj.edit40:setAlign("client");
    obj.edit40:setField("temporarioInt");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setFontSize(12);
    obj.edit40:setType("number");
    obj.edit40:setName("edit40");

    obj.dataLink4 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.popAtributo);
    obj.dataLink4:setFields({'inicialInt', 'racaInt', 'nepInt', 'inerenteInt', 'tamanhoInt', 'outrosInt', 'melhoriaInt', 'danoTempInt', 'danoPermInt', 'temporarioInt'});
    obj.dataLink4:setName("dataLink4");

    obj.flowLayout6 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout6:setParent(obj.popAtributo);
    obj.flowLayout6:setAlign("top");
    obj.flowLayout6:setAutoHeight(true);
    obj.flowLayout6:setMaxControlsPerLine(11);
    obj.flowLayout6:setMargins({bottom=4});
    obj.flowLayout6:setHorzAlign("center");
    obj.flowLayout6:setName("flowLayout6");

    obj.flowPart56 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart56:setParent(obj.flowLayout6);
    obj.flowPart56:setMinWidth(50);
    obj.flowPart56:setMaxWidth(50);
    obj.flowPart56:setHeight(20);
    obj.flowPart56:setName("flowPart56");

    obj.edit41 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.flowPart56);
    obj.edit41:setAlign("client");
    obj.edit41:setField("inicialSab");
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setFontSize(12);
    obj.edit41:setType("number");
    obj.edit41:setName("edit41");

    obj.flowPart57 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart57:setParent(obj.flowLayout6);
    obj.flowPart57:setMinWidth(50);
    obj.flowPart57:setMaxWidth(50);
    obj.flowPart57:setHeight(20);
    obj.flowPart57:setName("flowPart57");

    obj.edit42 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.flowPart57);
    obj.edit42:setAlign("client");
    obj.edit42:setField("racaSab");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setFontSize(12);
    obj.edit42:setType("number");
    obj.edit42:setName("edit42");

    obj.flowPart58 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart58:setParent(obj.flowLayout6);
    obj.flowPart58:setMinWidth(50);
    obj.flowPart58:setMaxWidth(50);
    obj.flowPart58:setHeight(20);
    obj.flowPart58:setName("flowPart58");

    obj.edit43 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.flowPart58);
    obj.edit43:setAlign("client");
    obj.edit43:setField("nepSab");
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setFontSize(12);
    obj.edit43:setType("number");
    obj.edit43:setName("edit43");

    obj.flowPart59 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart59:setParent(obj.flowLayout6);
    obj.flowPart59:setMinWidth(50);
    obj.flowPart59:setMaxWidth(50);
    obj.flowPart59:setHeight(20);
    obj.flowPart59:setName("flowPart59");

    obj.edit44 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.flowPart59);
    obj.edit44:setAlign("client");
    obj.edit44:setField("inerenteSab");
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setFontSize(12);
    obj.edit44:setType("number");
    obj.edit44:setName("edit44");

    obj.flowPart60 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart60:setParent(obj.flowLayout6);
    obj.flowPart60:setMinWidth(50);
    obj.flowPart60:setMaxWidth(50);
    obj.flowPart60:setHeight(20);
    obj.flowPart60:setName("flowPart60");

    obj.edit45 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.flowPart60);
    obj.edit45:setAlign("client");
    obj.edit45:setField("tamanhoSab");
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setFontSize(12);
    obj.edit45:setType("number");
    obj.edit45:setName("edit45");

    obj.flowPart61 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart61:setParent(obj.flowLayout6);
    obj.flowPart61:setMinWidth(50);
    obj.flowPart61:setMaxWidth(50);
    obj.flowPart61:setHeight(20);
    obj.flowPart61:setName("flowPart61");

    obj.edit46 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.flowPart61);
    obj.edit46:setAlign("client");
    obj.edit46:setField("outrosSab");
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setFontSize(12);
    obj.edit46:setType("number");
    obj.edit46:setName("edit46");

    obj.flowPart62 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart62:setParent(obj.flowLayout6);
    obj.flowPart62:setMinWidth(20);
    obj.flowPart62:setMaxWidth(20);
    obj.flowPart62:setHeight(20);
    obj.flowPart62:setName("flowPart62");

    obj.flowPart63 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart63:setParent(obj.flowLayout6);
    obj.flowPart63:setMinWidth(50);
    obj.flowPart63:setMaxWidth(50);
    obj.flowPart63:setHeight(20);
    obj.flowPart63:setName("flowPart63");

    obj.edit47 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.flowPart63);
    obj.edit47:setAlign("client");
    obj.edit47:setField("melhoriaSab");
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setFontSize(12);
    obj.edit47:setType("number");
    obj.edit47:setName("edit47");

    obj.flowPart64 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart64:setParent(obj.flowLayout6);
    obj.flowPart64:setMinWidth(50);
    obj.flowPart64:setMaxWidth(50);
    obj.flowPart64:setHeight(20);
    obj.flowPart64:setName("flowPart64");

    obj.edit48 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.flowPart64);
    obj.edit48:setAlign("client");
    obj.edit48:setField("danoTempSab");
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setFontSize(12);
    obj.edit48:setType("number");
    obj.edit48:setName("edit48");

    obj.flowPart65 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart65:setParent(obj.flowLayout6);
    obj.flowPart65:setMinWidth(50);
    obj.flowPart65:setMaxWidth(50);
    obj.flowPart65:setHeight(20);
    obj.flowPart65:setName("flowPart65");

    obj.edit49 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.flowPart65);
    obj.edit49:setAlign("client");
    obj.edit49:setField("danoPermSab");
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setFontSize(12);
    obj.edit49:setType("number");
    obj.edit49:setName("edit49");

    obj.flowPart66 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart66:setParent(obj.flowLayout6);
    obj.flowPart66:setMinWidth(50);
    obj.flowPart66:setMaxWidth(50);
    obj.flowPart66:setHeight(20);
    obj.flowPart66:setName("flowPart66");

    obj.edit50 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.flowPart66);
    obj.edit50:setAlign("client");
    obj.edit50:setField("temporarioSab");
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setFontSize(12);
    obj.edit50:setType("number");
    obj.edit50:setName("edit50");

    obj.dataLink5 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.popAtributo);
    obj.dataLink5:setFields({'inicialSab', 'racaSab', 'nepSab', 'inerenteSab', 'tamanhoSab', 'outrosSab', 'melhoriaSab', 'danoTempSab', 'danoPermSab', 'temporarioSab'});
    obj.dataLink5:setName("dataLink5");

    obj.flowLayout7 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout7:setParent(obj.popAtributo);
    obj.flowLayout7:setAlign("top");
    obj.flowLayout7:setAutoHeight(true);
    obj.flowLayout7:setMaxControlsPerLine(11);
    obj.flowLayout7:setMargins({bottom=4});
    obj.flowLayout7:setHorzAlign("center");
    obj.flowLayout7:setName("flowLayout7");

    obj.flowPart67 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart67:setParent(obj.flowLayout7);
    obj.flowPart67:setMinWidth(50);
    obj.flowPart67:setMaxWidth(50);
    obj.flowPart67:setHeight(20);
    obj.flowPart67:setName("flowPart67");

    obj.edit51 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.flowPart67);
    obj.edit51:setAlign("client");
    obj.edit51:setField("inicialCar");
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setFontSize(12);
    obj.edit51:setType("number");
    obj.edit51:setName("edit51");

    obj.flowPart68 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart68:setParent(obj.flowLayout7);
    obj.flowPart68:setMinWidth(50);
    obj.flowPart68:setMaxWidth(50);
    obj.flowPart68:setHeight(20);
    obj.flowPart68:setName("flowPart68");

    obj.edit52 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.flowPart68);
    obj.edit52:setAlign("client");
    obj.edit52:setField("racaCar");
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setFontSize(12);
    obj.edit52:setType("number");
    obj.edit52:setName("edit52");

    obj.flowPart69 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart69:setParent(obj.flowLayout7);
    obj.flowPart69:setMinWidth(50);
    obj.flowPart69:setMaxWidth(50);
    obj.flowPart69:setHeight(20);
    obj.flowPart69:setName("flowPart69");

    obj.edit53 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.flowPart69);
    obj.edit53:setAlign("client");
    obj.edit53:setField("nepCar");
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setFontSize(12);
    obj.edit53:setType("number");
    obj.edit53:setName("edit53");

    obj.flowPart70 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart70:setParent(obj.flowLayout7);
    obj.flowPart70:setMinWidth(50);
    obj.flowPart70:setMaxWidth(50);
    obj.flowPart70:setHeight(20);
    obj.flowPart70:setName("flowPart70");

    obj.edit54 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.flowPart70);
    obj.edit54:setAlign("client");
    obj.edit54:setField("inerenteCar");
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setFontSize(12);
    obj.edit54:setType("number");
    obj.edit54:setName("edit54");

    obj.flowPart71 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart71:setParent(obj.flowLayout7);
    obj.flowPart71:setMinWidth(50);
    obj.flowPart71:setMaxWidth(50);
    obj.flowPart71:setHeight(20);
    obj.flowPart71:setName("flowPart71");

    obj.edit55 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.flowPart71);
    obj.edit55:setAlign("client");
    obj.edit55:setField("tamanhoCar");
    obj.edit55:setHorzTextAlign("center");
    obj.edit55:setFontSize(12);
    obj.edit55:setType("number");
    obj.edit55:setName("edit55");

    obj.flowPart72 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart72:setParent(obj.flowLayout7);
    obj.flowPart72:setMinWidth(50);
    obj.flowPart72:setMaxWidth(50);
    obj.flowPart72:setHeight(20);
    obj.flowPart72:setName("flowPart72");

    obj.edit56 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.flowPart72);
    obj.edit56:setAlign("client");
    obj.edit56:setField("outrosCar");
    obj.edit56:setHorzTextAlign("center");
    obj.edit56:setFontSize(12);
    obj.edit56:setType("number");
    obj.edit56:setName("edit56");

    obj.flowPart73 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart73:setParent(obj.flowLayout7);
    obj.flowPart73:setMinWidth(20);
    obj.flowPart73:setMaxWidth(20);
    obj.flowPart73:setHeight(20);
    obj.flowPart73:setName("flowPart73");

    obj.flowPart74 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart74:setParent(obj.flowLayout7);
    obj.flowPart74:setMinWidth(50);
    obj.flowPart74:setMaxWidth(50);
    obj.flowPart74:setHeight(20);
    obj.flowPart74:setName("flowPart74");

    obj.edit57 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.flowPart74);
    obj.edit57:setAlign("client");
    obj.edit57:setField("melhoriaCar");
    obj.edit57:setHorzTextAlign("center");
    obj.edit57:setFontSize(12);
    obj.edit57:setType("number");
    obj.edit57:setName("edit57");

    obj.flowPart75 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart75:setParent(obj.flowLayout7);
    obj.flowPart75:setMinWidth(50);
    obj.flowPart75:setMaxWidth(50);
    obj.flowPart75:setHeight(20);
    obj.flowPart75:setName("flowPart75");

    obj.edit58 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.flowPart75);
    obj.edit58:setAlign("client");
    obj.edit58:setField("danoTempCar");
    obj.edit58:setHorzTextAlign("center");
    obj.edit58:setFontSize(12);
    obj.edit58:setType("number");
    obj.edit58:setName("edit58");

    obj.flowPart76 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart76:setParent(obj.flowLayout7);
    obj.flowPart76:setMinWidth(50);
    obj.flowPart76:setMaxWidth(50);
    obj.flowPart76:setHeight(20);
    obj.flowPart76:setName("flowPart76");

    obj.edit59 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.flowPart76);
    obj.edit59:setAlign("client");
    obj.edit59:setField("danoPermCar");
    obj.edit59:setHorzTextAlign("center");
    obj.edit59:setFontSize(12);
    obj.edit59:setType("number");
    obj.edit59:setName("edit59");

    obj.flowPart77 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart77:setParent(obj.flowLayout7);
    obj.flowPart77:setMinWidth(50);
    obj.flowPart77:setMaxWidth(50);
    obj.flowPart77:setHeight(20);
    obj.flowPart77:setName("flowPart77");

    obj.edit60 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.flowPart77);
    obj.edit60:setAlign("client");
    obj.edit60:setField("temporarioCar");
    obj.edit60:setHorzTextAlign("center");
    obj.edit60:setFontSize(12);
    obj.edit60:setType("number");
    obj.edit60:setName("edit60");

    obj.dataLink6 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.popAtributo);
    obj.dataLink6:setFields({'inicialCar', 'racaCar', 'nepCar', 'inerenteCar', 'tamanhoCar', 'outrosCar', 'melhoriaCar', 'danoTempCar', 'danoPermCar', 'temporarioCar'});
    obj.dataLink6:setName("dataLink6");

    obj.popResistencia = gui.fromHandle(_obj_newObject("popup"));
    obj.popResistencia:setParent(obj.scrollBox1);
    obj.popResistencia:setName("popResistencia");
    obj.popResistencia:setWidth(330);
    obj.popResistencia:setHeight(150);
    obj.popResistencia:setBackOpacity(0.4);

    obj.flowLayout8 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout8:setParent(obj.popResistencia);
    obj.flowLayout8:setAlign("top");
    obj.flowLayout8:setAutoHeight(true);
    obj.flowLayout8:setMaxControlsPerLine(11);
    obj.flowLayout8:setMargins({bottom=4});
    obj.flowLayout8:setHorzAlign("center");
    obj.flowLayout8:setName("flowLayout8");

    obj.flowPart78 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart78:setParent(obj.flowLayout8);
    obj.flowPart78:setMinWidth(50);
    obj.flowPart78:setMaxWidth(50);
    obj.flowPart78:setHeight(15);
    obj.flowPart78:setName("flowPart78");

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.flowPart78);
    obj.label11:setAlign("top");
    obj.label11:setFontSize(10);
    obj.label11:setText("Base");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setWordWrap(true);
    obj.label11:setTextTrimming("none");
    obj.label11:setAutoSize(true);
    obj.label11:setName("label11");

    obj.flowPart79 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart79:setParent(obj.flowLayout8);
    obj.flowPart79:setMinWidth(50);
    obj.flowPart79:setMaxWidth(50);
    obj.flowPart79:setHeight(15);
    obj.flowPart79:setName("flowPart79");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.flowPart79);
    obj.label12:setAlign("top");
    obj.label12:setFontSize(10);
    obj.label12:setText("Atributo");
    obj.label12:setHorzTextAlign("center");
    obj.label12:setWordWrap(true);
    obj.label12:setTextTrimming("none");
    obj.label12:setAutoSize(true);
    obj.label12:setName("label12");

    obj.flowPart80 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart80:setParent(obj.flowLayout8);
    obj.flowPart80:setMinWidth(50);
    obj.flowPart80:setMaxWidth(50);
    obj.flowPart80:setHeight(15);
    obj.flowPart80:setName("flowPart80");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.flowPart80);
    obj.label13:setAlign("top");
    obj.label13:setFontSize(10);
    obj.label13:setText("Magia");
    obj.label13:setHorzTextAlign("center");
    obj.label13:setWordWrap(true);
    obj.label13:setTextTrimming("none");
    obj.label13:setAutoSize(true);
    obj.label13:setName("label13");

    obj.flowPart81 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart81:setParent(obj.flowLayout8);
    obj.flowPart81:setMinWidth(50);
    obj.flowPart81:setMaxWidth(50);
    obj.flowPart81:setHeight(15);
    obj.flowPart81:setName("flowPart81");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.flowPart81);
    obj.label14:setAlign("top");
    obj.label14:setFontSize(10);
    obj.label14:setText("Melhoria");
    obj.label14:setHorzTextAlign("center");
    obj.label14:setWordWrap(true);
    obj.label14:setTextTrimming("none");
    obj.label14:setAutoSize(true);
    obj.label14:setName("label14");

    obj.flowPart82 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart82:setParent(obj.flowLayout8);
    obj.flowPart82:setMinWidth(50);
    obj.flowPart82:setMaxWidth(50);
    obj.flowPart82:setHeight(15);
    obj.flowPart82:setName("flowPart82");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.flowPart82);
    obj.label15:setAlign("top");
    obj.label15:setFontSize(10);
    obj.label15:setText("Temp.");
    obj.label15:setHorzTextAlign("center");
    obj.label15:setWordWrap(true);
    obj.label15:setTextTrimming("none");
    obj.label15:setAutoSize(true);
    obj.label15:setName("label15");

    obj.flowPart83 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart83:setParent(obj.flowLayout8);
    obj.flowPart83:setMinWidth(50);
    obj.flowPart83:setMaxWidth(50);
    obj.flowPart83:setHeight(15);
    obj.flowPart83:setName("flowPart83");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.flowPart83);
    obj.label16:setAlign("top");
    obj.label16:setFontSize(10);
    obj.label16:setText("Outros");
    obj.label16:setHorzTextAlign("center");
    obj.label16:setWordWrap(true);
    obj.label16:setTextTrimming("none");
    obj.label16:setAutoSize(true);
    obj.label16:setName("label16");

    obj.flowLayout9 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout9:setParent(obj.popResistencia);
    obj.flowLayout9:setAlign("top");
    obj.flowLayout9:setAutoHeight(true);
    obj.flowLayout9:setMaxControlsPerLine(11);
    obj.flowLayout9:setMargins({bottom=4});
    obj.flowLayout9:setHorzAlign("center");
    obj.flowLayout9:setName("flowLayout9");

    obj.flowPart84 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart84:setParent(obj.flowLayout9);
    obj.flowPart84:setMinWidth(50);
    obj.flowPart84:setMaxWidth(50);
    obj.flowPart84:setHeight(20);
    obj.flowPart84:setName("flowPart84");

    obj.edit61 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.flowPart84);
    obj.edit61:setAlign("client");
    obj.edit61:setField("baseFort");
    obj.edit61:setHorzTextAlign("center");
    obj.edit61:setFontSize(12);
    obj.edit61:setType("number");
    obj.edit61:setName("edit61");

    obj.flowPart85 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart85:setParent(obj.flowLayout9);
    obj.flowPart85:setMinWidth(50);
    obj.flowPart85:setMaxWidth(50);
    obj.flowPart85:setHeight(20);
    obj.flowPart85:setName("flowPart85");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.flowPart85);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("black");
    obj.rectangle1:setStrokeColor("white");
    obj.rectangle1:setStrokeSize(1);
    obj.rectangle1:setName("rectangle1");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.flowPart85);
    obj.label17:setAlign("client");
    obj.label17:setField("efetModCon");
    obj.label17:setHorzTextAlign("center");
    obj.label17:setFontSize(12);
    obj.label17:setName("label17");

    obj.flowPart86 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart86:setParent(obj.flowLayout9);
    obj.flowPart86:setMinWidth(50);
    obj.flowPart86:setMaxWidth(50);
    obj.flowPart86:setHeight(20);
    obj.flowPart86:setName("flowPart86");

    obj.edit62 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.flowPart86);
    obj.edit62:setAlign("client");
    obj.edit62:setField("magiaFort");
    obj.edit62:setHorzTextAlign("center");
    obj.edit62:setFontSize(12);
    obj.edit62:setType("number");
    obj.edit62:setName("edit62");

    obj.flowPart87 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart87:setParent(obj.flowLayout9);
    obj.flowPart87:setMinWidth(50);
    obj.flowPart87:setMaxWidth(50);
    obj.flowPart87:setHeight(20);
    obj.flowPart87:setName("flowPart87");

    obj.edit63 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.flowPart87);
    obj.edit63:setAlign("client");
    obj.edit63:setField("variavelFort");
    obj.edit63:setHorzTextAlign("center");
    obj.edit63:setFontSize(12);
    obj.edit63:setType("number");
    obj.edit63:setName("edit63");

    obj.flowPart88 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart88:setParent(obj.flowLayout9);
    obj.flowPart88:setMinWidth(50);
    obj.flowPart88:setMaxWidth(50);
    obj.flowPart88:setHeight(20);
    obj.flowPart88:setName("flowPart88");

    obj.edit64 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.flowPart88);
    obj.edit64:setAlign("client");
    obj.edit64:setField("temporarioFort");
    obj.edit64:setHorzTextAlign("center");
    obj.edit64:setFontSize(12);
    obj.edit64:setType("number");
    obj.edit64:setName("edit64");

    obj.flowPart89 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart89:setParent(obj.flowLayout9);
    obj.flowPart89:setMinWidth(50);
    obj.flowPart89:setMaxWidth(50);
    obj.flowPart89:setHeight(20);
    obj.flowPart89:setName("flowPart89");

    obj.edit65 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.flowPart89);
    obj.edit65:setAlign("client");
    obj.edit65:setField("outrosFort");
    obj.edit65:setHorzTextAlign("center");
    obj.edit65:setFontSize(12);
    obj.edit65:setType("number");
    obj.edit65:setName("edit65");

    obj.dataLink7 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.popResistencia);
    obj.dataLink7:setFields({'baseFort', 'efetModCon', 'magiaFort', 'variavelFort', 'temporarioFort', 'outrosFort'});
    obj.dataLink7:setName("dataLink7");

    obj.flowLayout10 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout10:setParent(obj.popResistencia);
    obj.flowLayout10:setAlign("top");
    obj.flowLayout10:setAutoHeight(true);
    obj.flowLayout10:setMaxControlsPerLine(11);
    obj.flowLayout10:setMargins({bottom=4});
    obj.flowLayout10:setHorzAlign("center");
    obj.flowLayout10:setName("flowLayout10");

    obj.flowPart90 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart90:setParent(obj.flowLayout10);
    obj.flowPart90:setMinWidth(50);
    obj.flowPart90:setMaxWidth(50);
    obj.flowPart90:setHeight(20);
    obj.flowPart90:setName("flowPart90");

    obj.edit66 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.flowPart90);
    obj.edit66:setAlign("client");
    obj.edit66:setField("baseRef");
    obj.edit66:setHorzTextAlign("center");
    obj.edit66:setFontSize(12);
    obj.edit66:setType("number");
    obj.edit66:setName("edit66");

    obj.flowPart91 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart91:setParent(obj.flowLayout10);
    obj.flowPart91:setMinWidth(50);
    obj.flowPart91:setMaxWidth(50);
    obj.flowPart91:setHeight(20);
    obj.flowPart91:setName("flowPart91");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.flowPart91);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("black");
    obj.rectangle2:setStrokeColor("white");
    obj.rectangle2:setStrokeSize(1);
    obj.rectangle2:setName("rectangle2");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.flowPart91);
    obj.label18:setAlign("client");
    obj.label18:setField("efetModDes");
    obj.label18:setHorzTextAlign("center");
    obj.label18:setFontSize(12);
    obj.label18:setName("label18");

    obj.flowPart92 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart92:setParent(obj.flowLayout10);
    obj.flowPart92:setMinWidth(50);
    obj.flowPart92:setMaxWidth(50);
    obj.flowPart92:setHeight(20);
    obj.flowPart92:setName("flowPart92");

    obj.edit67 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.flowPart92);
    obj.edit67:setAlign("client");
    obj.edit67:setField("magiaRef");
    obj.edit67:setHorzTextAlign("center");
    obj.edit67:setFontSize(12);
    obj.edit67:setType("number");
    obj.edit67:setName("edit67");

    obj.flowPart93 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart93:setParent(obj.flowLayout10);
    obj.flowPart93:setMinWidth(50);
    obj.flowPart93:setMaxWidth(50);
    obj.flowPart93:setHeight(20);
    obj.flowPart93:setName("flowPart93");

    obj.edit68 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.flowPart93);
    obj.edit68:setAlign("client");
    obj.edit68:setField("variavelRef");
    obj.edit68:setHorzTextAlign("center");
    obj.edit68:setFontSize(12);
    obj.edit68:setType("number");
    obj.edit68:setName("edit68");

    obj.flowPart94 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart94:setParent(obj.flowLayout10);
    obj.flowPart94:setMinWidth(50);
    obj.flowPart94:setMaxWidth(50);
    obj.flowPart94:setHeight(20);
    obj.flowPart94:setName("flowPart94");

    obj.edit69 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.flowPart94);
    obj.edit69:setAlign("client");
    obj.edit69:setField("temporarioRef");
    obj.edit69:setHorzTextAlign("center");
    obj.edit69:setFontSize(12);
    obj.edit69:setType("number");
    obj.edit69:setName("edit69");

    obj.flowPart95 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart95:setParent(obj.flowLayout10);
    obj.flowPart95:setMinWidth(50);
    obj.flowPart95:setMaxWidth(50);
    obj.flowPart95:setHeight(20);
    obj.flowPart95:setName("flowPart95");

    obj.edit70 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.flowPart95);
    obj.edit70:setAlign("client");
    obj.edit70:setField("outrosRef");
    obj.edit70:setHorzTextAlign("center");
    obj.edit70:setFontSize(12);
    obj.edit70:setType("number");
    obj.edit70:setName("edit70");

    obj.dataLink8 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.popResistencia);
    obj.dataLink8:setFields({'baseRef', 'efetModDes', 'magiaRef', 'variavelRef', 'temporarioRef', 'outrosRef'});
    obj.dataLink8:setName("dataLink8");

    obj.flowLayout11 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout11:setParent(obj.popResistencia);
    obj.flowLayout11:setAlign("top");
    obj.flowLayout11:setAutoHeight(true);
    obj.flowLayout11:setMaxControlsPerLine(11);
    obj.flowLayout11:setMargins({bottom=4});
    obj.flowLayout11:setHorzAlign("center");
    obj.flowLayout11:setName("flowLayout11");

    obj.flowPart96 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart96:setParent(obj.flowLayout11);
    obj.flowPart96:setMinWidth(50);
    obj.flowPart96:setMaxWidth(50);
    obj.flowPart96:setHeight(20);
    obj.flowPart96:setName("flowPart96");

    obj.edit71 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.flowPart96);
    obj.edit71:setAlign("client");
    obj.edit71:setField("baseVon");
    obj.edit71:setHorzTextAlign("center");
    obj.edit71:setFontSize(12);
    obj.edit71:setType("number");
    obj.edit71:setName("edit71");

    obj.flowPart97 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart97:setParent(obj.flowLayout11);
    obj.flowPart97:setMinWidth(50);
    obj.flowPart97:setMaxWidth(50);
    obj.flowPart97:setHeight(20);
    obj.flowPart97:setName("flowPart97");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.flowPart97);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("black");
    obj.rectangle3:setStrokeColor("white");
    obj.rectangle3:setStrokeSize(1);
    obj.rectangle3:setName("rectangle3");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.flowPart97);
    obj.label19:setAlign("client");
    obj.label19:setField("efetModSab");
    obj.label19:setHorzTextAlign("center");
    obj.label19:setFontSize(12);
    obj.label19:setName("label19");

    obj.flowPart98 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart98:setParent(obj.flowLayout11);
    obj.flowPart98:setMinWidth(50);
    obj.flowPart98:setMaxWidth(50);
    obj.flowPart98:setHeight(20);
    obj.flowPart98:setName("flowPart98");

    obj.edit72 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.flowPart98);
    obj.edit72:setAlign("client");
    obj.edit72:setField("magiaVon");
    obj.edit72:setHorzTextAlign("center");
    obj.edit72:setFontSize(12);
    obj.edit72:setType("number");
    obj.edit72:setName("edit72");

    obj.flowPart99 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart99:setParent(obj.flowLayout11);
    obj.flowPart99:setMinWidth(50);
    obj.flowPart99:setMaxWidth(50);
    obj.flowPart99:setHeight(20);
    obj.flowPart99:setName("flowPart99");

    obj.edit73 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.flowPart99);
    obj.edit73:setAlign("client");
    obj.edit73:setField("variavelVon");
    obj.edit73:setHorzTextAlign("center");
    obj.edit73:setFontSize(12);
    obj.edit73:setType("number");
    obj.edit73:setName("edit73");

    obj.flowPart100 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart100:setParent(obj.flowLayout11);
    obj.flowPart100:setMinWidth(50);
    obj.flowPart100:setMaxWidth(50);
    obj.flowPart100:setHeight(20);
    obj.flowPart100:setName("flowPart100");

    obj.edit74 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.flowPart100);
    obj.edit74:setAlign("client");
    obj.edit74:setField("temporarioVon");
    obj.edit74:setHorzTextAlign("center");
    obj.edit74:setFontSize(12);
    obj.edit74:setType("number");
    obj.edit74:setName("edit74");

    obj.flowPart101 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart101:setParent(obj.flowLayout11);
    obj.flowPart101:setMinWidth(50);
    obj.flowPart101:setMaxWidth(50);
    obj.flowPart101:setHeight(20);
    obj.flowPart101:setName("flowPart101");

    obj.edit75 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.flowPart101);
    obj.edit75:setAlign("client");
    obj.edit75:setField("outrosVon");
    obj.edit75:setHorzTextAlign("center");
    obj.edit75:setFontSize(12);
    obj.edit75:setType("number");
    obj.edit75:setName("edit75");

    obj.dataLink9 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.popResistencia);
    obj.dataLink9:setFields({'baseVon', 'efetModSab', 'magiaVon', 'variavelVon', 'temporarioVon', 'outrosVon'});
    obj.dataLink9:setName("dataLink9");

    obj.textEditor1 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.popResistencia);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setField("trCondicional");
    obj.textEditor1:setName("textEditor1");

    obj.popCA = gui.fromHandle(_obj_newObject("popup"));
    obj.popCA:setParent(obj.scrollBox1);
    obj.popCA:setName("popCA");
    obj.popCA:setWidth(600);
    obj.popCA:setHeight(210);
    obj.popCA:setBackOpacity(0.4);

    obj.flowLayout12 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout12:setParent(obj.popCA);
    obj.flowLayout12:setAlign("top");
    obj.flowLayout12:setAutoHeight(true);
    obj.flowLayout12:setMargins({bottom=4});
    obj.flowLayout12:setName("flowLayout12");

    obj.flowPart102 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart102:setParent(obj.flowLayout12);
    obj.flowPart102:setMinWidth(50);
    obj.flowPart102:setMaxWidth(50);
    obj.flowPart102:setHeight(15);
    obj.flowPart102:setName("flowPart102");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.flowPart102);
    obj.label20:setAlign("top");
    obj.label20:setFontSize(10);
    obj.label20:setText("Armadura");
    obj.label20:setHorzTextAlign("center");
    obj.label20:setWordWrap(true);
    obj.label20:setTextTrimming("none");
    obj.label20:setAutoSize(true);
    obj.label20:setName("label20");

    obj.flowPart103 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart103:setParent(obj.flowLayout12);
    obj.flowPart103:setMinWidth(50);
    obj.flowPart103:setMaxWidth(50);
    obj.flowPart103:setHeight(20);
    obj.flowPart103:setName("flowPart103");

    obj.edit76 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.flowPart103);
    obj.edit76:setAlign("client");
    obj.edit76:setField("armaduraCa");
    obj.edit76:setHorzTextAlign("center");
    obj.edit76:setFontSize(12);
    obj.edit76:setType("number");
    obj.edit76:setName("edit76");

    obj.flowPart104 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart104:setParent(obj.flowLayout12);
    obj.flowPart104:setMinWidth(140);
    obj.flowPart104:setMaxWidth(150);
    obj.flowPart104:setHeight(20);
    obj.flowPart104:setName("flowPart104");

    obj.edit77 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.flowPart104);
    obj.edit77:setAlign("client");
    obj.edit77:setField("armaduraCa2");
    obj.edit77:setFontSize(12);
    obj.edit77:setName("edit77");

    obj.flowPart105 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart105:setParent(obj.flowLayout12);
    obj.flowPart105:setMinWidth(50);
    obj.flowPart105:setMaxWidth(60);
    obj.flowPart105:setHeight(20);
    obj.flowPart105:setName("flowPart105");

    obj.checkBox1 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.flowPart105);
    obj.checkBox1:setField("armaduraCaSurp");
    obj.checkBox1:setText("Surpresa");
    obj.checkBox1:setFontSize(10);
    obj.checkBox1:setHeight(20);
    obj.checkBox1:setName("checkBox1");

    obj.flowPart106 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart106:setParent(obj.flowLayout12);
    obj.flowPart106:setMinWidth(50);
    obj.flowPart106:setMaxWidth(60);
    obj.flowPart106:setHeight(20);
    obj.flowPart106:setName("flowPart106");

    obj.checkBox2 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox2:setParent(obj.flowPart106);
    obj.checkBox2:setField("armaduraCaToque");
    obj.checkBox2:setText("Toque");
    obj.checkBox2:setFontSize(10);
    obj.checkBox2:setHeight(15);
    obj.checkBox2:setName("checkBox2");

    obj.flowPart107 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart107:setParent(obj.flowLayout12);
    obj.flowPart107:setMinWidth(10);
    obj.flowPart107:setMaxWidth(20);
    obj.flowPart107:setHeight(15);
    obj.flowPart107:setName("flowPart107");

    obj.flowPart108 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart108:setParent(obj.flowLayout12);
    obj.flowPart108:setMinWidth(50);
    obj.flowPart108:setMaxWidth(50);
    obj.flowPart108:setHeight(15);
    obj.flowPart108:setName("flowPart108");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.flowPart108);
    obj.label21:setAlign("top");
    obj.label21:setFontSize(10);
    obj.label21:setText("Penalidade");
    obj.label21:setHorzTextAlign("center");
    obj.label21:setWordWrap(true);
    obj.label21:setTextTrimming("none");
    obj.label21:setAutoSize(true);
    obj.label21:setName("label21");

    obj.flowPart109 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart109:setParent(obj.flowLayout12);
    obj.flowPart109:setMinWidth(50);
    obj.flowPart109:setMaxWidth(50);
    obj.flowPart109:setHeight(20);
    obj.flowPart109:setName("flowPart109");

    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.flowPart109);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("black");
    obj.rectangle4:setStrokeColor("white");
    obj.rectangle4:setStrokeSize(1);
    obj.rectangle4:setName("rectangle4");

    obj.label22 = gui.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.flowPart109);
    obj.label22:setAlign("client");
    obj.label22:setField("equipamentoCorpoPen");
    obj.label22:setHorzTextAlign("center");
    obj.label22:setFontSize(12);
    obj.label22:setName("label22");

    obj.flowPart110 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart110:setParent(obj.flowLayout12);
    obj.flowPart110:setMinWidth(50);
    obj.flowPart110:setMaxWidth(50);
    obj.flowPart110:setHeight(15);
    obj.flowPart110:setName("flowPart110");

    obj.label23 = gui.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.flowPart110);
    obj.label23:setAlign("top");
    obj.label23:setFontSize(10);
    obj.label23:setText("Falha");
    obj.label23:setHorzTextAlign("center");
    obj.label23:setWordWrap(true);
    obj.label23:setTextTrimming("none");
    obj.label23:setAutoSize(true);
    obj.label23:setName("label23");

    obj.flowPart111 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart111:setParent(obj.flowLayout12);
    obj.flowPart111:setMinWidth(50);
    obj.flowPart111:setMaxWidth(50);
    obj.flowPart111:setHeight(20);
    obj.flowPart111:setName("flowPart111");

    obj.rectangle5 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.flowPart111);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("black");
    obj.rectangle5:setStrokeColor("white");
    obj.rectangle5:setStrokeSize(1);
    obj.rectangle5:setName("rectangle5");

    obj.label24 = gui.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.flowPart111);
    obj.label24:setAlign("client");
    obj.label24:setField("equipamentoCorpoFalha");
    obj.label24:setHorzTextAlign("center");
    obj.label24:setFontSize(12);
    obj.label24:setName("label24");

    obj.flowLineBreak1 = gui.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak1:setParent(obj.flowLayout12);
    obj.flowLineBreak1:setName("flowLineBreak1");

    obj.flowPart112 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart112:setParent(obj.flowLayout12);
    obj.flowPart112:setMinWidth(50);
    obj.flowPart112:setMaxWidth(50);
    obj.flowPart112:setHeight(15);
    obj.flowPart112:setName("flowPart112");

    obj.label25 = gui.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.flowPart112);
    obj.label25:setAlign("top");
    obj.label25:setFontSize(10);
    obj.label25:setText("Escudo");
    obj.label25:setHorzTextAlign("center");
    obj.label25:setWordWrap(true);
    obj.label25:setTextTrimming("none");
    obj.label25:setAutoSize(true);
    obj.label25:setName("label25");

    obj.flowPart113 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart113:setParent(obj.flowLayout12);
    obj.flowPart113:setMinWidth(50);
    obj.flowPart113:setMaxWidth(50);
    obj.flowPart113:setHeight(20);
    obj.flowPart113:setName("flowPart113");

    obj.edit78 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.flowPart113);
    obj.edit78:setAlign("client");
    obj.edit78:setField("escudoCa");
    obj.edit78:setHorzTextAlign("center");
    obj.edit78:setFontSize(12);
    obj.edit78:setType("number");
    obj.edit78:setName("edit78");

    obj.flowPart114 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart114:setParent(obj.flowLayout12);
    obj.flowPart114:setMinWidth(140);
    obj.flowPart114:setMaxWidth(150);
    obj.flowPart114:setHeight(20);
    obj.flowPart114:setName("flowPart114");

    obj.edit79 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.flowPart114);
    obj.edit79:setAlign("client");
    obj.edit79:setField("escudoCa2");
    obj.edit79:setFontSize(12);
    obj.edit79:setName("edit79");

    obj.flowPart115 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart115:setParent(obj.flowLayout12);
    obj.flowPart115:setMinWidth(50);
    obj.flowPart115:setMaxWidth(60);
    obj.flowPart115:setHeight(20);
    obj.flowPart115:setName("flowPart115");

    obj.checkBox3 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox3:setParent(obj.flowPart115);
    obj.checkBox3:setField("escudoCaSurp");
    obj.checkBox3:setText("Surpresa");
    obj.checkBox3:setFontSize(10);
    obj.checkBox3:setHeight(20);
    obj.checkBox3:setName("checkBox3");

    obj.flowPart116 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart116:setParent(obj.flowLayout12);
    obj.flowPart116:setMinWidth(50);
    obj.flowPart116:setMaxWidth(60);
    obj.flowPart116:setHeight(20);
    obj.flowPart116:setName("flowPart116");

    obj.checkBox4 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox4:setParent(obj.flowPart116);
    obj.checkBox4:setField("escudoCaToque");
    obj.checkBox4:setText("Toque");
    obj.checkBox4:setFontSize(10);
    obj.checkBox4:setHeight(15);
    obj.checkBox4:setName("checkBox4");

    obj.flowPart117 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart117:setParent(obj.flowLayout12);
    obj.flowPart117:setMinWidth(10);
    obj.flowPart117:setMaxWidth(20);
    obj.flowPart117:setHeight(15);
    obj.flowPart117:setName("flowPart117");

    obj.flowPart118 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart118:setParent(obj.flowLayout12);
    obj.flowPart118:setMinWidth(50);
    obj.flowPart118:setMaxWidth(50);
    obj.flowPart118:setHeight(15);
    obj.flowPart118:setName("flowPart118");

    obj.label26 = gui.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.flowPart118);
    obj.label26:setAlign("top");
    obj.label26:setFontSize(10);
    obj.label26:setText("Penalidade");
    obj.label26:setHorzTextAlign("center");
    obj.label26:setWordWrap(true);
    obj.label26:setTextTrimming("none");
    obj.label26:setAutoSize(true);
    obj.label26:setName("label26");

    obj.flowPart119 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart119:setParent(obj.flowLayout12);
    obj.flowPart119:setMinWidth(50);
    obj.flowPart119:setMaxWidth(50);
    obj.flowPart119:setHeight(20);
    obj.flowPart119:setName("flowPart119");

    obj.edit80 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.flowPart119);
    obj.edit80:setAlign("client");
    obj.edit80:setField("escudoPen");
    obj.edit80:setHorzTextAlign("center");
    obj.edit80:setFontSize(12);
    obj.edit80:setType("number");
    obj.edit80:setName("edit80");

    obj.flowPart120 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart120:setParent(obj.flowLayout12);
    obj.flowPart120:setMinWidth(50);
    obj.flowPart120:setMaxWidth(50);
    obj.flowPart120:setHeight(15);
    obj.flowPart120:setName("flowPart120");

    obj.label27 = gui.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.flowPart120);
    obj.label27:setAlign("top");
    obj.label27:setFontSize(10);
    obj.label27:setText("Falha");
    obj.label27:setHorzTextAlign("center");
    obj.label27:setWordWrap(true);
    obj.label27:setTextTrimming("none");
    obj.label27:setAutoSize(true);
    obj.label27:setName("label27");

    obj.flowPart121 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart121:setParent(obj.flowLayout12);
    obj.flowPart121:setMinWidth(50);
    obj.flowPart121:setMaxWidth(50);
    obj.flowPart121:setHeight(20);
    obj.flowPart121:setName("flowPart121");

    obj.edit81 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.flowPart121);
    obj.edit81:setAlign("client");
    obj.edit81:setField("escudoFalha");
    obj.edit81:setHorzTextAlign("center");
    obj.edit81:setFontSize(12);
    obj.edit81:setType("number");
    obj.edit81:setName("edit81");

    obj.flowLineBreak2 = gui.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak2:setParent(obj.flowLayout12);
    obj.flowLineBreak2:setName("flowLineBreak2");

    obj.flowPart122 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart122:setParent(obj.flowLayout12);
    obj.flowPart122:setMinWidth(50);
    obj.flowPart122:setMaxWidth(50);
    obj.flowPart122:setHeight(15);
    obj.flowPart122:setName("flowPart122");

    obj.label28 = gui.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.flowPart122);
    obj.label28:setAlign("top");
    obj.label28:setFontSize(10);
    obj.label28:setText("Destreza");
    obj.label28:setHorzTextAlign("center");
    obj.label28:setWordWrap(true);
    obj.label28:setTextTrimming("none");
    obj.label28:setAutoSize(true);
    obj.label28:setName("label28");

    obj.flowPart123 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart123:setParent(obj.flowLayout12);
    obj.flowPart123:setMinWidth(50);
    obj.flowPart123:setMaxWidth(50);
    obj.flowPart123:setHeight(20);
    obj.flowPart123:setName("flowPart123");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.flowPart123);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("black");
    obj.rectangle6:setStrokeColor("white");
    obj.rectangle6:setStrokeSize(1);
    obj.rectangle6:setName("rectangle6");

    obj.label29 = gui.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.flowPart123);
    obj.label29:setAlign("client");
    obj.label29:setField("efetModDes");
    obj.label29:setHorzTextAlign("center");
    obj.label29:setFontSize(12);
    obj.label29:setName("label29");

    obj.flowPart124 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart124:setParent(obj.flowLayout12);
    obj.flowPart124:setMinWidth(140);
    obj.flowPart124:setMaxWidth(150);
    obj.flowPart124:setHeight(20);
    obj.flowPart124:setName("flowPart124");

    obj.edit82 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.flowPart124);
    obj.edit82:setAlign("client");
    obj.edit82:setField("destrezaCa2");
    obj.edit82:setFontSize(12);
    obj.edit82:setName("edit82");

    obj.flowPart125 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart125:setParent(obj.flowLayout12);
    obj.flowPart125:setMinWidth(50);
    obj.flowPart125:setMaxWidth(60);
    obj.flowPart125:setHeight(20);
    obj.flowPart125:setName("flowPart125");

    obj.checkBox5 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox5:setParent(obj.flowPart125);
    obj.checkBox5:setField("destrezaCaSurp");
    obj.checkBox5:setText("Surpresa");
    obj.checkBox5:setFontSize(10);
    obj.checkBox5:setHeight(20);
    obj.checkBox5:setName("checkBox5");

    obj.flowPart126 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart126:setParent(obj.flowLayout12);
    obj.flowPart126:setMinWidth(50);
    obj.flowPart126:setMaxWidth(60);
    obj.flowPart126:setHeight(20);
    obj.flowPart126:setName("flowPart126");

    obj.checkBox6 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox6:setParent(obj.flowPart126);
    obj.checkBox6:setField("destrezaCaToque");
    obj.checkBox6:setText("Toque");
    obj.checkBox6:setFontSize(10);
    obj.checkBox6:setHeight(15);
    obj.checkBox6:setName("checkBox6");

    obj.flowLineBreak3 = gui.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak3:setParent(obj.flowLayout12);
    obj.flowLineBreak3:setName("flowLineBreak3");

    obj.flowPart127 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart127:setParent(obj.flowLayout12);
    obj.flowPart127:setMinWidth(50);
    obj.flowPart127:setMaxWidth(50);
    obj.flowPart127:setHeight(15);
    obj.flowPart127:setName("flowPart127");

    obj.label30 = gui.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.flowPart127);
    obj.label30:setAlign("top");
    obj.label30:setFontSize(10);
    obj.label30:setText("Tamanho");
    obj.label30:setHorzTextAlign("center");
    obj.label30:setWordWrap(true);
    obj.label30:setTextTrimming("none");
    obj.label30:setAutoSize(true);
    obj.label30:setName("label30");

    obj.flowPart128 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart128:setParent(obj.flowLayout12);
    obj.flowPart128:setMinWidth(50);
    obj.flowPart128:setMaxWidth(50);
    obj.flowPart128:setHeight(20);
    obj.flowPart128:setName("flowPart128");

    obj.edit83 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.flowPart128);
    obj.edit83:setAlign("client");
    obj.edit83:setField("tamanhoCa");
    obj.edit83:setHorzTextAlign("center");
    obj.edit83:setFontSize(12);
    obj.edit83:setType("number");
    obj.edit83:setName("edit83");

    obj.flowPart129 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart129:setParent(obj.flowLayout12);
    obj.flowPart129:setMinWidth(140);
    obj.flowPart129:setMaxWidth(150);
    obj.flowPart129:setHeight(20);
    obj.flowPart129:setName("flowPart129");

    obj.edit84 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.flowPart129);
    obj.edit84:setAlign("client");
    obj.edit84:setField("tamanhoCa2");
    obj.edit84:setFontSize(12);
    obj.edit84:setName("edit84");

    obj.flowPart130 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart130:setParent(obj.flowLayout12);
    obj.flowPart130:setMinWidth(50);
    obj.flowPart130:setMaxWidth(60);
    obj.flowPart130:setHeight(20);
    obj.flowPart130:setName("flowPart130");

    obj.checkBox7 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox7:setParent(obj.flowPart130);
    obj.checkBox7:setField("tamanhoCaSurp");
    obj.checkBox7:setText("Surpresa");
    obj.checkBox7:setFontSize(10);
    obj.checkBox7:setHeight(20);
    obj.checkBox7:setName("checkBox7");

    obj.flowPart131 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart131:setParent(obj.flowLayout12);
    obj.flowPart131:setMinWidth(50);
    obj.flowPart131:setMaxWidth(60);
    obj.flowPart131:setHeight(20);
    obj.flowPart131:setName("flowPart131");

    obj.checkBox8 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox8:setParent(obj.flowPart131);
    obj.checkBox8:setField("tamanhoCaToque");
    obj.checkBox8:setText("Toque");
    obj.checkBox8:setFontSize(10);
    obj.checkBox8:setHeight(15);
    obj.checkBox8:setName("checkBox8");

    obj.flowLineBreak4 = gui.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak4:setParent(obj.flowLayout12);
    obj.flowLineBreak4:setName("flowLineBreak4");

    obj.flowPart132 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart132:setParent(obj.flowLayout12);
    obj.flowPart132:setMinWidth(50);
    obj.flowPart132:setMaxWidth(50);
    obj.flowPart132:setHeight(15);
    obj.flowPart132:setName("flowPart132");

    obj.label31 = gui.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.flowPart132);
    obj.label31:setAlign("top");
    obj.label31:setFontSize(10);
    obj.label31:setText("Natural");
    obj.label31:setHorzTextAlign("center");
    obj.label31:setWordWrap(true);
    obj.label31:setTextTrimming("none");
    obj.label31:setAutoSize(true);
    obj.label31:setName("label31");

    obj.flowPart133 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart133:setParent(obj.flowLayout12);
    obj.flowPart133:setMinWidth(50);
    obj.flowPart133:setMaxWidth(50);
    obj.flowPart133:setHeight(20);
    obj.flowPart133:setName("flowPart133");

    obj.edit85 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.flowPart133);
    obj.edit85:setAlign("client");
    obj.edit85:setField("naturalCa");
    obj.edit85:setHorzTextAlign("center");
    obj.edit85:setFontSize(12);
    obj.edit85:setType("number");
    obj.edit85:setName("edit85");

    obj.flowPart134 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart134:setParent(obj.flowLayout12);
    obj.flowPart134:setMinWidth(140);
    obj.flowPart134:setMaxWidth(150);
    obj.flowPart134:setHeight(20);
    obj.flowPart134:setName("flowPart134");

    obj.edit86 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit86:setParent(obj.flowPart134);
    obj.edit86:setAlign("client");
    obj.edit86:setField("naturalCa2");
    obj.edit86:setFontSize(12);
    obj.edit86:setName("edit86");

    obj.flowPart135 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart135:setParent(obj.flowLayout12);
    obj.flowPart135:setMinWidth(50);
    obj.flowPart135:setMaxWidth(60);
    obj.flowPart135:setHeight(20);
    obj.flowPart135:setName("flowPart135");

    obj.checkBox9 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox9:setParent(obj.flowPart135);
    obj.checkBox9:setField("naturalCaSurp");
    obj.checkBox9:setText("Surpresa");
    obj.checkBox9:setFontSize(10);
    obj.checkBox9:setHeight(20);
    obj.checkBox9:setName("checkBox9");

    obj.flowPart136 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart136:setParent(obj.flowLayout12);
    obj.flowPart136:setMinWidth(50);
    obj.flowPart136:setMaxWidth(60);
    obj.flowPart136:setHeight(20);
    obj.flowPart136:setName("flowPart136");

    obj.checkBox10 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox10:setParent(obj.flowPart136);
    obj.checkBox10:setField("naturalCaToque");
    obj.checkBox10:setText("Toque");
    obj.checkBox10:setFontSize(10);
    obj.checkBox10:setHeight(15);
    obj.checkBox10:setName("checkBox10");

    obj.flowLineBreak5 = gui.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak5:setParent(obj.flowLayout12);
    obj.flowLineBreak5:setName("flowLineBreak5");

    obj.flowPart137 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart137:setParent(obj.flowLayout12);
    obj.flowPart137:setMinWidth(50);
    obj.flowPart137:setMaxWidth(50);
    obj.flowPart137:setHeight(15);
    obj.flowPart137:setName("flowPart137");

    obj.label32 = gui.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.flowPart137);
    obj.label32:setAlign("top");
    obj.label32:setFontSize(10);
    obj.label32:setText("Deflexao");
    obj.label32:setHorzTextAlign("center");
    obj.label32:setWordWrap(true);
    obj.label32:setTextTrimming("none");
    obj.label32:setAutoSize(true);
    obj.label32:setName("label32");

    obj.flowPart138 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart138:setParent(obj.flowLayout12);
    obj.flowPart138:setMinWidth(50);
    obj.flowPart138:setMaxWidth(50);
    obj.flowPart138:setHeight(20);
    obj.flowPart138:setName("flowPart138");

    obj.edit87 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit87:setParent(obj.flowPart138);
    obj.edit87:setAlign("client");
    obj.edit87:setField("deflexaoCa");
    obj.edit87:setHorzTextAlign("center");
    obj.edit87:setFontSize(12);
    obj.edit87:setType("number");
    obj.edit87:setName("edit87");

    obj.flowPart139 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart139:setParent(obj.flowLayout12);
    obj.flowPart139:setMinWidth(140);
    obj.flowPart139:setMaxWidth(150);
    obj.flowPart139:setHeight(20);
    obj.flowPart139:setName("flowPart139");

    obj.edit88 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit88:setParent(obj.flowPart139);
    obj.edit88:setAlign("client");
    obj.edit88:setField("deflexaoCa2");
    obj.edit88:setFontSize(12);
    obj.edit88:setName("edit88");

    obj.flowPart140 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart140:setParent(obj.flowLayout12);
    obj.flowPart140:setMinWidth(50);
    obj.flowPart140:setMaxWidth(60);
    obj.flowPart140:setHeight(20);
    obj.flowPart140:setName("flowPart140");

    obj.checkBox11 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox11:setParent(obj.flowPart140);
    obj.checkBox11:setField("deflexaoCaSurp");
    obj.checkBox11:setText("Surpresa");
    obj.checkBox11:setFontSize(10);
    obj.checkBox11:setHeight(20);
    obj.checkBox11:setName("checkBox11");

    obj.flowPart141 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart141:setParent(obj.flowLayout12);
    obj.flowPart141:setMinWidth(50);
    obj.flowPart141:setMaxWidth(60);
    obj.flowPart141:setHeight(20);
    obj.flowPart141:setName("flowPart141");

    obj.checkBox12 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox12:setParent(obj.flowPart141);
    obj.checkBox12:setField("deflexaoCaToque");
    obj.checkBox12:setText("Toque");
    obj.checkBox12:setFontSize(10);
    obj.checkBox12:setHeight(15);
    obj.checkBox12:setName("checkBox12");

    obj.flowLineBreak6 = gui.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak6:setParent(obj.flowLayout12);
    obj.flowLineBreak6:setName("flowLineBreak6");

    obj.flowPart142 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart142:setParent(obj.flowLayout12);
    obj.flowPart142:setMinWidth(50);
    obj.flowPart142:setMaxWidth(50);
    obj.flowPart142:setHeight(15);
    obj.flowPart142:setName("flowPart142");

    obj.label33 = gui.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.flowPart142);
    obj.label33:setAlign("top");
    obj.label33:setFontSize(10);
    obj.label33:setText("Esquiva");
    obj.label33:setHorzTextAlign("center");
    obj.label33:setWordWrap(true);
    obj.label33:setTextTrimming("none");
    obj.label33:setAutoSize(true);
    obj.label33:setName("label33");

    obj.flowPart143 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart143:setParent(obj.flowLayout12);
    obj.flowPart143:setMinWidth(50);
    obj.flowPart143:setMaxWidth(50);
    obj.flowPart143:setHeight(20);
    obj.flowPart143:setName("flowPart143");

    obj.edit89 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit89:setParent(obj.flowPart143);
    obj.edit89:setAlign("client");
    obj.edit89:setField("esquivaCa");
    obj.edit89:setHorzTextAlign("center");
    obj.edit89:setFontSize(12);
    obj.edit89:setType("number");
    obj.edit89:setName("edit89");

    obj.flowPart144 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart144:setParent(obj.flowLayout12);
    obj.flowPart144:setMinWidth(140);
    obj.flowPart144:setMaxWidth(150);
    obj.flowPart144:setHeight(20);
    obj.flowPart144:setName("flowPart144");

    obj.edit90 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit90:setParent(obj.flowPart144);
    obj.edit90:setAlign("client");
    obj.edit90:setField("esquivaCa2");
    obj.edit90:setFontSize(12);
    obj.edit90:setName("edit90");

    obj.flowPart145 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart145:setParent(obj.flowLayout12);
    obj.flowPart145:setMinWidth(50);
    obj.flowPart145:setMaxWidth(60);
    obj.flowPart145:setHeight(20);
    obj.flowPart145:setName("flowPart145");

    obj.checkBox13 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox13:setParent(obj.flowPart145);
    obj.checkBox13:setField("esquivaCaSurp");
    obj.checkBox13:setText("Surpresa");
    obj.checkBox13:setFontSize(10);
    obj.checkBox13:setHeight(20);
    obj.checkBox13:setName("checkBox13");

    obj.flowPart146 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart146:setParent(obj.flowLayout12);
    obj.flowPart146:setMinWidth(50);
    obj.flowPart146:setMaxWidth(60);
    obj.flowPart146:setHeight(20);
    obj.flowPart146:setName("flowPart146");

    obj.checkBox14 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox14:setParent(obj.flowPart146);
    obj.checkBox14:setField("esquivaCaToque");
    obj.checkBox14:setText("Toque");
    obj.checkBox14:setFontSize(10);
    obj.checkBox14:setHeight(15);
    obj.checkBox14:setName("checkBox14");

    obj.flowLineBreak7 = gui.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak7:setParent(obj.flowLayout12);
    obj.flowLineBreak7:setName("flowLineBreak7");

    obj.flowPart147 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart147:setParent(obj.flowLayout12);
    obj.flowPart147:setMinWidth(50);
    obj.flowPart147:setMaxWidth(50);
    obj.flowPart147:setHeight(15);
    obj.flowPart147:setName("flowPart147");

    obj.label34 = gui.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.flowPart147);
    obj.label34:setAlign("top");
    obj.label34:setFontSize(10);
    obj.label34:setText("Sorte");
    obj.label34:setHorzTextAlign("center");
    obj.label34:setWordWrap(true);
    obj.label34:setTextTrimming("none");
    obj.label34:setAutoSize(true);
    obj.label34:setName("label34");

    obj.flowPart148 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart148:setParent(obj.flowLayout12);
    obj.flowPart148:setMinWidth(50);
    obj.flowPart148:setMaxWidth(50);
    obj.flowPart148:setHeight(20);
    obj.flowPart148:setName("flowPart148");

    obj.edit91 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit91:setParent(obj.flowPart148);
    obj.edit91:setAlign("client");
    obj.edit91:setField("sorteCa");
    obj.edit91:setHorzTextAlign("center");
    obj.edit91:setFontSize(12);
    obj.edit91:setType("number");
    obj.edit91:setName("edit91");

    obj.flowPart149 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart149:setParent(obj.flowLayout12);
    obj.flowPart149:setMinWidth(140);
    obj.flowPart149:setMaxWidth(150);
    obj.flowPart149:setHeight(20);
    obj.flowPart149:setName("flowPart149");

    obj.edit92 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit92:setParent(obj.flowPart149);
    obj.edit92:setAlign("client");
    obj.edit92:setField("sorteCa2");
    obj.edit92:setFontSize(12);
    obj.edit92:setName("edit92");

    obj.flowPart150 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart150:setParent(obj.flowLayout12);
    obj.flowPart150:setMinWidth(50);
    obj.flowPart150:setMaxWidth(60);
    obj.flowPart150:setHeight(20);
    obj.flowPart150:setName("flowPart150");

    obj.checkBox15 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox15:setParent(obj.flowPart150);
    obj.checkBox15:setField("sorteCaSurp");
    obj.checkBox15:setText("Surpresa");
    obj.checkBox15:setFontSize(10);
    obj.checkBox15:setHeight(20);
    obj.checkBox15:setName("checkBox15");

    obj.flowPart151 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart151:setParent(obj.flowLayout12);
    obj.flowPart151:setMinWidth(50);
    obj.flowPart151:setMaxWidth(60);
    obj.flowPart151:setHeight(20);
    obj.flowPart151:setName("flowPart151");

    obj.checkBox16 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox16:setParent(obj.flowPart151);
    obj.checkBox16:setField("sorteCaToque");
    obj.checkBox16:setText("Toque");
    obj.checkBox16:setFontSize(10);
    obj.checkBox16:setHeight(15);
    obj.checkBox16:setName("checkBox16");

    obj.flowLineBreak8 = gui.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak8:setParent(obj.flowLayout12);
    obj.flowLineBreak8:setName("flowLineBreak8");

    obj.flowPart152 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart152:setParent(obj.flowLayout12);
    obj.flowPart152:setMinWidth(50);
    obj.flowPart152:setMaxWidth(50);
    obj.flowPart152:setHeight(15);
    obj.flowPart152:setName("flowPart152");

    obj.label35 = gui.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.flowPart152);
    obj.label35:setAlign("top");
    obj.label35:setFontSize(10);
    obj.label35:setText("Outros");
    obj.label35:setHorzTextAlign("center");
    obj.label35:setWordWrap(true);
    obj.label35:setTextTrimming("none");
    obj.label35:setAutoSize(true);
    obj.label35:setName("label35");

    obj.flowPart153 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart153:setParent(obj.flowLayout12);
    obj.flowPart153:setMinWidth(50);
    obj.flowPart153:setMaxWidth(50);
    obj.flowPart153:setHeight(20);
    obj.flowPart153:setName("flowPart153");

    obj.edit93 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit93:setParent(obj.flowPart153);
    obj.edit93:setAlign("client");
    obj.edit93:setField("outrosCa");
    obj.edit93:setHorzTextAlign("center");
    obj.edit93:setFontSize(12);
    obj.edit93:setType("number");
    obj.edit93:setName("edit93");

    obj.flowPart154 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart154:setParent(obj.flowLayout12);
    obj.flowPart154:setMinWidth(140);
    obj.flowPart154:setMaxWidth(150);
    obj.flowPart154:setHeight(20);
    obj.flowPart154:setName("flowPart154");

    obj.edit94 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit94:setParent(obj.flowPart154);
    obj.edit94:setAlign("client");
    obj.edit94:setField("outrosCa2");
    obj.edit94:setFontSize(12);
    obj.edit94:setName("edit94");

    obj.flowPart155 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart155:setParent(obj.flowLayout12);
    obj.flowPart155:setMinWidth(50);
    obj.flowPart155:setMaxWidth(60);
    obj.flowPart155:setHeight(20);
    obj.flowPart155:setName("flowPart155");

    obj.checkBox17 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox17:setParent(obj.flowPart155);
    obj.checkBox17:setField("outrosCaSurp");
    obj.checkBox17:setText("Surpresa");
    obj.checkBox17:setFontSize(10);
    obj.checkBox17:setHeight(20);
    obj.checkBox17:setName("checkBox17");

    obj.flowPart156 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart156:setParent(obj.flowLayout12);
    obj.flowPart156:setMinWidth(50);
    obj.flowPart156:setMaxWidth(60);
    obj.flowPart156:setHeight(20);
    obj.flowPart156:setName("flowPart156");

    obj.checkBox18 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox18:setParent(obj.flowPart156);
    obj.checkBox18:setField("outrosCaToque");
    obj.checkBox18:setText("Toque");
    obj.checkBox18:setFontSize(10);
    obj.checkBox18:setHeight(15);
    obj.checkBox18:setName("checkBox18");

    obj.flowLineBreak9 = gui.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak9:setParent(obj.flowLayout12);
    obj.flowLineBreak9:setName("flowLineBreak9");

    obj.flowPart157 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart157:setParent(obj.flowLayout12);
    obj.flowPart157:setMinWidth(50);
    obj.flowPart157:setMaxWidth(50);
    obj.flowPart157:setHeight(15);
    obj.flowPart157:setName("flowPart157");

    obj.label36 = gui.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.flowPart157);
    obj.label36:setAlign("top");
    obj.label36:setFontSize(10);
    obj.label36:setText("Variados");
    obj.label36:setHorzTextAlign("center");
    obj.label36:setWordWrap(true);
    obj.label36:setTextTrimming("none");
    obj.label36:setAutoSize(true);
    obj.label36:setName("label36");

    obj.flowPart158 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart158:setParent(obj.flowLayout12);
    obj.flowPart158:setMinWidth(50);
    obj.flowPart158:setMaxWidth(50);
    obj.flowPart158:setHeight(20);
    obj.flowPart158:setName("flowPart158");

    obj.edit95 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit95:setParent(obj.flowPart158);
    obj.edit95:setAlign("client");
    obj.edit95:setField("variadosCa");
    obj.edit95:setHorzTextAlign("center");
    obj.edit95:setFontSize(12);
    obj.edit95:setType("number");
    obj.edit95:setName("edit95");

    obj.flowPart159 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart159:setParent(obj.flowLayout12);
    obj.flowPart159:setMinWidth(140);
    obj.flowPart159:setMaxWidth(150);
    obj.flowPart159:setHeight(20);
    obj.flowPart159:setName("flowPart159");

    obj.edit96 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit96:setParent(obj.flowPart159);
    obj.edit96:setAlign("client");
    obj.edit96:setField("variadosCa2");
    obj.edit96:setFontSize(12);
    obj.edit96:setName("edit96");

    obj.flowPart160 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart160:setParent(obj.flowLayout12);
    obj.flowPart160:setMinWidth(50);
    obj.flowPart160:setMaxWidth(60);
    obj.flowPart160:setHeight(20);
    obj.flowPart160:setName("flowPart160");

    obj.checkBox19 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox19:setParent(obj.flowPart160);
    obj.checkBox19:setField("variadosCaSurp");
    obj.checkBox19:setText("Surpresa");
    obj.checkBox19:setFontSize(10);
    obj.checkBox19:setHeight(20);
    obj.checkBox19:setName("checkBox19");

    obj.flowPart161 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart161:setParent(obj.flowLayout12);
    obj.flowPart161:setMinWidth(50);
    obj.flowPart161:setMaxWidth(60);
    obj.flowPart161:setHeight(20);
    obj.flowPart161:setName("flowPart161");

    obj.checkBox20 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox20:setParent(obj.flowPart161);
    obj.checkBox20:setField("variadosCaToque");
    obj.checkBox20:setText("Toque");
    obj.checkBox20:setFontSize(10);
    obj.checkBox20:setHeight(15);
    obj.checkBox20:setName("checkBox20");

    obj.flowLineBreak10 = gui.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak10:setParent(obj.flowLayout12);
    obj.flowLineBreak10:setName("flowLineBreak10");

    obj.popGrapple = gui.fromHandle(_obj_newObject("popup"));
    obj.popGrapple:setParent(obj.scrollBox1);
    obj.popGrapple:setName("popGrapple");
    obj.popGrapple:setWidth(225);
    obj.popGrapple:setHeight(50);
    obj.popGrapple:setBackOpacity(0.4);

    obj.flowLayout13 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout13:setParent(obj.popGrapple);
    obj.flowLayout13:setAlign("top");
    obj.flowLayout13:setAutoHeight(true);
    obj.flowLayout13:setMaxControlsPerLine(4);
    obj.flowLayout13:setMargins({bottom=4});
    obj.flowLayout13:setHorzAlign("center");
    obj.flowLayout13:setName("flowLayout13");

    obj.flowPart162 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart162:setParent(obj.flowLayout13);
    obj.flowPart162:setMinWidth(50);
    obj.flowPart162:setMaxWidth(50);
    obj.flowPart162:setHeight(15);
    obj.flowPart162:setName("flowPart162");

    obj.label37 = gui.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.flowPart162);
    obj.label37:setAlign("top");
    obj.label37:setFontSize(10);
    obj.label37:setText("BBA");
    obj.label37:setHorzTextAlign("center");
    obj.label37:setWordWrap(true);
    obj.label37:setTextTrimming("none");
    obj.label37:setAutoSize(true);
    obj.label37:setName("label37");

    obj.flowPart163 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart163:setParent(obj.flowLayout13);
    obj.flowPart163:setMinWidth(50);
    obj.flowPart163:setMaxWidth(50);
    obj.flowPart163:setHeight(15);
    obj.flowPart163:setName("flowPart163");

    obj.label38 = gui.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.flowPart163);
    obj.label38:setAlign("top");
    obj.label38:setFontSize(10);
    obj.label38:setText("Força");
    obj.label38:setHorzTextAlign("center");
    obj.label38:setWordWrap(true);
    obj.label38:setTextTrimming("none");
    obj.label38:setAutoSize(true);
    obj.label38:setName("label38");

    obj.flowPart164 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart164:setParent(obj.flowLayout13);
    obj.flowPart164:setMinWidth(50);
    obj.flowPart164:setMaxWidth(50);
    obj.flowPart164:setHeight(15);
    obj.flowPart164:setName("flowPart164");

    obj.label39 = gui.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.flowPart164);
    obj.label39:setAlign("top");
    obj.label39:setFontSize(10);
    obj.label39:setText("Tamanho");
    obj.label39:setHorzTextAlign("center");
    obj.label39:setWordWrap(true);
    obj.label39:setTextTrimming("none");
    obj.label39:setAutoSize(true);
    obj.label39:setName("label39");

    obj.flowPart165 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart165:setParent(obj.flowLayout13);
    obj.flowPart165:setMinWidth(50);
    obj.flowPart165:setMaxWidth(50);
    obj.flowPart165:setHeight(15);
    obj.flowPart165:setName("flowPart165");

    obj.label40 = gui.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.flowPart165);
    obj.label40:setAlign("top");
    obj.label40:setFontSize(10);
    obj.label40:setText("Outros");
    obj.label40:setHorzTextAlign("center");
    obj.label40:setWordWrap(true);
    obj.label40:setTextTrimming("none");
    obj.label40:setAutoSize(true);
    obj.label40:setName("label40");

    obj.flowPart166 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart166:setParent(obj.flowLayout13);
    obj.flowPart166:setMinWidth(50);
    obj.flowPart166:setMaxWidth(50);
    obj.flowPart166:setHeight(20);
    obj.flowPart166:setName("flowPart166");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.flowPart166);
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setColor("black");
    obj.rectangle7:setStrokeColor("white");
    obj.rectangle7:setStrokeSize(1);
    obj.rectangle7:setName("rectangle7");

    obj.label41 = gui.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.flowPart166);
    obj.label41:setAlign("client");
    obj.label41:setField("bba");
    obj.label41:setHorzTextAlign("center");
    obj.label41:setFontSize(12);
    obj.label41:setName("label41");

    obj.flowPart167 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart167:setParent(obj.flowLayout13);
    obj.flowPart167:setMinWidth(50);
    obj.flowPart167:setMaxWidth(50);
    obj.flowPart167:setHeight(20);
    obj.flowPart167:setName("flowPart167");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.flowPart167);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("black");
    obj.rectangle8:setStrokeColor("white");
    obj.rectangle8:setStrokeSize(1);
    obj.rectangle8:setName("rectangle8");

    obj.label42 = gui.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.flowPart167);
    obj.label42:setAlign("client");
    obj.label42:setField("efetModFor");
    obj.label42:setHorzTextAlign("center");
    obj.label42:setFontSize(12);
    obj.label42:setName("label42");

    obj.flowPart168 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart168:setParent(obj.flowLayout13);
    obj.flowPart168:setMinWidth(50);
    obj.flowPart168:setMaxWidth(50);
    obj.flowPart168:setHeight(20);
    obj.flowPart168:setName("flowPart168");

    obj.edit97 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit97:setParent(obj.flowPart168);
    obj.edit97:setAlign("client");
    obj.edit97:setField("agarrarTam");
    obj.edit97:setHorzTextAlign("center");
    obj.edit97:setFontSize(12);
    obj.edit97:setType("number");
    obj.edit97:setName("edit97");

    obj.flowPart169 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart169:setParent(obj.flowLayout13);
    obj.flowPart169:setMinWidth(50);
    obj.flowPart169:setMaxWidth(50);
    obj.flowPart169:setHeight(20);
    obj.flowPart169:setName("flowPart169");

    obj.edit98 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit98:setParent(obj.flowPart169);
    obj.edit98:setAlign("client");
    obj.edit98:setField("agarrarVar");
    obj.edit98:setHorzTextAlign("center");
    obj.edit98:setFontSize(12);
    obj.edit98:setType("number");
    obj.edit98:setName("edit98");

    obj.popManeuver = gui.fromHandle(_obj_newObject("popup"));
    obj.popManeuver:setParent(obj.scrollBox1);
    obj.popManeuver:setName("popManeuver");
    obj.popManeuver:setWidth(380);
    obj.popManeuver:setHeight(65);
    obj.popManeuver:setBackOpacity(0.4);

    obj.flowLayout14 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout14:setParent(obj.popManeuver);
    obj.flowLayout14:setAlign("top");
    obj.flowLayout14:setAutoHeight(true);
    obj.flowLayout14:setMaxControlsPerLine(7);
    obj.flowLayout14:setMargins({bottom=4});
    obj.flowLayout14:setHorzAlign("center");
    obj.flowLayout14:setName("flowLayout14");

    obj.flowPart170 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart170:setParent(obj.flowLayout14);
    obj.flowPart170:setMinWidth(50);
    obj.flowPart170:setMaxWidth(50);
    obj.flowPart170:setHeight(15);
    obj.flowPart170:setName("flowPart170");

    obj.flowPart171 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart171:setParent(obj.flowLayout14);
    obj.flowPart171:setMinWidth(50);
    obj.flowPart171:setMaxWidth(50);
    obj.flowPart171:setHeight(15);
    obj.flowPart171:setName("flowPart171");

    obj.label43 = gui.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.flowPart171);
    obj.label43:setAlign("top");
    obj.label43:setFontSize(10);
    obj.label43:setText("BBA");
    obj.label43:setHorzTextAlign("center");
    obj.label43:setWordWrap(true);
    obj.label43:setTextTrimming("none");
    obj.label43:setAutoSize(true);
    obj.label43:setName("label43");

    obj.flowPart172 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart172:setParent(obj.flowLayout14);
    obj.flowPart172:setMinWidth(50);
    obj.flowPart172:setMaxWidth(50);
    obj.flowPart172:setHeight(15);
    obj.flowPart172:setName("flowPart172");

    obj.label44 = gui.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.flowPart172);
    obj.label44:setAlign("top");
    obj.label44:setFontSize(10);
    obj.label44:setText("Força");
    obj.label44:setHorzTextAlign("center");
    obj.label44:setWordWrap(true);
    obj.label44:setTextTrimming("none");
    obj.label44:setAutoSize(true);
    obj.label44:setName("label44");

    obj.flowPart173 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart173:setParent(obj.flowLayout14);
    obj.flowPart173:setMinWidth(50);
    obj.flowPart173:setMaxWidth(50);
    obj.flowPart173:setHeight(15);
    obj.flowPart173:setName("flowPart173");

    obj.label45 = gui.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.flowPart173);
    obj.label45:setAlign("top");
    obj.label45:setFontSize(10);
    obj.label45:setText("Tamanho");
    obj.label45:setHorzTextAlign("center");
    obj.label45:setWordWrap(true);
    obj.label45:setTextTrimming("none");
    obj.label45:setAutoSize(true);
    obj.label45:setName("label45");

    obj.flowPart174 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart174:setParent(obj.flowLayout14);
    obj.flowPart174:setMinWidth(50);
    obj.flowPart174:setMaxWidth(50);
    obj.flowPart174:setHeight(15);
    obj.flowPart174:setName("flowPart174");

    obj.label46 = gui.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.flowPart174);
    obj.label46:setAlign("top");
    obj.label46:setFontSize(10);
    obj.label46:setText("Outros");
    obj.label46:setHorzTextAlign("center");
    obj.label46:setWordWrap(true);
    obj.label46:setTextTrimming("none");
    obj.label46:setAutoSize(true);
    obj.label46:setName("label46");

    obj.flowPart175 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart175:setParent(obj.flowLayout14);
    obj.flowPart175:setMinWidth(50);
    obj.flowPart175:setMaxWidth(50);
    obj.flowPart175:setHeight(15);
    obj.flowPart175:setName("flowPart175");

    obj.label47 = gui.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.flowPart175);
    obj.label47:setAlign("top");
    obj.label47:setFontSize(10);
    obj.label47:setText("Destreza");
    obj.label47:setHorzTextAlign("center");
    obj.label47:setWordWrap(true);
    obj.label47:setTextTrimming("none");
    obj.label47:setAutoSize(true);
    obj.label47:setName("label47");

    obj.flowPart176 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart176:setParent(obj.flowLayout14);
    obj.flowPart176:setMinWidth(50);
    obj.flowPart176:setMaxWidth(50);
    obj.flowPart176:setHeight(15);
    obj.flowPart176:setName("flowPart176");

    obj.label48 = gui.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.flowPart176);
    obj.label48:setAlign("top");
    obj.label48:setFontSize(10);
    obj.label48:setText("Diversos");
    obj.label48:setHorzTextAlign("center");
    obj.label48:setWordWrap(true);
    obj.label48:setTextTrimming("none");
    obj.label48:setAutoSize(true);
    obj.label48:setName("label48");

    obj.flowLineBreak11 = gui.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak11:setParent(obj.flowLayout14);
    obj.flowLineBreak11:setName("flowLineBreak11");

    obj.flowPart177 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart177:setParent(obj.flowLayout14);
    obj.flowPart177:setMinWidth(50);
    obj.flowPart177:setMaxWidth(50);
    obj.flowPart177:setHeight(15);
    obj.flowPart177:setName("flowPart177");

    obj.label49 = gui.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.flowPart177);
    obj.label49:setAlign("top");
    obj.label49:setFontSize(10);
    obj.label49:setText("BMC");
    obj.label49:setHorzTextAlign("center");
    obj.label49:setWordWrap(true);
    obj.label49:setTextTrimming("none");
    obj.label49:setAutoSize(true);
    obj.label49:setName("label49");

    obj.flowPart178 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart178:setParent(obj.flowLayout14);
    obj.flowPart178:setMinWidth(50);
    obj.flowPart178:setMaxWidth(50);
    obj.flowPart178:setHeight(20);
    obj.flowPart178:setName("flowPart178");

    obj.rectangle9 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.flowPart178);
    obj.rectangle9:setAlign("client");
    obj.rectangle9:setColor("black");
    obj.rectangle9:setStrokeColor("white");
    obj.rectangle9:setStrokeSize(1);
    obj.rectangle9:setName("rectangle9");

    obj.label50 = gui.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.flowPart178);
    obj.label50:setAlign("client");
    obj.label50:setField("bba");
    obj.label50:setHorzTextAlign("center");
    obj.label50:setFontSize(12);
    obj.label50:setName("label50");

    obj.flowPart179 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart179:setParent(obj.flowLayout14);
    obj.flowPart179:setMinWidth(50);
    obj.flowPart179:setMaxWidth(50);
    obj.flowPart179:setHeight(20);
    obj.flowPart179:setName("flowPart179");

    obj.rectangle10 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.flowPart179);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("black");
    obj.rectangle10:setStrokeColor("white");
    obj.rectangle10:setStrokeSize(1);
    obj.rectangle10:setName("rectangle10");

    obj.label51 = gui.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.flowPart179);
    obj.label51:setAlign("client");
    obj.label51:setField("efetModFor");
    obj.label51:setHorzTextAlign("center");
    obj.label51:setFontSize(12);
    obj.label51:setName("label51");

    obj.flowPart180 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart180:setParent(obj.flowLayout14);
    obj.flowPart180:setMinWidth(50);
    obj.flowPart180:setMaxWidth(50);
    obj.flowPart180:setHeight(20);
    obj.flowPart180:setName("flowPart180");

    obj.edit99 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit99:setParent(obj.flowPart180);
    obj.edit99:setAlign("client");
    obj.edit99:setField("bmcTamanho");
    obj.edit99:setHorzTextAlign("center");
    obj.edit99:setFontSize(12);
    obj.edit99:setType("number");
    obj.edit99:setName("edit99");

    obj.flowPart181 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart181:setParent(obj.flowLayout14);
    obj.flowPart181:setMinWidth(50);
    obj.flowPart181:setMaxWidth(50);
    obj.flowPart181:setHeight(20);
    obj.flowPart181:setName("flowPart181");

    obj.edit100 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit100:setParent(obj.flowPart181);
    obj.edit100:setAlign("client");
    obj.edit100:setField("bmcOutros");
    obj.edit100:setHorzTextAlign("center");
    obj.edit100:setFontSize(12);
    obj.edit100:setType("number");
    obj.edit100:setName("edit100");

    obj.flowPart182 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart182:setParent(obj.flowLayout14);
    obj.flowPart182:setMinWidth(50);
    obj.flowPart182:setMaxWidth(50);
    obj.flowPart182:setHeight(20);
    obj.flowPart182:setName("flowPart182");

    obj.checkBox21 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox21:setParent(obj.flowPart182);
    obj.checkBox21:setField("destrezaBMC");
    obj.checkBox21:setLeft(15);
    obj.checkBox21:setFontSize(10);
    obj.checkBox21:setHeight(20);
    obj.checkBox21:setName("checkBox21");

    obj.flowPart183 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart183:setParent(obj.flowLayout14);
    obj.flowPart183:setMinWidth(50);
    obj.flowPart183:setMaxWidth(50);
    obj.flowPart183:setHeight(20);
    obj.flowPart183:setName("flowPart183");

    obj.edit101 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit101:setParent(obj.flowPart183);
    obj.edit101:setAlign("client");
    obj.edit101:setField("bmcDiversos");
    obj.edit101:setHorzTextAlign("center");
    obj.edit101:setFontSize(12);
    obj.edit101:setType("number");
    obj.edit101:setName("edit101");

    obj.flowLineBreak12 = gui.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak12:setParent(obj.flowLayout14);
    obj.flowLineBreak12:setName("flowLineBreak12");

    obj.flowPart184 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart184:setParent(obj.flowLayout14);
    obj.flowPart184:setMinWidth(50);
    obj.flowPart184:setMaxWidth(50);
    obj.flowPart184:setHeight(15);
    obj.flowPart184:setName("flowPart184");

    obj.label52 = gui.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.flowPart184);
    obj.label52:setAlign("top");
    obj.label52:setFontSize(10);
    obj.label52:setText("BMD");
    obj.label52:setHorzTextAlign("center");
    obj.label52:setWordWrap(true);
    obj.label52:setTextTrimming("none");
    obj.label52:setAutoSize(true);
    obj.label52:setName("label52");

    obj.flowPart185 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart185:setParent(obj.flowLayout14);
    obj.flowPart185:setMinWidth(50);
    obj.flowPart185:setMaxWidth(50);
    obj.flowPart185:setHeight(20);
    obj.flowPart185:setName("flowPart185");

    obj.rectangle11 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.flowPart185);
    obj.rectangle11:setAlign("client");
    obj.rectangle11:setColor("black");
    obj.rectangle11:setStrokeColor("white");
    obj.rectangle11:setStrokeSize(1);
    obj.rectangle11:setName("rectangle11");

    obj.label53 = gui.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.flowPart185);
    obj.label53:setAlign("client");
    obj.label53:setField("bba");
    obj.label53:setHorzTextAlign("center");
    obj.label53:setFontSize(12);
    obj.label53:setName("label53");

    obj.flowPart186 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart186:setParent(obj.flowLayout14);
    obj.flowPart186:setMinWidth(50);
    obj.flowPart186:setMaxWidth(50);
    obj.flowPart186:setHeight(20);
    obj.flowPart186:setName("flowPart186");

    obj.rectangle12 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.flowPart186);
    obj.rectangle12:setAlign("client");
    obj.rectangle12:setColor("black");
    obj.rectangle12:setStrokeColor("white");
    obj.rectangle12:setStrokeSize(1);
    obj.rectangle12:setName("rectangle12");

    obj.label54 = gui.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.flowPart186);
    obj.label54:setAlign("client");
    obj.label54:setField("efetModFor");
    obj.label54:setHorzTextAlign("center");
    obj.label54:setFontSize(12);
    obj.label54:setName("label54");

    obj.flowPart187 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart187:setParent(obj.flowLayout14);
    obj.flowPart187:setMinWidth(50);
    obj.flowPart187:setMaxWidth(50);
    obj.flowPart187:setHeight(20);
    obj.flowPart187:setName("flowPart187");

    obj.edit102 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit102:setParent(obj.flowPart187);
    obj.edit102:setAlign("client");
    obj.edit102:setField("bmdTamanho");
    obj.edit102:setHorzTextAlign("center");
    obj.edit102:setFontSize(12);
    obj.edit102:setType("number");
    obj.edit102:setName("edit102");

    obj.flowPart188 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart188:setParent(obj.flowLayout14);
    obj.flowPart188:setMinWidth(50);
    obj.flowPart188:setMaxWidth(50);
    obj.flowPart188:setHeight(20);
    obj.flowPart188:setName("flowPart188");

    obj.edit103 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit103:setParent(obj.flowPart188);
    obj.edit103:setAlign("client");
    obj.edit103:setField("bmdOutros");
    obj.edit103:setHorzTextAlign("center");
    obj.edit103:setFontSize(12);
    obj.edit103:setType("number");
    obj.edit103:setName("edit103");

    obj.flowPart189 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart189:setParent(obj.flowLayout14);
    obj.flowPart189:setMinWidth(50);
    obj.flowPart189:setMaxWidth(50);
    obj.flowPart189:setHeight(20);
    obj.flowPart189:setName("flowPart189");

    obj.rectangle13 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.flowPart189);
    obj.rectangle13:setAlign("client");
    obj.rectangle13:setColor("black");
    obj.rectangle13:setStrokeColor("white");
    obj.rectangle13:setStrokeSize(1);
    obj.rectangle13:setName("rectangle13");

    obj.label55 = gui.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.flowPart189);
    obj.label55:setAlign("client");
    obj.label55:setField("efetModDes");
    obj.label55:setHorzTextAlign("center");
    obj.label55:setFontSize(12);
    obj.label55:setName("label55");

    obj.flowPart190 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart190:setParent(obj.flowLayout14);
    obj.flowPart190:setMinWidth(50);
    obj.flowPart190:setMaxWidth(50);
    obj.flowPart190:setHeight(20);
    obj.flowPart190:setName("flowPart190");

    obj.edit104 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit104:setParent(obj.flowPart190);
    obj.edit104:setAlign("client");
    obj.edit104:setField("bmdDiversos");
    obj.edit104:setHorzTextAlign("center");
    obj.edit104:setFontSize(12);
    obj.edit104:setType("number");
    obj.edit104:setName("edit104");


			local function getMOD(valor)
				if valor~= nil then
					local mod = math.floor(((tonumber(valor) or 10) / 2) - 5);
					if (mod >= 0) then
						mod = "+" .. mod;
					end;					   
					return mod;
				else
					return "+0";
				end;
			end;
			


    obj.rectangle14 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.scrollBox1);
    obj.rectangle14:setLeft(0);
    obj.rectangle14:setTop(0);
    obj.rectangle14:setWidth(1107);
    obj.rectangle14:setHeight(110);
    obj.rectangle14:setColor("black");
    obj.rectangle14:setName("rectangle14");

    obj.label56 = gui.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.rectangle14);
    obj.label56:setLeft(5);
    obj.label56:setTop(5);
    obj.label56:setWidth(50);
    obj.label56:setHeight(25);
    obj.label56:setText("CLASSE");
    obj.label56:setName("label56");

    obj.edit105 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit105:setParent(obj.rectangle14);
    obj.edit105:setVertTextAlign("center");
    obj.edit105:setLeft(60);
    obj.edit105:setTop(5);
    obj.edit105:setWidth(380);
    obj.edit105:setHeight(25);
    obj.edit105:setField("classe1");
    obj.edit105:setName("edit105");

    obj.label57 = gui.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.rectangle14);
    obj.label57:setLeft(5);
    obj.label57:setTop(30);
    obj.label57:setWidth(50);
    obj.label57:setHeight(25);
    obj.label57:setText("RAÇA");
    obj.label57:setName("label57");

    obj.edit106 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit106:setParent(obj.rectangle14);
    obj.edit106:setVertTextAlign("center");
    obj.edit106:setLeft(60);
    obj.edit106:setTop(30);
    obj.edit106:setWidth(380);
    obj.edit106:setHeight(25);
    obj.edit106:setField("raca");
    obj.edit106:setName("edit106");

    obj.label58 = gui.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.rectangle14);
    obj.label58:setLeft(5);
    obj.label58:setTop(55);
    obj.label58:setWidth(50);
    obj.label58:setHeight(25);
    obj.label58:setText("TIPO");
    obj.label58:setName("label58");

    obj.edit107 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit107:setParent(obj.rectangle14);
    obj.edit107:setVertTextAlign("center");
    obj.edit107:setLeft(60);
    obj.edit107:setTop(55);
    obj.edit107:setWidth(380);
    obj.edit107:setHeight(25);
    obj.edit107:setField("tipo");
    obj.edit107:setName("edit107");

    obj.label59 = gui.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.rectangle14);
    obj.label59:setLeft(5);
    obj.label59:setTop(80);
    obj.label59:setWidth(70);
    obj.label59:setHeight(25);
    obj.label59:setText("SUBTIPO");
    obj.label59:setName("label59");

    obj.edit108 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit108:setParent(obj.rectangle14);
    obj.edit108:setVertTextAlign("center");
    obj.edit108:setLeft(60);
    obj.edit108:setTop(80);
    obj.edit108:setWidth(380);
    obj.edit108:setHeight(25);
    obj.edit108:setField("subtipo");
    obj.edit108:setName("edit108");

    obj.label60 = gui.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.rectangle14);
    obj.label60:setLeft(445);
    obj.label60:setTop(5);
    obj.label60:setWidth(50);
    obj.label60:setHeight(25);
    obj.label60:setText("NOME");
    obj.label60:setName("label60");

    obj.edit109 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit109:setParent(obj.rectangle14);
    obj.edit109:setVertTextAlign("center");
    obj.edit109:setLeft(520);
    obj.edit109:setTop(5);
    obj.edit109:setWidth(290);
    obj.edit109:setHeight(25);
    obj.edit109:setField("nome");
    obj.edit109:setName("edit109");

    obj.label61 = gui.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.rectangle14);
    obj.label61:setLeft(445);
    obj.label61:setTop(30);
    obj.label61:setWidth(70);
    obj.label61:setHeight(25);
    obj.label61:setText("TENDÊNCIA");
    obj.label61:setName("label61");

    obj.edit110 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit110:setParent(obj.rectangle14);
    obj.edit110:setVertTextAlign("center");
    obj.edit110:setLeft(520);
    obj.edit110:setTop(30);
    obj.edit110:setWidth(290);
    obj.edit110:setHeight(25);
    obj.edit110:setField("tendencia");
    obj.edit110:setName("edit110");

    obj.label62 = gui.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.rectangle14);
    obj.label62:setLeft(445);
    obj.label62:setTop(55);
    obj.label62:setWidth(70);
    obj.label62:setHeight(25);
    obj.label62:setText("CULTO");
    obj.label62:setName("label62");

    obj.edit111 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit111:setParent(obj.rectangle14);
    obj.edit111:setVertTextAlign("center");
    obj.edit111:setLeft(520);
    obj.edit111:setTop(55);
    obj.edit111:setWidth(290);
    obj.edit111:setHeight(25);
    obj.edit111:setField("culto");
    obj.edit111:setName("edit111");

    obj.label63 = gui.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.rectangle14);
    obj.label63:setLeft(445);
    obj.label63:setTop(80);
    obj.label63:setWidth(70);
    obj.label63:setHeight(25);
    obj.label63:setText("TITULO");
    obj.label63:setName("label63");

    obj.edit112 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit112:setParent(obj.rectangle14);
    obj.edit112:setVertTextAlign("center");
    obj.edit112:setLeft(520);
    obj.edit112:setTop(80);
    obj.edit112:setWidth(290);
    obj.edit112:setHeight(25);
    obj.edit112:setField("posto");
    obj.edit112:setName("edit112");

    obj.label64 = gui.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.rectangle14);
    obj.label64:setLeft(815);
    obj.label64:setTop(5);
    obj.label64:setWidth(70);
    obj.label64:setHeight(25);
    obj.label64:setText("NEP");
    obj.label64:setName("label64");

    obj.rectangle15 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.rectangle14);
    obj.rectangle15:setLeft(890);
    obj.rectangle15:setTop(5);
    obj.rectangle15:setWidth(70);
    obj.rectangle15:setHeight(25);
    obj.rectangle15:setColor("black");
    obj.rectangle15:setStrokeColor("white");
    obj.rectangle15:setStrokeSize(1);
    obj.rectangle15:setName("rectangle15");

    obj.label65 = gui.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.rectangle14);
    obj.label65:setField("nep");
    obj.label65:setLeft(890);
    obj.label65:setTop(5);
    obj.label65:setWidth(70);
    obj.label65:setHeight(25);
    obj.label65:setHorzTextAlign("center");
    obj.label65:setName("label65");

    obj.label66 = gui.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.rectangle14);
    obj.label66:setLeft(975);
    obj.label66:setTop(5);
    obj.label66:setWidth(60);
    obj.label66:setHeight(25);
    obj.label66:setText("AJUSTE");
    obj.label66:setName("label66");

    obj.edit113 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit113:setParent(obj.rectangle14);
    obj.edit113:setVertTextAlign("center");
    obj.edit113:setLeft(1030);
    obj.edit113:setTop(5);
    obj.edit113:setWidth(70);
    obj.edit113:setHeight(25);
    obj.edit113:setField("ajuste");
    obj.edit113:setName("edit113");

    obj.label67 = gui.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.rectangle14);
    obj.label67:setLeft(815);
    obj.label67:setTop(30);
    obj.label67:setWidth(70);
    obj.label67:setHeight(25);
    obj.label67:setText("XP ATUAL");
    obj.label67:setName("label67");

    obj.edit114 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit114:setParent(obj.rectangle14);
    obj.edit114:setVertTextAlign("center");
    obj.edit114:setLeft(890);
    obj.edit114:setTop(30);
    obj.edit114:setWidth(210);
    obj.edit114:setHeight(25);
    obj.edit114:setField("xpAtual");
    obj.edit114:setName("edit114");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle14);
    obj.button1:setLeft(815);
    obj.button1:setTop(56);
    obj.button1:setWidth(50);
    obj.button1:setText("ADD");
    obj.button1:setName("button1");

    obj.edit115 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit115:setParent(obj.rectangle14);
    obj.edit115:setVertTextAlign("center");
    obj.edit115:setLeft(890);
    obj.edit115:setTop(55);
    obj.edit115:setWidth(210);
    obj.edit115:setHeight(25);
    obj.edit115:setField("xpNova");
    obj.edit115:setName("edit115");

    obj.label68 = gui.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.rectangle14);
    obj.label68:setLeft(815);
    obj.label68:setTop(80);
    obj.label68:setWidth(70);
    obj.label68:setHeight(25);
    obj.label68:setText("XP ALVO");
    obj.label68:setName("label68");

    obj.rectangle16 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.rectangle14);
    obj.rectangle16:setLeft(890);
    obj.rectangle16:setTop(80);
    obj.rectangle16:setWidth(210);
    obj.rectangle16:setHeight(25);
    obj.rectangle16:setColor("black");
    obj.rectangle16:setStrokeColor("white");
    obj.rectangle16:setStrokeSize(1);
    obj.rectangle16:setName("rectangle16");

    obj.label69 = gui.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.rectangle14);
    obj.label69:setField("xpNivel");
    obj.label69:setLeft(890);
    obj.label69:setTop(80);
    obj.label69:setWidth(210);
    obj.label69:setHeight(25);
    obj.label69:setHorzTextAlign("center");
    obj.label69:setName("label69");

    obj.dataLink10 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.rectangle14);
    obj.dataLink10:setField("xpAtual");
    obj.dataLink10:setName("dataLink10");

    obj.rectangle17 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.scrollBox1);
    obj.rectangle17:setLeft(0);
    obj.rectangle17:setTop(115);
    obj.rectangle17:setWidth(235);
    obj.rectangle17:setHeight(215);
    obj.rectangle17:setColor("black");
    obj.rectangle17:setName("rectangle17");

    obj.label70 = gui.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.rectangle17);
    obj.label70:setLeft(0);
    obj.label70:setTop(0);
    obj.label70:setWidth(235);
    obj.label70:setHeight(25);
    obj.label70:setText("ATRIBUTOS");
    obj.label70:setHorzTextAlign("center");
    obj.label70:setName("label70");

    obj.label71 = gui.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.rectangle17);
    obj.label71:setLeft(45);
    obj.label71:setTop(30);
    obj.label71:setWidth(70);
    obj.label71:setHeight(25);
    obj.label71:setText("Real");
    obj.label71:setHorzTextAlign("center");
    obj.label71:setName("label71");

    obj.label72 = gui.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.rectangle17);
    obj.label72:setLeft(120);
    obj.label72:setTop(30);
    obj.label72:setWidth(70);
    obj.label72:setHeight(25);
    obj.label72:setText("Efetivo");
    obj.label72:setHorzTextAlign("center");
    obj.label72:setName("label72");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle17);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(55);
    obj.layout1:setWidth(275);
    obj.layout1:setHeight(25);
    obj.layout1:setName("layout1");

    obj.button2 = gui.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout1);
    obj.button2:setLeft(5);
    obj.button2:setWidth(35);
    obj.button2:setText("FOR");
    obj.button2:setFontSize(11);
    obj.button2:setName("button2");

    obj.rectangle18 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.layout1);
    obj.rectangle18:setLeft(45);
    obj.rectangle18:setTop(0);
    obj.rectangle18:setWidth(35);
    obj.rectangle18:setHeight(25);
    obj.rectangle18:setColor("black");
    obj.rectangle18:setStrokeColor("white");
    obj.rectangle18:setStrokeSize(1);
    obj.rectangle18:setName("rectangle18");

    obj.label73 = gui.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.layout1);
    obj.label73:setLeft(45);
    obj.label73:setWidth(35);
    obj.label73:setHeight(25);
    obj.label73:setField("realFor");
    obj.label73:setHorzTextAlign("center");
    obj.label73:setName("label73");

    obj.rectangle19 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.layout1);
    obj.rectangle19:setLeft(80);
    obj.rectangle19:setTop(0);
    obj.rectangle19:setWidth(35);
    obj.rectangle19:setHeight(25);
    obj.rectangle19:setColor("black");
    obj.rectangle19:setStrokeColor("white");
    obj.rectangle19:setStrokeSize(1);
    obj.rectangle19:setName("rectangle19");

    obj.label74 = gui.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.layout1);
    obj.label74:setField("realModFor");
    obj.label74:setText("0");
    obj.label74:setLeft(80);
    obj.label74:setTop(3);
    obj.label74:setWidth(35);
    obj.label74:setHorzTextAlign("center");
    obj.label74:setName("label74");

    obj.dataLink11 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.layout1);
    obj.dataLink11:setField("realFor");
    obj.dataLink11:setName("dataLink11");

    obj.rectangle20 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.layout1);
    obj.rectangle20:setLeft(120);
    obj.rectangle20:setTop(0);
    obj.rectangle20:setWidth(35);
    obj.rectangle20:setHeight(25);
    obj.rectangle20:setColor("black");
    obj.rectangle20:setStrokeColor("white");
    obj.rectangle20:setStrokeSize(1);
    obj.rectangle20:setName("rectangle20");

    obj.label75 = gui.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.layout1);
    obj.label75:setLeft(120);
    obj.label75:setWidth(35);
    obj.label75:setHeight(25);
    obj.label75:setField("efetFor");
    obj.label75:setHorzTextAlign("center");
    obj.label75:setName("label75");

    obj.rectangle21 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.layout1);
    obj.rectangle21:setLeft(155);
    obj.rectangle21:setTop(0);
    obj.rectangle21:setWidth(35);
    obj.rectangle21:setHeight(25);
    obj.rectangle21:setColor("black");
    obj.rectangle21:setStrokeColor("white");
    obj.rectangle21:setStrokeSize(1);
    obj.rectangle21:setName("rectangle21");

    obj.label76 = gui.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.layout1);
    obj.label76:setField("efetModFor");
    obj.label76:setText("0");
    obj.label76:setLeft(155);
    obj.label76:setTop(3);
    obj.label76:setWidth(35);
    obj.label76:setHorzTextAlign("center");
    obj.label76:setName("label76");

    obj.dataLink12 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.layout1);
    obj.dataLink12:setField("efetFor");
    obj.dataLink12:setName("dataLink12");


				local function getFOR()
					local mod = tonumber(sheet.efetModFor) or 0;
					return mod;
				end;
			


    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle17);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(80);
    obj.layout2:setWidth(275);
    obj.layout2:setHeight(25);
    obj.layout2:setName("layout2");

    obj.button3 = gui.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.layout2);
    obj.button3:setLeft(5);
    obj.button3:setWidth(35);
    obj.button3:setText("DES");
    obj.button3:setFontSize(11);
    obj.button3:setName("button3");

    obj.rectangle22 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.layout2);
    obj.rectangle22:setLeft(45);
    obj.rectangle22:setTop(0);
    obj.rectangle22:setWidth(35);
    obj.rectangle22:setHeight(25);
    obj.rectangle22:setColor("black");
    obj.rectangle22:setStrokeColor("white");
    obj.rectangle22:setStrokeSize(1);
    obj.rectangle22:setName("rectangle22");

    obj.label77 = gui.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.layout2);
    obj.label77:setLeft(45);
    obj.label77:setWidth(35);
    obj.label77:setHeight(25);
    obj.label77:setField("realDes");
    obj.label77:setHorzTextAlign("center");
    obj.label77:setName("label77");

    obj.rectangle23 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.layout2);
    obj.rectangle23:setLeft(80);
    obj.rectangle23:setTop(0);
    obj.rectangle23:setWidth(35);
    obj.rectangle23:setHeight(25);
    obj.rectangle23:setColor("black");
    obj.rectangle23:setStrokeColor("white");
    obj.rectangle23:setStrokeSize(1);
    obj.rectangle23:setName("rectangle23");

    obj.label78 = gui.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.layout2);
    obj.label78:setField("realModDes");
    obj.label78:setText("0");
    obj.label78:setLeft(80);
    obj.label78:setTop(3);
    obj.label78:setWidth(35);
    obj.label78:setHorzTextAlign("center");
    obj.label78:setName("label78");

    obj.dataLink13 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.layout2);
    obj.dataLink13:setField("realDes");
    obj.dataLink13:setName("dataLink13");

    obj.rectangle24 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.layout2);
    obj.rectangle24:setLeft(120);
    obj.rectangle24:setTop(0);
    obj.rectangle24:setWidth(35);
    obj.rectangle24:setHeight(25);
    obj.rectangle24:setColor("black");
    obj.rectangle24:setStrokeColor("white");
    obj.rectangle24:setStrokeSize(1);
    obj.rectangle24:setName("rectangle24");

    obj.label79 = gui.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.layout2);
    obj.label79:setLeft(120);
    obj.label79:setWidth(35);
    obj.label79:setHeight(25);
    obj.label79:setField("efetDes");
    obj.label79:setHorzTextAlign("center");
    obj.label79:setName("label79");

    obj.rectangle25 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.layout2);
    obj.rectangle25:setLeft(155);
    obj.rectangle25:setTop(0);
    obj.rectangle25:setWidth(35);
    obj.rectangle25:setHeight(25);
    obj.rectangle25:setColor("black");
    obj.rectangle25:setStrokeColor("white");
    obj.rectangle25:setStrokeSize(1);
    obj.rectangle25:setName("rectangle25");

    obj.label80 = gui.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.layout2);
    obj.label80:setField("efetModDes");
    obj.label80:setText("0");
    obj.label80:setLeft(155);
    obj.label80:setTop(3);
    obj.label80:setWidth(35);
    obj.label80:setHorzTextAlign("center");
    obj.label80:setName("label80");

    obj.dataLink14 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.layout2);
    obj.dataLink14:setField("efetDes");
    obj.dataLink14:setName("dataLink14");


				local function getDES()
					local mod = tonumber(sheet.efetModDes) or 0;
					return mod;
				end;
			


    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle17);
    obj.layout3:setLeft(0);
    obj.layout3:setTop(105);
    obj.layout3:setWidth(275);
    obj.layout3:setHeight(25);
    obj.layout3:setName("layout3");

    obj.button4 = gui.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.layout3);
    obj.button4:setLeft(5);
    obj.button4:setWidth(35);
    obj.button4:setText("CON");
    obj.button4:setFontSize(11);
    obj.button4:setName("button4");

    obj.rectangle26 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.layout3);
    obj.rectangle26:setLeft(45);
    obj.rectangle26:setTop(0);
    obj.rectangle26:setWidth(35);
    obj.rectangle26:setHeight(25);
    obj.rectangle26:setColor("black");
    obj.rectangle26:setStrokeColor("white");
    obj.rectangle26:setStrokeSize(1);
    obj.rectangle26:setName("rectangle26");

    obj.label81 = gui.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.layout3);
    obj.label81:setLeft(45);
    obj.label81:setWidth(35);
    obj.label81:setHeight(25);
    obj.label81:setField("realCon");
    obj.label81:setHorzTextAlign("center");
    obj.label81:setName("label81");

    obj.rectangle27 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.layout3);
    obj.rectangle27:setLeft(80);
    obj.rectangle27:setTop(0);
    obj.rectangle27:setWidth(35);
    obj.rectangle27:setHeight(25);
    obj.rectangle27:setColor("black");
    obj.rectangle27:setStrokeColor("white");
    obj.rectangle27:setStrokeSize(1);
    obj.rectangle27:setName("rectangle27");

    obj.label82 = gui.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.layout3);
    obj.label82:setField("realModCon");
    obj.label82:setText("0");
    obj.label82:setLeft(80);
    obj.label82:setTop(3);
    obj.label82:setWidth(35);
    obj.label82:setHorzTextAlign("center");
    obj.label82:setName("label82");

    obj.dataLink15 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.layout3);
    obj.dataLink15:setField("realCon");
    obj.dataLink15:setName("dataLink15");

    obj.rectangle28 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle28:setParent(obj.layout3);
    obj.rectangle28:setLeft(120);
    obj.rectangle28:setTop(0);
    obj.rectangle28:setWidth(35);
    obj.rectangle28:setHeight(25);
    obj.rectangle28:setColor("black");
    obj.rectangle28:setStrokeColor("white");
    obj.rectangle28:setStrokeSize(1);
    obj.rectangle28:setName("rectangle28");

    obj.label83 = gui.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.layout3);
    obj.label83:setLeft(120);
    obj.label83:setWidth(35);
    obj.label83:setHeight(25);
    obj.label83:setField("efetCon");
    obj.label83:setHorzTextAlign("center");
    obj.label83:setName("label83");

    obj.rectangle29 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle29:setParent(obj.layout3);
    obj.rectangle29:setLeft(155);
    obj.rectangle29:setTop(0);
    obj.rectangle29:setWidth(35);
    obj.rectangle29:setHeight(25);
    obj.rectangle29:setColor("black");
    obj.rectangle29:setStrokeColor("white");
    obj.rectangle29:setStrokeSize(1);
    obj.rectangle29:setName("rectangle29");

    obj.label84 = gui.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.layout3);
    obj.label84:setField("efetModCon");
    obj.label84:setText("0");
    obj.label84:setLeft(155);
    obj.label84:setTop(3);
    obj.label84:setWidth(35);
    obj.label84:setHorzTextAlign("center");
    obj.label84:setName("label84");

    obj.dataLink16 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.layout3);
    obj.dataLink16:setField("efetCon");
    obj.dataLink16:setName("dataLink16");


				local function getCON()
					local mod = tonumber(sheet.efetModCon) or 0;
					return mod;
				end;
			


    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle17);
    obj.layout4:setLeft(0);
    obj.layout4:setTop(130);
    obj.layout4:setWidth(275);
    obj.layout4:setHeight(25);
    obj.layout4:setName("layout4");

    obj.button5 = gui.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.layout4);
    obj.button5:setLeft(5);
    obj.button5:setWidth(35);
    obj.button5:setText("INT");
    obj.button5:setFontSize(11);
    obj.button5:setName("button5");

    obj.rectangle30 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle30:setParent(obj.layout4);
    obj.rectangle30:setLeft(45);
    obj.rectangle30:setTop(0);
    obj.rectangle30:setWidth(35);
    obj.rectangle30:setHeight(25);
    obj.rectangle30:setColor("black");
    obj.rectangle30:setStrokeColor("white");
    obj.rectangle30:setStrokeSize(1);
    obj.rectangle30:setName("rectangle30");

    obj.label85 = gui.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.layout4);
    obj.label85:setLeft(45);
    obj.label85:setWidth(35);
    obj.label85:setHeight(25);
    obj.label85:setField("realInt");
    obj.label85:setHorzTextAlign("center");
    obj.label85:setName("label85");

    obj.rectangle31 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle31:setParent(obj.layout4);
    obj.rectangle31:setLeft(80);
    obj.rectangle31:setTop(0);
    obj.rectangle31:setWidth(35);
    obj.rectangle31:setHeight(25);
    obj.rectangle31:setColor("black");
    obj.rectangle31:setStrokeColor("white");
    obj.rectangle31:setStrokeSize(1);
    obj.rectangle31:setName("rectangle31");

    obj.label86 = gui.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.layout4);
    obj.label86:setField("realModInt");
    obj.label86:setText("0");
    obj.label86:setLeft(80);
    obj.label86:setTop(3);
    obj.label86:setWidth(35);
    obj.label86:setHorzTextAlign("center");
    obj.label86:setName("label86");

    obj.dataLink17 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.layout4);
    obj.dataLink17:setField("realInt");
    obj.dataLink17:setName("dataLink17");

    obj.rectangle32 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle32:setParent(obj.layout4);
    obj.rectangle32:setLeft(120);
    obj.rectangle32:setTop(0);
    obj.rectangle32:setWidth(35);
    obj.rectangle32:setHeight(25);
    obj.rectangle32:setColor("black");
    obj.rectangle32:setStrokeColor("white");
    obj.rectangle32:setStrokeSize(1);
    obj.rectangle32:setName("rectangle32");

    obj.label87 = gui.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.layout4);
    obj.label87:setLeft(120);
    obj.label87:setWidth(35);
    obj.label87:setHeight(25);
    obj.label87:setField("efetInt");
    obj.label87:setHorzTextAlign("center");
    obj.label87:setName("label87");

    obj.rectangle33 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle33:setParent(obj.layout4);
    obj.rectangle33:setLeft(155);
    obj.rectangle33:setTop(0);
    obj.rectangle33:setWidth(35);
    obj.rectangle33:setHeight(25);
    obj.rectangle33:setColor("black");
    obj.rectangle33:setStrokeColor("white");
    obj.rectangle33:setStrokeSize(1);
    obj.rectangle33:setName("rectangle33");

    obj.label88 = gui.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.layout4);
    obj.label88:setField("efetModInt");
    obj.label88:setText("0");
    obj.label88:setLeft(155);
    obj.label88:setTop(3);
    obj.label88:setWidth(35);
    obj.label88:setHorzTextAlign("center");
    obj.label88:setName("label88");

    obj.dataLink18 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.layout4);
    obj.dataLink18:setField("efetInt");
    obj.dataLink18:setName("dataLink18");


				local function getINT()
					local mod = tonumber(sheet.efetModInt) or 0;
					return mod;
				end;
			


    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle17);
    obj.layout5:setLeft(0);
    obj.layout5:setTop(155);
    obj.layout5:setWidth(275);
    obj.layout5:setHeight(25);
    obj.layout5:setName("layout5");

    obj.button6 = gui.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.layout5);
    obj.button6:setLeft(5);
    obj.button6:setWidth(35);
    obj.button6:setText("SAB");
    obj.button6:setFontSize(11);
    obj.button6:setName("button6");

    obj.rectangle34 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle34:setParent(obj.layout5);
    obj.rectangle34:setLeft(45);
    obj.rectangle34:setTop(0);
    obj.rectangle34:setWidth(35);
    obj.rectangle34:setHeight(25);
    obj.rectangle34:setColor("black");
    obj.rectangle34:setStrokeColor("white");
    obj.rectangle34:setStrokeSize(1);
    obj.rectangle34:setName("rectangle34");

    obj.label89 = gui.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.layout5);
    obj.label89:setLeft(45);
    obj.label89:setWidth(35);
    obj.label89:setHeight(25);
    obj.label89:setField("realSab");
    obj.label89:setHorzTextAlign("center");
    obj.label89:setName("label89");

    obj.rectangle35 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle35:setParent(obj.layout5);
    obj.rectangle35:setLeft(80);
    obj.rectangle35:setTop(0);
    obj.rectangle35:setWidth(35);
    obj.rectangle35:setHeight(25);
    obj.rectangle35:setColor("black");
    obj.rectangle35:setStrokeColor("white");
    obj.rectangle35:setStrokeSize(1);
    obj.rectangle35:setName("rectangle35");

    obj.label90 = gui.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.layout5);
    obj.label90:setField("realModSab");
    obj.label90:setText("0");
    obj.label90:setLeft(80);
    obj.label90:setTop(3);
    obj.label90:setWidth(35);
    obj.label90:setHorzTextAlign("center");
    obj.label90:setName("label90");

    obj.dataLink19 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.layout5);
    obj.dataLink19:setField("realSab");
    obj.dataLink19:setName("dataLink19");

    obj.rectangle36 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle36:setParent(obj.layout5);
    obj.rectangle36:setLeft(120);
    obj.rectangle36:setTop(0);
    obj.rectangle36:setWidth(35);
    obj.rectangle36:setHeight(25);
    obj.rectangle36:setColor("black");
    obj.rectangle36:setStrokeColor("white");
    obj.rectangle36:setStrokeSize(1);
    obj.rectangle36:setName("rectangle36");

    obj.label91 = gui.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.layout5);
    obj.label91:setLeft(120);
    obj.label91:setWidth(35);
    obj.label91:setHeight(25);
    obj.label91:setField("efetSab");
    obj.label91:setHorzTextAlign("center");
    obj.label91:setName("label91");

    obj.rectangle37 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle37:setParent(obj.layout5);
    obj.rectangle37:setLeft(155);
    obj.rectangle37:setTop(0);
    obj.rectangle37:setWidth(35);
    obj.rectangle37:setHeight(25);
    obj.rectangle37:setColor("black");
    obj.rectangle37:setStrokeColor("white");
    obj.rectangle37:setStrokeSize(1);
    obj.rectangle37:setName("rectangle37");

    obj.label92 = gui.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.layout5);
    obj.label92:setField("efetModSab");
    obj.label92:setText("0");
    obj.label92:setLeft(155);
    obj.label92:setTop(3);
    obj.label92:setWidth(35);
    obj.label92:setHorzTextAlign("center");
    obj.label92:setName("label92");

    obj.dataLink20 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.layout5);
    obj.dataLink20:setField("efetSab");
    obj.dataLink20:setName("dataLink20");


				local function getSAB()
					local mod = tonumber(sheet.efetModSab) or 0;
					return mod;
				end;
			


    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle17);
    obj.layout6:setLeft(0);
    obj.layout6:setTop(180);
    obj.layout6:setWidth(275);
    obj.layout6:setHeight(25);
    obj.layout6:setName("layout6");

    obj.button7 = gui.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.layout6);
    obj.button7:setLeft(5);
    obj.button7:setWidth(35);
    obj.button7:setText("CAR");
    obj.button7:setFontSize(11);
    obj.button7:setName("button7");

    obj.rectangle38 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle38:setParent(obj.layout6);
    obj.rectangle38:setLeft(45);
    obj.rectangle38:setTop(0);
    obj.rectangle38:setWidth(35);
    obj.rectangle38:setHeight(25);
    obj.rectangle38:setColor("black");
    obj.rectangle38:setStrokeColor("white");
    obj.rectangle38:setStrokeSize(1);
    obj.rectangle38:setName("rectangle38");

    obj.label93 = gui.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.layout6);
    obj.label93:setLeft(45);
    obj.label93:setWidth(35);
    obj.label93:setHeight(25);
    obj.label93:setField("realCar");
    obj.label93:setHorzTextAlign("center");
    obj.label93:setName("label93");

    obj.rectangle39 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle39:setParent(obj.layout6);
    obj.rectangle39:setLeft(80);
    obj.rectangle39:setTop(0);
    obj.rectangle39:setWidth(35);
    obj.rectangle39:setHeight(25);
    obj.rectangle39:setColor("black");
    obj.rectangle39:setStrokeColor("white");
    obj.rectangle39:setStrokeSize(1);
    obj.rectangle39:setName("rectangle39");

    obj.label94 = gui.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.layout6);
    obj.label94:setField("realModCar");
    obj.label94:setText("0");
    obj.label94:setLeft(80);
    obj.label94:setTop(3);
    obj.label94:setWidth(35);
    obj.label94:setHorzTextAlign("center");
    obj.label94:setName("label94");

    obj.dataLink21 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.layout6);
    obj.dataLink21:setField("realCar");
    obj.dataLink21:setName("dataLink21");

    obj.rectangle40 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle40:setParent(obj.layout6);
    obj.rectangle40:setLeft(120);
    obj.rectangle40:setTop(0);
    obj.rectangle40:setWidth(35);
    obj.rectangle40:setHeight(25);
    obj.rectangle40:setColor("black");
    obj.rectangle40:setStrokeColor("white");
    obj.rectangle40:setStrokeSize(1);
    obj.rectangle40:setName("rectangle40");

    obj.label95 = gui.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.layout6);
    obj.label95:setLeft(120);
    obj.label95:setWidth(35);
    obj.label95:setHeight(25);
    obj.label95:setField("efetCar");
    obj.label95:setHorzTextAlign("center");
    obj.label95:setName("label95");

    obj.rectangle41 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle41:setParent(obj.layout6);
    obj.rectangle41:setLeft(155);
    obj.rectangle41:setTop(0);
    obj.rectangle41:setWidth(35);
    obj.rectangle41:setHeight(25);
    obj.rectangle41:setColor("black");
    obj.rectangle41:setStrokeColor("white");
    obj.rectangle41:setStrokeSize(1);
    obj.rectangle41:setName("rectangle41");

    obj.label96 = gui.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.layout6);
    obj.label96:setField("efetModCar");
    obj.label96:setText("0");
    obj.label96:setLeft(155);
    obj.label96:setTop(3);
    obj.label96:setWidth(35);
    obj.label96:setHorzTextAlign("center");
    obj.label96:setName("label96");

    obj.dataLink22 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.layout6);
    obj.dataLink22:setField("efetCar");
    obj.dataLink22:setName("dataLink22");


				local function getCAR()
					local mod = tonumber(sheet.efetModCar) or 0;
					return mod;
				end;
			


    obj.AtrBut = gui.fromHandle(_obj_newObject("button"));
    obj.AtrBut:setParent(obj.rectangle17);
    obj.AtrBut:setLeft(200);
    obj.AtrBut:setTop(55);
    obj.AtrBut:setWidth(30);
    obj.AtrBut:setHeight(150);
    obj.AtrBut:setName("AtrBut");
    obj.AtrBut:setText(">>");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setLeft(240);
    obj.layout7:setTop(115);
    obj.layout7:setWidth(235);
    obj.layout7:setHeight(215);
    obj.layout7:setName("layout7");

    obj.rectangle42 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle42:setParent(obj.layout7);
    obj.rectangle42:setAlign("client");
    obj.rectangle42:setColor("black");
    obj.rectangle42:setName("rectangle42");

    obj.label97 = gui.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.layout7);
    obj.label97:setLeft(5);
    obj.label97:setTop(1);
    obj.label97:setWidth(225);
    obj.label97:setHeight(20);
    obj.label97:setText("DESLOCAMENTOS");
    obj.label97:setHorzTextAlign("center");
    obj.label97:setName("label97");

    obj.label98 = gui.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.layout7);
    obj.label98:setLeft(75);
    obj.label98:setTop(30);
    obj.label98:setWidth(70);
    obj.label98:setHeight(25);
    obj.label98:setText("Metros");
    obj.label98:setHorzTextAlign("center");
    obj.label98:setName("label98");

    obj.label99 = gui.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.layout7);
    obj.label99:setLeft(155);
    obj.label99:setTop(30);
    obj.label99:setWidth(70);
    obj.label99:setHeight(25);
    obj.label99:setText("Quadrados");
    obj.label99:setHorzTextAlign("center");
    obj.label99:setName("label99");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout7);
    obj.layout8:setLeft(5);
    obj.layout8:setTop(55);
    obj.layout8:setWidth(225);
    obj.layout8:setHeight(20);
    obj.layout8:setName("layout8");

    obj.label100 = gui.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.layout8);
    obj.label100:setLeft(5);
    obj.label100:setTop(0);
    obj.label100:setWidth(70);
    obj.label100:setHeight(20);
    obj.label100:setText("TERRESTRE");
    obj.label100:setName("label100");

    obj.edit116 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit116:setParent(obj.layout8);
    obj.edit116:setVertTextAlign("center");
    obj.edit116:setLeft(75);
    obj.edit116:setTop(0);
    obj.edit116:setWidth(70);
    obj.edit116:setHeight(20);
    obj.edit116:setField("deslTerrestre");
    obj.edit116:setName("edit116");

    obj.rectangle43 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle43:setParent(obj.layout8);
    obj.rectangle43:setLeft(155);
    obj.rectangle43:setTop(0);
    obj.rectangle43:setWidth(60);
    obj.rectangle43:setHeight(20);
    obj.rectangle43:setColor("black");
    obj.rectangle43:setStrokeColor("white");
    obj.rectangle43:setStrokeSize(1);
    obj.rectangle43:setName("rectangle43");

    obj.label101 = gui.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.layout8);
    obj.label101:setLeft(155);
    obj.label101:setTop(0);
    obj.label101:setWidth(60);
    obj.label101:setHeight(20);
    obj.label101:setField("deslTerrestreQuadrados");
    obj.label101:setHorzTextAlign("center");
    obj.label101:setName("label101");

    obj.dataLink23 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.layout8);
    obj.dataLink23:setField("deslTerrestre");
    obj.dataLink23:setName("dataLink23");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout7);
    obj.layout9:setLeft(5);
    obj.layout9:setTop(80);
    obj.layout9:setWidth(225);
    obj.layout9:setHeight(20);
    obj.layout9:setName("layout9");

    obj.label102 = gui.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.layout9);
    obj.label102:setLeft(5);
    obj.label102:setTop(0);
    obj.label102:setWidth(70);
    obj.label102:setHeight(20);
    obj.label102:setText("VOO");
    obj.label102:setName("label102");

    obj.edit117 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit117:setParent(obj.layout9);
    obj.edit117:setVertTextAlign("center");
    obj.edit117:setLeft(75);
    obj.edit117:setTop(0);
    obj.edit117:setWidth(70);
    obj.edit117:setHeight(20);
    obj.edit117:setField("deslVoo");
    obj.edit117:setName("edit117");

    obj.rectangle44 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle44:setParent(obj.layout9);
    obj.rectangle44:setLeft(155);
    obj.rectangle44:setTop(0);
    obj.rectangle44:setWidth(60);
    obj.rectangle44:setHeight(20);
    obj.rectangle44:setColor("black");
    obj.rectangle44:setStrokeColor("white");
    obj.rectangle44:setStrokeSize(1);
    obj.rectangle44:setName("rectangle44");

    obj.label103 = gui.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.layout9);
    obj.label103:setLeft(155);
    obj.label103:setTop(0);
    obj.label103:setWidth(60);
    obj.label103:setHeight(20);
    obj.label103:setField("deslVooQuadrados");
    obj.label103:setHorzTextAlign("center");
    obj.label103:setName("label103");

    obj.dataLink24 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.layout9);
    obj.dataLink24:setField("deslVoo");
    obj.dataLink24:setName("dataLink24");

    obj.label104 = gui.fromHandle(_obj_newObject("label"));
    obj.label104:setParent(obj.layout7);
    obj.label104:setLeft(50);
    obj.label104:setTop(105);
    obj.label104:setWidth(60);
    obj.label104:setHeight(20);
    obj.label104:setText("Manobra");
    obj.label104:setFontSize(11);
    obj.label104:setName("label104");

    obj.comboBox1 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.layout7);
    obj.comboBox1:setLeft(95);
    obj.comboBox1:setTop(105);
    obj.comboBox1:setWidth(100);
    obj.comboBox1:setField("qualidadeVoo");
    obj.comboBox1:setItems({' ', 'Desajeitado', 'Ruim', 'Média', 'Boa', 'Perfeita'});
    obj.comboBox1:setHorzTextAlign("center");
    obj.comboBox1:setName("comboBox1");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout7);
    obj.layout10:setLeft(5);
    obj.layout10:setTop(130);
    obj.layout10:setWidth(225);
    obj.layout10:setHeight(20);
    obj.layout10:setName("layout10");

    obj.label105 = gui.fromHandle(_obj_newObject("label"));
    obj.label105:setParent(obj.layout10);
    obj.label105:setLeft(5);
    obj.label105:setTop(0);
    obj.label105:setWidth(70);
    obj.label105:setHeight(20);
    obj.label105:setText("NATAÇÃO");
    obj.label105:setName("label105");

    obj.edit118 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit118:setParent(obj.layout10);
    obj.edit118:setVertTextAlign("center");
    obj.edit118:setLeft(75);
    obj.edit118:setTop(0);
    obj.edit118:setWidth(70);
    obj.edit118:setHeight(20);
    obj.edit118:setField("deslNatacao");
    obj.edit118:setName("edit118");

    obj.rectangle45 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle45:setParent(obj.layout10);
    obj.rectangle45:setLeft(155);
    obj.rectangle45:setTop(0);
    obj.rectangle45:setWidth(60);
    obj.rectangle45:setHeight(20);
    obj.rectangle45:setColor("black");
    obj.rectangle45:setStrokeColor("white");
    obj.rectangle45:setStrokeSize(1);
    obj.rectangle45:setName("rectangle45");

    obj.label106 = gui.fromHandle(_obj_newObject("label"));
    obj.label106:setParent(obj.layout10);
    obj.label106:setLeft(155);
    obj.label106:setTop(0);
    obj.label106:setWidth(60);
    obj.label106:setHeight(20);
    obj.label106:setField("deslNatacaoQuadrados");
    obj.label106:setHorzTextAlign("center");
    obj.label106:setName("label106");

    obj.dataLink25 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.layout10);
    obj.dataLink25:setField("deslNatacao");
    obj.dataLink25:setName("dataLink25");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout7);
    obj.layout11:setLeft(5);
    obj.layout11:setTop(155);
    obj.layout11:setWidth(225);
    obj.layout11:setHeight(20);
    obj.layout11:setName("layout11");

    obj.label107 = gui.fromHandle(_obj_newObject("label"));
    obj.label107:setParent(obj.layout11);
    obj.label107:setLeft(5);
    obj.label107:setTop(0);
    obj.label107:setWidth(70);
    obj.label107:setHeight(20);
    obj.label107:setText("ESCALAR");
    obj.label107:setName("label107");

    obj.edit119 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit119:setParent(obj.layout11);
    obj.edit119:setVertTextAlign("center");
    obj.edit119:setLeft(75);
    obj.edit119:setTop(0);
    obj.edit119:setWidth(70);
    obj.edit119:setHeight(20);
    obj.edit119:setField("deslEscalar");
    obj.edit119:setName("edit119");

    obj.rectangle46 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle46:setParent(obj.layout11);
    obj.rectangle46:setLeft(155);
    obj.rectangle46:setTop(0);
    obj.rectangle46:setWidth(60);
    obj.rectangle46:setHeight(20);
    obj.rectangle46:setColor("black");
    obj.rectangle46:setStrokeColor("white");
    obj.rectangle46:setStrokeSize(1);
    obj.rectangle46:setName("rectangle46");

    obj.label108 = gui.fromHandle(_obj_newObject("label"));
    obj.label108:setParent(obj.layout11);
    obj.label108:setLeft(155);
    obj.label108:setTop(0);
    obj.label108:setWidth(60);
    obj.label108:setHeight(20);
    obj.label108:setField("deslEscalarQuadrados");
    obj.label108:setHorzTextAlign("center");
    obj.label108:setName("label108");

    obj.dataLink26 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.layout11);
    obj.dataLink26:setField("deslEscalar");
    obj.dataLink26:setName("dataLink26");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout7);
    obj.layout12:setLeft(5);
    obj.layout12:setTop(180);
    obj.layout12:setWidth(225);
    obj.layout12:setHeight(20);
    obj.layout12:setName("layout12");

    obj.label109 = gui.fromHandle(_obj_newObject("label"));
    obj.label109:setParent(obj.layout12);
    obj.label109:setLeft(5);
    obj.label109:setTop(0);
    obj.label109:setWidth(70);
    obj.label109:setHeight(20);
    obj.label109:setText("ESCAVAR");
    obj.label109:setName("label109");

    obj.edit120 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit120:setParent(obj.layout12);
    obj.edit120:setVertTextAlign("center");
    obj.edit120:setLeft(75);
    obj.edit120:setTop(0);
    obj.edit120:setWidth(70);
    obj.edit120:setHeight(20);
    obj.edit120:setField("deslEscavar");
    obj.edit120:setName("edit120");

    obj.rectangle47 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle47:setParent(obj.layout12);
    obj.rectangle47:setLeft(155);
    obj.rectangle47:setTop(0);
    obj.rectangle47:setWidth(60);
    obj.rectangle47:setHeight(20);
    obj.rectangle47:setColor("black");
    obj.rectangle47:setStrokeColor("white");
    obj.rectangle47:setStrokeSize(1);
    obj.rectangle47:setName("rectangle47");

    obj.label110 = gui.fromHandle(_obj_newObject("label"));
    obj.label110:setParent(obj.layout12);
    obj.label110:setLeft(155);
    obj.label110:setTop(0);
    obj.label110:setWidth(60);
    obj.label110:setHeight(20);
    obj.label110:setField("deslEscavarQuadrados");
    obj.label110:setHorzTextAlign("center");
    obj.label110:setName("label110");

    obj.dataLink27 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.layout12);
    obj.dataLink27:setField("deslEscavar");
    obj.dataLink27:setName("dataLink27");

    obj.layout13 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.scrollBox1);
    obj.layout13:setLeft(480);
    obj.layout13:setTop(115);
    obj.layout13:setWidth(260);
    obj.layout13:setHeight(55);
    obj.layout13:setName("layout13");

    obj.rectangle48 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle48:setParent(obj.layout13);
    obj.rectangle48:setAlign("client");
    obj.rectangle48:setColor("black");
    obj.rectangle48:setName("rectangle48");

    obj.label111 = gui.fromHandle(_obj_newObject("label"));
    obj.label111:setParent(obj.layout13);
    obj.label111:setLeft(0);
    obj.label111:setTop(1);
    obj.label111:setWidth(260);
    obj.label111:setHeight(20);
    obj.label111:setText("INICIATIVA");
    obj.label111:setHorzTextAlign("center");
    obj.label111:setName("label111");

    obj.button8 = gui.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.layout13);
    obj.button8:setLeft(35);
    obj.button8:setTop(25);
    obj.button8:setWidth(75);
    obj.button8:setHeight(25);
    obj.button8:setText("INICIATIVA");
    obj.button8:setFontSize(11);
    obj.button8:setName("button8");

    obj.rectangle49 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle49:setParent(obj.layout13);
    obj.rectangle49:setLeft(115);
    obj.rectangle49:setTop(25);
    obj.rectangle49:setWidth(35);
    obj.rectangle49:setHeight(25);
    obj.rectangle49:setColor("black");
    obj.rectangle49:setStrokeColor("white");
    obj.rectangle49:setStrokeSize(1);
    obj.rectangle49:setName("rectangle49");

    obj.label112 = gui.fromHandle(_obj_newObject("label"));
    obj.label112:setParent(obj.layout13);
    obj.label112:setField("iniciativa");
    obj.label112:setLeft(115);
    obj.label112:setTop(27);
    obj.label112:setWidth(35);
    obj.label112:setHorzTextAlign("center");
    obj.label112:setName("label112");

    obj.rectangle50 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle50:setParent(obj.layout13);
    obj.rectangle50:setLeft(165);
    obj.rectangle50:setTop(25);
    obj.rectangle50:setWidth(35);
    obj.rectangle50:setHeight(25);
    obj.rectangle50:setColor("black");
    obj.rectangle50:setStrokeColor("white");
    obj.rectangle50:setStrokeSize(1);
    obj.rectangle50:setName("rectangle50");

    obj.label113 = gui.fromHandle(_obj_newObject("label"));
    obj.label113:setParent(obj.layout13);
    obj.label113:setField("efetModDes");
    obj.label113:setLeft(165);
    obj.label113:setTop(27);
    obj.label113:setWidth(35);
    obj.label113:setHorzTextAlign("center");
    obj.label113:setName("label113");

    obj.edit121 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit121:setParent(obj.layout13);
    obj.edit121:setType("number");
    obj.edit121:setVertTextAlign("center");
    obj.edit121:setHorzTextAlign("center");
    obj.edit121:setLeft(205);
    obj.edit121:setTop(25);
    obj.edit121:setWidth(35);
    obj.edit121:setHeight(25);
    obj.edit121:setField("iniVariado");
    obj.edit121:setName("edit121");

    obj.dataLink28 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.layout13);
    obj.dataLink28:setFields({'efetModDes', 'iniVariado'});
    obj.dataLink28:setName("dataLink28");

    obj.rectangle51 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle51:setParent(obj.scrollBox1);
    obj.rectangle51:setLeft(480);
    obj.rectangle51:setTop(175);
    obj.rectangle51:setWidth(260);
    obj.rectangle51:setHeight(155);
    obj.rectangle51:setColor("black");
    obj.rectangle51:setName("rectangle51");

    obj.label114 = gui.fromHandle(_obj_newObject("label"));
    obj.label114:setParent(obj.rectangle51);
    obj.label114:setLeft(0);
    obj.label114:setTop(1);
    obj.label114:setWidth(260);
    obj.label114:setHeight(20);
    obj.label114:setText("CLASSE DE ARMADURA");
    obj.label114:setHorzTextAlign("center");
    obj.label114:setName("label114");

    obj.layout14 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle51);
    obj.layout14:setLeft(20);
    obj.layout14:setTop(25);
    obj.layout14:setWidth(220);
    obj.layout14:setHeight(50);
    obj.layout14:setName("layout14");

    obj.label115 = gui.fromHandle(_obj_newObject("label"));
    obj.label115:setParent(obj.layout14);
    obj.label115:setLeft(10);
    obj.label115:setTop(0);
    obj.label115:setWidth(35);
    obj.label115:setHeight(20);
    obj.label115:setText("CA");
    obj.label115:setName("label115");

    obj.rectangle52 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle52:setParent(obj.layout14);
    obj.rectangle52:setLeft(5);
    obj.rectangle52:setTop(25);
    obj.rectangle52:setWidth(35);
    obj.rectangle52:setHeight(25);
    obj.rectangle52:setColor("black");
    obj.rectangle52:setStrokeColor("white");
    obj.rectangle52:setStrokeSize(1);
    obj.rectangle52:setName("rectangle52");

    obj.label116 = gui.fromHandle(_obj_newObject("label"));
    obj.label116:setParent(obj.layout14);
    obj.label116:setLeft(5);
    obj.label116:setTop(27);
    obj.label116:setWidth(35);
    obj.label116:setField("ca");
    obj.label116:setHorzTextAlign("center");
    obj.label116:setName("label116");

    obj.label117 = gui.fromHandle(_obj_newObject("label"));
    obj.label117:setParent(obj.layout14);
    obj.label117:setLeft(45);
    obj.label117:setTop(0);
    obj.label117:setWidth(40);
    obj.label117:setHeight(20);
    obj.label117:setText("SURP.");
    obj.label117:setName("label117");

    obj.rectangle53 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle53:setParent(obj.layout14);
    obj.rectangle53:setLeft(45);
    obj.rectangle53:setTop(25);
    obj.rectangle53:setWidth(35);
    obj.rectangle53:setHeight(25);
    obj.rectangle53:setColor("black");
    obj.rectangle53:setStrokeColor("white");
    obj.rectangle53:setStrokeSize(1);
    obj.rectangle53:setName("rectangle53");

    obj.label118 = gui.fromHandle(_obj_newObject("label"));
    obj.label118:setParent(obj.layout14);
    obj.label118:setLeft(45);
    obj.label118:setTop(27);
    obj.label118:setWidth(35);
    obj.label118:setField("surpresa");
    obj.label118:setHorzTextAlign("center");
    obj.label118:setName("label118");

    obj.label119 = gui.fromHandle(_obj_newObject("label"));
    obj.label119:setParent(obj.layout14);
    obj.label119:setLeft(85);
    obj.label119:setTop(0);
    obj.label119:setWidth(45);
    obj.label119:setHeight(20);
    obj.label119:setText("TOQUE");
    obj.label119:setName("label119");

    obj.rectangle54 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle54:setParent(obj.layout14);
    obj.rectangle54:setLeft(90);
    obj.rectangle54:setTop(25);
    obj.rectangle54:setWidth(35);
    obj.rectangle54:setHeight(25);
    obj.rectangle54:setColor("black");
    obj.rectangle54:setStrokeColor("white");
    obj.rectangle54:setStrokeSize(1);
    obj.rectangle54:setName("rectangle54");

    obj.label120 = gui.fromHandle(_obj_newObject("label"));
    obj.label120:setParent(obj.layout14);
    obj.label120:setLeft(90);
    obj.label120:setTop(27);
    obj.label120:setWidth(35);
    obj.label120:setField("toque");
    obj.label120:setHorzTextAlign("center");
    obj.label120:setName("label120");

    obj.label121 = gui.fromHandle(_obj_newObject("label"));
    obj.label121:setParent(obj.layout14);
    obj.label121:setLeft(135);
    obj.label121:setTop(0);
    obj.label121:setWidth(35);
    obj.label121:setHeight(20);
    obj.label121:setText("PEN");
    obj.label121:setName("label121");

    obj.rectangle55 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle55:setParent(obj.layout14);
    obj.rectangle55:setLeft(135);
    obj.rectangle55:setTop(25);
    obj.rectangle55:setWidth(35);
    obj.rectangle55:setHeight(25);
    obj.rectangle55:setColor("black");
    obj.rectangle55:setStrokeColor("white");
    obj.rectangle55:setStrokeSize(1);
    obj.rectangle55:setName("rectangle55");

    obj.label122 = gui.fromHandle(_obj_newObject("label"));
    obj.label122:setParent(obj.layout14);
    obj.label122:setLeft(135);
    obj.label122:setTop(27);
    obj.label122:setWidth(35);
    obj.label122:setField("penalidade");
    obj.label122:setHorzTextAlign("center");
    obj.label122:setName("label122");

    obj.button9 = gui.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.layout14);
    obj.button9:setLeft(170);
    obj.button9:setTop(0);
    obj.button9:setWidth(45);
    obj.button9:setHeight(20);
    obj.button9:setFontSize(10);
    obj.button9:setText("FALHA");
    obj.button9:setName("button9");

    obj.rectangle56 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle56:setParent(obj.layout14);
    obj.rectangle56:setLeft(175);
    obj.rectangle56:setTop(25);
    obj.rectangle56:setWidth(35);
    obj.rectangle56:setHeight(25);
    obj.rectangle56:setColor("black");
    obj.rectangle56:setStrokeColor("white");
    obj.rectangle56:setStrokeSize(1);
    obj.rectangle56:setName("rectangle56");

    obj.label123 = gui.fromHandle(_obj_newObject("label"));
    obj.label123:setParent(obj.layout14);
    obj.label123:setLeft(175);
    obj.label123:setTop(27);
    obj.label123:setWidth(35);
    obj.label123:setField("falha");
    obj.label123:setHorzTextAlign("center");
    obj.label123:setName("label123");

    obj.caDetails = gui.fromHandle(_obj_newObject("button"));
    obj.caDetails:setParent(obj.rectangle51);
    obj.caDetails:setLeft(30);
    obj.caDetails:setTop(80);
    obj.caDetails:setWidth(200);
    obj.caDetails:setHeight(20);
    obj.caDetails:setFontSize(10);
    obj.caDetails:setText("+");
    obj.caDetails:setName("caDetails");

    obj.dataLink29 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.rectangle51);
    obj.dataLink29:setFields({'armaduraCa', 'escudoCa', 'efetModDes', 'tamanhoCa', 'naturalCa', 'deflexaoCa', 'esquivaCa', 'sorteCa', 'outrosCa', 'variadosCa', 'armaduraCaSurp', 'escudoCaSurp', 'destrezaCaSurp', 'tamanhoCaSurp', 'naturalCaSurp', 'deflexaoCaSurp', 'esquivaCaSurp', 'sorteCaSurp', 'outrosCaSurp', 'variadosCaSurp', 'armaduraCaToque', 'escudoCaToque', 'destrezaCaToque', 'tamanhoCaToque', 'naturalCaToque', 'deflexaoCaToque', 'esquivaCaToque', 'sorteCaToque', 'outrosCaToque', 'variadosCaToque'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.rectangle51);
    obj.dataLink30:setFields({'armaduraCaSurp', 'escudoCaSurp', 'tamanhoCaSurp', 'naturalCaSurp', 'deflexaoCaSurp', 'destrezaCaToque', 'tamanhoCaToque', 'deflexaoCaToque', 'esquivaCaToque'});
    obj.dataLink30:setDefaultValues({'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.rectangle51);
    obj.dataLink31:setFields({'equipamentoCorpoPen', 'escudoPen'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.rectangle51);
    obj.dataLink32:setFields({'equipamentoCorpoFalha', 'escudoFalha'});
    obj.dataLink32:setName("dataLink32");

    obj.layout15 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle51);
    obj.layout15:setLeft(0);
    obj.layout15:setTop(105);
    obj.layout15:setWidth(260);
    obj.layout15:setHeight(25);
    obj.layout15:setName("layout15");

    obj.label124 = gui.fromHandle(_obj_newObject("label"));
    obj.label124:setParent(obj.layout15);
    obj.label124:setLeft(30);
    obj.label124:setTop(0);
    obj.label124:setWidth(30);
    obj.label124:setHeight(20);
    obj.label124:setText("RM");
    obj.label124:setName("label124");

    obj.edit122 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit122:setParent(obj.layout15);
    obj.edit122:setVertTextAlign("center");
    obj.edit122:setLeft(60);
    obj.edit122:setTop(0);
    obj.edit122:setWidth(170);
    obj.edit122:setHeight(25);
    obj.edit122:setField("rm");
    obj.edit122:setName("edit122");

    obj.rectangle57 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle57:setParent(obj.scrollBox1);
    obj.rectangle57:setLeft(0);
    obj.rectangle57:setTop(335);
    obj.rectangle57:setWidth(220);
    obj.rectangle57:setHeight(165);
    obj.rectangle57:setColor("black");
    obj.rectangle57:setName("rectangle57");

    obj.label125 = gui.fromHandle(_obj_newObject("label"));
    obj.label125:setParent(obj.rectangle57);
    obj.label125:setLeft(5);
    obj.label125:setTop(1);
    obj.label125:setWidth(220);
    obj.label125:setHeight(20);
    obj.label125:setText("PONTOS DE VIGOR");
    obj.label125:setName("label125");

    obj.label126 = gui.fromHandle(_obj_newObject("label"));
    obj.label126:setParent(obj.rectangle57);
    obj.label126:setLeft(35);
    obj.label126:setTop(25);
    obj.label126:setWidth(100);
    obj.label126:setHeight(20);
    obj.label126:setText("VIGOR");
    obj.label126:setName("label126");

    obj.edit123 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit123:setParent(obj.rectangle57);
    obj.edit123:setType("number");
    obj.edit123:setVertTextAlign("center");
    obj.edit123:setHorzTextAlign("center");
    obj.edit123:setLeft(5);
    obj.edit123:setTop(45);
    obj.edit123:setWidth(105);
    obj.edit123:setHeight(25);
    obj.edit123:setField("pvTotal");
    obj.edit123:setName("edit123");

    obj.label127 = gui.fromHandle(_obj_newObject("label"));
    obj.label127:setParent(obj.rectangle57);
    obj.label127:setLeft(115);
    obj.label127:setTop(25);
    obj.label127:setWidth(100);
    obj.label127:setHeight(20);
    obj.label127:setText("TEMPORARIO");
    obj.label127:setName("label127");

    obj.edit124 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit124:setParent(obj.rectangle57);
    obj.edit124:setType("number");
    obj.edit124:setVertTextAlign("center");
    obj.edit124:setHorzTextAlign("center");
    obj.edit124:setLeft(110);
    obj.edit124:setTop(45);
    obj.edit124:setWidth(105);
    obj.edit124:setHeight(25);
    obj.edit124:setField("pvTemporario");
    obj.edit124:setName("edit124");

    obj.button10 = gui.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.rectangle57);
    obj.button10:setLeft(5);
    obj.button10:setTop(70);
    obj.button10:setWidth(40);
    obj.button10:setHeight(25);
    obj.button10:setText("DVs");
    obj.button10:setName("button10");

    obj.edit125 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit125:setParent(obj.rectangle57);
    obj.edit125:setVertTextAlign("center");
    obj.edit125:setLeft(45);
    obj.edit125:setTop(70);
    obj.edit125:setWidth(170);
    obj.edit125:setHeight(25);
    obj.edit125:setField("dvs");
    obj.edit125:setName("edit125");

    obj.textEditor2 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.rectangle57);
    obj.textEditor2:setLeft(5);
    obj.textEditor2:setTop(95);
    obj.textEditor2:setWidth(210);
    obj.textEditor2:setHeight(65);
    obj.textEditor2:setField("rd");
    obj.textEditor2:setName("textEditor2");

    obj.layout16 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.scrollBox1);
    obj.layout16:setLeft(225);
    obj.layout16:setTop(335);
    obj.layout16:setWidth(322);
    obj.layout16:setHeight(165);
    obj.layout16:setName("layout16");

    obj.rectangle58 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle58:setParent(obj.layout16);
    obj.rectangle58:setAlign("client");
    obj.rectangle58:setColor("black");
    obj.rectangle58:setName("rectangle58");

    obj.label128 = gui.fromHandle(_obj_newObject("label"));
    obj.label128:setParent(obj.layout16);
    obj.label128:setLeft(5);
    obj.label128:setTop(0);
    obj.label128:setWidth(321);
    obj.label128:setHeight(20);
    obj.label128:setText("BÔNUS TEMPORARIOS");
    obj.label128:setName("label128");

    obj.button11 = gui.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.layout16);
    obj.button11:setLeft(165);
    obj.button11:setTop(5);
    obj.button11:setWidth(85);
    obj.button11:setHeight(20);
    obj.button11:setText("CA oculta");
    obj.button11:setName("button11");

    obj.label129 = gui.fromHandle(_obj_newObject("label"));
    obj.label129:setParent(obj.layout16);
    obj.label129:setLeft(180);
    obj.label129:setTop(115);
    obj.label129:setWidth(165);
    obj.label129:setHeight(20);
    obj.label129:setText("Apenas o Mestre.");
    obj.label129:setRotationAngle(90);
    obj.label129:setName("label129");

    obj.label130 = gui.fromHandle(_obj_newObject("label"));
    obj.label130:setParent(obj.layout16);
    obj.label130:setLeft(165);
    obj.label130:setTop(30);
    obj.label130:setWidth(50);
    obj.label130:setHeight(25);
    obj.label130:setText("Alvo 1");
    obj.label130:setName("label130");

    obj.alvo1 = gui.fromHandle(_obj_newObject("edit"));
    obj.alvo1:setParent(obj.layout16);
    obj.alvo1:setLeft(205);
    obj.alvo1:setTop(30);
    obj.alvo1:setWidth(40);
    obj.alvo1:setHeight(25);
    obj.alvo1:setField("alvo1");
    obj.alvo1:setName("alvo1");
    obj.alvo1:setVisible(false);
    obj.alvo1:setType("number");

    obj.label131 = gui.fromHandle(_obj_newObject("label"));
    obj.label131:setParent(obj.layout16);
    obj.label131:setLeft(165);
    obj.label131:setTop(55);
    obj.label131:setWidth(50);
    obj.label131:setHeight(25);
    obj.label131:setText("Alvo 2");
    obj.label131:setName("label131");

    obj.alvo2 = gui.fromHandle(_obj_newObject("edit"));
    obj.alvo2:setParent(obj.layout16);
    obj.alvo2:setLeft(205);
    obj.alvo2:setTop(55);
    obj.alvo2:setWidth(40);
    obj.alvo2:setHeight(25);
    obj.alvo2:setField("alvo2");
    obj.alvo2:setName("alvo2");
    obj.alvo2:setVisible(false);
    obj.alvo2:setType("number");

    obj.label132 = gui.fromHandle(_obj_newObject("label"));
    obj.label132:setParent(obj.layout16);
    obj.label132:setLeft(165);
    obj.label132:setTop(80);
    obj.label132:setWidth(50);
    obj.label132:setHeight(25);
    obj.label132:setText("Alvo 3");
    obj.label132:setName("label132");

    obj.alvo3 = gui.fromHandle(_obj_newObject("edit"));
    obj.alvo3:setParent(obj.layout16);
    obj.alvo3:setLeft(205);
    obj.alvo3:setTop(80);
    obj.alvo3:setWidth(40);
    obj.alvo3:setHeight(25);
    obj.alvo3:setField("alvo3");
    obj.alvo3:setName("alvo3");
    obj.alvo3:setVisible(false);
    obj.alvo3:setType("number");

    obj.label133 = gui.fromHandle(_obj_newObject("label"));
    obj.label133:setParent(obj.layout16);
    obj.label133:setLeft(165);
    obj.label133:setTop(105);
    obj.label133:setWidth(50);
    obj.label133:setHeight(25);
    obj.label133:setText("Alvo 4");
    obj.label133:setName("label133");

    obj.alvo4 = gui.fromHandle(_obj_newObject("edit"));
    obj.alvo4:setParent(obj.layout16);
    obj.alvo4:setLeft(205);
    obj.alvo4:setTop(105);
    obj.alvo4:setWidth(40);
    obj.alvo4:setHeight(25);
    obj.alvo4:setField("alvo4");
    obj.alvo4:setName("alvo4");
    obj.alvo4:setVisible(false);
    obj.alvo4:setType("number");

    obj.label134 = gui.fromHandle(_obj_newObject("label"));
    obj.label134:setParent(obj.layout16);
    obj.label134:setLeft(165);
    obj.label134:setTop(130);
    obj.label134:setWidth(50);
    obj.label134:setHeight(25);
    obj.label134:setText("Alvo 5");
    obj.label134:setName("label134");

    obj.alvo5 = gui.fromHandle(_obj_newObject("edit"));
    obj.alvo5:setParent(obj.layout16);
    obj.alvo5:setLeft(205);
    obj.alvo5:setTop(130);
    obj.alvo5:setWidth(40);
    obj.alvo5:setHeight(25);
    obj.alvo5:setField("alvo5");
    obj.alvo5:setName("alvo5");
    obj.alvo5:setVisible(false);
    obj.alvo5:setType("number");


				local function caSecreta()
					if sheet~= nil then
						local jogadores = rrpg.getMesaDe(sheet).jogadores;
						local current = nil;
						
						for i = 1, #jogadores, 1 do
							if jogadores[i].login==rrpg.getCurrentUser().login then
								current = jogadores[i];
							end;
						end; 
						
						
						if current~=nil and current.isMestre then
							self.alvo1.visible = true;
							self.alvo2.visible = true;
							self.alvo3.visible = true;
							self.alvo4.visible = true;
							self.alvo5.visible = true;
						else
							self.alvo1.visible = false;
							self.alvo2.visible = false;
							self.alvo3.visible = false;
							self.alvo4.visible = false;
							self.alvo5.visible = false;
						end;
					end;
				end;
			


    obj.label135 = gui.fromHandle(_obj_newObject("label"));
    obj.label135:setParent(obj.layout16);
    obj.label135:setLeft(5);
    obj.label135:setTop(30);
    obj.label135:setWidth(50);
    obj.label135:setHeight(20);
    obj.label135:setText("ATAQUE");
    obj.label135:setName("label135");

    obj.edit126 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit126:setParent(obj.layout16);
    obj.edit126:setVertTextAlign("center");
    obj.edit126:setLeft(60);
    obj.edit126:setTop(30);
    obj.edit126:setWidth(70);
    obj.edit126:setHeight(25);
    obj.edit126:setField("buffAtaque");
    obj.edit126:setName("edit126");

    obj.label136 = gui.fromHandle(_obj_newObject("label"));
    obj.label136:setParent(obj.layout16);
    obj.label136:setLeft(5);
    obj.label136:setTop(55);
    obj.label136:setWidth(50);
    obj.label136:setHeight(20);
    obj.label136:setText("DANO");
    obj.label136:setName("label136");

    obj.edit127 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit127:setParent(obj.layout16);
    obj.edit127:setVertTextAlign("center");
    obj.edit127:setLeft(60);
    obj.edit127:setTop(55);
    obj.edit127:setWidth(70);
    obj.edit127:setHeight(25);
    obj.edit127:setField("buffDano");
    obj.edit127:setName("edit127");

    obj.label137 = gui.fromHandle(_obj_newObject("label"));
    obj.label137:setParent(obj.layout16);
    obj.label137:setLeft(5);
    obj.label137:setTop(80);
    obj.label137:setWidth(50);
    obj.label137:setHeight(20);
    obj.label137:setText("CRITICO");
    obj.label137:setName("label137");

    obj.edit128 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit128:setParent(obj.layout16);
    obj.edit128:setVertTextAlign("center");
    obj.edit128:setLeft(60);
    obj.edit128:setTop(80);
    obj.edit128:setWidth(70);
    obj.edit128:setHeight(25);
    obj.edit128:setField("buffDanoCritico");
    obj.edit128:setName("edit128");

    obj.label138 = gui.fromHandle(_obj_newObject("label"));
    obj.label138:setParent(obj.layout16);
    obj.label138:setLeft(5);
    obj.label138:setTop(105);
    obj.label138:setWidth(50);
    obj.label138:setHeight(20);
    obj.label138:setText("TR");
    obj.label138:setName("label138");

    obj.edit129 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit129:setParent(obj.layout16);
    obj.edit129:setVertTextAlign("center");
    obj.edit129:setLeft(60);
    obj.edit129:setTop(105);
    obj.edit129:setWidth(70);
    obj.edit129:setHeight(25);
    obj.edit129:setField("buffTR");
    obj.edit129:setName("edit129");

    obj.label139 = gui.fromHandle(_obj_newObject("label"));
    obj.label139:setParent(obj.layout16);
    obj.label139:setLeft(5);
    obj.label139:setTop(130);
    obj.label139:setWidth(50);
    obj.label139:setHeight(20);
    obj.label139:setText("PERICIA");
    obj.label139:setName("label139");

    obj.edit130 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit130:setParent(obj.layout16);
    obj.edit130:setVertTextAlign("center");
    obj.edit130:setLeft(60);
    obj.edit130:setTop(130);
    obj.edit130:setWidth(70);
    obj.edit130:setHeight(25);
    obj.edit130:setField("buffPericia");
    obj.edit130:setName("edit130");

    obj.layout17 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.scrollBox1);
    obj.layout17:setLeft(552);
    obj.layout17:setTop(335);
    obj.layout17:setWidth(188);
    obj.layout17:setHeight(142);
    obj.layout17:setName("layout17");

    obj.rectangle59 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle59:setParent(obj.layout17);
    obj.rectangle59:setAlign("client");
    obj.rectangle59:setColor("black");
    obj.rectangle59:setName("rectangle59");

    obj.label140 = gui.fromHandle(_obj_newObject("label"));
    obj.label140:setParent(obj.layout17);
    obj.label140:setLeft(0);
    obj.label140:setTop(0);
    obj.label140:setWidth(180);
    obj.label140:setHeight(25);
    obj.label140:setText("BBA");
    obj.label140:setHorzTextAlign("center");
    obj.label140:setName("label140");

    obj.edit131 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit131:setParent(obj.layout17);
    obj.edit131:setLeft(5);
    obj.edit131:setTop(25);
    obj.edit131:setWidth(40);
    obj.edit131:setHeight(25);
    obj.edit131:setType("number");
    obj.edit131:setHorzTextAlign("center");
    obj.edit131:setField("bba");
    obj.edit131:setName("edit131");

    obj.rectangle60 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle60:setParent(obj.layout17);
    obj.rectangle60:setLeft(50);
    obj.rectangle60:setTop(25);
    obj.rectangle60:setWidth(125);
    obj.rectangle60:setHeight(25);
    obj.rectangle60:setColor("black");
    obj.rectangle60:setStrokeColor("white");
    obj.rectangle60:setStrokeSize(1);
    obj.rectangle60:setName("rectangle60");

    obj.label141 = gui.fromHandle(_obj_newObject("label"));
    obj.label141:setParent(obj.layout17);
    obj.label141:setLeft(50);
    obj.label141:setTop(25);
    obj.label141:setWidth(125);
    obj.label141:setHeight(25);
    obj.label141:setField("bbaDesc");
    obj.label141:setHorzTextAlign("center");
    obj.label141:setName("label141");

    obj.layout18 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layout17);
    obj.layout18:setLeft(0);
    obj.layout18:setTop(60);
    obj.layout18:setWidth(180);
    obj.layout18:setHeight(25);
    obj.layout18:setName("layout18");

    obj.button12 = gui.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.layout18);
    obj.button12:setLeft(5);
    obj.button12:setTop(0);
    obj.button12:setWidth(70);
    obj.button12:setHeight(25);
    obj.button12:setText("AGARRAR");
    obj.button12:setFontSize(11);
    obj.button12:setName("button12");

    obj.rectangle61 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle61:setParent(obj.layout18);
    obj.rectangle61:setLeft(80);
    obj.rectangle61:setTop(0);
    obj.rectangle61:setWidth(40);
    obj.rectangle61:setHeight(25);
    obj.rectangle61:setColor("black");
    obj.rectangle61:setStrokeColor("white");
    obj.rectangle61:setStrokeSize(1);
    obj.rectangle61:setName("rectangle61");

    obj.label142 = gui.fromHandle(_obj_newObject("label"));
    obj.label142:setParent(obj.layout18);
    obj.label142:setField("agarrar");
    obj.label142:setLeft(80);
    obj.label142:setWidth(40);
    obj.label142:setHeight(25);
    obj.label142:setHorzTextAlign("center");
    obj.label142:setName("label142");

    obj.GrappleBt = gui.fromHandle(_obj_newObject("button"));
    obj.GrappleBt:setParent(obj.layout18);
    obj.GrappleBt:setLeft(125);
    obj.GrappleBt:setTop(0);
    obj.GrappleBt:setWidth(25);
    obj.GrappleBt:setHeight(25);
    obj.GrappleBt:setName("GrappleBt");
    obj.GrappleBt:setText("i");

    obj.dataLink33 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.layout18);
    obj.dataLink33:setFields({'bba', 'efetModFor', 'agarrarTam', 'agarrarVar'});
    obj.dataLink33:setName("dataLink33");

    obj.layout19 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout17);
    obj.layout19:setLeft(0);
    obj.layout19:setTop(95);
    obj.layout19:setWidth(180);
    obj.layout19:setHeight(25);
    obj.layout19:setName("layout19");

    obj.button13 = gui.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.layout19);
    obj.button13:setLeft(5);
    obj.button13:setTop(0);
    obj.button13:setWidth(40);
    obj.button13:setHeight(25);
    obj.button13:setText("BMC");
    obj.button13:setFontSize(11);
    obj.button13:setName("button13");

    obj.rectangle62 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle62:setParent(obj.layout19);
    obj.rectangle62:setLeft(46);
    obj.rectangle62:setTop(0);
    obj.rectangle62:setWidth(35);
    obj.rectangle62:setHeight(25);
    obj.rectangle62:setColor("black");
    obj.rectangle62:setStrokeColor("white");
    obj.rectangle62:setStrokeSize(1);
    obj.rectangle62:setName("rectangle62");

    obj.label143 = gui.fromHandle(_obj_newObject("label"));
    obj.label143:setParent(obj.layout19);
    obj.label143:setLeft(46);
    obj.label143:setWidth(35);
    obj.label143:setHeight(25);
    obj.label143:setField("bmc");
    obj.label143:setHorzTextAlign("center");
    obj.label143:setName("label143");

    obj.label144 = gui.fromHandle(_obj_newObject("label"));
    obj.label144:setParent(obj.layout19);
    obj.label144:setLeft(83);
    obj.label144:setTop(0);
    obj.label144:setWidth(50);
    obj.label144:setHeight(25);
    obj.label144:setText("BMD");
    obj.label144:setName("label144");

    obj.rectangle63 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle63:setParent(obj.layout19);
    obj.rectangle63:setLeft(112);
    obj.rectangle63:setTop(0);
    obj.rectangle63:setWidth(35);
    obj.rectangle63:setHeight(25);
    obj.rectangle63:setColor("black");
    obj.rectangle63:setStrokeColor("white");
    obj.rectangle63:setStrokeSize(1);
    obj.rectangle63:setName("rectangle63");

    obj.label145 = gui.fromHandle(_obj_newObject("label"));
    obj.label145:setParent(obj.layout19);
    obj.label145:setLeft(112);
    obj.label145:setWidth(35);
    obj.label145:setHeight(25);
    obj.label145:setField("bmd");
    obj.label145:setHorzTextAlign("center");
    obj.label145:setName("label145");

    obj.ManeuverBt = gui.fromHandle(_obj_newObject("button"));
    obj.ManeuverBt:setParent(obj.layout19);
    obj.ManeuverBt:setLeft(150);
    obj.ManeuverBt:setTop(0);
    obj.ManeuverBt:setWidth(25);
    obj.ManeuverBt:setHeight(25);
    obj.ManeuverBt:setName("ManeuverBt");
    obj.ManeuverBt:setText("i");

    obj.dataLink34 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.layout19);
    obj.dataLink34:setFields({'bba', 'efetModFor', 'bmcTamanho', 'bmcOutros', 'destrezaBMC', 'bmcDiversos', 'bmdTamanho', 'bmdOutros', 'efetModDes', 'bmdDiversos'});
    obj.dataLink34:setName("dataLink34");

    obj.rectangle64 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle64:setParent(obj.scrollBox1);
    obj.rectangle64:setLeft(0);
    obj.rectangle64:setTop(505);
    obj.rectangle64:setWidth(140);
    obj.rectangle64:setHeight(115);
    obj.rectangle64:setColor("black");
    obj.rectangle64:setName("rectangle64");

    obj.label146 = gui.fromHandle(_obj_newObject("label"));
    obj.label146:setParent(obj.rectangle64);
    obj.label146:setLeft(0);
    obj.label146:setTop(0);
    obj.label146:setWidth(140);
    obj.label146:setHeight(25);
    obj.label146:setText("RESISTENCIAS");
    obj.label146:setHorzTextAlign("center");
    obj.label146:setName("label146");

    obj.layout20 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle64);
    obj.layout20:setLeft(0);
    obj.layout20:setTop(30);
    obj.layout20:setWidth(275);
    obj.layout20:setHeight(25);
    obj.layout20:setName("layout20");

    obj.button14 = gui.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.layout20);
    obj.button14:setLeft(5);
    obj.button14:setWidth(45);
    obj.button14:setText("FORT");
    obj.button14:setFontSize(11);
    obj.button14:setName("button14");

    obj.rectangle65 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle65:setParent(obj.layout20);
    obj.rectangle65:setLeft(55);
    obj.rectangle65:setTop(0);
    obj.rectangle65:setWidth(40);
    obj.rectangle65:setHeight(25);
    obj.rectangle65:setColor("black");
    obj.rectangle65:setStrokeColor("white");
    obj.rectangle65:setStrokeSize(1);
    obj.rectangle65:setName("rectangle65");

    obj.label147 = gui.fromHandle(_obj_newObject("label"));
    obj.label147:setParent(obj.layout20);
    obj.label147:setLeft(55);
    obj.label147:setWidth(40);
    obj.label147:setHeight(25);
    obj.label147:setField("trFort");
    obj.label147:setHorzTextAlign("center");
    obj.label147:setName("label147");

    obj.layout21 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle64);
    obj.layout21:setLeft(0);
    obj.layout21:setTop(55);
    obj.layout21:setWidth(275);
    obj.layout21:setHeight(25);
    obj.layout21:setName("layout21");

    obj.button15 = gui.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.layout21);
    obj.button15:setLeft(5);
    obj.button15:setWidth(45);
    obj.button15:setText("REF");
    obj.button15:setFontSize(11);
    obj.button15:setName("button15");

    obj.rectangle66 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle66:setParent(obj.layout21);
    obj.rectangle66:setLeft(55);
    obj.rectangle66:setTop(0);
    obj.rectangle66:setWidth(40);
    obj.rectangle66:setHeight(25);
    obj.rectangle66:setColor("black");
    obj.rectangle66:setStrokeColor("white");
    obj.rectangle66:setStrokeSize(1);
    obj.rectangle66:setName("rectangle66");

    obj.label148 = gui.fromHandle(_obj_newObject("label"));
    obj.label148:setParent(obj.layout21);
    obj.label148:setLeft(55);
    obj.label148:setWidth(40);
    obj.label148:setHeight(25);
    obj.label148:setField("trRef");
    obj.label148:setHorzTextAlign("center");
    obj.label148:setName("label148");

    obj.layout22 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle64);
    obj.layout22:setLeft(0);
    obj.layout22:setTop(80);
    obj.layout22:setWidth(275);
    obj.layout22:setHeight(25);
    obj.layout22:setName("layout22");

    obj.button16 = gui.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.layout22);
    obj.button16:setLeft(5);
    obj.button16:setWidth(45);
    obj.button16:setText("VON");
    obj.button16:setFontSize(11);
    obj.button16:setName("button16");

    obj.rectangle67 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle67:setParent(obj.layout22);
    obj.rectangle67:setLeft(55);
    obj.rectangle67:setTop(0);
    obj.rectangle67:setWidth(40);
    obj.rectangle67:setHeight(25);
    obj.rectangle67:setColor("black");
    obj.rectangle67:setStrokeColor("white");
    obj.rectangle67:setStrokeSize(1);
    obj.rectangle67:setName("rectangle67");

    obj.label149 = gui.fromHandle(_obj_newObject("label"));
    obj.label149:setParent(obj.layout22);
    obj.label149:setLeft(55);
    obj.label149:setWidth(40);
    obj.label149:setHeight(25);
    obj.label149:setField("trVon");
    obj.label149:setHorzTextAlign("center");
    obj.label149:setName("label149");

    obj.TrBut = gui.fromHandle(_obj_newObject("button"));
    obj.TrBut:setParent(obj.rectangle64);
    obj.TrBut:setLeft(100);
    obj.TrBut:setTop(30);
    obj.TrBut:setWidth(30);
    obj.TrBut:setHeight(75);
    obj.TrBut:setName("TrBut");
    obj.TrBut:setText(">>");

    obj.rectangle68 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle68:setParent(obj.scrollBox1);
    obj.rectangle68:setLeft(745);
    obj.rectangle68:setTop(115);
    obj.rectangle68:setWidth(362);
    obj.rectangle68:setHeight(362);
    obj.rectangle68:setColor("black");
    obj.rectangle68:setStrokeColor("white");
    obj.rectangle68:setStrokeSize(1);
    obj.rectangle68:setName("rectangle68");

    obj.image1 = gui.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox1);
    obj.image1:setLeft(746);
    obj.image1:setTop(116);
    obj.image1:setWidth(360);
    obj.image1:setHeight(360);
    obj.image1:setField("avatar");
    obj.image1:setEditable(true);
    obj.image1:setStyle("autoFit");
    obj.image1:setName("image1");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local real = (tonumber(sheet.inicialFor) or 0) + 
            									(tonumber(sheet.racaFor) or 0) + 
            									(tonumber(sheet.nepFor) or 0) + 
            									(tonumber(sheet.inerenteFor) or 0) + 
            									(tonumber(sheet.tamanhoFor) or 0) + 
            									(tonumber(sheet.outrosFor) or 0);
            					local efetivo = real + 
            									(tonumber(sheet.melhoriaFor) or 0) + 
            									(tonumber(sheet.danoTempFor) or 0) + 
            									(tonumber(sheet.danoPermFor) or 0) + 
            									(tonumber(sheet.temporarioFor) or 0);
            					sheet.realFor = real;
            					sheet.efetFor = efetivo;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local real = (tonumber(sheet.inicialDes) or 0) + 
            									(tonumber(sheet.racaDes) or 0) + 
            									(tonumber(sheet.nepDes) or 0) + 
            									(tonumber(sheet.inerenteDes) or 0) + 
            									(tonumber(sheet.tamanhoDes) or 0) + 
            									(tonumber(sheet.outrosDes) or 0);
            					local efetivo = real + 
            									(tonumber(sheet.melhoriaDes) or 0) + 
            									(tonumber(sheet.danoTempDes) or 0) + 
            									(tonumber(sheet.danoPermDes) or 0) + 
            									(tonumber(sheet.temporarioDes) or 0);
            					sheet.realDes = real;
            					sheet.efetDes = efetivo;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local real = (tonumber(sheet.inicialCon) or 0) + 
            									(tonumber(sheet.racaCon) or 0) + 
            									(tonumber(sheet.nepCon) or 0) + 
            									(tonumber(sheet.inerenteCon) or 0) + 
            									(tonumber(sheet.tamanhoCon) or 0) + 
            									(tonumber(sheet.outrosCon) or 0);
            					local efetivo = real + 
            									(tonumber(sheet.melhoriaCon) or 0) + 
            									(tonumber(sheet.danoTempCon) or 0) + 
            									(tonumber(sheet.danoPermCon) or 0) + 
            									(tonumber(sheet.temporarioCon) or 0);
            					sheet.realCon = real;
            					sheet.efetCon = efetivo;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local real = (tonumber(sheet.inicialInt) or 0) + 
            									(tonumber(sheet.racaInt) or 0) + 
            									(tonumber(sheet.nepInt) or 0) + 
            									(tonumber(sheet.inerenteInt) or 0) + 
            									(tonumber(sheet.tamanhoInt) or 0) + 
            									(tonumber(sheet.outrosInt) or 0);
            					local efetivo = real + 
            									(tonumber(sheet.melhoriaInt) or 0) + 
            									(tonumber(sheet.danoTempInt) or 0) + 
            									(tonumber(sheet.danoPermInt) or 0) + 
            									(tonumber(sheet.temporarioInt) or 0);
            					sheet.realInt = real;
            					sheet.efetInt = efetivo;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local real = (tonumber(sheet.inicialSab) or 0) + 
            									(tonumber(sheet.racaSab) or 0) + 
            									(tonumber(sheet.nepSab) or 0) + 
            									(tonumber(sheet.inerenteSab) or 0) + 
            									(tonumber(sheet.tamanhoSab) or 0) + 
            									(tonumber(sheet.outrosSab) or 0);
            					local efetivo = real + 
            									(tonumber(sheet.melhoriaSab) or 0) + 
            									(tonumber(sheet.danoTempSab) or 0) + 
            									(tonumber(sheet.danoPermSab) or 0) + 
            									(tonumber(sheet.temporarioSab) or 0);
            					sheet.realSab = real;
            					sheet.efetSab = efetivo;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local real = (tonumber(sheet.inicialCar) or 0) + 
            									(tonumber(sheet.racaCar) or 0) + 
            									(tonumber(sheet.nepCar) or 0) + 
            									(tonumber(sheet.inerenteCar) or 0) + 
            									(tonumber(sheet.tamanhoCar) or 0) + 
            									(tonumber(sheet.outrosCar) or 0);
            					local efetivo = real + 
            									(tonumber(sheet.melhoriaCar) or 0) + 
            									(tonumber(sheet.danoTempCar) or 0) + 
            									(tonumber(sheet.danoPermCar) or 0) + 
            									(tonumber(sheet.temporarioCar) or 0);
            					sheet.realCar = real;
            					sheet.efetCar = efetivo;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local tr = (tonumber(sheet.baseFort) or 0) + 
            									(tonumber(sheet.efetModCon) or 0) + 
            									(tonumber(sheet.magiaFort) or 0) + 
            									(tonumber(sheet.variavelFort) or 0) + 
            									(tonumber(sheet.temporarioFort) or 0) + 
            									(tonumber(sheet.outrosFort) or 0);
            					sheet.trFort = tr;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local tr = (tonumber(sheet.baseRef) or 0) + 
            									(tonumber(sheet.efetModDes) or 0) + 
            									(tonumber(sheet.magiaRef) or 0) + 
            									(tonumber(sheet.variavelRef) or 0) + 
            									(tonumber(sheet.temporarioRef) or 0) + 
            									(tonumber(sheet.outrosRef) or 0);
            					sheet.trRef = tr;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local tr = (tonumber(sheet.baseVon) or 0) + 
            									(tonumber(sheet.efetModSab) or 0) + 
            									(tonumber(sheet.magiaVon) or 0) + 
            									(tonumber(sheet.variavelVon) or 0) + 
            									(tonumber(sheet.temporarioVon) or 0) + 
            									(tonumber(sheet.outrosVon) or 0);
            					sheet.trVon = tr;
        end, obj);

    obj._e_event9 = obj.button1:addEventListener("onClick",
        function (self)
            local mod = (getNumber(sheet.xpAtual) or 0) + (getNumber(sheet.xpNova) or 0);
            						
            						while true do  
            							mod, k = string.gsub(mod, "^(-?%d+)(%d%d%d)", '%1,%2')
            							if (k==0) then
            							  break
            							end
            						end
            						mod = string.gsub(mod, ",", ".");
            						
            						sheet.xpAtual = mod .. "XP";
            						sheet.xpNova = "0";
        end, obj);

    obj._e_event10 = obj.dataLink10:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~= nil then
            						if sheet.xpAtual == nil then
            							sheet.xpAtual = 0;
            						end;
            						local mod = sheet.xpAtual;
            						mod = string.gsub(mod, "X", "");
            						mod = string.gsub(mod, "P", "");
            						mod = string.gsub(mod, "x", "");
            						mod = string.gsub(mod, "p", "");
            						mod = string.gsub(mod, "%.", "");
            						mod = (tonumber(mod) or 0);
            						local mod2 = 0;
            						local mod3 = 0;
            						while mod>=mod2 do
            							mod3 = mod3+1;
            							mod2 = mod2 + mod3*1000;
            						end
            						
            						while true do  
            							mod2, k = string.gsub(mod2, "^(-?%d+)(%d%d%d)", '%1,%2')
            							if (k==0) then
            							  break
            							end
            						end
            						mod2 = string.gsub(mod2, ",", ".");
            						
            						sheet.xpNivel = mod2 .. "XP";
            						sheet.nep = mod3;
            					end;
        end, obj);

    obj._e_event11 = obj.button2:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 " .. (sheet.efetModFor) or 0);
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Força de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event12 = obj.dataLink11:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.realModFor = getMOD(sheet.realFor);  
            					end;
        end, obj);

    obj._e_event13 = obj.dataLink12:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.efetModFor = getMOD(sheet.efetFor);
            						updateAtributes(1);
            					end;
        end, obj);

    obj._e_event14 = obj.button3:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 " .. (sheet.efetModDes) or 0);
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Destreza de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event15 = obj.dataLink13:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.realModDes = getMOD(sheet.realDes);  
            					end;
        end, obj);

    obj._e_event16 = obj.dataLink14:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.efetModDes = getMOD(sheet.efetDes);
            						updateAtributes(2);
            					end;
        end, obj);

    obj._e_event17 = obj.button4:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 " .. (sheet.efetModCon) or 0);
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Constituição de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event18 = obj.dataLink15:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.realModCon = getMOD(sheet.realCon);  
            					end;
        end, obj);

    obj._e_event19 = obj.dataLink16:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.efetModCon = getMOD(sheet.efetCon);
            						updateAtributes(3);
            					end;
        end, obj);

    obj._e_event20 = obj.button5:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 " .. (sheet.efetModInt) or 0);
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Inteligência de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event21 = obj.dataLink17:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.realModInt = getMOD(sheet.realInt);  
            					end;
        end, obj);

    obj._e_event22 = obj.dataLink18:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.efetModInt = getMOD(sheet.efetInt);
            						updateAtributes(4);
            					end;
        end, obj);

    obj._e_event23 = obj.button6:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 " .. (sheet.efetModSab) or 0);
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Sabedoria de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event24 = obj.dataLink19:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.realModSab = getMOD(sheet.realSab);  
            					end;
        end, obj);

    obj._e_event25 = obj.dataLink20:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.efetModSab = getMOD(sheet.efetSab);
            						updateAtributes(5);
            					end;
        end, obj);

    obj._e_event26 = obj.button7:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 " .. (sheet.efetModCar) or 0);
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Carisma de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event27 = obj.dataLink21:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.realModCar = getMOD(sheet.realCar);  
            					end;
        end, obj);

    obj._e_event28 = obj.dataLink22:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil then
            						sheet.efetModCar = getMOD(sheet.efetCar);
            						updateAtributes(6);
            					end;
        end, obj);

    obj._e_event29 = obj.AtrBut:addEventListener("onClick",
        function (self)
            local pop = self:findControlByName("popAtributo");
            				
            					if pop ~= nil then
            						pop:setNodeObject(self.sheet);
            						pop:showPopupEx("rightCenter", self.AtrBut);
            					else
            						showMessage("Ops, bug.. nao encontrei o popup de atributos para exibir");
            					end;
        end, obj);

    obj._e_event30 = obj.dataLink23:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil and sheet.deslTerrestre ~= nil then
            						local mod = sheet.deslTerrestre;
            						mod = string.gsub(mod, "m", "");
            						mod = string.gsub(mod, ",", ".");
            
            						mod = math.floor((tonumber(mod) or 0) / 1.5);
            						sheet.deslTerrestreQuadrados = mod .. "q";
            					end;
        end, obj);

    obj._e_event31 = obj.dataLink24:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil and sheet.deslVoo ~= nil then
            						local mod = sheet.deslVoo;
            						mod = string.gsub(mod, "m", "");
            						mod = string.gsub(mod, ",", ".");
            
            						mod = math.floor((tonumber(mod) or 0) / 1.5);
            						sheet.deslVooQuadrados = mod .. "q";
            					end;
        end, obj);

    obj._e_event32 = obj.dataLink25:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil and sheet.deslNatacao ~= nil then
            						local mod = sheet.deslNatacao;
            						mod = string.gsub(mod, "m", "");
            						mod = string.gsub(mod, ",", ".");
            
            						mod = math.floor((tonumber(mod) or 0) / 1.5);
            						sheet.deslNatacaoQuadrados = mod .. "q";
            					end;
        end, obj);

    obj._e_event33 = obj.dataLink26:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil and sheet.deslEscalar ~= nil then
            						local mod = sheet.deslEscalar;
            						mod = string.gsub(mod, "m", "");
            						mod = string.gsub(mod, ",", ".");
            
            						mod = math.floor((tonumber(mod) or 0) / 1.5);
            						sheet.deslEscalarQuadrados = mod .. "q";
            					end;
        end, obj);

    obj._e_event34 = obj.dataLink27:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil and sheet.deslEscavar ~= nil then
            						local mod = sheet.deslEscavar;
            						mod = string.gsub(mod, "m", "");
            						mod = string.gsub(mod, ",", ".");
            
            						mod = math.floor((tonumber(mod) or 0) / 1.5);
            						sheet.deslEscavarQuadrados = mod .. "q";
            					end;
        end, obj);

    obj._e_event35 = obj.button8:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 " .. (sheet.iniciativa or "+0"));
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Iniciativa de " .. (sheet.nome or "PONHA UM NOME NO PERSONAGEM"));
        end, obj);

    obj._e_event36 = obj.dataLink28:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~= nil then
            						local mod = (tonumber(sheet.efetModDes) or 0) + (tonumber(sheet.iniVariado) or 0);
            						if (mod >= 0) then
            								mod = "+" .. mod;
            						end;					   
            						sheet.iniciativa = mod;
            					end;
        end, obj);

    obj._e_event37 = obj.button9:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d100");
            						local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            						mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Falha Arcana (" .. (sheet.falha or "0%").. ") de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event38 = obj.caDetails:addEventListener("onClick",
        function (self)
            local pop = self:findControlByName("popCA");
            					
            					if pop ~= nil then
            						pop:setNodeObject(self.sheet);
            						pop:showPopupEx("bottomCenter", self.caDetails);
            					else
            						showMessage("Ops, bug.. nao encontrei o popup de armadura para exibir");
            					end;
        end, obj);

    obj._e_event39 = obj.dataLink29:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~= nil then
            						local armaduraCa = (tonumber(sheet.armaduraCa) or 0);
            						local escudoCa = (tonumber(sheet.escudoCa) or 0);
            						local efetModDes = (tonumber(sheet.efetModDes) or 0);
            						local tamanhoCa = (tonumber(sheet.tamanhoCa) or 0);
            						local naturalCa = (tonumber(sheet.naturalCa) or 0);
            						local deflexaoCa = (tonumber(sheet.deflexaoCa) or 0);
            						local esquivaCa = (tonumber(sheet.esquivaCa) or 0);
            						local sorteCa = (tonumber(sheet.sorteCa) or 0);
            						local outrosCa = (tonumber(sheet.outrosCa) or 0);
            						local variadosCa = (tonumber(sheet.variadosCa) or 0);
            
            						local desMax = tonumber(sheet.equipamentoCorpoDesMax) or 999;
            						if desMax < efetModDes then
            							efetModDes = desMax;
            						end;
            
            						local ca = 	10 + armaduraCa + escudoCa + efetModDes + tamanhoCa + naturalCa + deflexaoCa + esquivaCa + sorteCa + outrosCa + variadosCa;
            						
            						local surpresa = ca;
            						if not sheet.armaduraCaSurp then
            							surpresa = surpresa - armaduraCa;
            						end;
            						if not sheet.escudoCaSurp then
            							surpresa = surpresa - escudoCa;
            						end;
            						if not sheet.destrezaCaSurp then
            							surpresa = surpresa - efetModDes;
            						end;
            						if not sheet.tamanhoCaSurp then
            							surpresa = surpresa - tamanhoCa;
            						end;
            						if not sheet.naturalCaSurp then
            							surpresa = surpresa - naturalCa;
            						end;
            						if not sheet.deflexaoCaSurp then
            							surpresa = surpresa - deflexaoCa;
            						end;
            						if not sheet.esquivaCaSurp then
            							surpresa = surpresa - esquivaCa;
            						end;
            						if not sheet.sorteCaSurp then
            							surpresa = surpresa - sorteCa;
            						end;
            						if not sheet.outrosCaSurp then
            							surpresa = surpresa - outrosCa;
            						end;
            						if not sheet.variadosCaSurp then
            							surpresa = surpresa - variadosCa;
            						end;
            
            						local toque = ca;
            						if not sheet.armaduraCaToque then
            							toque = toque - armaduraCa;
            						end;
            						if not sheet.escudoCaToque then
            							toque = toque - escudoCa;
            						end;
            						if not sheet.destrezaCaToque then
            							toque = toque - efetModDes;
            						end;
            						if not sheet.tamanhoCaToque then
            							toque = toque - tamanhoCa;
            						end;
            						if not sheet.naturalCaToque then
            							toque = toque - naturalCa;
            						end;
            						if not sheet.deflexaoCaToque then
            							toque = toque - deflexaoCa;
            						end;
            						if not sheet.esquivaCaToque then
            							toque = toque - esquivaCa;
            						end;
            						if not sheet.sorteCaToque then
            							toque = toque - sorteCa;
            						end;
            						if not sheet.outrosCaToque then
            							toque = toque - outrosCa;
            						end;
            						if not sheet.variadosCaToque then
            							toque = toque - variadosCa;
            						end;
            
            						sheet.ca = ca;
            						sheet.surpresa = surpresa;
            						sheet.toque = toque;
            					end;
        end, obj);

    obj._e_event40 = obj.dataLink31:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            						sheet.penalidade = (tonumber(sheet.equipamentoCorpoPen) or 0) + (tonumber(sheet.escudoPEn) or 0);
            						updatePenalty();
            					end;
        end, obj);

    obj._e_event41 = obj.dataLink32:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            						local equipamentoCorpoFalha = sheet.equipamentoCorpoFalha;
            						local escudoFalha = sheet.escudoFalha;
            
            						if equipamentoCorpoFalha~= nil then
            							equipamentoCorpoFalha = string.gsub(equipamentoCorpoFalha, "%%", "");
            						end;
            						if escudoFalha~= nil then
            							escudoFalha = string.gsub(escudoFalha, "%%", "");
            						end;
            
            						sheet.falha = ((tonumber(equipamentoCorpoFalha) or 0) + (tonumber(escudoFalha) or 0)) .. "%";
            					end;
        end, obj);

    obj._e_event42 = obj.button10:addEventListener("onClick",
        function (self)
            local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					sheet.modificador = sheet.modificador or 0;
            					mesaDoPersonagem.activeChat:rolarDados(sheet.dvs, "Pontos de Vigor de " .. (sheet.nome or "NOME"),
            						function (rolagem)
            							local maximo = 0;
            							local media = 0;
            							for i = 1, #rolagem.ops, 1 do 
            								local operacao = rolagem.ops[i]; 
            								if operacao.tipo == "dado" then   
            									maximo = maximo + (operacao.quantidade * operacao.face);
            									media = media + (operacao.quantidade * (operacao.face+1)/2);
            									if i==1 then
            										media = media + ((operacao.face-1)/2);
            									end;
            								elseif operacao.tipo == "imediato" then
            									maximo = maximo + operacao.valor;
            									media = media + operacao.valor;
            								end;
            							end;
            							local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            							mesaDoPersonagem.activeChat:enviarMensagem("PV máximo: " .. maximo .. "; PV médio: " .. math.floor(media));
            							sheet.pvTotal = math.floor(media);
            						end);
        end, obj);

    obj._e_event43 = obj.button11:addEventListener("onClick",
        function (self)
            caSecreta();
        end, obj);

    obj._e_event44 = obj.edit131:addEventListener("onChange",
        function (self)
            if sheet~= nil then
            						local bba = tonumber(sheet.bba) or 0;
            						local text = "+" .. bba;
            						local l = 1;
            						while bba > 5 and l < 4 do
            							bba = bba -5;
            							l = l + 1;
            							text = text .. "/+" .. bba;
            						end;
            						sheet.bbaDesc = text;
            					end;
        end, obj);

    obj._e_event45 = obj.button12:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 + " .. (sheet.agarrar or "0"));
            						local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            						mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Agarrar de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event46 = obj.GrappleBt:addEventListener("onClick",
        function (self)
            local pop = self:findControlByName("popGrapple");
            					
            						if pop ~= nil then
            							pop:setNodeObject(self.sheet);
            							pop:showPopupEx("rightCenter", self.GrappleBt);
            						else
            							showMessage("Ops, bug.. nao encontrei o popup de agarrar para exibir");
            						end;
        end, obj);

    obj._e_event47 = obj.dataLink33:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~= nil then
            							local agarrar = (tonumber(sheet.bba) or 0) + 
            										(tonumber(sheet.efetModFor) or 0) +  
            										(tonumber(sheet.agarrarTam) or 0) +   
            										(tonumber(sheet.agarrarVar) or 0);					  
            							sheet.agarrar = agarrar;
            						end;
        end, obj);

    obj._e_event48 = obj.button13:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 + " .. (sheet.bmc or "0"));
            						local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            						mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de BMC de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event49 = obj.ManeuverBt:addEventListener("onClick",
        function (self)
            local pop = self:findControlByName("popManeuver");
            					
            						if pop ~= nil then
            							pop:setNodeObject(self.sheet);
            							pop:showPopupEx("rightCenter", self.ManeuverBt);
            						else
            							showMessage("Ops, bug.. nao encontrei o popup de manobra para exibir");
            						end;
        end, obj);

    obj._e_event50 = obj.dataLink34:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~= nil then
            							local bba = tonumber(sheet.bba) or 0;
            							local str = tonumber(sheet.efetModFor) or 0;
            							local bmcTamanho = tonumber(sheet.bmcTamanho) or 0;
            							local bmcOutros = tonumber(sheet.bmcOutros) or 0;
            							local destrezaBMC = sheet.destrezaBMC;
            							local bmcDiversos = tonumber(sheet.bmcDiversos) or 0;
            							local bmdTamanho = tonumber(sheet.bmdTamanho) or 0;
            							local bmdOutros = tonumber(sheet.bmdOutros) or 0;
            							local dex = tonumber(sheet.efetModDes) or 0;
            							local bmdDiversos = tonumber(sheet.bmdDiversos) or 0;
            
            							local bmc = bba + bmcTamanho + bmcOutros + bmcDiversos;
            							if destrezaBMC then
            								bmc = bmc + dex;
            							else 
            								bmc = bmc + str;
            							end;
            
            							local bmd = 10 + bba + bmdTamanho + bmdOutros + bmdDiversos + str + dex;
            
            							sheet.bmc = bmc;
            							sheet.bmd = bmd;
            						end;
        end, obj);

    obj._e_event51 = obj.button14:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 " .. (sheet.efetModFort) or 0);
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Fortitude de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event52 = obj.button15:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 " .. (sheet.efetModRef) or 0);
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Reflexos de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event53 = obj.button16:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 " .. (sheet.efetModVon) or 0);
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Vontade de " .. (sheet.nome or "NOME"));
        end, obj);

    obj._e_event54 = obj.TrBut:addEventListener("onClick",
        function (self)
            local pop = self:findControlByName("popResistencia");
            				
            					if pop ~= nil then
            						pop:setNodeObject(self.sheet);
            						pop:showPopupEx("rightCenter", self.TrBut);
            					else
            						showMessage("Ops, bug.. nao encontrei o popup de resistencias para exibir");
            					end;
        end, obj);

    obj._e_event55 = obj.image1:addEventListener("onStartDrag",
        function (self, drag, x, y)
            drag:addData("imageURL", sheet.avatar);
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event55);
        __o_rrpgObjs.removeEventListenerById(self._e_event54);
        __o_rrpgObjs.removeEventListenerById(self._e_event53);
        __o_rrpgObjs.removeEventListenerById(self._e_event52);
        __o_rrpgObjs.removeEventListenerById(self._e_event51);
        __o_rrpgObjs.removeEventListenerById(self._e_event50);
        __o_rrpgObjs.removeEventListenerById(self._e_event49);
        __o_rrpgObjs.removeEventListenerById(self._e_event48);
        __o_rrpgObjs.removeEventListenerById(self._e_event47);
        __o_rrpgObjs.removeEventListenerById(self._e_event46);
        __o_rrpgObjs.removeEventListenerById(self._e_event45);
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.flowPart100 ~= nil then self.flowPart100:destroy(); self.flowPart100 = nil; end;
        if self.rectangle64 ~= nil then self.rectangle64:destroy(); self.rectangle64 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.flowPart33 ~= nil then self.flowPart33:destroy(); self.flowPart33 = nil; end;
        if self.label119 ~= nil then self.label119:destroy(); self.label119 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.flowPart121 ~= nil then self.flowPart121:destroy(); self.flowPart121 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.flowPart181 ~= nil then self.flowPart181:destroy(); self.flowPart181 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.flowPart129 ~= nil then self.flowPart129:destroy(); self.flowPart129 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.label128 ~= nil then self.label128:destroy(); self.label128 = nil; end;
        if self.rectangle35 ~= nil then self.rectangle35:destroy(); self.rectangle35 = nil; end;
        if self.flowPart32 ~= nil then self.flowPart32:destroy(); self.flowPart32 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.rectangle46 ~= nil then self.rectangle46:destroy(); self.rectangle46 = nil; end;
        if self.flowPart106 ~= nil then self.flowPart106:destroy(); self.flowPart106 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.flowPart13 ~= nil then self.flowPart13:destroy(); self.flowPart13 = nil; end;
        if self.rectangle67 ~= nil then self.rectangle67:destroy(); self.rectangle67 = nil; end;
        if self.label148 ~= nil then self.label148:destroy(); self.label148 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.rectangle47 ~= nil then self.rectangle47:destroy(); self.rectangle47 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.label143 ~= nil then self.label143:destroy(); self.label143 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.flowPart157 ~= nil then self.flowPart157:destroy(); self.flowPart157 = nil; end;
        if self.flowPart178 ~= nil then self.flowPart178:destroy(); self.flowPart178 = nil; end;
        if self.flowPart25 ~= nil then self.flowPart25:destroy(); self.flowPart25 = nil; end;
        if self.flowPart66 ~= nil then self.flowPart66:destroy(); self.flowPart66 = nil; end;
        if self.flowPart69 ~= nil then self.flowPart69:destroy(); self.flowPart69 = nil; end;
        if self.flowPart74 ~= nil then self.flowPart74:destroy(); self.flowPart74 = nil; end;
        if self.flowPart76 ~= nil then self.flowPart76:destroy(); self.flowPart76 = nil; end;
        if self.flowPart101 ~= nil then self.flowPart101:destroy(); self.flowPart101 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.flowPart19 ~= nil then self.flowPart19:destroy(); self.flowPart19 = nil; end;
        if self.label122 ~= nil then self.label122:destroy(); self.label122 = nil; end;
        if self.flowPart55 ~= nil then self.flowPart55:destroy(); self.flowPart55 = nil; end;
        if self.flowPart95 ~= nil then self.flowPart95:destroy(); self.flowPart95 = nil; end;
        if self.rectangle59 ~= nil then self.rectangle59:destroy(); self.rectangle59 = nil; end;
        if self.flowPart161 ~= nil then self.flowPart161:destroy(); self.flowPart161 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.flowPart51 ~= nil then self.flowPart51:destroy(); self.flowPart51 = nil; end;
        if self.label125 ~= nil then self.label125:destroy(); self.label125 = nil; end;
        if self.flowPart107 ~= nil then self.flowPart107:destroy(); self.flowPart107 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.label146 ~= nil then self.label146:destroy(); self.label146 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.flowPart94 ~= nil then self.flowPart94:destroy(); self.flowPart94 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.flowPart79 ~= nil then self.flowPart79:destroy(); self.flowPart79 = nil; end;
        if self.label107 ~= nil then self.label107:destroy(); self.label107 = nil; end;
        if self.flowPart89 ~= nil then self.flowPart89:destroy(); self.flowPart89 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.flowPart68 ~= nil then self.flowPart68:destroy(); self.flowPart68 = nil; end;
        if self.flowLineBreak6 ~= nil then self.flowLineBreak6:destroy(); self.flowLineBreak6 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.rectangle33 ~= nil then self.rectangle33:destroy(); self.rectangle33 = nil; end;
        if self.rectangle51 ~= nil then self.rectangle51:destroy(); self.rectangle51 = nil; end;
        if self.caDetails ~= nil then self.caDetails:destroy(); self.caDetails = nil; end;
        if self.flowPart150 ~= nil then self.flowPart150:destroy(); self.flowPart150 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.flowPart140 ~= nil then self.flowPart140:destroy(); self.flowPart140 = nil; end;
        if self.flowPart34 ~= nil then self.flowPart34:destroy(); self.flowPart34 = nil; end;
        if self.flowPart190 ~= nil then self.flowPart190:destroy(); self.flowPart190 = nil; end;
        if self.flowPart54 ~= nil then self.flowPart54:destroy(); self.flowPart54 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.flowPart103 ~= nil then self.flowPart103:destroy(); self.flowPart103 = nil; end;
        if self.edit115 ~= nil then self.edit115:destroy(); self.edit115 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.flowPart53 ~= nil then self.flowPart53:destroy(); self.flowPart53 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.flowPart43 ~= nil then self.flowPart43:destroy(); self.flowPart43 = nil; end;
        if self.edit116 ~= nil then self.edit116:destroy(); self.edit116 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.alvo5 ~= nil then self.alvo5:destroy(); self.alvo5 = nil; end;
        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.flowPart57 ~= nil then self.flowPart57:destroy(); self.flowPart57 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.rectangle55 ~= nil then self.rectangle55:destroy(); self.rectangle55 = nil; end;
        if self.flowPart128 ~= nil then self.flowPart128:destroy(); self.flowPart128 = nil; end;
        if self.checkBox3 ~= nil then self.checkBox3:destroy(); self.checkBox3 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.flowLineBreak5 ~= nil then self.flowLineBreak5:destroy(); self.flowLineBreak5 = nil; end;
        if self.label106 ~= nil then self.label106:destroy(); self.label106 = nil; end;
        if self.label109 ~= nil then self.label109:destroy(); self.label109 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.flowPart22 ~= nil then self.flowPart22:destroy(); self.flowPart22 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.rectangle68 ~= nil then self.rectangle68:destroy(); self.rectangle68 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.rectangle48 ~= nil then self.rectangle48:destroy(); self.rectangle48 = nil; end;
        if self.edit129 ~= nil then self.edit129:destroy(); self.edit129 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.flowPart59 ~= nil then self.flowPart59:destroy(); self.flowPart59 = nil; end;
        if self.flowPart78 ~= nil then self.flowPart78:destroy(); self.flowPart78 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.flowLayout14 ~= nil then self.flowLayout14:destroy(); self.flowLayout14 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.label111 ~= nil then self.label111:destroy(); self.label111 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.flowPart6 ~= nil then self.flowPart6:destroy(); self.flowPart6 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.rectangle61 ~= nil then self.rectangle61:destroy(); self.rectangle61 = nil; end;
        if self.edit99 ~= nil then self.edit99:destroy(); self.edit99 = nil; end;
        if self.flowPart39 ~= nil then self.flowPart39:destroy(); self.flowPart39 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.rectangle52 ~= nil then self.rectangle52:destroy(); self.rectangle52 = nil; end;
        if self.label116 ~= nil then self.label116:destroy(); self.label116 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle50 ~= nil then self.rectangle50:destroy(); self.rectangle50 = nil; end;
        if self.label139 ~= nil then self.label139:destroy(); self.label139 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.flowPart60 ~= nil then self.flowPart60:destroy(); self.flowPart60 = nil; end;
        if self.rectangle58 ~= nil then self.rectangle58:destroy(); self.rectangle58 = nil; end;
        if self.flowPart28 ~= nil then self.flowPart28:destroy(); self.flowPart28 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.label147 ~= nil then self.label147:destroy(); self.label147 = nil; end;
        if self.edit124 ~= nil then self.edit124:destroy(); self.edit124 = nil; end;
        if self.flowPart87 ~= nil then self.flowPart87:destroy(); self.flowPart87 = nil; end;
        if self.flowPart145 ~= nil then self.flowPart145:destroy(); self.flowPart145 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.flowPart125 ~= nil then self.flowPart125:destroy(); self.flowPart125 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.flowPart142 ~= nil then self.flowPart142:destroy(); self.flowPart142 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.rectangle42 ~= nil then self.rectangle42:destroy(); self.rectangle42 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.label115 ~= nil then self.label115:destroy(); self.label115 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.flowLineBreak2 ~= nil then self.flowLineBreak2:destroy(); self.flowLineBreak2 = nil; end;
        if self.flowPart152 ~= nil then self.flowPart152:destroy(); self.flowPart152 = nil; end;
        if self.flowPart15 ~= nil then self.flowPart15:destroy(); self.flowPart15 = nil; end;
        if self.flowPart169 ~= nil then self.flowPart169:destroy(); self.flowPart169 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.flowLayout8 ~= nil then self.flowLayout8:destroy(); self.flowLayout8 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.label127 ~= nil then self.label127:destroy(); self.label127 = nil; end;
        if self.flowPart104 ~= nil then self.flowPart104:destroy(); self.flowPart104 = nil; end;
        if self.flowPart113 ~= nil then self.flowPart113:destroy(); self.flowPart113 = nil; end;
        if self.label142 ~= nil then self.label142:destroy(); self.label142 = nil; end;
        if self.flowPart8 ~= nil then self.flowPart8:destroy(); self.flowPart8 = nil; end;
        if self.flowPart132 ~= nil then self.flowPart132:destroy(); self.flowPart132 = nil; end;
        if self.flowPart10 ~= nil then self.flowPart10:destroy(); self.flowPart10 = nil; end;
        if self.flowPart96 ~= nil then self.flowPart96:destroy(); self.flowPart96 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit121 ~= nil then self.edit121:destroy(); self.edit121 = nil; end;
        if self.flowPart122 ~= nil then self.flowPart122:destroy(); self.flowPart122 = nil; end;
        if self.flowPart80 ~= nil then self.flowPart80:destroy(); self.flowPart80 = nil; end;
        if self.flowPart92 ~= nil then self.flowPart92:destroy(); self.flowPart92 = nil; end;
        if self.flowPart72 ~= nil then self.flowPart72:destroy(); self.flowPart72 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.flowPart40 ~= nil then self.flowPart40:destroy(); self.flowPart40 = nil; end;
        if self.flowPart144 ~= nil then self.flowPart144:destroy(); self.flowPart144 = nil; end;
        if self.flowPart75 ~= nil then self.flowPart75:destroy(); self.flowPart75 = nil; end;
        if self.edit92 ~= nil then self.edit92:destroy(); self.edit92 = nil; end;
        if self.flowLayout12 ~= nil then self.flowLayout12:destroy(); self.flowLayout12 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.flowPart97 ~= nil then self.flowPart97:destroy(); self.flowPart97 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.flowPart18 ~= nil then self.flowPart18:destroy(); self.flowPart18 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.flowPart102 ~= nil then self.flowPart102:destroy(); self.flowPart102 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.flowPart118 ~= nil then self.flowPart118:destroy(); self.flowPart118 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.edit100 ~= nil then self.edit100:destroy(); self.edit100 = nil; end;
        if self.flowPart116 ~= nil then self.flowPart116:destroy(); self.flowPart116 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.flowPart183 ~= nil then self.flowPart183:destroy(); self.flowPart183 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.rectangle38 ~= nil then self.rectangle38:destroy(); self.rectangle38 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.rectangle66 ~= nil then self.rectangle66:destroy(); self.rectangle66 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.flowPart48 ~= nil then self.flowPart48:destroy(); self.flowPart48 = nil; end;
        if self.edit128 ~= nil then self.edit128:destroy(); self.edit128 = nil; end;
        if self.label129 ~= nil then self.label129:destroy(); self.label129 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.checkBox17 ~= nil then self.checkBox17:destroy(); self.checkBox17 = nil; end;
        if self.edit103 ~= nil then self.edit103:destroy(); self.edit103 = nil; end;
        if self.checkBox16 ~= nil then self.checkBox16:destroy(); self.checkBox16 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.edit127 ~= nil then self.edit127:destroy(); self.edit127 = nil; end;
        if self.rectangle45 ~= nil then self.rectangle45:destroy(); self.rectangle45 = nil; end;
        if self.flowPart35 ~= nil then self.flowPart35:destroy(); self.flowPart35 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.flowLayout7 ~= nil then self.flowLayout7:destroy(); self.flowLayout7 = nil; end;
        if self.flowPart90 ~= nil then self.flowPart90:destroy(); self.flowPart90 = nil; end;
        if self.flowPart91 ~= nil then self.flowPart91:destroy(); self.flowPart91 = nil; end;
        if self.flowPart127 ~= nil then self.flowPart127:destroy(); self.flowPart127 = nil; end;
        if self.checkBox9 ~= nil then self.checkBox9:destroy(); self.checkBox9 = nil; end;
        if self.flowPart147 ~= nil then self.flowPart147:destroy(); self.flowPart147 = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.flowPart93 ~= nil then self.flowPart93:destroy(); self.flowPart93 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.flowLayout10 ~= nil then self.flowLayout10:destroy(); self.flowLayout10 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit96 ~= nil then self.edit96:destroy(); self.edit96 = nil; end;
        if self.flowPart158 ~= nil then self.flowPart158:destroy(); self.flowPart158 = nil; end;
        if self.flowPart110 ~= nil then self.flowPart110:destroy(); self.flowPart110 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.rectangle53 ~= nil then self.rectangle53:destroy(); self.rectangle53 = nil; end;
        if self.edit109 ~= nil then self.edit109:destroy(); self.edit109 = nil; end;
        if self.flowPart189 ~= nil then self.flowPart189:destroy(); self.flowPart189 = nil; end;
        if self.label133 ~= nil then self.label133:destroy(); self.label133 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.checkBox14 ~= nil then self.checkBox14:destroy(); self.checkBox14 = nil; end;
        if self.flowPart162 ~= nil then self.flowPart162:destroy(); self.flowPart162 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.rectangle62 ~= nil then self.rectangle62:destroy(); self.rectangle62 = nil; end;
        if self.flowPart176 ~= nil then self.flowPart176:destroy(); self.flowPart176 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.edit93 ~= nil then self.edit93:destroy(); self.edit93 = nil; end;
        if self.flowLayout4 ~= nil then self.flowLayout4:destroy(); self.flowLayout4 = nil; end;
        if self.flowPart71 ~= nil then self.flowPart71:destroy(); self.flowPart71 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.label132 ~= nil then self.label132:destroy(); self.label132 = nil; end;
        if self.flowPart126 ~= nil then self.flowPart126:destroy(); self.flowPart126 = nil; end;
        if self.edit126 ~= nil then self.edit126:destroy(); self.edit126 = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.flowPart188 ~= nil then self.flowPart188:destroy(); self.flowPart188 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.flowPart180 ~= nil then self.flowPart180:destroy(); self.flowPart180 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.checkBox12 ~= nil then self.checkBox12:destroy(); self.checkBox12 = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.GrappleBt ~= nil then self.GrappleBt:destroy(); self.GrappleBt = nil; end;
        if self.edit87 ~= nil then self.edit87:destroy(); self.edit87 = nil; end;
        if self.flowPart149 ~= nil then self.flowPart149:destroy(); self.flowPart149 = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.rectangle63 ~= nil then self.rectangle63:destroy(); self.rectangle63 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.checkBox19 ~= nil then self.checkBox19:destroy(); self.checkBox19 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.flowPart124 ~= nil then self.flowPart124:destroy(); self.flowPart124 = nil; end;
        if self.flowPart141 ~= nil then self.flowPart141:destroy(); self.flowPart141 = nil; end;
        if self.edit113 ~= nil then self.edit113:destroy(); self.edit113 = nil; end;
        if self.rectangle40 ~= nil then self.rectangle40:destroy(); self.rectangle40 = nil; end;
        if self.rectangle36 ~= nil then self.rectangle36:destroy(); self.rectangle36 = nil; end;
        if self.flowPart163 ~= nil then self.flowPart163:destroy(); self.flowPart163 = nil; end;
        if self.label108 ~= nil then self.label108:destroy(); self.label108 = nil; end;
        if self.flowPart37 ~= nil then self.flowPart37:destroy(); self.flowPart37 = nil; end;
        if self.flowPart45 ~= nil then self.flowPart45:destroy(); self.flowPart45 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit118 ~= nil then self.edit118:destroy(); self.edit118 = nil; end;
        if self.checkBox10 ~= nil then self.checkBox10:destroy(); self.checkBox10 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.flowPart85 ~= nil then self.flowPart85:destroy(); self.flowPart85 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.label124 ~= nil then self.label124:destroy(); self.label124 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.edit102 ~= nil then self.edit102:destroy(); self.edit102 = nil; end;
        if self.edit117 ~= nil then self.edit117:destroy(); self.edit117 = nil; end;
        if self.flowPart24 ~= nil then self.flowPart24:destroy(); self.flowPart24 = nil; end;
        if self.flowPart77 ~= nil then self.flowPart77:destroy(); self.flowPart77 = nil; end;
        if self.flowPart173 ~= nil then self.flowPart173:destroy(); self.flowPart173 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.rectangle34 ~= nil then self.rectangle34:destroy(); self.rectangle34 = nil; end;
        if self.flowPart108 ~= nil then self.flowPart108:destroy(); self.flowPart108 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.label110 ~= nil then self.label110:destroy(); self.label110 = nil; end;
        if self.edit98 ~= nil then self.edit98:destroy(); self.edit98 = nil; end;
        if self.rectangle37 ~= nil then self.rectangle37:destroy(); self.rectangle37 = nil; end;
        if self.checkBox15 ~= nil then self.checkBox15:destroy(); self.checkBox15 = nil; end;
        if self.checkBox18 ~= nil then self.checkBox18:destroy(); self.checkBox18 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.label138 ~= nil then self.label138:destroy(); self.label138 = nil; end;
        if self.flowPart133 ~= nil then self.flowPart133:destroy(); self.flowPart133 = nil; end;
        if self.flowPart73 ~= nil then self.flowPart73:destroy(); self.flowPart73 = nil; end;
        if self.flowPart154 ~= nil then self.flowPart154:destroy(); self.flowPart154 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.TrBut ~= nil then self.TrBut:destroy(); self.TrBut = nil; end;
        if self.flowPart155 ~= nil then self.flowPart155:destroy(); self.flowPart155 = nil; end;
        if self.edit111 ~= nil then self.edit111:destroy(); self.edit111 = nil; end;
        if self.popCA ~= nil then self.popCA:destroy(); self.popCA = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.flowLayout13 ~= nil then self.flowLayout13:destroy(); self.flowLayout13 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.alvo4 ~= nil then self.alvo4:destroy(); self.alvo4 = nil; end;
        if self.flowPart42 ~= nil then self.flowPart42:destroy(); self.flowPart42 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.flowPart187 ~= nil then self.flowPart187:destroy(); self.flowPart187 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.flowLineBreak7 ~= nil then self.flowLineBreak7:destroy(); self.flowLineBreak7 = nil; end;
        if self.checkBox11 ~= nil then self.checkBox11:destroy(); self.checkBox11 = nil; end;
        if self.flowLayout5 ~= nil then self.flowLayout5:destroy(); self.flowLayout5 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.flowPart166 ~= nil then self.flowPart166:destroy(); self.flowPart166 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.alvo2 ~= nil then self.alvo2:destroy(); self.alvo2 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label144 ~= nil then self.label144:destroy(); self.label144 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.checkBox7 ~= nil then self.checkBox7:destroy(); self.checkBox7 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.flowPart135 ~= nil then self.flowPart135:destroy(); self.flowPart135 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.edit131 ~= nil then self.edit131:destroy(); self.edit131 = nil; end;
        if self.flowPart16 ~= nil then self.flowPart16:destroy(); self.flowPart16 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.rectangle57 ~= nil then self.rectangle57:destroy(); self.rectangle57 = nil; end;
        if self.label140 ~= nil then self.label140:destroy(); self.label140 = nil; end;
        if self.edit120 ~= nil then self.edit120:destroy(); self.edit120 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit112 ~= nil then self.edit112:destroy(); self.edit112 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.edit114 ~= nil then self.edit114:destroy(); self.edit114 = nil; end;
        if self.label105 ~= nil then self.label105:destroy(); self.label105 = nil; end;
        if self.flowPart52 ~= nil then self.flowPart52:destroy(); self.flowPart52 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.flowPart170 ~= nil then self.flowPart170:destroy(); self.flowPart170 = nil; end;
        if self.label126 ~= nil then self.label126:destroy(); self.label126 = nil; end;
        if self.flowPart38 ~= nil then self.flowPart38:destroy(); self.flowPart38 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label145 ~= nil then self.label145:destroy(); self.label145 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.flowPart131 ~= nil then self.flowPart131:destroy(); self.flowPart131 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.flowPart160 ~= nil then self.flowPart160:destroy(); self.flowPart160 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.popResistencia ~= nil then self.popResistencia:destroy(); self.popResistencia = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.label131 ~= nil then self.label131:destroy(); self.label131 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.flowPart20 ~= nil then self.flowPart20:destroy(); self.flowPart20 = nil; end;
        if self.flowPart44 ~= nil then self.flowPart44:destroy(); self.flowPart44 = nil; end;
        if self.flowPart143 ~= nil then self.flowPart143:destroy(); self.flowPart143 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit106 ~= nil then self.edit106:destroy(); self.edit106 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.popGrapple ~= nil then self.popGrapple:destroy(); self.popGrapple = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit125 ~= nil then self.edit125:destroy(); self.edit125 = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.flowPart105 ~= nil then self.flowPart105:destroy(); self.flowPart105 = nil; end;
        if self.edit101 ~= nil then self.edit101:destroy(); self.edit101 = nil; end;
        if self.rectangle65 ~= nil then self.rectangle65:destroy(); self.rectangle65 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.flowPart174 ~= nil then self.flowPart174:destroy(); self.flowPart174 = nil; end;
        if self.flowPart5 ~= nil then self.flowPart5:destroy(); self.flowPart5 = nil; end;
        if self.flowPart9 ~= nil then self.flowPart9:destroy(); self.flowPart9 = nil; end;
        if self.rectangle44 ~= nil then self.rectangle44:destroy(); self.rectangle44 = nil; end;
        if self.label114 ~= nil then self.label114:destroy(); self.label114 = nil; end;
        if self.label135 ~= nil then self.label135:destroy(); self.label135 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.flowPart29 ~= nil then self.flowPart29:destroy(); self.flowPart29 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label120 ~= nil then self.label120:destroy(); self.label120 = nil; end;
        if self.edit122 ~= nil then self.edit122:destroy(); self.edit122 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.flowPart56 ~= nil then self.flowPart56:destroy(); self.flowPart56 = nil; end;
        if self.edit110 ~= nil then self.edit110:destroy(); self.edit110 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.edit86 ~= nil then self.edit86:destroy(); self.edit86 = nil; end;
        if self.flowPart26 ~= nil then self.flowPart26:destroy(); self.flowPart26 = nil; end;
        if self.flowLineBreak11 ~= nil then self.flowLineBreak11:destroy(); self.flowLineBreak11 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.edit123 ~= nil then self.edit123:destroy(); self.edit123 = nil; end;
        if self.label130 ~= nil then self.label130:destroy(); self.label130 = nil; end;
        if self.flowPart23 ~= nil then self.flowPart23:destroy(); self.flowPart23 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.edit105 ~= nil then self.edit105:destroy(); self.edit105 = nil; end;
        if self.flowPart186 ~= nil then self.flowPart186:destroy(); self.flowPart186 = nil; end;
        if self.flowPart136 ~= nil then self.flowPart136:destroy(); self.flowPart136 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.flowLayout6 ~= nil then self.flowLayout6:destroy(); self.flowLayout6 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.checkBox13 ~= nil then self.checkBox13:destroy(); self.checkBox13 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.alvo3 ~= nil then self.alvo3:destroy(); self.alvo3 = nil; end;
        if self.flowPart41 ~= nil then self.flowPart41:destroy(); self.flowPart41 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.flowLineBreak12 ~= nil then self.flowLineBreak12:destroy(); self.flowLineBreak12 = nil; end;
        if self.flowPart30 ~= nil then self.flowPart30:destroy(); self.flowPart30 = nil; end;
        if self.rectangle60 ~= nil then self.rectangle60:destroy(); self.rectangle60 = nil; end;
        if self.edit90 ~= nil then self.edit90:destroy(); self.edit90 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.rectangle32 ~= nil then self.rectangle32:destroy(); self.rectangle32 = nil; end;
        if self.flowPart139 ~= nil then self.flowPart139:destroy(); self.flowPart139 = nil; end;
        if self.label117 ~= nil then self.label117:destroy(); self.label117 = nil; end;
        if self.flowPart138 ~= nil then self.flowPart138:destroy(); self.flowPart138 = nil; end;
        if self.flowPart88 ~= nil then self.flowPart88:destroy(); self.flowPart88 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.flowPart123 ~= nil then self.flowPart123:destroy(); self.flowPart123 = nil; end;
        if self.flowPart99 ~= nil then self.flowPart99:destroy(); self.flowPart99 = nil; end;
        if self.checkBox4 ~= nil then self.checkBox4:destroy(); self.checkBox4 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.ManeuverBt ~= nil then self.ManeuverBt:destroy(); self.ManeuverBt = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.flowPart62 ~= nil then self.flowPart62:destroy(); self.flowPart62 = nil; end;
        if self.flowPart49 ~= nil then self.flowPart49:destroy(); self.flowPart49 = nil; end;
        if self.flowPart120 ~= nil then self.flowPart120:destroy(); self.flowPart120 = nil; end;
        if self.edit94 ~= nil then self.edit94:destroy(); self.edit94 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label123 ~= nil then self.label123:destroy(); self.label123 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.flowPart14 ~= nil then self.flowPart14:destroy(); self.flowPart14 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.flowLineBreak9 ~= nil then self.flowLineBreak9:destroy(); self.flowLineBreak9 = nil; end;
        if self.alvo1 ~= nil then self.alvo1:destroy(); self.alvo1 = nil; end;
        if self.rectangle56 ~= nil then self.rectangle56:destroy(); self.rectangle56 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.flowPart164 ~= nil then self.flowPart164:destroy(); self.flowPart164 = nil; end;
        if self.flowPart83 ~= nil then self.flowPart83:destroy(); self.flowPart83 = nil; end;
        if self.flowLayout3 ~= nil then self.flowLayout3:destroy(); self.flowLayout3 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.edit104 ~= nil then self.edit104:destroy(); self.edit104 = nil; end;
        if self.label113 ~= nil then self.label113:destroy(); self.label113 = nil; end;
        if self.flowPart117 ~= nil then self.flowPart117:destroy(); self.flowPart117 = nil; end;
        if self.flowPart7 ~= nil then self.flowPart7:destroy(); self.flowPart7 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.flowPart46 ~= nil then self.flowPart46:destroy(); self.flowPart46 = nil; end;
        if self.flowPart175 ~= nil then self.flowPart175:destroy(); self.flowPart175 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.edit95 ~= nil then self.edit95:destroy(); self.edit95 = nil; end;
        if self.flowPart172 ~= nil then self.flowPart172:destroy(); self.flowPart172 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.edit108 ~= nil then self.edit108:destroy(); self.edit108 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.flowPart109 ~= nil then self.flowPart109:destroy(); self.flowPart109 = nil; end;
        if self.flowPart130 ~= nil then self.flowPart130:destroy(); self.flowPart130 = nil; end;
        if self.edit97 ~= nil then self.edit97:destroy(); self.edit97 = nil; end;
        if self.checkBox6 ~= nil then self.checkBox6:destroy(); self.checkBox6 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.flowPart2 ~= nil then self.flowPart2:destroy(); self.flowPart2 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.flowPart50 ~= nil then self.flowPart50:destroy(); self.flowPart50 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.flowPart179 ~= nil then self.flowPart179:destroy(); self.flowPart179 = nil; end;
        if self.checkBox8 ~= nil then self.checkBox8:destroy(); self.checkBox8 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.label112 ~= nil then self.label112:destroy(); self.label112 = nil; end;
        if self.flowPart47 ~= nil then self.flowPart47:destroy(); self.flowPart47 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.flowPart67 ~= nil then self.flowPart67:destroy(); self.flowPart67 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.flowPart31 ~= nil then self.flowPart31:destroy(); self.flowPart31 = nil; end;
        if self.flowPart156 ~= nil then self.flowPart156:destroy(); self.flowPart156 = nil; end;
        if self.label121 ~= nil then self.label121:destroy(); self.label121 = nil; end;
        if self.edit88 ~= nil then self.edit88:destroy(); self.edit88 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.edit89 ~= nil then self.edit89:destroy(); self.edit89 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label136 ~= nil then self.label136:destroy(); self.label136 = nil; end;
        if self.rectangle54 ~= nil then self.rectangle54:destroy(); self.rectangle54 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.flowPart12 ~= nil then self.flowPart12:destroy(); self.flowPart12 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.flowPart168 ~= nil then self.flowPart168:destroy(); self.flowPart168 = nil; end;
        if self.flowPart148 ~= nil then self.flowPart148:destroy(); self.flowPart148 = nil; end;
        if self.label149 ~= nil then self.label149:destroy(); self.label149 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.flowPart182 ~= nil then self.flowPart182:destroy(); self.flowPart182 = nil; end;
        if self.checkBox20 ~= nil then self.checkBox20:destroy(); self.checkBox20 = nil; end;
        if self.flowPart64 ~= nil then self.flowPart64:destroy(); self.flowPart64 = nil; end;
        if self.popAtributo ~= nil then self.popAtributo:destroy(); self.popAtributo = nil; end;
        if self.rectangle43 ~= nil then self.rectangle43:destroy(); self.rectangle43 = nil; end;
        if self.flowPart114 ~= nil then self.flowPart114:destroy(); self.flowPart114 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.flowLayout9 ~= nil then self.flowLayout9:destroy(); self.flowLayout9 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.edit107 ~= nil then self.edit107:destroy(); self.edit107 = nil; end;
        if self.flowPart153 ~= nil then self.flowPart153:destroy(); self.flowPart153 = nil; end;
        if self.flowLineBreak1 ~= nil then self.flowLineBreak1:destroy(); self.flowLineBreak1 = nil; end;
        if self.flowPart81 ~= nil then self.flowPart81:destroy(); self.flowPart81 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.checkBox5 ~= nil then self.checkBox5:destroy(); self.checkBox5 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.flowPart159 ~= nil then self.flowPart159:destroy(); self.flowPart159 = nil; end;
        if self.flowPart177 ~= nil then self.flowPart177:destroy(); self.flowPart177 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.label137 ~= nil then self.label137:destroy(); self.label137 = nil; end;
        if self.flowPart167 ~= nil then self.flowPart167:destroy(); self.flowPart167 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.label118 ~= nil then self.label118:destroy(); self.label118 = nil; end;
        if self.flowLineBreak3 ~= nil then self.flowLineBreak3:destroy(); self.flowLineBreak3 = nil; end;
        if self.checkBox21 ~= nil then self.checkBox21:destroy(); self.checkBox21 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.flowLayout11 ~= nil then self.flowLayout11:destroy(); self.flowLayout11 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.flowPart134 ~= nil then self.flowPart134:destroy(); self.flowPart134 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.flowPart98 ~= nil then self.flowPart98:destroy(); self.flowPart98 = nil; end;
        if self.flowPart63 ~= nil then self.flowPart63:destroy(); self.flowPart63 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.rectangle49 ~= nil then self.rectangle49:destroy(); self.rectangle49 = nil; end;
        if self.edit130 ~= nil then self.edit130:destroy(); self.edit130 = nil; end;
        if self.flowPart70 ~= nil then self.flowPart70:destroy(); self.flowPart70 = nil; end;
        if self.flowPart11 ~= nil then self.flowPart11:destroy(); self.flowPart11 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.flowPart185 ~= nil then self.flowPart185:destroy(); self.flowPart185 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.flowPart36 ~= nil then self.flowPart36:destroy(); self.flowPart36 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.flowPart137 ~= nil then self.flowPart137:destroy(); self.flowPart137 = nil; end;
        if self.flowPart86 ~= nil then self.flowPart86:destroy(); self.flowPart86 = nil; end;
        if self.flowPart151 ~= nil then self.flowPart151:destroy(); self.flowPart151 = nil; end;
        if self.flowPart111 ~= nil then self.flowPart111:destroy(); self.flowPart111 = nil; end;
        if self.popManeuver ~= nil then self.popManeuver:destroy(); self.popManeuver = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.flowPart82 ~= nil then self.flowPart82:destroy(); self.flowPart82 = nil; end;
        if self.flowPart146 ~= nil then self.flowPart146:destroy(); self.flowPart146 = nil; end;
        if self.flowPart17 ~= nil then self.flowPart17:destroy(); self.flowPart17 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.flowLineBreak10 ~= nil then self.flowLineBreak10:destroy(); self.flowLineBreak10 = nil; end;
        if self.flowPart84 ~= nil then self.flowPart84:destroy(); self.flowPart84 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.checkBox2 ~= nil then self.checkBox2:destroy(); self.checkBox2 = nil; end;
        if self.flowLineBreak8 ~= nil then self.flowLineBreak8:destroy(); self.flowLineBreak8 = nil; end;
        if self.flowPart61 ~= nil then self.flowPart61:destroy(); self.flowPart61 = nil; end;
        if self.flowPart27 ~= nil then self.flowPart27:destroy(); self.flowPart27 = nil; end;
        if self.flowPart171 ~= nil then self.flowPart171:destroy(); self.flowPart171 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.edit119 ~= nil then self.edit119:destroy(); self.edit119 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.flowPart58 ~= nil then self.flowPart58:destroy(); self.flowPart58 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.label104 ~= nil then self.label104:destroy(); self.label104 = nil; end;
        if self.edit91 ~= nil then self.edit91:destroy(); self.edit91 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.flowPart115 ~= nil then self.flowPart115:destroy(); self.flowPart115 = nil; end;
        if self.flowPart65 ~= nil then self.flowPart65:destroy(); self.flowPart65 = nil; end;
        if self.flowPart119 ~= nil then self.flowPart119:destroy(); self.flowPart119 = nil; end;
        if self.AtrBut ~= nil then self.AtrBut:destroy(); self.AtrBut = nil; end;
        if self.flowPart21 ~= nil then self.flowPart21:destroy(); self.flowPart21 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.flowPart112 ~= nil then self.flowPart112:destroy(); self.flowPart112 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.flowPart165 ~= nil then self.flowPart165:destroy(); self.flowPart165 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.flowPart184 ~= nil then self.flowPart184:destroy(); self.flowPart184 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.rectangle39 ~= nil then self.rectangle39:destroy(); self.rectangle39 = nil; end;
        if self.rectangle41 ~= nil then self.rectangle41:destroy(); self.rectangle41 = nil; end;
        if self.label141 ~= nil then self.label141:destroy(); self.label141 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.flowLineBreak4 ~= nil then self.flowLineBreak4:destroy(); self.flowLineBreak4 = nil; end;
        if self.label134 ~= nil then self.label134:destroy(); self.label134 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmFichaRPGmeister1_svg = {
    newEditor = newfrmFichaRPGmeister1_svg, 
    new = newfrmFichaRPGmeister1_svg, 
    name = "frmFichaRPGmeister1_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmFichaRPGmeister1_svg = _frmFichaRPGmeister1_svg;
rrpg.registrarForm(_frmFichaRPGmeister1_svg);

return _frmFichaRPGmeister1_svg;
