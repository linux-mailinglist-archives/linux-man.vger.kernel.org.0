Return-Path: <linux-man+bounces-793-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 620268ABD0C
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 22:13:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E2F471F211C4
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 20:13:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF19745C14;
	Sat, 20 Apr 2024 20:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shaw.ca header.i=@shaw.ca header.b="NzW0gLx5"
X-Original-To: linux-man@vger.kernel.org
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F573B299
	for <linux-man@vger.kernel.org>; Sat, 20 Apr 2024 20:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=3.97.99.32
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713644015; cv=none; b=un0/1QbCvVAwU2wFVmH0bxkggcUn1ociCZEqo9s2KEJgxNFsH21Av7JEfK4IgEAQdcP62/jS5EFYZtQi8fmvGH4Be8N2AoKyDd9icJVzpuuEHUcY6Bezz3X4PYDNCqe7cRBhhOwl1VGTbA3/5PGYyiI2gJXlTDI2LeuMtN504Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713644015; c=relaxed/simple;
	bh=E7soeOhjL4x7aDqrgnG2pud7osPKe9WuH+xw+u9yuXQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nnZZnT+fax7WFbVP7WYP+eWoFCLdg8UsrUvkXfH0qHQHHAP90bnqwK2YYrIKO0xIWWoEWyJDhqTQeZq5GH/5GkohikjN0JtGcHI5bRzVWsIRkSE9Vy0RHw+qPBWoj541nG2/3zoQVfkbTKmPWx+ERmWeW1QJdhu9kQM8M48MGts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=Shaw.ca; spf=pass smtp.mailfrom=shaw.ca; dkim=pass (2048-bit key) header.d=shaw.ca header.i=@shaw.ca header.b=NzW0gLx5; arc=none smtp.client-ip=3.97.99.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=Shaw.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shaw.ca
Received: from shw-obgw-4004a.ext.cloudfilter.net ([10.228.9.227])
	by cmsmtp with ESMTPS
	id y8S1roriM2Ui5yH41rTxne; Sat, 20 Apr 2024 20:11:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20231031;
	t=1713643917; bh=E7soeOhjL4x7aDqrgnG2pud7osPKe9WuH+xw+u9yuXQ=;
	h=Date:Reply-To:Subject:To:Cc:References:From:In-Reply-To;
	b=NzW0gLx5Esm0HXVNuImYFPsYx/i2DH3DXxPlXUxUBqNLCNjRYGBtIYZywcdpr8697
	 JIO9dHXJZctkM1SQLOPN2YWMLxaXE3LwlwXkGrN+4RRqd/G3MLpfk+y0Nk2SYwrs1b
	 g4e/s++Z5X+wZbNyfFBK86M+Uf/z8hipsFR8h6erxaB9yhz/Ez7ORtMfZDQJoifFel
	 4G/QL80EZyR1iQ6XR+ZrFd3FV3MzwKNkRJKuvWRcA/hr6cQF/sIh0446cwlEz3dqAs
	 r0XeuLgBGxGoNgVJyVI9Hl3vqb0rTaB0ohI5M/24bFHSs0qSy8/MxSTRZOWDVtOvXf
	 NzTWg/lNYU1Ew==
Received: from [10.0.0.5] ([184.64.102.149])
	by cmsmtp with ESMTP
	id yH40rb8nXWhyfyH40rWnYa; Sat, 20 Apr 2024 20:11:57 +0000
X-Authority-Analysis: v=2.4 cv=MenPuI/f c=1 sm=1 tr=0 ts=6624218d
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=9Npvg3DGuaOo7Opb:21 a=IkcTkHD0fZMA:10 a=_TmxENXSAAAA:8
 a=T0HYWH42h0tBglnVb5IA:9 a=MXv5f3tnrwMEyytm:21 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=4jxzZ7H_dJz9nXu32rwB:22
Message-ID: <a55df048-f04c-4faa-aba9-a5be7e81543b@Shaw.ca>
Date: Sat, 20 Apr 2024 14:11:55 -0600
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: Problems building the unifont PFA and DIT files for the PDF book
Content-Language: en-CA
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, groff@gnu.org,
 "G. Branden Robinson" <branden@debian.org>,
 Deri James <deri@chuzzlewit.myzen.co.uk>
References: <ZiO0cHOWPyuiJGQq@debian>
 <20240420155231.hwvoxfyqnefimh3s@illithid>
