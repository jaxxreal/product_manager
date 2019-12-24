import React from "react"
import PropTypes from "prop-types"

const ProductProperty = () => {
    const [fieldsNumber, setFieldsNumber] = React.useState(0);

    const fields = Array(fieldsNumber).fill(1);

    return (<>
        { fields.map((_, idx) => (
            <div key={idx} className="field is-horizontal">
                <div className="field-label is-normal">
                <label className="label">Property</label>
                </div>
                <div className="field-body">
                    <div className="field">
                    <p className="control is-expanded">
                        <input name="properties[][name]" className="input" placeholder="Name" />
                    </p>
                    </div>
                    <div className="field">
                    <p className="control is-expanded">
                        <input name="properties[][value]" className="input" placeholder="Value" />
                    </p>
                    </div>
                </div>
            </div>
        )) }
        <button
            type="button"
            onClick={() => setFieldsNumber(fieldsNumber + 1)}
            className="button is-link"
        >
            Add more properties
        </button>
    </>);
};

export default ProductProperty
