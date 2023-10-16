'use strict';
function _random(max) {
    return Math.round(Math.random() * 1000) % max;
}
var rowTemplate = document.createElement("tr");
rowTemplate.innerHTML = "<td class='col-md-1'></td><td class='col-md-4'><a class='lbl'></a></td><td class='col-md-1'><a class='remove'><span class='remove glyphicon glyphicon-remove' aria-hidden='true'></span></a></td><td class='col-md-6'></td>";
var Store = /** @class */ (function () {
    function Store() {
        this.data = [];
        this.backup = null;
        this.selected = null;
        this.id = 1;
    }
    Store.prototype.buildData = function (count) {
        if (count === void 0) { count = 1000; }
        var adjectives = ["pretty", "large", "big", "small", "tall", "short", "long", "handsome", "plain", "quaint", "clean", "elegant", "easy", "angry", "crazy", "helpful", "mushy", "odd", "unsightly", "adorable", "important", "inexpensive", "cheap", "expensive", "fancy"];
        var colours = ["red", "yellow", "blue", "green", "pink", "brown", "purple", "brown", "white", "black", "orange"];
        var nouns = ["table", "chair", "house", "bbq", "desk", "car", "pony", "cookie", "sandwich", "burger", "pizza", "mouse", "keyboard"];
        var data = [];
        for (var i = 0; i < count; i++)
            data.push({ id: this.id++, label: adjectives[_random(adjectives.length)] + " " + colours[_random(colours.length)] + " " + nouns[_random(nouns.length)] });
        return data;
    };
    Store.prototype.updateData = function (mod) {
        if (mod === void 0) { mod = 10; }
        for (var i = 0; i < this.data.length; i += 10) {
            this.data[i].label += ' !!!';
            // this.data[i] = Object.assign({}, this.data[i], {label: this.data[i].label +' !!!'});
        }
    };
    Store.prototype.delete = function (id) {
        var idx = this.data.findIndex(function (d) { return d.id == id; });
        this.data = this.data.filter(function (e, i) { return i != idx; });
        return this;
    };
    Store.prototype.run = function () {
        this.data = this.buildData();
        this.selected = null;
    };
    Store.prototype.add = function () {
        this.data = this.data.concat(this.buildData(1000));
        this.selected = null;
    };
    Store.prototype.update = function () {
        this.updateData();
        this.selected = null;
    };
    Store.prototype.select = function (id) {
        this.selected = id;
    };
    Store.prototype.hideAll = function () {
        this.backup = this.data;
        this.data = [];
        this.selected = null;
    };
    Store.prototype.showAll = function () {
        this.data = this.backup;
        this.backup = null;
        this.selected = null;
    };
    Store.prototype.runLots = function () {
        this.data = this.buildData(10000);
        this.selected = null;
    };
    Store.prototype.clear = function () {
        this.data = [];
        this.selected = null;
    };
    Store.prototype.swapRows = function () {
        if (this.data.length > 998) {
            var a = this.data[1];
            this.data[1] = this.data[998];
            this.data[998] = a;
        }
    };
    return Store;
}());
var getParentId = function (elem) {
    while (elem) {
        if (elem.tagName === "TR") {
            return elem.data_id;
        }
        elem = elem.parentNode;
    }
    return undefined;
};
var Main = /** @class */ (function () {
    function Main(props) {
        var _this = this;
        this.store = new Store();
        this.select = this.select.bind(this);
        this.delete = this.delete.bind(this);
        this.add = this.add.bind(this);
        this.run = this.run.bind(this);
        this.update = this.update.bind(this);
        this.start = 0;
        this.rows = [];
        this.data = [];
        this.selectedRow = undefined;
        document.getElementById("main").addEventListener('click', function (e) {
            //console.log("listener",e);
            if (e.target.matches('#add')) {
                e.preventDefault();
                //console.log("add");
                _this.add();
            }
            else if (e.target.matches('#run')) {
                e.preventDefault();
                //console.log("run");
                _this.run();
            }
            else if (e.target.matches('#update')) {
                e.preventDefault();
                //console.log("update");
                _this.update();
            }
            else if (e.target.matches('#hideall')) {
                e.preventDefault();
                //console.log("hideAll");
                _this.hideAll();
            }
            else if (e.target.matches('#showall')) {
                e.preventDefault();
                //console.log("showAll");
                _this.showAll();
            }
            else if (e.target.matches('#runlots')) {
                e.preventDefault();
                //console.log("runLots");
                _this.runLots();
            }
            else if (e.target.matches('#clear')) {
                e.preventDefault();
                //console.log("clear");
                _this.clear();
            }
            else if (e.target.matches('#swaprows')) {
                e.preventDefault();
                //console.log("swapRows");
                _this.swapRows();
            }
            else if (e.target.matches('.remove')) {
                e.preventDefault();
                var id = getParentId(e.target);
                var idx = _this.findIdx(id);
                //console.log("delete",idx);
                _this.delete(idx);
            }
            else if (e.target.matches('.lbl')) {
                e.preventDefault();
                var id = getParentId(e.target);
                var idx = _this.findIdx(id);
                //console.log("select",idx);
                _this.select(idx);
            }
        });
        this.tbody = document.getElementById("tbody");
    }
    Main.prototype.findIdx = function (id) {
        for (var i = 0; i < this.data.length; i++) {
            if (this.data[i].id === id)
                return i;
        }
        return undefined;
    };
    Main.prototype.run = function () {
        this.removeAllRows();
        this.store.clear();
        this.rows = [];
        this.data = [];
        this.store.run();
        this.appendRows();
        this.unselect();
    };
    Main.prototype.add = function () {
        this.store.add();
        this.appendRows();
    };
    Main.prototype.update = function () {
        this.store.update();
        for (var i = 0; i < this.data.length; i += 10) {
            this.rows[i].childNodes[1].childNodes[0].innerText = this.store.data[i].label;
        }
    };
    Main.prototype.unselect = function () {
        if (this.selectedRow !== undefined) {
            this.selectedRow.className = "";
            this.selectedRow = undefined;
        }
    };
    Main.prototype.select = function (idx) {
        this.unselect();
        this.store.select(this.data[idx].id);
        this.selectedRow = this.rows[idx];
        this.selectedRow.className = "danger";
    };
    Main.prototype.recreateSelection = function () {
        var old_selection = this.store.selected;
        var sel_idx = this.store.data.findIndex(function (d) { return d.id === old_selection; });
        if (sel_idx >= 0) {
            this.store.select(this.data[sel_idx].id);
            this.selectedRow = this.rows[sel_idx];
            this.selectedRow.className = "danger";
        }
    };
    Main.prototype.delete = function (idx) {
        // Remove that row from the DOM
        this.store.delete(this.data[idx].id);
        this.rows[idx].remove();
        this.rows.splice(idx, 1);
        this.data.splice(idx, 1);
        this.unselect();
        this.recreateSelection();
    };
    Main.prototype.removeAllRows = function () {
        // ~258 msecs
        // for(let i=this.rows.length-1;i>=0;i--) {
        //     tbody.removeChild(this.rows[i]);
        // }
        // ~251 msecs
        // for(let i=0;i<this.rows.length;i++) {
        //     tbody.removeChild(this.rows[i]);
        // }
        // ~216 msecs
        // var cNode = tbody.cloneNode(false);
        // tbody.parentNode.replaceChild(cNode ,tbody);
        // ~212 msecs
        this.tbody.textContent = "";
        // ~236 msecs
        // var rangeObj = new Range();
        // rangeObj.selectNodeContents(tbody);
        // rangeObj.deleteContents();
        // ~260 msecs
        // var last;
        // while (last = tbody.lastChild) tbody.removeChild(last);
    };
    Main.prototype.runLots = function () {
        this.removeAllRows();
        this.store.clear();
        this.rows = [];
        this.data = [];
        this.store.runLots();
        this.appendRows();
        this.unselect();
    };
    Main.prototype.clear = function () {
        this.store.clear();
        this.rows = [];
        this.data = [];
        // This is actually a bit faster, but close to cheating
        // requestAnimationFrame(() => {
        this.removeAllRows();
        this.unselect();
        // });
    };
    Main.prototype.swapRows = function () {
        if (this.data.length > 10) {
            this.store.swapRows();
            this.data[1] = this.store.data[1];
            this.data[998] = this.store.data[998];
            this.tbody.insertBefore(this.rows[998], this.rows[2]);
            this.tbody.insertBefore(this.rows[1], this.rows[999]);
            var tmp = this.rows[998];
            this.rows[998] = this.rows[1];
            this.rows[1] = tmp;
        }
        // let old_selection = this.store.selected;
        // this.store.swapRows();
        // this.updateRows();
        // this.unselect();
        // if (old_selection>=0) {
        //     let idx = this.store.data.findIndex(d => d.id === old_selection);
        //     if (idx > 0) {
        //         this.store.select(this.data[idx].id);
        //         this.selectedRow = this.rows[idx];
        //         this.selectedRow.className = "danger";
        //     }
        // }
    };
    Main.prototype.appendRows = function () {
        // Using a document fragment is slower...
        // var docfrag = document.createDocumentFragment();
        // for(let i=this.rows.length;i<this.store.data.length; i++) {
        //     let tr = this.createRow(this.store.data[i]);
        //     this.rows[i] = tr;
        //     this.data[i] = this.store.data[i];
        //     docfrag.appendChild(tr);
        // }
        // this.tbody.appendChild(docfrag);
        // ... than adding directly
        var rows = this.rows, s_data = this.store.data, data = this.data, tbody = this.tbody;
        for (var i = rows.length; i < s_data.length; i++) {
            var tr = this.createRow(s_data[i]);
            rows[i] = tr;
            data[i] = s_data[i];
            tbody.appendChild(tr);
        }
    };
    Main.prototype.createRow = function (data) {
        var tr = rowTemplate.cloneNode(true), td1 = tr.firstChild, a2 = td1.nextSibling.firstChild;
        tr.data_id = data.id;
        td1.textContent = data.id;
        a2.textContent = data.label;
        return tr;
    };
    return Main;
}());
new Main();
