Return-Path: <linux-man+bounces-659-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5B087E506
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 09:35:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD3401F213C4
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 08:35:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BEB81DFFB;
	Mon, 18 Mar 2024 08:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBYR1FuE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C16FA26AD8
	for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 08:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710750911; cv=none; b=UuZqFIek5/TvtQj83KXxxo6mrsj8VF/Uq5haxduJbpCsP+OjIKx+hghJKH+/Jkd0TdCCIg0MA+IWiSlg4Lm1SiknZT0DbP8KId6BiBfb4Zxak1uLvTqAvEu2h61Mf3IuPe91/lUaqEC1jk+VrBUfce7hoMlllPHSdDFcOsvFYvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710750911; c=relaxed/simple;
	bh=3aLk+SROucUyfHVuFNEs594RsAsDe+rbkJDYH5iHHR8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gSzLlzR3z0T0UO1CEmdYsXMrCCXCQ5s4RRYqmbixbaHd3J3inzvFSiejKYk18tywP13iIP9nuU+2uhtT/JxQV0Mg87cgt7H5bq4kYVGnJ2UErl0CqcKnn5ZYoabFY0/jZ6ZNRqiDyOvJ8yUG9QlWTaVRPmEamMQvGqpXzRYtueU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBYR1FuE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF650C433F1;
	Mon, 18 Mar 2024 08:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710750911;
	bh=3aLk+SROucUyfHVuFNEs594RsAsDe+rbkJDYH5iHHR8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WBYR1FuEXFieFbLyWrE9x+mss09hteWcnFl+o/izXvfAzkr0v05nGg+xKVr10x7zO
	 ABmH8EgHYg3W06VtxIRnoRFgeiQJaoMwX9zswnYr7KMQhjT4EQh31rrytOfaporO8I
	 yZT8x+04iCDcgW11VikUtNrEmjH6MatkDvEw12f0+g1AEhyf9DnqhWk6MBTuHItcKX
	 wzo+ggAhJLo9Cl1czE/jGFP/zwYdHyq1A+Q9dOYYzK+eiBRCJGcwIl5FA6um8IxM1T
	 M1GsDqMNFamuRIla8xnGb8caow6vm8Va0sI4suzMfqDpMp8MYuwXMi5mhdo/OYuCJT
	 ihPU+sJIVpYOA==
Date: Mon, 18 Mar 2024 09:35:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Time zone mailing list <tz@iana.org>, dickey@his.com,
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2] tzfile.5: Fix indentation
Message-ID: <Zff8pT_1eWttIGPi@debian>
References: <20240317124350.96716-1-alx@kernel.org>
 <b01d6dcd-81ce-4da2-9186-0003069a1c33@cs.ucla.edu>
 <20240317190642.qozzibfnfrqbhued@illithid>
 <0d79c040-ee97-4e1b-a478-d4fceafb23ad@cs.ucla.edu>
 <ZfdsoDbomdrjp5o6@debian>
 <d39d2de7-52f8-4231-8863-2706ed89c827@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l3SY4WhawhBXZ3Hl"
Content-Disposition: inline
In-Reply-To: <d39d2de7-52f8-4231-8863-2706ed89c827@cs.ucla.edu>


--l3SY4WhawhBXZ3Hl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 Mar 2024 09:35:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Time zone mailing list <tz@iana.org>, dickey@his.com,
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2] tzfile.5: Fix indentation

