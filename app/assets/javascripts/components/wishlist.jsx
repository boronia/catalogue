class Wishlist extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            owner: props.owner,
            books: props.books
        }
    }

    renderWishlist() {
        return this.state.books.map((book, index) =>
            <li key={index}>{book}</li>
        );
    }

    render() {
        return (
            <div className="wishlist">
                <h3>{this.state.owner}</h3>
                <ul className="booklist">
                    { this.renderWishlist() }
                </ul>
            </div>
        );
    }

}