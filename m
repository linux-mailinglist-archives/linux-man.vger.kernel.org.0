Return-Path: <linux-man+bounces-792-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE468ABC41
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 17:52:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CBB01C20473
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 15:52:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7339282FB;
	Sat, 20 Apr 2024 15:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cTYPRgh/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237AB625
	for <linux-man@vger.kernel.org>; Sat, 20 Apr 2024 15:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713628356; cv=none; b=QQs8vnzEMzpEMehw9uPMN7wNSI4ZkpmFMT16H79VECL9i9iCft3waETRSstTpt7SbpCv34liHDORiEnRjw++8+MPIWdFuqRJXimRRZNvX0nX5DMG72BUtxi6eeoSbERM/xfa2WZE7NcQkkZp00AtR12TdzlQzVthan+rRGYtR3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713628356; c=relaxed/simple;
	bh=jPwLBmBCHI0xZMXQbAGkNgYquwF76gNJLC08Yx+IIKc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d++n5T6PCtGTRFplDojZXMxTrXZzpUHB3Rh4YbncPjQwmWN5TPw6Zv41cQpueFZip7xowkkFdWCHxrNpb16m18Z+AApDq9yetm8+QgdXpgnsoYRBxoJRcDB3AtpwuBGbe7L33YysAbSkiIqeNXayRmUceVNwVhVbPLzCGAfyLoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cTYPRgh/; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-5aa28cde736so1949149eaf.1
        for <linux-man@vger.kernel.org>; Sat, 20 Apr 2024 08:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713628354; x=1714233154; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P2LFC0Hn5I+6y+k84rmMg7K3/LgX6gnlJbWZjfbn2zY=;
        b=cTYPRgh/PshfsORCNtMR9H+6elez2tVkwlJ2MakCKFgNTweJnEWoLAuIDSpk7RS9cQ
         6rUzELjdpiilx94JRlxCmk6PzOWV/Mzlr7Wwl+brxHH+z0tBiqVFjc4BDuujNSEGOa1B
         Ufg/AyynZcrMNGX8uHWpiaIVyqsQujrnnjm3NTls0qC16o+buHbCogVgVLiuVJIuSbp5
         49YPst8aIAa979BIEiLleB+OEmPv1hOztfpqs3bTA4PJ3rfHw13beo7y1fPLJpfRxCeb
         VfgdBQ4wIaALQTMxJWubhJuCw7tW/nqqxFWnKo7tl5Az1xx+vIzyICWJNWyYeB7jFhGT
         diPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713628354; x=1714233154;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P2LFC0Hn5I+6y+k84rmMg7K3/LgX6gnlJbWZjfbn2zY=;
        b=oXHxYViyY4bwBmWaJ/3Q2d/a3Ds1IA9KSk3cb2kvxVEYNyzEi9Hde9ntrtGFEgKS3j
         ctHw+c7dtX/GulYNgf9dYZnyGHLztyvq5eaosk6JrcGA6pAa+j571Dy8wfrmBZlRilGX
         pBfVR3Y+/MrdkVC3l8bgR6erUtGR/3fMt8acphSDegipMRYM33wJn8emnobZksvDoBL3
         bp89xFx8CqGdzKerL02hA1CU2G5Asxgv0/8RJU1CvPj/yQSwVwEsYltjg8eAwhJEUj2z
         fU+9vPEYVMmCfsSOq8DCM5KCL0//HsS2lw2c24D4WpPChXnJEuF6lC+6y8cxm8H7iqBX
         l6uA==
X-Gm-Message-State: AOJu0YyP3S9k0x9nJ2r2rqHlDVGEUaHypYu6v4ikQ6kLJ6whor0oR2Oe
	6izA7OhqxSX+lYyamldf01ALlL940GGWLDZUHQV/zuN5hV0sCkOrUF9/zw==
X-Google-Smtp-Source: AGHT+IFrWxwTXMDnybTyKEu7e5jUeqiLI6j0SIWrJXlWjiBPurSdtJ8XeHb2vKC75VKnVSiRVa1GWA==
X-Received: by 2002:a4a:b0c9:0:b0:5ac:9fec:c32e with SMTP id l9-20020a4ab0c9000000b005ac9fecc32emr6693577oon.8.1713628354034;
        Sat, 20 Apr 2024 08:52:34 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id e4-20020a4aaac4000000b005a13ead482bsm1251525oon.12.2024.04.20.08.52.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Apr 2024 08:52:33 -0700 (PDT)
Date: Sat, 20 Apr 2024 10:52:31 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, groff@gnu.org,
	"G. Branden Robinson" <branden@debian.org>,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: Re: Problems building the unifont PFA and DIT files for the PDF book
Message-ID: <20240420155231.hwvoxfyqnefimh3s@illithid>
References: <ZiO0cHOWPyuiJGQq@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gy3zrsmuu6ou3w6y"
Content-Disposition: inline
In-Reply-To: <ZiO0cHOWPyuiJGQq@debian>


--gy3zrsmuu6ou3w6y
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2024-04-20T14:26:17+0200, Alejandro Colomar wrote:
> First problem:
>=20
> In the Unifont, I don't see a "Regular" font.  I assumed I should take
> the unifont.otf file.

