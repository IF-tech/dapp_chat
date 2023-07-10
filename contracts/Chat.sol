// Specify the Solidity version
pragma solidity ^0.8.2;

// Define the contract
contract Chat {
    // Define the Post struct to represent a single post
    struct Post {
        address creator;
        bytes32 contentHash;
    }

    // Array to keep track of all posts
    Post[] private posts;

    // Counter for the posts
    uint256 public postCount = 0;

    // Event that will be emitted whenever a new post is created
    event NewPost(uint256 indexed postID, address indexed creator, bytes32 contentHash);

    // Function to create a new post
    function createPost(bytes32 _contentHash) public {
        posts.push(Post(msg.sender, _contentHash));
        emit NewPost(postCount, msg.sender, _contentHash);
        postCount++;
    }

    // Function to retrieve the details of a post
    function getPost(uint256 _postID) public view returns (address creator, bytes32 contentHash) {
        require(_postID < postCount, "Invalid post id");
        Post memory _post = posts[_postID];
        creator = _post.creator;
        contentHash = _post.contentHash;
    }
}