Return-Path: <linux-man+bounces-131-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C827F3300
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 17:00:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7CCB2817E3
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 16:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D5A559141;
	Tue, 21 Nov 2023 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oz/mN5UE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB6A53818
	for <linux-man@vger.kernel.org>; Tue, 21 Nov 2023 16:00:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61B3CC433CA;
	Tue, 21 Nov 2023 16:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700582432;
	bh=a5eLdhKmdVqfkM16xedN+2h4aDQ643BnXbOmCl/YxlE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oz/mN5UEb46uVWBwXRinn3DD/ANZBsfW8bRHkJcN6Nl9OzrEbylgBL7EQjGU0ewF7
	 a8V2nf19kXaHq3vZIFC0npL9epVqLOmssGCV20VLdlpXZzNQ5+Go5xG6IYGaa9GROK
	 2cwDtJNDcV/XIXuoRgFwHRxj8rQ43VT7thv1mntTcBeZdX3ELLdeHrKrGP61jr+dcm
	 NOqCLtdusj4evi4aFlggIQuXg84GnuAn/UwtqRk00XVCRMKABt1XPADRGlwBcMbe0h
	 YBljWyWnkepntyQtEgT2xyGZvpaoJxfgjfoJGYog+Z7e/Zo9mn3AQTj8fFs73bAOlA
	 9s6KMzUaP8WUw==
Date: Tue, 21 Nov 2023 17:03:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] strncat.3 fixes
Message-ID: <ZVzU6WHGCQqV4TRn@devuan>
References: <20231112235218.80195-1-eggert@cs.ucla.edu>
 <20231112235218.80195-4-eggert@cs.ucla.edu>
 <ZVF4tHfkfrwFQawd@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2+KowHj7tS/5DlMq"
Content-Disposition: inline
In-Reply-To: <ZVF4tHfkfrwFQawd@debian>


--2+KowHj7tS/5DlMq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 21 Nov 2023 17:03:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] strncat.3 fixes

Hi Paul,

On Mon, Nov 13, 2023 at 02:15:20AM +0100, Alejandro Colomar wrote:
> Hi Paul,
>=20
> On Sun, Nov 12, 2023 at 03:52:07PM -0800, Paul Eggert wrote:
>=20
> > Don't say "concatenate".
>=20
> Ok
>=20
> > Use "byte" instead of "character",
>=20
> Ok
>=20
> > and use standalone terminology rather than relying on the
> > reader already having read string_copying(7).
>=20
> I need to check again in a standalone commit.
>=20
> > Don't say "width" when "size" was intended.
>=20
> Ok
>=20
> > Fix indenting of prototype.
>=20
> Ok
>=20
> > Simplify possible implementation, fixing a bug when the
> > source string length and sz exceed INT_MAX.
>=20
> Heh!  Good.
>=20
> > Say that strncat is rarely useful.
>=20
> Do we need to say that, or is it already implied by
> "append non-null bytes from a source array to a string,
>  and null-terminate the result"?
> Not many programs need to do that operation.  I'm fine with saying it's
> rarely useful; I'm just wondering if it's worth it.
>=20
> > Say that behavior is undefined if the destination is not a string.
>=20
> Ok
>=20
> > Simplify example by using plain sizeof rather than an nitems macro,
>=20
> If you want sizeof(), please use sizeof(), not sizeof.
>=20
> I use nitems() with these functions because if you switch to wide
> strings, you can keep the nitems() part, while you'd have to change it
> if you had sizeof().  Also, nitems() makes it safe against sizeof(ptr).
> What do you think of this?
>=20
> > by removing a confusingly-named 'maxsize' local,
>=20
> Ok
>=20
> > and by removing an unnecessary call to 'exit'.
>=20
> This was practice from Michael Kerrisk, which I like: always terminate
> the program with exit(1); don't rely on just ending the scope of main().
> That way, it's more visual.
>=20
> Please split all these things into separate patches, if you don't mind,
> and sign the patch.

I've applied a set of patches myself:

d7cdccd84 (HEAD -> contrib, alx/contrib) strncat.3: CAVEATS: Say that strnc=
at() is rarely useful
dc2c99ffe strncat.3: CAVEATS: wfix
39209460f strncat.3: Reword description
556a2d03e strncat.3: Say that if dst isn't a string, the behavior is undefi=
ned
ec37b6ac5 strncat.3: SEE ALSO: tfix
f8de0ec01 strncat.3: EXAMPLES: Fix name of variable
1c1c9f93c strncat.3: Simplify possible implementation of strncat()
09b80aed1 strncat.3: Rename third parameter to ssize
f5429cefe strncat.3: Fix bug in possible implementation of strncat(3)
2fe3076fe strncat.3: SYNOPSIS: ffix
696152d30 strncat.3: Don't say 'width' when 'size' is intended
6fe104a7d strncat.3: Say append instead of (con)catenate

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--2+KowHj7tS/5DlMq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVc1OkACgkQnowa+77/
2zIkZA/7BtByf6qWiFFLm7wKrfL810/VQ+D4cGxjSl3sxO0IcS5w7D/TKRHRWwXJ
6sBNGN2mqWjFe45hPFU26L8FTcNcZ8A+ld9lhM35V+2ZDTpT+eF0dbYfwv3JLRzj
qjD1h1xLnzLf62br6VSJEJDDAs4YFo5EKwIM94dm8+PIW553HgrDEhlSpCfVzH84
OVo0aPPw3C8ComMqwACnGV16ngKTqxoDZV6ZTF3jt/N9w+kevSUwuvQIo8+IwrZu
i2wQglzibhr8Cb5ooJEGvns/+x1CTAaLW1jdPSxo6w7s3YD+yHhrYZr7Y1hwV7IS
7TwJXU4AVQhTy5TClgn138U0aSJ4hV/Nrecm2oK2axtQonyKQoCfpOX7Ja3DNdb1
QSOlNorE0C8weQ4YrpoYu/+I5KKm5JvsZpVQYuboyuV0l5Qb69jwDAhpWsOYeyoq
zFK/DmyXjxQaP2FdJZ5o7JM+6dtF+DOJE/wB0jlACuiUUiKPCkId39pbepcs33zq
fxRTZa50ZvQv84c+tXs7SW3AHa/1fu7PfL9JiNoAm3UWg+QBBHSN2TigGylFsVKN
nsu3jDDt1FOKbhWlvr1l6lNtH6smXXZIt2u+2MV94Eo2LMbmIifhKLYKikOVAi/Q
NDJPcQPP8QRlSH9WTiT7HilDgQ2CxMORoohvsOjITSsZem0QWAk=
=+ezw
-----END PGP SIGNATURE-----

--2+KowHj7tS/5DlMq--

