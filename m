Return-Path: <linux-man+bounces-794-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C27DF8ABD8E
	for <lists+linux-man@lfdr.de>; Sun, 21 Apr 2024 00:20:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDDF61C205E1
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 22:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20663481D7;
	Sat, 20 Apr 2024 22:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmTdt+lT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E91481C4
	for <linux-man@vger.kernel.org>; Sat, 20 Apr 2024 22:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713651612; cv=none; b=eoi6XEe2S8Tzerdr7dRtry7iM3rl9++/zGNer7UTcZvS2cKhEnHiSCQqBBabD77077HHvWH1lX+zbqnOyEF69qlG6G6fQQ06ksj4WdIl4E71lDFZ9DbKuKXLi3KqEBa74RgxnOXm4Y9cMUIfXJ7x5WV5n/bLy/xJEoS8rRm1XnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713651612; c=relaxed/simple;
	bh=ip2TMcaOR6/X0KA64Jf/hT0OtwZbFkh0OLf4aoQH4Ww=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZjZvCu8UkZXYctSF1MymIznSS+JOQuEjnSDsPCqsNp74Y2WilQ9M4X2vff5WglzZ33vxkmSNKwhtAqg5tGZk6F41wHCgqn0IE3DxmUInUVTIVMMQH3EzhMSCQqFF9Xn9w2Fum4EasPhXfQnaSqlbnrYIIRnnD6MwuD1vx7Dm4ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmTdt+lT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39215C072AA;
	Sat, 20 Apr 2024 22:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713651612;
	bh=ip2TMcaOR6/X0KA64Jf/hT0OtwZbFkh0OLf4aoQH4Ww=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kmTdt+lTF3JqQcRRAJUDZMZ2XoYfIlub0QVXJOeabyxBm9Qls1cKehd5ZuffAMA4f
	 Z55n/AJM5+9+nW0SFuQ3YxfPIRVG/UDZ2btINa1qybj5OT4M1jzqIGwC5j12C2MIYt
	 Kt1tic6YXtHMR5xBD7CvpMs6APBHY9cN19eUj9B9cV/a2RsnFbFjQw1lhsFkPQ1odV
	 7PJF9Zpkd0VgN74ZoP21EPUyv+5ZG/W4SN14SJZNo5cR97woOqHVMYZxgWARUrQGth
	 abRjeIOwGg41QvRfZjxQ39Z/j9Xo5qNBwy0KeZQFsD1RYveH7+SFN6gwIGeI7IqJYX
	 QMeQQjS1ULqjQ==
Date: Sun, 21 Apr 2024 00:20:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org,
	"G. Branden Robinson" <branden@debian.org>,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: Re: Problems building the unifont PFA and DIT files for the PDF book
Message-ID: <ZiQ_mTQHPq3ig723@debian>
References: <ZiO0cHOWPyuiJGQq@debian>
 <20240420155231.hwvoxfyqnefimh3s@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gfdhCMQJ2Q84TDDF"
Content-Disposition: inline
In-Reply-To: <20240420155231.hwvoxfyqnefimh3s@illithid>


--gfdhCMQJ2Q84TDDF
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 Apr 2024 00:20:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org,
	"G. Branden Robinson" <branden@debian.org>,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: Re: Problems building the unifont PFA and DIT files for the PDF book

Hi Branden,

On Sat, Apr 20, 2024 at 10:52:31AM -0500, G. Branden Robinson wrote:
> Since (I believe I saw you say that) you're using GNU Unifont only to
> patch up missing code point coverage from other fonts, in your
> application it probably makes sense to specify it as a "special" font.
>=20
> afmtodit(1):
>      The -s option should be given if the font is =E2=80=9Cspecial=E2=80=
=9D, meaning
>      that groff should search it whenever a glyph is not found in the
>      current font.  In that case, font=E2=80=90description=E2=80=90file s=
hould be listed
>      as an argument to the fonts directive in the output device=E2=80=99s=
 DESC
