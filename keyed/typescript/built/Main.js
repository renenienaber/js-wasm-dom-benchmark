function _random(max) {
    return Math.round(Math.random() * 1000) % max;
}
const rowTemplate = document.createElement("tr");
rowTemplate.innerHTML = "<td class='col-md-1'></td><td class='col-md-4'><a class='lbl'></a></td><td class='col-md-1'><a class='remove'><span class='remove glyphicon glyphicon-remove' aria-hidden='true'></span></a></td><td class='col-md-6'></td>";
class Store {
    constructor() {
        this.data = [];
        this.backup = null;
        this.selected = null;
        this.id = 1;
    }
    buildData(count = 1000) {
        var adjectives = ["pretty", "large", "big", "small", "tall", "short", "long", "handsome", "plain", "quaint", "clean", "elegant", "easy", "angry", "crazy", "helpful", "mushy", "odd", "unsightly", "adorable", "important", "inexpensive", "cheap", "expensive", "fancy"];
        var colours = ["red", "yellow", "blue", "green", "pink", "brown", "purple", "brown", "white", "black", "orange"];
        var nouns = ["table", "chair", "house", "bbq", "desk", "car", "pony", "cookie", "sandwich", "burger", "pizza", "mouse", "keyboard"];
        var data = [];
        for (var i = 0; i < count; i++)
            data.push({ id: this.id++, label: adjectives[_random(adjectives.length)] + " " + colours[_random(colours.length)] + " " + nouns[_random(nouns.length)] });
        return data;
    }
    updateData(mod = 10) {
        for (let i = 0; i < this.data.length; i += 10) {
            this.data[i].label += ' !!!';
        }
    }
    delete(id) {
        const idx = this.data.findIndex(d => d.id == id);
        this.data = this.data.filter((e, i) => i != idx);
        return this;
    }
    run() {
        this.data = this.buildData();
        this.selected = null;
    }
    add() {
        this.data = this.data.concat(this.buildData(1000));
        this.selected = null;
    }
    update() {
        this.updateData();
        this.selected = null;
    }
    select(id) {
        this.selected = id;
    }
    hideAll() {
        this.backup = this.data;
        this.data = [];
        this.selected = null;
    }
    showAll() {
        if (this.backup) {
            this.data = this.backup;
        }
        this.backup = null;
        this.selected = null;
    }
    runLots() {
        this.data = this.buildData(10000);
        this.selected = null;
    }
    clear() {
        this.data = [];
        this.selected = null;
    }
    swapRows() {
        if (this.data.length > 998) {
            var a = this.data[1];
            this.data[1] = this.data[998];
            this.data[998] = a;
        }
    }
}
var getParentId = function (elem) {
    while (elem) {
        if (elem.tagName === "TR") {
            return elem.data_id;
        }
        elem = elem.parentNode;
    }
    return undefined;
};
class Main {
    constructor() {
        var _a;
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
        (_a = document.getElementById("main")) === null || _a === void 0 ? void 0 : _a.addEventListener('click', e => {
            if (e.target.matches('#add')) {
                e.preventDefault();
                this.add();
            }
            else if (e.target.matches('#run')) {
                e.preventDefault();
                this.run();
            }
            else if (e.target.matches('#update')) {
                e.preventDefault();
                this.update();
            }
            else if (e.target.matches('#runlots')) {
                e.preventDefault();
                this.runLots();
            }
            else if (e.target.matches('#clear')) {
                e.preventDefault();
                this.clear();
            }
            else if (e.target.matches('#swaprows')) {
                e.preventDefault();
                this.swapRows();
            }
            else if (e.target.matches('.remove')) {
                e.preventDefault();
                let id = getParentId(e.target);
                let idx = this.findIdx(id);
                if (idx) {
                    this.delete(idx);
                }
            }
            else if (e.target.matches('.lbl')) {
                e.preventDefault();
                let id = getParentId(e.target);
                let idx = this.findIdx(id);
                if (idx) {
                    this.select(idx);
                }
            }
        });
        this.tbody = document.getElementById("tbody");
    }
    findIdx(id) {
        for (let i = 0; i < this.data.length; i++) {
            if (this.data[i].id === id)
                return i;
        }
        return undefined;
    }
    run() {
        this.removeAllRows();
        this.store.clear();
        this.rows = [];
        this.data = [];
        this.store.run();
        this.appendRows();
        this.unselect();
    }
    add() {
        this.store.add();
        this.appendRows();
    }
    update() {
        this.store.update();
        for (let i = 0; i < this.data.length; i += 10) {
            this.rows[i].childNodes[1].childNodes[0].innerText = this.store.data[i].label;
        }
    }
    unselect() {
        if (this.selectedRow !== undefined) {
            this.selectedRow.className = "";
            this.selectedRow = undefined;
        }
    }
    select(idx) {
        this.unselect();
        this.store.select(this.data[idx].id);
        this.selectedRow = this.rows[idx];
        this.selectedRow.className = "danger";
    }
    recreateSelection() {
        let old_selection = this.store.selected;
        let sel_idx = this.store.data.findIndex(d => d.id === old_selection);
        if (sel_idx >= 0) {
            this.store.select(this.data[sel_idx].id);
            this.selectedRow = this.rows[sel_idx];
            this.selectedRow.className = "danger";
        }
    }
    delete(idx) {
        this.store.delete(this.data[idx].id);
        this.rows[idx].remove();
        this.rows.splice(idx, 1);
        this.data.splice(idx, 1);
        this.unselect();
        this.recreateSelection();
    }
    removeAllRows() {
        if (this.tbody) {
            this.tbody.textContent = "";
        }
    }
    runLots() {
        this.removeAllRows();
        this.store.clear();
        this.rows = [];
        this.data = [];
        this.store.runLots();
        this.appendRows();
        this.unselect();
    }
    clear() {
        this.store.clear();
        this.rows = [];
        this.data = [];
        this.removeAllRows();
        this.unselect();
    }
    swapRows() {
        var _a, _b;
        if (this.data.length > 10) {
            this.store.swapRows();
            this.data[1] = this.store.data[1];
            this.data[998] = this.store.data[998];
            (_a = this.tbody) === null || _a === void 0 ? void 0 : _a.insertBefore(this.rows[998], this.rows[2]);
            (_b = this.tbody) === null || _b === void 0 ? void 0 : _b.insertBefore(this.rows[1], this.rows[999]);
            let tmp = this.rows[998];
            this.rows[998] = this.rows[1];
            this.rows[1] = tmp;
        }
    }
    appendRows() {
        var rows = this.rows, s_data = this.store.data, data = this.data, tbody = this.tbody;
        for (let i = rows.length; i < s_data.length; i++) {
            let tr = this.createRow(s_data[i]);
            rows[i] = tr;
            data[i] = s_data[i];
            tbody === null || tbody === void 0 ? void 0 : tbody.appendChild(tr);
        }
    }
    createRow(data) {
        var _a;
        const tr = rowTemplate.cloneNode(true), td1 = tr.firstChild, a2 = (_a = td1 === null || td1 === void 0 ? void 0 : td1.nextSibling) === null || _a === void 0 ? void 0 : _a.firstChild;
        tr.data_id = data.id;
        td1.textContent = data.id.toString();
        a2.textContent = data.label;
        return tr;
    }
}
new Main();
