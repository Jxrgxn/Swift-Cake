//: Playground - noun: a place where people can play

import Cocoa
import Foundation

//Given a number n generate the nth member of the Fibonacci Sequence. 


public enum BinaryTreeChildSide {
    case left, right
}

public protocol BinaryTree {

    associatedtype Element
    associatedtype Index

    func child(of index: Index, side: BinaryTreeChildSide) -> Index?
    var rootIndex: Index? { get }
    subscript(position: Index) -> Element { get }
    
}

public extension BinaryTree {

    func makeIterator() -> BinaryTreeIterator<Self> {
        return BinaryTreeIterator(self)
    }

}

public struct BinaryTreeIterator<Tree: BinaryTree>: IteratorProtocol {

    private let tree: Tree
    private var stack: [Tree.Index]
    private var index: Tree.Index?

    private init(_ tree: Tree) {
        self.tree = tree
        stack = []
        index = tree.rootIndex
    }

    public mutating func next() -> Tree.Element? {
        while let theIndex = index {
            stack.append(theIndex)
            index = tree.child(of: theIndex, side: .left)
        }

        guard let currentIndex = stack.popLast() else { return nil }
        defer { index = tree.child(of: currentIndex, side: .right) }

        return tree[currentIndex]
    }
    
}

public struct BinaryHeap<Element> {

    private var elements: [Element]

    public init(_ elements: [Element]) {
        self.elements = elements
    }

}

extension BinaryHeap: BinaryTree {

    private func safeIndexOrNil(_ index: Int) -> Int? {
        return elements.indices.contains(index) ? index : nil
    }

    public func child(of index: Int, side: BinaryTreeChildSide) -> Int? {
        switch side {
        case .left: return safeIndexOrNil(index * 2 + 1)
        case .right: return safeIndexOrNil(index * 2 + 2)
        }
    }

    public var rootIndex: Int? { return safeIndexOrNil(0) }

    public subscript(position: Int) -> Element {
        return elements[position]
    }
    
}
