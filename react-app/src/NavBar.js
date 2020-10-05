import React from 'react';
import './NavBar.css';
import Navbar from 'react-bootstrap/Navbar'
import Nav from "react-bootstrap/Nav";
import Form from "react-bootstrap/Form";
import FormControl from "react-bootstrap/FormControl";
import Button from "react-bootstrap/Button";
import NavDropdown from "react-bootstrap/NavDropdown";

function NavBar() {
    return (
        <Navbar bg="light" expand="lg">
            <Navbar.Brand href="#home">
                <img
                    src="/logo.png"
                    width="50"
                    height="50"
                    className="d-inline-block align-top"
                    alt="logo"
                />
            </Navbar.Brand>
            <Navbar.Toggle aria-controls="basic-navbar-nav" />
            <Navbar.Collapse id="basic-navbar-nav">
                <Nav className="mr-auto">
                    <Nav.Link href="#home">Home</Nav.Link>
                    <Nav.Link href="#link">Pricing</Nav.Link>
                    <NavDropdown title="Features" id="basic-nav-dropdown">
                        <NavDropdown.Item href="#action/3.1">Investment Products</NavDropdown.Item>
                        <NavDropdown.Item href="#action/3.2">Guidance</NavDropdown.Item>
                        <NavDropdown.Item href="#action/3.3">Retirement</NavDropdown.Item>
                        <NavDropdown.Item href="#action/3.3">Education</NavDropdown.Item>
                        <NavDropdown.Divider />
                        <NavDropdown.Item href="#action/3.4">Why A+ IRA?</NavDropdown.Item>
                    </NavDropdown>
                </Nav>
                <Navbar.Text className="justify-content-end mr-sm-2">
                    <a href="#login" className="text-success">Join Now</a> Or <a href="#login">Sign in</a>
                </Navbar.Text>
                <Form inline>
                    <FormControl type="text" placeholder="Search" className="mr-sm-2" />
                    <Button variant="outline-success">Search</Button>
                </Form>

            </Navbar.Collapse>
        </Navbar>
    );
}

export default NavBar;