From: Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <20240420155231.hwvoxfyqnefimh3s@illithid>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfGCdm4Ymky5gXqIE8Rs1Si071NuZUWDNmYsqVs7an/dk+d7agZK3gw1Dkgh5Y4SZ1WzVmLparzRWC/D+afCk3f0jEqJhQ0zEOg4v2IVBo9a44UjIDpEm
 CHryvd+JEZo5c31WW2HPIm6MtmnxgE8QazskfafTlaSAp9sGlkkaSfOEH9r9T++k1vY716vCTVFRruvr7+RknO+H7YTfNuXIKYxQ0axNwlmlbePV2Tnk1nvp
 UQhlkln7BSCCstEpP4LPZ0ryHd3ypuvRI3DN+Xpt3BQ3URcmwIcFKmAhCwEQPiWl619XZGOZW3687kLh4ZrovkkG8ziILQUK23prv7U5qmfvtrKrfiurUKDq
 msmlGC5B

On 2024-04-20 09:52, G. Branden Robinson wrote:
> At 2024-04-20T14:26:17+0200, Alejandro Colomar wrote:
>> First problem:
>>
>> In the Unifont, I don't see a "Regular" font.  I assumed I should take
>> the unifont.otf file.

Hi folks,

That's the BMP ~63.5k characters ~57k glyphs; unifont_upper are the SMP ~57.5k 
glyphs with specialized scripts and extended graphics like emojis: unlikely to 
be required for any LGC man pages.

		https://unifoundry.com/unifont/index.html

