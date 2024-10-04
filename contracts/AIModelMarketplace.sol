// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract AIModelMarketplace {
    struct Model {
        string name;
        string description;
        uint256 price;
        address creator;
        uint8 ratingCount;
        uint256 totalRating;
    }

    uint256 public modelCount;
    mapping(uint256 => Model) public models;
    mapping(address => uint256) public funds;

    event ModelListed(uint256 modelId, string name, uint256 price, address creator);
    event ModelPurchased(uint256 modelId, address buyer);
    event ModelRated(uint256 modelId, uint8 rating, address rater);

    // List an AI model
    function listModel(string memory name, string memory description, uint256 price) public {
        modelCount++;
        models[modelCount] = Model({
            name: name,
            description: description,
            price: price,
            creator: msg.sender,
            ratingCount: 0,
            totalRating: 0
        });
        emit ModelListed(modelCount, name, price, msg.sender);
    }

    // Purchase a model
    function purchaseModel(uint256 modelId) public payable {
        Model memory model = models[modelId];
        require(model.price == msg.value, "Please send the exact price.");
        require(model.creator != address(0), "Model does not exist.");

        funds[model.creator] += msg.value;
        emit ModelPurchased(modelId, msg.sender);
    }

    // Rate a model
    function rateModel(uint256 modelId, uint8 rating) public {
        require(rating >= 1 && rating <= 5, "Rating should be between 1 and 5.");
        Model storage model = models[modelId];

        model.totalRating += rating;
        model.ratingCount++;
        emit ModelRated(modelId, rating, msg.sender);
    }

    // Withdraw accumulated funds
    function withdrawFunds() public {
        uint256 amount = funds[msg.sender];
        require(amount > 0, "No funds to withdraw.");
        funds[msg.sender] = 0;
        payable(msg.sender).transfer(amount);
    }

    // Get model details
    function getModelDetails(uint256 modelId) public view returns (
        string memory, string memory, uint256, address, uint256
    ) {
        Model memory model = models[modelId];
        uint256 averageRating = model.ratingCount > 0 ? model.totalRating / model.ratingCount : 0;
        return (model.name, model.description, model.price, model.creator, averageRating);
    }
}
