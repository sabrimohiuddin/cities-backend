const checkName = (req, res, next) => {
    if (req.body.name) {
      next();
    } else {
      res.status(400).json({ error: "Name is required" });
    }
  };
  
  const checkBoolean = (req, res, next) => {
    const { has_visited } = req.body;
    if (
      has_visited == "true" ||
      has_visited == true ||
      has_visited == "false" ||
      has_visited == false ||
      has_visited == undefined
    ) {
      next();
    } else {
      res.status(400).json({ error: "has_visited must be a boolean value" });
    }
  };

  const validateURL = (req, res, next) => {
    if (
      req.body.url.substring(0, 7) === "http://" ||
      req.body.url.substring(0, 8) === "https://"
    ) {
      return next();
    } else {
      res
        .status(400)
        .json({ error: `You forgot to start your url with http:// or https://` });
    }
  };
  
  module.exports = { checkBoolean, checkName, validateURL };