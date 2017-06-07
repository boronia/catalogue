class Wishlists extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            wishlists: props.data
        }
    }

    renderWishlists() {
        for (owner in this.state.wishlists) {
            const books = this.state.wishlists[owner];
            return <Wishlist owner={owner} books={books}/>
        }
    }

    render() {
        return (
            <div className="wishlists">
                { this.renderWishlists() }
            </div>
        );
    }
}