Return-Path: <linux-man+bounces-2428-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C39FA33B9D
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 10:50:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC62916806B
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 09:49:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2386020F061;
	Thu, 13 Feb 2025 09:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqPjYOIA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCABB20E70A
	for <linux-man@vger.kernel.org>; Thu, 13 Feb 2025 09:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739440106; cv=none; b=lTOzRmG8wE9oxZS9q72UpbAkiyIZjW+VeUASadYnsnBv+PL4I6uqYDotpDUeJCBgGsFyX1m+wFZCFg+HFSc06+Vdjdi2+Hesgi/NbDJWKkbVMFaKbmf+ruzfyfTQHpI0Hr++6iW8Y8gDbzGxUmag1ktDltIUY5XQfaI+4MnPzJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739440106; c=relaxed/simple;
	bh=04I2HyOmNBI6sHDU2Wb4QpCG4ZrlJChUAMU30a7ycs4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MTMeYvQyhZ0Yc/Up2ygnQnIScucAzQuctO8JHRoc+Evx6Nu6LW0Khp9bqz+yOZeqJQGLA66uJdlZXvrAvH9vMsj9QTllmIYUEZfa4d5U09l6M/3+6peCv2GwMvPxGdqvs1PP99gWQ+273DhZqy5z3Qdu2EUYJut3nt2sm19Ay4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqPjYOIA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50A49C4CED1;
	Thu, 13 Feb 2025 09:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739440106;
	bh=04I2HyOmNBI6sHDU2Wb4QpCG4ZrlJChUAMU30a7ycs4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IqPjYOIATedOGDZe6txJZKNjwLVcwVxQpLD/tlEC2M6eRgZrp+ooSeHVWVKbrrH+/
	 DjJUSeyyiwe7xEL8u4sMp8k9H8hecwtHoRSkcYNsILLsUNbHujyGi7C8V5uLyR4tbU
	 o1f/fahHuUpPpwScgdPJiO4vhlSy6CcZc0BdiDNE2VBsj3G2dPLZxRaRNzFVHta+K0
	 s9wgwuyx1dbq0SZ+UvkYxgzzkZerzc9E6nemFKYbPCk4Oi4UqWCfcpwOHfEaqVFFWU
	 GySy2EFfVkNg7h16eq6usSTURPysQaVUvyIFyOOjkN2+ioayYNJYB52LVHVoJgcycw
	 nxoBH2vHZOQVA==
Date: Thu, 13 Feb 2025 10:49:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, 
	linux-man@vger.kernel.org, tuhs@tuhs.org
Subject: Re: Unix V10 Volume 2 PDFs
Message-ID: <uaqgnws4f2l5hkmegjmh2kq4camhcvtaurgm6ym6kgqack5q4j@2mkwngs2krs2>
References: <6jefoqbmf6fwzjjvonee7npjvpvwayksydqjcouijbfufipn4z@adrjauck4ov4>
 <20250213012107.urh4ndk4tnnzm3wx@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lpvhfvg2qeu5jphe"
Content-Disposition: inline
In-Reply-To: <20250213012107.urh4ndk4tnnzm3wx@illithid>


--lpvhfvg2qeu5jphe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, 
	linux-man@vger.kernel.org, tuhs@tuhs.org
Subject: Re: Unix V10 Volume 2 PDFs
References: <6jefoqbmf6fwzjjvonee7npjvpvwayksydqjcouijbfufipn4z@adrjauck4ov4>
 <20250213012107.urh4ndk4tnnzm3wx@illithid>
MIME-Version: 1.0
In-Reply-To: <20250213012107.urh4ndk4tnnzm3wx@illithid>

Hi Branden,

On Wed, Feb 12, 2025 at 07:21:07PM -0600, G. Branden Robinson wrote:
> C.  Getting a scan out there tells us at least what one software
>     configuration deemed acceptable by producers of the book generated,
>     even if it's impossible to identify details of that software
>     configuration.  That in turn helps us to judge the results of
>     _known_ software configurations--groff, and other troffs too.

Hmmm, yeah, sounds useful for a modern troff(1) implementor.  Probably
not so much for one interested in the contents of the documentation
itself.  Whenever I meet a scanned PDF while searching for a PDF, it's
not a good feeling.

