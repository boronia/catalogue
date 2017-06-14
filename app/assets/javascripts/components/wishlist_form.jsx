class WishlistForm extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            owner: 'Von',
            book: ''
        }
        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleChange(e) {
        e.preventDefault();
        const name = e.target.name;
        const value = e.target.value;
        this.setState( { [name]: value} );
    }

    handleSubmit(e) {
        e.preventDefault();
        /*
        const url = /wishlists/add_book'
        $.ajax({
            url: url,
            dataType: 'json',
            cache: false,
            success: function(data) {
                this.setState({data: data});
            }.bind(this),
            error: function(xhr, status, err) {
                console.error(url, status, err.toString());
            }.bind(this)
        });
        */
        console.log(this.state);
        this.setState({ book: '' });
    }

    render() {
        return (
            <div className="container">
                <div className="wishlist_form">
                    <h3>Add Book to Wishlist</h3>
                    <form className="form_inline" onSubmit={(e) => this.handleSubmit(e)}>
                        <div className="row">
                            <div className="col-xs-6 col-md-4">
                                <div className="form_group">
                                    <select className="form-control" name="owner" value={this.state.owner} onChange={this.handleChange}>
                                        <option value="Andrew">Andrew</option>
                                        <option value="Von">Von</option>
                                    </select>
                                </div>
                            </div>
                            <div className="col-xs-6 col-md-4">
                                <div className="form_group">
                                    <input id="book" className="form-control" type="text" placeholder="Book" name="book" value={this.state.book} onChange={this.handleChange}/>
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