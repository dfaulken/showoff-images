#showoff-images

showoff-images is an extension of [showoff](https://github.com/puppetlabs/showoff)
for quickly making presentations consisting just of a series of up to 100 images.

# Installation

You'll need ImageMagick for the `rmagick` gem to work. Showoff doesn't require it,
but we do here for the image resizing.

Pretty much all package managers have one called `imagemagick`.
I use Homebrew so I can't personally attest to much else.

# Usage

Assuming the correct Ruby version, place .png images in the `img` directory, and run:

> ruby showoff-images.rb

A slide will be created for each image, in alphabetical order.

Then you can run the showoff server:

> bundle exec showoff serve

And connect to it at `http://localhost:9090`.

# Configuration

You can edit the presentation title or date format in `config.json`.

# Contributing

Contributions are welcome! Theres lots of places this could be improved.

Feel free to open issues, make pull requests, all the usual stuff.

# Attributions

Thanks to puppetlabs for making [showoff](https://github.com/puppetlabs/showoff) public.
It's an awesome tool, and obviously this repo wouldn't exist without it.