>      file; if it is not special, there is no need to do so, since
>      troff(1) will automatically mount it when it is first used.
> [...]
>      -s     Add the special directive to the font description file.
>=20
> I see that the foregoing advice is incomplete: updating the output
> device's "DESC" file is only one approach; another is to add a `special`
> request to the document, and that's the one I suggest you take for your
> man pages book.
>=20
> So you might put
>=20
> .special Unifont
>=20
> in your front.groff file or similar.

Thanks!  Yep, I'm using it (thanks to Deri):

$ grep -rh Unifont share/mk/build/pdf/book/
	print ".pdfpagenumbering D . 1\n.nr PDFOUTLINE.FOLDLEVEL 0\n.defcolor pdf:=
href.colour rgb 0.00 0.25 0.75\n.pdfinfo /Title \"The Linux man-pages Book\=
"\n.special TinosR UnifontR S\n";

> > Here's how I've been groff-ifying the Tinos font:
> > 	AFMTODIT	.tmp/fonts/devpdf/TinosR
> > 	afmtodit -e /usr/share/groff/current/font/devpdf/enc/text.enc .tmp/fon=
ts/devpdf/TinosR.afm /usr/share/groff/current/font/devpdf/map/text.map .tmp=
/fonts/devpdf/TinosR
> > 	/usr/local/bin/afmtodit: AGL name 'mu' already mapped to groff name 'm=
c'; ignoring AGL name 'uni00B5'

[...]

> > 	/usr/local/bin/afmtodit: both patah and yodyod_patah map to u05B7 at /=
usr/local/bin/afmtodit line 6586.
> >=20
> > Are any of those warnings something I should take care of?  Or should
> > I just ignore them?  If they're unimportant, can I ask that low
> > severity warnings not be printed?  Or should I just 2>/dev/null?
>=20
> The afmtodit(1) man page, and groff's "PROBLEMS" file (in the source
> distribution, since these warnings can arise when building groff)
> address this point.  Whether it's a problem depends on what you wanted.

Thanks.

> afmtodit(1):
>=20
> Diagnostics
>      AGL name 'x' already mapped to groff name 'y'; ignoring AGL name
>      'uniXXXX'
>             You can disregard these if they=E2=80=99re in the form shown,=
 where

This still leaves undocumented the warnings of the form

	both patah and yodyod_patah map to u05B7 at /usr/local/bin/afmtodit line 6=
586.

I guess I should ignore them too...

> > Well, apart from those warnings, that works.  Now, I repeat the process
> > with the Unifont:
> [...]
> > 	$ make build-pdf-book
> > 	GROPDF		.tmp/man-pages-6.7-70-gd80376b08.pdf
> > 	troff:.tmp/fonts/devpdf/UnifontR: error: font description 'spacewidth'=
 directive missing
> [...]
> > Did I do anything wrong with the Unifont?  I suspect of treating it as a
> > Regular font without any indication that I should.
>=20
> No, you simply need to tell groff how wide a space should be in that
> font.  In groff, a space is not a kind of glyph, because it doesn't put
> any "ink" on the "page"; instead it's a (discardable) horizontal
> motion.[1]  "Discardable" because if it occurs at the end of an output
> line, it is discarded.

[...]

> afmtodit(1):
>      -w space=E2=80=90width
>             Use space=E2=80=90width as the width of inter=E2=80=90word sp=
aces.

Hmmm, why did TinosR not trigger a warning about it?  I didn't specify
that either.  Do some fonts come with a predetermined space-width and
others not?