> Since (I believe I saw you say that) you're using GNU Unifont only to
> patch up missing code point coverage from other fonts, in your
> application it probably makes sense to specify it as a "special" font.
> 
> afmtodit(1):
>       The -s option should be given if the font is “special”, meaning
>       that groff should search it whenever a glyph is not found in the
>       current font.  In that case, font‐description‐file should be listed
>       as an argument to the fonts directive in the output device’s DESC
>       file; if it is not special, there is no need to do so, since
>       troff(1) will automatically mount it when it is first used.
> [...]
>       -s     Add the special directive to the font description file.
> 
> I see that the foregoing advice is incomplete: updating the output
> device's "DESC" file is only one approach; another is to add a `special`
> request to the document, and that's the one I suggest you take for your
> man pages book.
> 
> So you might put
> 
> .special Unifont
> 
> in your front.groff file or similar.
> 
>> Here's how I've been groff-ifying the Tinos font:
>> 	AFMTODIT	.tmp/fonts/devpdf/TinosR
>> 	afmtodit -e /usr/share/groff/current/font/devpdf/enc/text.enc .tmp/fonts/devpdf/TinosR.afm /usr/share/groff/current/font/devpdf/map/text.map .tmp/fonts/devpdf/TinosR
>> 	/usr/local/bin/afmtodit: AGL name 'mu' already mapped to groff name 'mc'; ignoring AGL name 'uni00B5'
>> 	/usr/local/bin/afmtodit: AGL name 'periodcentered' already mapped to groff name 'pc'; ignoring AGL name 'uni00B7'
>> 	/usr/local/bin/afmtodit: both gravecomb and uni0340 map to u0300 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both acutecomb and uni0341 map to u0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both uni0313 and uni0343 map to u0313 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both uni02B9 and uni0374 map to u02B9 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both alphatonos and uni1F71 map to u03B1_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both epsilontonos and uni1F73 map to u03B5_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both etatonos and uni1F75 map to u03B7_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both iotatonos and uni1F77 map to u03B9_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both omicrontonos and uni1F79 map to u03BF_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both omegatonos and uni1F7D map to u03C9_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both Alphatonos and uni1FBB map to u0391_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both Epsilontonos and uni1FC9 map to u0395_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both Etatonos and uni1FCB map to u0397_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both iotadieresistonos and uni1FD3 map to u03B9_0308_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both Iotatonos and uni1FDB map to u0399_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both Upsilontonos and uni1FEB map to u03A5_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both dieresistonos and uni1FEE map to u00A8_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both Omicrontonos and uni1FF9 map to u039F_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both Omegatonos and uni1FFB map to u03A9_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both uni2000 and uni2002 map to u2002 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both uni2001 and uni2003 map to u2003 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both Ohm and uni2126 map to u03A9 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both uni1FE3 and upsilondieresistonos map to u03C5_0308_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both uni1F7B and upsilontonos map to u03C5_0301 at /usr/local/bin/afmtodit line 6586.
>> 	/usr/local/bin/afmtodit: both patah and yodyod_patah map to u05B7 at /usr/local/bin/afmtodit line 6586.
>>
>> Are any of those warnings something I should take care of?  Or should
>> I just ignore them?  If they're unimportant, can I ask that low
>> severity warnings not be printed?  Or should I just 2>/dev/null?
> 
> The afmtodit(1) man page, and groff's "PROBLEMS" file (in the source
> distribution, since these warnings can arise when building groff)
> address this point.  Whether it's a problem depends on what you wanted.
> 
> afmtodit(1):
> 
> Diagnostics
>       AGL name 'x' already mapped to groff name 'y'; ignoring AGL name
>       'uniXXXX'
>              You can disregard these if they’re in the form shown, where
>              the ignored AGL name contains four hexadecimal digits XXXX.
>              The Adobe Glyph List (AGL) has its own names for glyphs;
>              they are often different from groff’s special character
>              names.  afmtodit is constructing a mapping from groff
>              special character names to AGL names; this can be a one‐to‐
>              one or many‐to‐one mapping, but one‐to‐many will not work,
>              so afmtodit discards the excess mappings.  For example, if x
>              is Delta, y is *D, and XXXX is 0394, afmtodit is telling you
>              that the groff font description that it is writing cannot
>              map the groff special character \[*D] to AGL glyphs Delta
>              and uni0394 at the same time.
> 
>              If you get a message like this but are unhappy with which
>              mapping is ignored, a remedy is to craft an alternative map‐
>              file and re‐run afmtodit using it.
> 
>> Well, apart from those warnings, that works.  Now, I repeat the process
>> with the Unifont:
> [...]
>> 	$ make build-pdf-book
>> 	GROPDF		.tmp/man-pages-6.7-70-gd80376b08.pdf
>> 	troff:.tmp/fonts/devpdf/UnifontR: error: font description 'spacewidth' directive missing
> [...]
>> Did I do anything wrong with the Unifont?  I suspect of treating it as a
>> Regular font without any indication that I should.
> 
> No, you simply need to tell groff how wide a space should be in that
> font.  In groff, a space is not a kind of glyph, because it doesn't put
> any "ink" on the "page"; instead it's a (discardable) horizontal
> motion.[1]  "Discardable" because if it occurs at the end of an output
> line, it is discarded.
> 
> If the formatter didn't discard spaces
> at the ends of output lines, that would
> defeat adjustment to both  margins,  as
> one  can  observe in this example here.
> Note the ragged margin ending the first
> line.
> 
> afmtodit(1):
>       -w space‐width
>              Use space‐width as the width of inter‐word spaces.
> 
> You will probably want to know what number to use for a font's space
> width.  This is a judgment typographers make.  The groff Texinfo manual
> and groff_diff(7) page share a rule of thumb.
> 
>       .ss word‐space‐size [additional‐sentence‐space‐size]
>              A second argument sets the amount of additional space
>              separating sentences on the same output line.  If omitted,
>              this amount is set to word‐space‐size.  Both arguments are
>              in twelfths of current font’s space width (typically one‐
>              fourth to one‐third em for Western scripts; see
>              groff_font(5)).  The default for both parameters is 12.
>              Negative values are erroneous.
> 
> My approach is to generate the font description file _without_
> the `-w` option, then read the resulting to file to see how wide the
> glyphs are.
> 
> If I do this for the URW Times roman font:
> 
> $ grep '^M' build/font/devpdf/TR
> M       889,662 2       77      M       --      004D
> 
> I can see that the "M" is 889 basic units wide (see groff_font(5) for an
> explanation of this file format and its terminology).
> 
> One third of 889 (rounded to an integer) is 296, so, personally, I'd say
> "-w 296".  But in principle, any value between 223 and 296 is "sound",
> and ultimately, the "correct" value is whatever best pleases you as a
> typographer when considering your document.  It's also worth noting that
> when adjustment is enabled, as is the case in AT&T and GNU troffs by
> default, an inter-word space will seldom be _exactly_ this "spacewidth"
> in any case, except where the document (or a macro package) has
> explicitly disabled adjustment.

OpenType fonts are normally designed with an 1000 units/em, and Truetype may be 
1024 or 2048 units/em, so should use 333 or maybe 300 if you prefer a tighter 
look, close to your suggestion.

$ ttfdump /usr/share/fonts/urw-base35/NimbusRoman-Regular.otf | awk "/'head'/,/^$/"
    6. 'head' - checksum = 0x0cdb53f2, offset = 0x00016f4c, len =        54
    7. 'hhea' - checksum = 0x06b6057b, offset = 0x00016f84, len =        36
    8. 'hmtx' - checksum = 0x35d9ae6c, offset = 0x00016fa8, len =      3420
    9. 'maxp' - checksum = 0x03575000, offset = 0x00017d04, len =         6
   10. 'name' - checksum = 0x8993f63c, offset = 0x00017d0c, len =       620
   11. 'post' - checksum = 0xffb10032, offset = 0x00017f78, len =        32

