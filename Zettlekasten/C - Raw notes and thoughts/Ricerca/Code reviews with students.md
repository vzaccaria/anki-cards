
Ordered by larger efforts for changes later on. Last points should be automated.

1. API semantics 
	- API as small as possible, as large as needed?
	- Is there one way of doing one thing, not multiple ones?
	- Is it consistent, does it follow the principle of least surprises?
	- Clean split of API/internals, without internals leaking in the API?
	- Are there no breaking changes to user-facing parts (API classes, configuration, metrics, log formats, etc.)?
	- Is a new API generally useful and not overly specific?

2. Implementation semantics
	* Does it satisfy the original requirements
	* Is it logically correct?
	* Is there no unnecessary complexity?
	* Is it robust (no concurrency issues, proper error handling, etc.)?
	* Is it performant?
	* Is it secure (e.g. no SQL injections, etc.
	* Is it observable (e.g. metrics, logging, tracing, etc.)?
	* Do newly added dependencies pull their weight? Is their license acceptable?

3. Documentation
	- New features reasonably documented?
	- Are the relevant kinds of docs covered: README, API docs, user guide, reference docs, etc.?
	- Are docs understandable, are there no significant typos and grammar mistakes?

4. Tests
	* Are all tests passing?
	* Are new features reasonably tested?
	* Are corner cases tested?
	* Is it using unit tests where possible, integration tests where necessary?
	* Are there tests for NFRs, e.g. performance?

5. Code style
	- Is the project's formatting style applied?
	- Does it adhere to agreed on naming conventions
	- Is it DRY?
	- Is the code sufficiently "readable" (method lengths, etc.)