[looping in linux-man@, as we discuss about improvements in the Linux
 man pages' PDF book]

Hi Paul,

On Sun, Mar 17, 2024 at 09:59:41PM -0700, Paul Eggert wrote:
> On 2024-03-17 15:20, Alejandro Colomar wrote:
>=20
> > In case you want to have a quick look at how it looks, here's an example
> > from the Linux man-pages:
> >=20
> > <https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pag=
es-HEAD.pdf#pdf%3Abm12325>
>=20
> Yes, unfortunately that looks subpar to me. There's too much space between
> the bullets and the text they're bulleting. For example, in the last page=
 of
> man-pages(7) the bullets should be indented with respect to the parent te=
xt,
> and there should be less space between the bullets and the text. Much bet=
ter
> is what tzfile(5) does now (see attached); this is particularly important
> when something is nested under the bullet level, as it is in tzfile(5). T=
he
> current tzfile(5) bulleting approach is closer to how Joe Ossanna used
> bullets in section 7.2 of the Nroff/Troff User's Manual (1976)[1], which =
is
> what I learned troff from. (Ossanna doesn't subindent so his larger inden=
ts
> are not that much of a problem in the manual, but tzfile(5) needs to
> subindent.)

Hmm, while Ossana's indents might be a bit excessive, TZDB's might be
too short.  Maybe I would RS 4 spaces instead of 2 before the tag.
Maybe you being used to programs with 2 spaces and me with 1 tab means
we have our brains hard-wired for different indentation width
preferences.  But I kind of do like pre-indenting bullets; in some cases
I've felt that having the bullets not indented was sub-par, but wasn't
convinced enough to go and pre-indent them, since that would add
complexity, and also allow less room for text in terminals.

> There are other things not to like about the man page PDF output. The man
> pages are confused about when to use constant-width fonts vs varying-width
> fonts.

Can you please point to an example of this?  I try to be consistent, but
probably there are still cases that I haven't fixed due to lack of time.

> The lines are too long to read comfortably; this is inherent to how a
> good font squeezes in more text.

I'm not sure I understand this.  Do you mean there are too many letters
in a line in the Linux man-pages PDF or too few?

If we compare
<https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-H=
EAD.pdf#tzfile.5>
with the PDF you attached to your email, you can see there are less
words in a line in the Linux man-pages PDF than in yours.  Also, your
PDF has slightly less margins.

When I first saw the PDF book, I had a feeling that lines were too long,
and that a larger/better font might be necessary.

> Indents are too large in general. The PDF
> man pages should be formatted for smaller pages, or with tons more margin,
> or two-column, or something. Of course I realize we can't fix all this, as
> there's long tradition of hasty and/or bad formatting dating back to 7th
> Edition Unix man pages. Still, if someone wants to make little improvemen=
ts
> we should let them.

Sure.  I do accept improvements for that.  If you have more specific
suggestions, or even patches, they're welcome!

> > Surprising as it may be, Debian's man2html(1) could
> > handle (probably by ignoring them; I didn't really check) previous uses
> > of \w, but started crashing with \w in IP.  Did you receive a copy of
> > the Debian bug report?
>=20
> I followed up separately to that. In short, that man2html appears to be
> unmaintained upstream and should be retired, but I sent in a patch anyway.

Thanks.

Have a lovely day!
Alex

> [1]: https://www.tuhs.org/Archive/Documentation/Manuals/Unix_4.0/Volume_1=
/C.1.2_NROFF_TROFF_Users_Manual.pdf



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--l3SY4WhawhBXZ3Hl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX3/LsACgkQnowa+77/
2zLTbQ//RX5cE0JtY1GJhuP028FSBR35zXnoVRHCyXzkOvR5wPydHIIlLkWc8Sbf
HCVeQUe8gReL0bt+alZnYvQrYbxLM9J74wzC23cor7w1Es2m6HdJqs8OnBvdpYsE
0BDe9nBvYat4LNONCvXrAitl+XYKLzqgYOdPtAeYaBNkCNpfCBIky0bESzuMZ08N
YWQIBZizZPwjYVxkpCN+FdTdPWy3V1qRocSbhlM/Y9hNKEh67jhFG7Hm+H8i1lSa
QukGKUPC2o3IjtZDXXNZVQAYCUFAWbTPNSo/fCMkEtuC6qQf5d0hElUsZU3oo626
9vN9VZeIIcJC8prEeO/d9B9XobmdxPA9epw2Aubx5SG+Ywz30wd/93TaeXaZWH/D
SCpQD/sSWHX9Ywd0bIva3WdcoiD3IOcngeED0J5VMEXuFvS/+5IhoaselyGgUjIf
wKzOhH5iKPG6+6Zb2ccBA6Fc04YiQEaZoPNqDrmYxRRfgHxOd/tDuoLN8tbiJTVB
2NvYjQ6BgOeylcnwjdObOQVRNnT6A9gMKl8JH8sgkA3lxX7+t3CAwNFUnHLGdJCI
hyIvfZ3rp2w6e0ofvCrCdgiU95mlgEn76dXuhmeKCwEGaAOq6T+2cu+RUSE1hBaj
+VpqfGuJ0TJiKeSp4H9AG71RSNBcYdjjicLMBtJncdTX+mRqj7M=
=Bq9Y
-----END PGP SIGNATURE-----

--l3SY4WhawhBXZ3Hl--

