# 0x11. What Happens When You Type `google.com` in Your Browser and Press Enter

## Description

This project aims to explore and document the series of events that take place when you type `google.com` into your web browser and press Enter. It covers the entire process, from the initial keystrokes to the final rendering of the Google homepage. This deep dive will enhance your understanding of how the internet works, touching on various networking and web technologies.

## Learning Objectives

By the end of this project, you should be able to:

- Describe the sequence of events that occur from the moment you press Enter to the display of the webpage.
- Understand the role of DNS, HTTP/HTTPS, and other protocols in web communication.
- Explain the concepts of client-server architecture, TCP/IP stack, and web security.
- Identify the various components involved in the process, including browsers, servers, and network infrastructure.

## Project Outline

1. **Keystrokes and Browser Processing**
   - What happens when you start typing in the address bar.
   - How the browser processes the input.

2. **DNS Lookup**
   - Explanation of the Domain Name System (DNS).
   - How the browser resolves `google.com` to an IP address.

3. **TCP/IP Stack and Connection Establishment**
   - Overview of the TCP/IP stack.
   - How a TCP connection is established using the three-way handshake.

4. **HTTP/HTTPS Request**
   - Sending an HTTP/HTTPS request to the server.
   - Differences between HTTP and HTTPS.

5. **Server Processing**
   - How the web server handles the request.
   - Server-side processing and response generation.

6. **Response Handling by the Browser**
   - How the browser receives and processes the server response.
   - Rendering the webpage.

7. **Additional Components**
   - Role of CDNs, load balancers, and caching.
   - Security mechanisms like SSL/TLS.

## How to Use

This project is a written report. To view the content, simply open the Markdown file in a text editor or Markdown viewer. If you prefer a more interactive or visual representation, you can use tools like:

- Markdown editors (e.g., Visual Studio Code, Atom).
- Online Markdown viewers (e.g., Dillinger, StackEdit).
- Converting the Markdown file to HTML using tools like Pandoc.

### Examples

Here's a brief example of a section in the project:

#### DNS Lookup

When you type `google.com` and press Enter, the browser first checks its cache to see if it has recently requested the IP address for `google.com`. If not, it sends a query to the local DNS resolver (usually provided by your ISP). The resolver then queries the root DNS servers, followed by the TLD servers, and finally the authoritative DNS servers for `google.com`, which return the IP address.

## Author

- [silgenius](https://github.com/silgenius)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

