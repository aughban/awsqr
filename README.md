# awsqr

__I suggest you add the QR code given and then use the secret to generate this one, just incase__

I have a fair number of AWS accounts. I use it both personally and professionally. I was finding it difficult to add new accounts and keep track of which account / user they were associated in. Most other MFA providers set the issuer field in the QR code which makes life a little easier. 

This utility is just really to help set the issuer, i suggest you add an account label (--accountlabel) with the name of the account you want. 

![Image Showing The Issuer Field Set](/example.png)

Personally I think that's a lot clearer! This is only a cli tool, it doesn't display the QRCode in the terminal as I found that ascii art QRCodes didn't work with the google auth app. 

## using it

```
awsqr generate --secret=SECRET --username=USERNAME [--accountlabel=ACCOUNTLABEL --output=OUTPUTIMAGENAME]
```

output images are png's. 

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/aughban/awsqr.

