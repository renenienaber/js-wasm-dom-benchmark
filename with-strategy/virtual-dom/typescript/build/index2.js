import { Element } from './lib/element.js'
import { diff } from './lib/diff.js'
import { patch } from './lib/patch.js'

var count = 0

function renderTree () {
    count++

    var items = []
    var color = (count % 2 === 0)
        ? 'blue'
        : 'red'

    for (var i = 0; i < count; i++) {
        items.push(new Element('li', ['Item #' + i]))
    }

    return new Element('div', {'id': 'container'}, [
        new Element('h1', {style: 'color: ' + color}, ['simple virtal dom']),
        new Element('p', ['the count is :' + count]),
        new Element('ul', items)
    ])
}

var tree = renderTree()
var root = tree.render()
document.body.appendChild(root)

setInterval(function () {
    var newTree = renderTree()
    var patches = diff(tree, newTree)
    console.log(patches)
    patch(root, patches)

    tree = newTree
}, 1000)