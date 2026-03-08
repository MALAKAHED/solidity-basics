// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

/* 
contract FavoriteBookStorage {
    string public favoriteBook;
    struct reader {
        string name;
        string favoriteBook;
    }
    reader[] public listOfReaders;
    mapping(string => string) public nameToFavoriteBook;

    function storeFavoriteBook(string memory _book) public {
        addReader(string memory _name, string memory _book)
    }
}
*/
contract FavoriteBookStorage {

    string public favoriteBook;

    struct reader {
        string name;
        string readerFavBook;
    }

    reader[] public listOfReaders;
    
    mapping(string _name => string _readerFavBook) public nameFavBook;

    function addFavoriteBook(string memory _name) public {
        favoriteBook = _name;
    }
    
    function AddNewReader(string memory _readerName, string memory _readerFavBook) public {
        Reader.push(reader(_readerName, _readerFavBook));
        nameFavBook[_readerName] = _readerFavBook;
    }

    function reteieve() public view returns(string memory) {
        return favoriteBook;
    }

}