Since (I believe I saw you say that) you're using GNU Unifont only to
patch up missing code point coverage from other fonts, in your
application it probably makes sense to specify it as a "special" font.

afmtodit(1):
     The -s option should be given if the font is =E2=80=9Cspecial=E2=80=9D=
, meaning
     that groff should search it whenever a glyph is not found in the
     current font.  In that case, font=E2=80=90description=E2=80=90file sho=
uld be listed
     as an argument to the fonts directive in the output device=E2=80=99s D=
ESC
     file; if it is not special, there is no need to do so, since
     troff(1) will automatically mount it when it is first used.
[...]
     -s     Add the special directive to the font description file.

I see that the foregoing advice is incomplete: updating the output
device's "DESC" file is only one approach; another is to add a `special`
request to the document, and that's the one I suggest you take for your
man pages book.

So you might put

=2Especial Unifont

in your front.groff file or similar.

> Here's how I've been groff-ifying the Tinos font:
> 	AFMTODIT	.tmp/fonts/devpdf/TinosR
> 	afmtodit -e /usr/share/groff/current/font/devpdf/enc/text.enc .tmp/fonts=
/devpdf/TinosR.afm /usr/share/groff/current/font/devpdf/map/text.map .tmp/f=
onts/devpdf/TinosR
> 	/usr/local/bin/afmtodit: AGL name 'mu' already mapped to groff name 'mc'=
; ignoring AGL name 'uni00B5'
> 	/usr/local/bin/afmtodit: AGL name 'periodcentered' already mapped to gro=
ff name 'pc'; ignoring AGL name 'uni00B7'
> 	/usr/local/bin/afmtodit: both gravecomb and uni0340 map to u0300 at /usr=
/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both acutecomb and uni0341 map to u0301 at /usr=
/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both uni0313 and uni0343 map to u0313 at /usr/l=
ocal/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both uni02B9 and uni0374 map to u02B9 at /usr/l=
ocal/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both alphatonos and uni1F71 map to u03B1_0301 a=
t /usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both epsilontonos and uni1F73 map to u03B5_0301=
 at /usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both etatonos and uni1F75 map to u03B7_0301 at =
/usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both iotatonos and uni1F77 map to u03B9_0301 at=
 /usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both omicrontonos and uni1F79 map to u03BF_0301=
 at /usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both omegatonos and uni1F7D map to u03C9_0301 a=
t /usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both Alphatonos and uni1FBB map to u0391_0301 a=
t /usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both Epsilontonos and uni1FC9 map to u0395_0301=
 at /usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both Etatonos and uni1FCB map to u0397_0301 at =
/usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both iotadieresistonos and uni1FD3 map to u03B9=
_0308_0301 at /usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both Iotatonos and uni1FDB map to u0399_0301 at=
 /usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both Upsilontonos and uni1FEB map to u03A5_0301=
 at /usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both dieresistonos and uni1FEE map to u00A8_030=
1 at /usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both Omicrontonos and uni1FF9 map to u039F_0301=
 at /usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both Omegatonos and uni1FFB map to u03A9_0301 a=
t /usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both uni2000 and uni2002 map to u2002 at /usr/l=
ocal/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both uni2001 and uni2003 map to u2003 at /usr/l=
ocal/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both Ohm and uni2126 map to u03A9 at /usr/local=
/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both uni1FE3 and upsilondieresistonos map to u0=
3C5_0308_0301 at /usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both uni1F7B and upsilontonos map to u03C5_0301=
 at /usr/local/bin/afmtodit line 6586.
> 	/usr/local/bin/afmtodit: both patah and yodyod_patah map to u05B7 at /us=
r/local/bin/afmtodit line 6586.
>=20
> Are any of those warnings something I should take care of?  Or should
> I just ignore them?  If they're unimportant, can I ask that low
> severity warnings not be printed?  Or should I just 2>/dev/null?

The afmtodit(1) man page, and groff's "PROBLEMS" file (in the source
distribution, since these warnings can arise when building groff)
address this point.  Whether it's a problem depends on what you wanted.

afmtodit(1):

Diagnostics
     AGL name 'x' already mapped to groff name 'y'; ignoring AGL name
     'uniXXXX'
            You can disregard these if they=E2=80=99re in the form shown, w=
here
            the ignored AGL name contains four hexadecimal digits XXXX.
            The Adobe Glyph List (AGL) has its own names for glyphs;
            they are often different from groff=E2=80=99s special character
            names.  afmtodit is constructing a mapping from groff
            special character names to AGL names; this can be a one=E2=80=
=90to=E2=80=90
            one or many=E2=80=90to=E2=80=90one mapping, but one=E2=80=90to=
=E2=80=90many will not work,
            so afmtodit discards the excess mappings.  For example, if x
            is Delta, y is *D, and XXXX is 0394, afmtodit is telling you
            that the groff font description that it is writing cannot
            map the groff special character \[*D] to AGL glyphs Delta
            and uni0394 at the same time.

            If you get a message like this but are unhappy with which
            mapping is ignored, a remedy is to craft an alternative map=E2=
