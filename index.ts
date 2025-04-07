import express from "express";

const app = express();

app.get("/", (req, res) => {
	res.status(200).json({
		message: "data sent",
	});
});

app.listen(5000, () => {
	console.log("Server running on port 5000");
});
