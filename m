Return-Path: <linux-man+bounces-4991-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iO3TOKFHemkp5AEAu9opvQ
	(envelope-from <linux-man+bounces-4991-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 18:30:09 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA5EA6ED3
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 18:30:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65790300D96F
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 17:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D034A2ECE91;
	Wed, 28 Jan 2026 17:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Akl2sMeE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93EF6225390
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 17:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769620761; cv=none; b=tQuqbj6vkirbHsB4k3f08DCffjXD7cKtwz2CJOa3IF0lxorcgvLKFmtjeDcxOY/8omXqlKJqggELf4Pkq07SkkWLWi7Nf52uLAFDXSNeYue12UAp3ttp/VVMOOGDZy9Ex5i+hLNPr5mLN7Io8UrT7uIQOYgi01ebQ9Ec1u3WUVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769620761; c=relaxed/simple;
	bh=i0f7bjDgoHSRnQqepZkBr+hiZrxYRJDXpEYkKFcuHWY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E40HLwLbjDZ0xLdQgPsjyYTgJdir2XaQrXo4cQTL8B/0mwGjPFkWPDbAixx9pbDJEiIKeerHY/RTHFDsnCUKfrHf1+eHkiOleJfXFBFZyYtL0FjNOBa9fbotQcfcnmAYg4RcPH6XB9FZLWsG4pXG/m5TV3LmCsaoI+AStH19v7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Akl2sMeE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C503C4CEF1;
	Wed, 28 Jan 2026 17:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769620761;
	bh=i0f7bjDgoHSRnQqepZkBr+hiZrxYRJDXpEYkKFcuHWY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Akl2sMeE65/DxekzJ867awYUOIi1KJOb9IrtPC8v0vtxRWCq2G2yEMKclae1G7uh3
	 blwWHyMQuO8etPdlcZt+Q+pk1eVLa5duA/MFhZFxmtLW/uxP68JvnUZVg28mn5ntqB
	 GWXsgXgeGbabD5qk+5tZ9uQhVSeHBCctkCJB3xWt+MsipFKquex8wWBzOFklA8s+tc
	 5wgXzQNUuZtSVPOg30GliYSy74xcQaEWSy4nJgvPrtNfjEOoSqqfaLG9u6cuGRXtZn
	 tUGRWxV1/GeLCpTOLoVuyzrE8aqvWy4Ya2+3VQFk1kHxYWjom2v4HSSQiFdn6BHfTO
	 6Kq6uY4h3wP0w==
Date: Wed, 28 Jan 2026 18:19:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [RFC PATCH v1 1/2] src/bin/sman: Add script
Message-ID: <aXpB44YBOSY5MMA7@devuan>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <d093a884e5fbe60d62c35189ac38de5a6b0005e1.1769497513.git.sethmcmail@pm.me>
 <xclnrhc3q3kub6gqhd64difkyls74zcqmhnpwov2dwzrsghjg3@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rgqvc3eq7cswxekr"
Content-Disposition: inline
In-Reply-To: <xclnrhc3q3kub6gqhd64difkyls74zcqmhnpwov2dwzrsghjg3@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-4991-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 4AA5EA6ED3
X-Rspamd-Action: no action


--rgqvc3eq7cswxekr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [RFC PATCH v1 1/2] src/bin/sman: Add script
Message-ID: <aXpB44YBOSY5MMA7@devuan>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <d093a884e5fbe60d62c35189ac38de5a6b0005e1.1769497513.git.sethmcmail@pm.me>
 <xclnrhc3q3kub6gqhd64difkyls74zcqmhnpwov2dwzrsghjg3@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <xclnrhc3q3kub6gqhd64difkyls74zcqmhnpwov2dwzrsghjg3@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1,

On 2026-01-28T17:52:15+0100, =D0=BD=D0=B0=D0=B1 wrote:
> You wrote it confusingly (if I wrote it like that it'd be on purpose;
>  I doubt that was your intent but that's how it reads),
> so I isomorphised your program into third normal form:
> -- >8 --
> #!/bin/sh
> #
> # Copyright, the authors of the Linux man-pages project
> # SPDX-License-Identifier: GPL-3.0-or-later
>=20
> name=3D"${0##*/}"

I find basename(1) much more readable.  Also, it's easier to find
documentation about it.

>=20
> # fail [error message]
> fail() {
> 	[ $# -gt 1 ] && echo "$name: $1"

I agree [(1) is more readable than '[[...]]'.  I prefer test(1), though.

[...]
> -- >8 --
>=20
> Then I made it behave acceptably thusly:
> -- >8 --
[...]
> -- >8 --

[...]
> If you were shipping this you'd want to do the filtering in one pass
> because the UX of the sections being out of order is IMO suboptimal.
> And also processing and fully-bufferring the /whole/ rendered output,
> for big pages, is so slow
> (I tested on voreutils ls(1) =E2=80=92 <https://ro.ws.co.ls/man1/ls.1.pdf>
>  time man ls > /dev/null takes 0m0.513s wall clock;
>  multiply this for each section, and you see how this is suboptimal;
>  similarly, voreutils stty(1) measures 0m1.620s;
>  this is especially suboptimal since big complex pages are exactly the
>  ones you'd want to filter;
>  also, I think this wants a negative section filter as well
>  (to remove HISTORY or STANDARDS which may be less relevant))

In mansect(1) (see below), you can do negative filtering if you want,
by writing a complex-enough PCRE2 pattern that rejects some name(s).

> you can work around this a little by sticking a load of stdbuf -oL
> on the pipeline, but, again, I think the final for loop should be
> representable as a one-shot AWK program.

It is, and indeed, that's how I implemented mansect(1).  Well, I used
pcre2grep(1) instead of awk(1), but it is a one-shot program.

	alx@devuan:~/src/linux/man-pages/man-pages/master$ cat src/bin/mansect=20
	#!/bin/bash
	#
	# Copyright, the authors of the Linux man-pages project
	# SPDX-License-Identifier: GPL-3.0-or-later

	set -Eefuo pipefail;


	if test $# -lt 1; then
		>&2 printf '%s\n' "$(basename "$0"): error: Too few arguments."
		exit 1;
	fi;

	s=3D"$1";
	shift;

	if test $# -lt 1; then
		preconv;
	else
		find -H "$@" -not -type d \
		| xargs preconv;
	fi \
	| pcre2grep -M \
		-e '^\.lf 1 ' \
		-e '^\.TH ' \
		-e '(?s)^\.SH ('"$s"')$(?:(?!^\.(lf 1|TH|SH) ).)*';

And as I suggested in the other sub-thread, we can just pipe this to
a formatter to get the intended behavior:

	$ cat src/bin/mansectf=20
	#!/bin/bash
	#
	# Copyright, the authors of the Linux man-pages project
	# SPDX-License-Identifier: GPL-3.0-or-later

	set -Eefuo pipefail;

	mansect "$@" \
	| man /dev/stdin;


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--rgqvc3eq7cswxekr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml6RQ8ACgkQ64mZXMKQ
wqnT6BAAi9VLRmOwY8hte2oZfycoB1ERB+XMIhVqqQp0khPyRbrxBUc6f8STdWr+
6T7zibrjpRUUH4cSrQyqo+pT6f0Bp2J1/SRaBDMHILrq2hnAqxPAmCt9KnZJ0fFj
L1ihzyzCrYeIk035gbHxFMV85m8zs1ewgsgvwXcgGPJhEdcFJ/5zJ1GZZJM/1Ho7
lPTiNezkc/JaSR3456pKgYXt+WZtQWSyxugWp1sIRNRwZ4jFNqJB2/8FIyPvX0iH
2asyB6hTdaQEz5CIrDJxoDRRwVeClm6wT8khNE9/Q/rtQUhDbCkujE452RoKCFeK
Hm9goOepYPyzH7oAQ5HPuIljLe3R5GM76OIFHyVJK7zmfpegP312+4Bz2vS88A6Y
QCUPTcgqvjdWdHnkiBU515/6nxMNu3fFxcbhCNV8jWm2wWmcXxN7qaf+cJTamC2/
1o9zWScdBTVDiuKflzoR/jYvNYXoP4dyZbjxiCMYqpG5YKIz2kDGv/HsmG9CGBHf
DU6zezGnLPQea9tISmyJR5C3aNiqePYznS2ZlHBvYChn6uKkD8Z3ydAQzZUQxa39
GU48zrGB19KhdAUWM0gbQUuzSX92Rph4tlVejaDmGolmQgJ1dj1FEoMm30gSdwRn
23Ab8gLLLmEZkF0UaPqqRdHwMHCqDtHoeVaXIhZCDCS68fe4VU0=
=83LD
-----END PGP SIGNATURE-----

--rgqvc3eq7cswxekr--