=80=90
            file and re=E2=80=90run afmtodit using it.

> Well, apart from those warnings, that works.  Now, I repeat the process
> with the Unifont:
[...]
> 	$ make build-pdf-book
> 	GROPDF		.tmp/man-pages-6.7-70-gd80376b08.pdf
> 	troff:.tmp/fonts/devpdf/UnifontR: error: font description 'spacewidth' d=
irective missing
[...]
> Did I do anything wrong with the Unifont?  I suspect of treating it as a
> Regular font without any indication that I should.

No, you simply need to tell groff how wide a space should be in that
font.  In groff, a space is not a kind of glyph, because it doesn't put
any "ink" on the "page"; instead it's a (discardable) horizontal
motion.[1]  "Discardable" because if it occurs at the end of an output
line, it is discarded.

If the formatter didn't discard spaces
at the ends of output lines, that would
defeat adjustment to both  margins,  as
one  can  observe in this example here.
Note the ragged margin ending the first
line.

afmtodit(1):
     -w space=E2=80=90width
            Use space=E2=80=90width as the width of inter=E2=80=90word spac=
es.

You will probably want to know what number to use for a font's space
width.  This is a judgment typographers make.  The groff Texinfo manual
and groff_diff(7) page share a rule of thumb.

     .ss word=E2=80=90space=E2=80=90size [additional=E2=80=90sentence=E2=80=
=90space=E2=80=90size]
            A second argument sets the amount of additional space
            separating sentences on the same output line.  If omitted,
            this amount is set to word=E2=80=90space=E2=80=90size.  Both ar=
guments are
            in twelfths of current font=E2=80=99s space width (typically on=
e=E2=80=90
            fourth to one=E2=80=90third em for Western scripts; see
            groff_font(5)).  The default for both parameters is 12.
            Negative values are erroneous.

My approach is to generate the font description file _without_
the `-w` option, then read the resulting to file to see how wide the
glyphs are.

If I do this for the URW Times roman font:

$ grep '^M' build/font/devpdf/TR
M       889,662 2       77      M       --      004D

I can see that the "M" is 889 basic units wide (see groff_font(5) for an
explanation of this file format and its terminology).

One third of 889 (rounded to an integer) is 296, so, personally, I'd say
"-w 296".  But in principle, any value between 223 and 296 is "sound",
and ultimately, the "correct" value is whatever best pleases you as a
typographer when considering your document.  It's also worth noting that
when adjustment is enabled, as is the case in AT&T and GNU troffs by
default, an inter-word space will seldom be _exactly_ this "spacewidth"
in any case, except where the document (or a macro package) has
explicitly disabled adjustment.

Regards,
Branden

[1] I do observe that the URW font descriptions shipped by groff include
    a special character called "space".  Syntactically, this would be
    accessed within a groff document via a special character escape
    sequence: `\[space]`.  I've never seen a document do this.  I admit
    that I don't have any idea why this is present or what its semantics
    are: I need a PostScript or PDF expert to tell me.[2]  It does occur
    to me that we might enhance afmtodit make of use of it as the
    default "spacewidth".

[2] Or I can self-help; I have copies of the _PostScript Language
    Reference Manual_ (3rd ed.) and a version of ISO 32000 lying around.

--gy3zrsmuu6ou3w6y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYj5LcACgkQ0Z6cfXEm
bc5B0xAAof7G8QuuUHnPJkkTfS5ESr4dXJCH1989bA7sB/m+xDsG3LvEuWZsAIII
XPIoe4hbHzqvlE+RedYcOw8dK6u5ZW+8/BuXjlTbQVeMMpQPRKrsYq3GojlRdMG7
VDq+H7w0zt6yTfiqmmmgst/szyjBPy4hKp/ZAalVyoFnETBh2iFbdyId4MvbBUWr
Buqg18nCGL2RLfLlizIzso+LOYYbkmoU3Mv8S4KwU1ss7SHEiATK4k8adwc2F3sh
4tZirslAxNS1rVAjaxXl1x6liU+Oy2RpNw8P/wCdy1AbKbTi/Hc/d6f3SEIAdHO/
cDKdHQwMRcn6Kfe9806sO0KKyCot8wYqdAn4AxXFcW65PkRD9+EvThRu9J6afqqd
of+2BpB7t+nfFFlmA76EUxC2BAp0M/6O/jDNiZdUqoIKbxkmOtjbVpj31zbV/Uq6
QT6S5BCTbBEZsLbQIUirtAqQwdxO4fntHBmwMhip/Y7TIrhjBE+jVEMSJxf+fYcP
3uW1O8pzFV+0Q+7wQ80GzKyBw/2fHGbA6FY51+xcXHGMo7jOMeXfS1ukGBY0w8nI
zoDZH9AfQWTCbBYOv9WG9CjEH5shg4Y0ONNnhxWGCk1+IdvsdFkCsOd1r2WyJgMf
nfUu7cj1yFw9cifs9yL4F2V0WFqaRze3i1UqLvZcQbixtJsjEyw=
=mEEx
-----END PGP SIGNATURE-----

--gy3zrsmuu6ou3w6y--

