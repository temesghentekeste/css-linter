# CSS Linter

[![View Code](https://img.shields.io/badge/View%20-Code-green)](https://github.com/temesghentekeste/css-linter/pulls)
[![Github Issues](https://img.shields.io/badge/GitHub-Issues-orange)](https://github.com/temesghentekeste/css-linter/issues)
[![GitHub Pull Requests](https://img.shields.io/badge/GitHub-Pull%20Requests-blue)](https://github.com/temesghentekeste/css-linter/pulls)

## Content

<a text-align="center" href="#about">About</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#description">Description</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#screenshots">Screenshots</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#ins">Installing</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#with">Built with</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#setup">Setup</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#ldl">Live Demo</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#gandb">Good and Bad code examples</a>
<a href="#author">Author</a>


## About <a name = "about"></a>
This project is a capstone project developed as a completion of Ruby section of Microverse main curriculum. It is a css lint tool intended to showcase Ruby programming Skills. The project has also been enhanced by adding Rspec tests to check each and every method written works as it was intended

<h3>Description <a name = "description"></a></h3>
<h4>This tool provides useful css practices detecting the folllowing errors:</h4>
<li>Empty line at the end of the css file(s)</li>
<li>Unnecssary trailing spaces at the end of lines in a css file(s).</li>
<li>Missing space before opening curly bracket</li>
<li>Inconsistent indentation</li>
<li>Missing semicolon</li>

## Screenshots <a name = "screenshots"></a>
### Screenshot of linter passing with no errors
![screenshot](./images/single_file_scanning) 

### Screenshot of linter displaying errors
![screenshot](./images/multiple_file_scanning)

## 🔧 Built with<a name = "with"></a>

- Ruby 2.7.0
- Rspec gem
- Colorize gem


## 🔴 Live Demo <a name = "ldl"></a>


**Click [here]() in order to see a Live Demo of this project.**



## 🔨 Setup<a name = "setup"></a>

- Fork the repo to your remote repository.
- Clone or download the repository to a local directory on your computer.
- In your terminal, change directory into the css-linter/bin folder.
- Run ln -s $PWD/ministylelint /usr/local/bin in your terminal (this creatres a softlink, or an alias in OS X terms )
- To use the tool, run the following commands:
   - ministylelint &lt;filename&gt; Eg: ministylelint style.css and this checks only the specified file
   - ministylelint (this checks all the css files in the working directroy)
   - For quick test, run the following commands
      - ministylelint lib/style_with_errors_1.css 
  - If all fails
      - ruby bin/ministylelint lib/style_with_errors_1.css or
      - ruby bin/ministylelint

## 🛠 Installing <a name = "ins"></a>

- The following command works if you have ruby and bundler installed in your machine.
   - bundle install

## Good and Bad code examples<a name = "gandb"></a>
##### Good Code example
Here is an example of good code with correct usage of syntax, spaces and indentation.
```
.newsletter-signup {
  font: bold 18px/18px 'Roboto Condensed', sans-serif;
  padding: 20px;
  background-color: #f4f5f6;
  max-width: 300px;
  margin: 0 auto 30px;
}
```
##### Bad Code example -empty line at the end of the css file(s) 
```
.newsletter-signup {
  font: bold 18px/18px 'Roboto Condensed', sans-serif;
  padding: 20px;
  background-color: #f4f5f6;
  max-width: 300px;
  margin: 0 auto 30px;
}


```
##### Bad Code example -missing semicolon
```
.newsletter-signup {
  font: bold 18px/18px 'Roboto Condensed', sans-serif;
  padding: 20px;
  background-color: #f4f5f6
  max-width: 300px;
  margin: 0 auto 30px;
}
```
## ✒️  Author <a name = "author"></a>


👤 **Temesghen Tekeste**

- Github: [@temesghentekeste](https://github.com/temesghentekeste)
- Twitter: [@temesghentekes1](https://twitter.com/temesghentekes1)
- Linkedin: [temsghen-tekeste-bahta-8b5243193](https://www.linkedin.com/in/temesghen-tekeste-bahta-8b5243193/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/temesghentekeste/css-linter/issues).


## 👍 Show your support

Give a ⭐️ if you like this project!

## :clap: Acknowledgements
- <a href="https://www.microverse.org/" target="_blank">microverse.org</a>
- <a href="https://www.theodinproject.com/" target="_blank">The Odin Project</a>
</div>