>=20
> You will probably want to know what number to use for a font's space
> width.  This is a judgment typographers make.  The groff Texinfo manual
> and groff_diff(7) page share a rule of thumb.
>=20
>      .ss word=E2=80=90space=E2=80=90size [additional=E2=80=90sentence=E2=
=80=90space=E2=80=90size]
>             A second argument sets the amount of additional space
>             separating sentences on the same output line.  If omitted,
>             this amount is set to word=E2=80=90space=E2=80=90size.  Both =
arguments are
>             in twelfths of current font=E2=80=99s space width (typically =
one=E2=80=90
>             fourth to one=E2=80=90third em for Western scripts; see
>             groff_font(5)).  The default for both parameters is 12.
>             Negative values are erroneous.
>=20
> My approach is to generate the font description file _without_
> the `-w` option, then read the resulting to file to see how wide the
> glyphs are.
>=20
> If I do this for the URW Times roman font:
>=20
> $ grep '^M' build/font/devpdf/TR
> M       889,662 2       77      M       --      004D
>=20
> I can see that the "M" is 889 basic units wide (see groff_font(5) for an
> explanation of this file format and its terminology).
>=20
> One third of 889 (rounded to an integer) is 296, so, personally, I'd say
> "-w 296".  But in principle, any value between 223 and 296 is "sound",
> and ultimately, the "correct" value is whatever best pleases you as a
> typographer when considering your document.  It's also worth noting that
> when adjustment is enabled, as is the case in AT&T and GNU troffs by
> default, an inter-word space will seldom be _exactly_ this "spacewidth"
> in any case, except where the document (or a macro package) has
> explicitly disabled adjustment.

Thanks!

>=20
> Regards,
> Branden
>=20
> [1] I do observe that the URW font descriptions shipped by groff include
>     a special character called "space".  Syntactically, this would be
>     accessed within a groff document via a special character escape
>     sequence: `\[space]`.  I've never seen a document do this.  I admit
>     that I don't have any idea why this is present or what its semantics
>     are: I need a PostScript or PDF expert to tell me.[2]  It does occur
>     to me that we might enhance afmtodit make of use of it as the
>     default "spacewidth".

That sounds like a great idea.

Have a lovely night!
Alex

> [2] Or I can self-help; I have copies of the _PostScript Language
>     Reference Manual_ (3rd ed.) and a version of ISO 32000 lying around.



--=20
<https://www.alejandro-colomar.es/>

--gfdhCMQJ2Q84TDDF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYkP5IACgkQnowa+77/
2zJV3A//UlQMm5EMXOATkgdubDXPvEMAFuKlRqkXVAKr9pCsisCPpW3tRP7c/h4g
7G/ok+6a6Pd9YfNayY7Awgcy/7m8uqhJYWaIWb221ciNnigtxWRrirtSq6P8XYC4
Wzcg+zohNYmzRm15pZScafmB5FhC6iDH8uryDYgUmHYhadlmO1pfYvvsN9CIeq79
r6l7nuxUiCZjRRZAiIp2gKib7h5Mc+eCuaQgXl39G9RMu32kZK4C2D3895zK1zF5
6mD6EA270LEXyEEdzSFZapWi4dQjAzHW2Lr5VcUH15l+KA+nnYneoYQcuXBvI1Bc
n+9Lq5eLsjcSN1AtXzsq8Qy3GGzIve+phr97oFS6NicfEb3AyV9mjv35GfliRNz7
BARR9wku2P9UDX+e/XryLhj4AiaRCMsZTTuvRDgq88UVHUlP4G9G75Jyy4Ko+J66
5A20K2HzyG6ZaOh3YrKoV4xaeIpsF8Qi4Lq0xJMjCSKjCjZ96zNc0gxmPCFRvcYt
Lc/OaBf2eOGegEAP9vQCFBN6LSrbwd7Mgeuvxz8M1hTFnwt76twbWpoP33mS7vVf
6yMn2CoAUtXcMQYdMMa5t461UN0I27ZjlYYsg80XtrVM0r+BfYGSFtJrfCmkKCBM
0p1DNaeLtxuQOM1a+lyztbWtZFL9TPgjSqqUUj4Np+4Zt2reI4Q=
=4JVf
-----END PGP SIGNATURE-----

--gfdhCMQJ2Q84TDDF--

