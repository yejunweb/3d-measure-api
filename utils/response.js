/**
 * Code Enum
 * 200 Success
 * 201 Login error or unverified token
 * 502 Service error
 */

module.exports = function (req, res, next) {
    res.sendResult = function (code, data, msg) {
        var fmt = req.query.fmt ? req.query.fmt : 'rest'
        if (fmt == 'rest') {
            res.json({
                code,
                data,
                msg
            })
        }
    }
    next()
}
