import logo from './logo.svg';
import './App.css';
import AutoCompleteText from './AutoCompleteText'
import React, {useState} from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';

import Form from 'react-bootstrap/Form';
import Button from 'react-bootstrap/Button';

const SearchResultsDisplay = (props) => {

  const [activePage, setActivePage] = useState(0);

  const PageSelector = () => {

    let pageNums = Math.ceil(props.searchResult.length / props.itemsPerPage)
    let pageNumsArray = Array.from(Array(pageNums).keys())

    return (
      <div className="SearchFooter">
        {pageNumsArray.map(val=>
          <Button onClick={()=>setActivePage(val)}>{val+1}</Button>
        )}
      </div>
    )
  }

  const PageDisplay = () => {
    let pages = props.searchResult.filter((val,i)=>{
      return (i>=props.itemsPerPage*activePage) && (i<props.itemsPerPage*(activePage+1))
    })
    return (
      pages.map(val=>{
        return <div className="SearchResult"><a href={val}>{val}</a></div>
      })
    )
  }

  
  if (props.searchResult) {
    return (
      <div>
        <PageDisplay/>
        <PageSelector/>
      </div>
    )
  } else {
    return (
      <></>
    )
  }

}

function App() {

  const [searchText, setSearchText] = useState();
  const [searchResults, setSearchResults] = useState();

  const handleSubmit = (event) => {
    event.preventDefault()

    // TODO: Insert your fetching here
    const Http = new XMLHttpRequest();
    const url = 'http://localhost:8080/parsetest?input=' + searchText;

    Http.open("GET", url);
    Http.send();

    Http.onreadystatechange=(e)=>{
      setSearchResults(JSON.parse(Http.responseText));
    }

  }

  return (
    <div className="AppBox">
      <h1>SuperNova Search Engine</h1>
      <Form className="SearchBar"
        onSubmit={handleSubmit}
        onChange={(e) => setSearchText(e.target.value)}
      >
        <AutoCompleteText />
      </Form>
      <SearchResultsDisplay searchResult={searchResults} itemsPerPage={10} />
    </div>
  );
}

export default App;