'head' Table - Font Header
--------------------------
          'head' version:         1.0
          fontReversion:          1.0
          checkSumAdjustment:     0x69d6e98e
          magicNumber:            0x5f0f3cf5
          flags:                  0x0003
          unitsPerEm:             1000
          created:                0x00000000d5420807
          modified:               0x00000000d5420807
          xMin:                   -168
          yMin:                   -281
          xMax:                   1000
          yMax:                   1053
          macStyle bits:          0x0000
          lowestRecPPEM:          3
          fontDirectionHint:      2
          indexToLocFormat:       0
          glyphDataFormat:        0

For comparison Tinos ttf substitute for Times Roman:

$ ttfdump /usr/share/fonts/tinos/Tinos-Regular.ttf | awk "/'head'/,/^$/"
   12. 'head' - checksum = 0x0bd978fc, offset = 0x0000015c, len =        54
   13. 'hhea' - checksum = 0x19811ca6, offset = 0x00000194, len =        36
   14. 'hmtx' - checksum = 0xa4bce0e7, offset = 0x00000238, len =     13116
   15. 'kern' - checksum = 0xa39da9f5, offset = 0x0008d6f8, len =      5220
   16. 'loca' - checksum = 0x28e2bf88, offset = 0x0001a45c, len =     13120
   17. 'maxp' - checksum = 0x10d405bc, offset = 0x000001b8, len =        32
   18. 'name' - checksum = 0xc3ff0ad5, offset = 0x0008eb5c, len =      2052
   19. 'post' - checksum = 0xe841b7c5, offset = 0x0008f360, len =     34664
   20. 'prep' - checksum = 0xbd48485c, offset = 0x00019b40, len =      1550

'head' Table - Font Header
--------------------------
          'head' version:         1.0
          fontReversion:          1.20736
          checkSumAdjustment:     0x84b246c2
          magicNumber:            0x5f0f3cf5
          flags:                  0x001b
          unitsPerEm:             2048
          created:                0x00000000c844d0ce
          modified:               0x00000000d25f0c4c
          xMin:                   -1114
          yMin:                   -797
          xMax:                   5728
          yMax:                   2068
          macStyle bits:          0x0000
          lowestRecPPEM:          9
          fontDirectionHint:      2
          indexToLocFormat:       1
          glyphDataFormat:        0

> [1] I do observe that the URW font descriptions shipped by groff include
>      a special character called "space".  Syntactically, this would be
>      accessed within a groff document via a special character escape
>      sequence: `\[space]`.  I've never seen a document do this.  I admit
>      that I don't have any idea why this is present or what its semantics
>      are: I need a PostScript or PDF expert to tell me.[2]  It does occur
>      to me that we might enhance afmtodit make of use of it as the
>      default "spacewidth".
> 
> [2] Or I can self-help; I have copies of the _PostScript Language
>      Reference Manual_ (3rd ed.) and a version of ISO 32000 lying around.

But Unifont uses 64 units/em, so 20-21?

$ ttfdump /usr/share/fonts/opentype/unifont/unifont.otf | awk '/head/,/^$/'
    5. 'head' - checksum = 0x5f163d75, offset = 0x000000bc, len =        54
    6. 'hhea' - checksum = 0x003adf37, offset = 0x000000f4, len =        36
    7. 'hmtx' - checksum = 0x3eb11f30, offset = 0x004a6b34, len =    228344
    8. 'maxp' - checksum = 0xdefe5000, offset = 0x00000118, len =         6
    9. 'name' - checksum = 0x5aec7895, offset = 0x00000184, len =      1000
   10. 'post' - checksum = 0x00030002, offset = 0x00000604, len =        32

'head' Table - Font Header
--------------------------
          'head' version:         1.0
          fontReversion:          0.0
          checkSumAdjustment:     0x3e8fcc29
          magicNumber:            0x5f0f3cf5
          flags:                  0x0003
          unitsPerEm:             64
          created:                0x0000000000000000
          modified:               0x0000000000000000
          xMin:                   -64
          yMin:                   -8
          xMax:                   64
          yMax:                   56
          macStyle bits:          0x0000
          lowestRecPPEM:          16
          fontDirectionHint:      2
          indexToLocFormat:       0
          glyphDataFormat:        0

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry

