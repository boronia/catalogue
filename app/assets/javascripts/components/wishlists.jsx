class Wishlists extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            wishlists: props.data
        }
    }

    renderWishlists() {
        var res = [];
        var key = 0;
        for (owner in this.state.wishlists) {
            const books = this.state.wishlists[owner];
            res.push( <Wishlist key={key} owner={owner} books={books}/> );
            key += 1;
        }
        return res;
    }

    render() {
        return (
            <div className="wishlists">
                { this.renderWishlists() }
            </div>
        );
    }
}