> > Doesn't groff(1) handle the Unix sources?
>=20
> Assuming the full source of a document is available, and no part of its
> toolchain requires software that is unavailable (like Van Wyk's "ideal"
> preprocessor) then if groff cannot satisfactorily render a document
> produced by the Bell Labs CSRC, then I'd consider that presumptively a
> bug in groff.  It's a rebuttable presumption--if one document in one
> place relied upon a _bug_ in AT&T troff to produce correct rendering, I
> think my inclination would be to annotate the problem somewhere in
> groff's documentation and leave it unresolved.
>=20
> For a case where groff formats a classic Unix document "better" (in
> the sense of not unintentionally omitting a formatted equation) than
> AT&T troff, see the following.

Hmmm, yep, that's what I expected.

> https://github.com/g-branden-robinson/retypesetting-mathematics
>=20
> > I expect the answer is not licenses (because I expect redistributing
> > the scanned original will be as bad as generating an apocryphal PDF in
> > terms of licensing).
>=20
> I've opined before that the various aspects of Unix "IP" ownership
> appear to be so complicated and mired in the details of decades-old
> contracts in firms that have changed ownership structures multiple
> times, that legally valid answers to questions like this may not exist.
> Not until a firm that thinks it holds the rights decides it's worth the
> money to pay a bunch of archivists and copyright attorneys to go on a
> snipe hunt.
>=20
> And that decision won't be made unless said firm thinks the probability
> is high that they can recover damages from infringers in excess of their
> costs.  Otherwise the decision simply sets fire to a pile of money.

Hmmmm.

> ...which isn't impossible.  Billionaires do it every day.
>=20
> > I sometimes wondered if I should run the Linux man-pages build system
> > on the sources of Unix manual pages to generate an apocryphal PDF book
> > of Volume 1 of the different Unix systems.  I never ended up doing so
> > for fear of AT&T lawyers (or whoever owns the rights to their manuals
> > today), but I find it would be useful.
>=20
> It's the kind of thing I've thought about doing.  :)
>=20
> If you do, I very much want to know if groff appears to misbehave.

Hmmmmm, I guess I should do it.  I'll take some time, but I'll keep it
in mind for things to do this year.  For some reason, I'm more busy now
only doing free software, than when I had a regular job _and_ also did
free software.  :|


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--lpvhfvg2qeu5jphe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmetwA8ACgkQnowa+77/
2zJ6lQ//STv6Rkooq7D1VxwcQKKlPuGW2qShPWJmb1T/oifacnLAByqnPxZUAq0y
3FG0XX/809hVTJOOSYV4gSRtijIg+YTeHoja3ZOH4e4S3PYwXn5JuseuiXv5mmVL
qhI15JsLlkfrxfrNfcAbXjFeFEQFeg2eQIGUGwptWOBZnBVMTcvDlhbxTECppZ8P
Hm8gfFBxHh35e/I5D3909BRv6mKTzzNUZNoEHn2tgLirEG/9b3dEoBSpa9Hl5Bm8
+sJZ3SqoUQPXPa/vopy3jFeSXk3BDjmOpSIM8Y9l+qB4+q3Nflj8uSA3OVPxEmYI
hlFZdRvYG44y5/azeAUE4rZbzybzXAYs2ueeS5VFPot+6aRWPoUJA7OpnUtL6ymZ
2/4HN65ovezeU6IF2NlvZi1CUgl8WNra1pEo4CG53JyORav1rDyTcmizmZfVsppv
HV6MRBYa2fGCLsepK1DRaq6TfNoouFUfSOEMUfx1DRUpZXbKEv6alGnkBw8gifIV
oPWUEeN7W6HvewucnzQmXrotTd3lGckRqpRMstrNqx5lk+6dBPrpThED/txZ+zAb
sB2y2bPZWYTizZMTr/2OZ5UnKnHdpveukMHpwzU/c8hBdOJXKTjPJvcBdsNVnjM5
tW+/Y1RdqZcvZX3nvDVDTHsWTxzlli27vuee0aH3rqobV5XfJjE=
=Nt5B
-----END PGP SIGNATURE-----

--lpvhfvg2qeu5jphe--

