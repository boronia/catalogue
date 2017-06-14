class WishlistForm extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            owner: props.owner,
            book: props.book
        }
    }

    render() {
        return (
            <div className="container">
                <div className="wishlist_form">
                    <h3>Add Book to Wishlist</h3>
                    <form className="form_inline">
                        <div className="row">
                            <div className="col-xs-6 col-md-4">
                                <div className="form_group">
                                    <select className="form-control" id="owners">
                                        <option value="Andrew">Andrew</option>
                                        <option value="Von">Von</option>
                                    </select>
                                </div>
                            </div>
                            <div className="col-xs-6 col-md-4">
                                <div className="form_group">
                                    <input id="book" className="form-control" type="text" placeholder="Book" name="book" value={this.state.book}/>
                                </div>
                            </div>
                            <div className="col-xs-6 col-md-4">
                                <button className="btn btn-primary" type="submit">Add</button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        );
    }

}