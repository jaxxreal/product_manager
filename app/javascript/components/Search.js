import React from "react"

const Search = ({ products, products_properties }) => {
    const [query, setQuery] = React.useState('');

    function filterProduct(product) {
        if (query.length === 0) {
            return true;
        }

        const regex = new RegExp(`${query}`, 'i');
        const properties = products_properties.filter(p => p.product_id === product.id);

        return regex.test(product.name)
            || regex.test(product.upc)
            || regex.test(product.available_on)
            || properties.some(prop => regex.test(prop.name) || regex.test(prop.value));
    }

    const filteredProducts = products.filter(filterProduct);

    return (
        <div>
            <input className="input" placeholder="Search products" value={query} onChange={ev => setQuery(ev.target.value)} />

            <table className="table" style={{width: '100%'}}>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>UPC</th>
                        <th>Available on</th>
                        <th>Properties</th>
                        <th></th>
                    </tr>
                </thead>

                <tbody>
                    {filteredProducts.map(product => (
                        <tr key={product.id}>
                            <td>{ product.name }</td>
                            <td>{ product.upc }</td>
                            <td>{ new Intl.DateTimeFormat().format(new Date(product.available_on)) }</td>
                            <td>
                                <ul>
                                    { products_properties.filter(p => p.product_id === product.id).map(prop => (
                                        <li key={prop.id}>
                                            { prop.name }: <i>{ prop.value }</i>
                                        </li>
                                    )) }
                                </ul>
                            </td>
                            <td><a href={`products/${product.id}`}>Show</a></td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
};

export default Search
