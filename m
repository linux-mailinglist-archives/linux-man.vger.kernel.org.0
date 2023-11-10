Return-Path: <linux-man+bounces-11-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4335C7E7F25
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:50:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F086E281A83
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 17:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1FF3D991;
	Fri, 10 Nov 2023 17:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKP1J1+p"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD543D3B3
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 17:47:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC80B2B78E
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 03:05:42 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 390B8C433C7;
	Fri, 10 Nov 2023 11:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699614342;
	bh=93pgmRVJc07oxll/QrE+FIJFHMoJdtUJ2+hKs4uUn54=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MKP1J1+paU/vAEc77I+J0es5mMZun11DM1hDMYcnfglyaYvllDTS0Li/3ec+gVzs/
	 HiXjdiDQZ9H7PrTJaaUQPSxCE2X6uelGbx4v8CxR+MGtFLrwk/5yILH2ux0AFxxxiH
	 HZFeByvxIDEu6MPWf3wmutz3p6qe2g39peSiZugufQtg9omyr7vJB/Mm4KmNeUREo2
	 oZTZNneX9sAkjnua5eUfrNpAGV/cPe+Yxxomm4jVlN1FsmN54dJj6VIv7F2jxTUeBP
	 83Ev7Q130XO7vfVxjO8D9ANIgRBkaWKMbbu4CQeqiUwJGkJGxARhJ/wne8ADsuaEpW
	 aTAOw5lIQ9c0g==
Date: Fri, 10 Nov 2023 12:05:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZU4OgiVSyM98EHVN@debian>
References: <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org>
 <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu>
 <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RoZIyWImXD3bVNqn"
Content-Disposition: inline
In-Reply-To: <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>


--RoZIyWImXD3bVNqn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Nov 2023 12:05:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Paul,

On Thu, Nov 09, 2023 at 09:36:43PM -0800, Paul Eggert wrote:
> On 2023-11-09 15:48, Alejandro Colomar wrote:
> > I'd then just use strlen(3)+strcpy(3), avoiding
> > strncpy(3).

Heh, brain fart on my side.

>=20
> But that is vulnerable to the same denial-of-service attack that strlcpy =
is
> vulnerable to. You'd need strnlen+strcpy instead.
>=20
> The strncpy approach I suggested is simpler, and (though this doesn't mat=
ter

Yeah, although you can always wrap strnlen(3)+memcpy(3) in a strxcpy()
inline function and have it even simpler.

Rewriting the strxcpy() wrapper I wrote the other day to not be
vulnerable to DoS, and hoping I get it right today.

[[nodiscard]]
inline ssize_t
strxcpy(char *restrict dst, const char *restrict src, size_t dsize)
{
	size_t  slen;

	slen =3D strnlen(src, dsize);
	if (slen >=3D dsize)
		return -1;

	memcpy(dst, src, slen + 1);

	return slen;
}

Hopefully, it won't be so bad in terms of performance.  And it is still
protected by fortification of memcpy(3).  And thanks to [[nodiscard]],
it should be hard to misuse.

> much in practice) is typically significantly faster than strnlen+strcpy in
> the typical case where the destination is a small fixed-size buffer.
>=20
> Although strncpy is not a good design, it's often simpler or faster or sa=
fer
> than later "improvements".

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--RoZIyWImXD3bVNqn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVODnsACgkQnowa+77/
2zKdBA//Slh4XFwUaBhhONl1FjH7QbYtC/Wso5sV5One/taLu2JqcJWtI/uODqPI
ZyZtwANYX+ptJOp2qCb0Fb3sfX+0pJ5l7tM5GfPl1dg1kqvdzlFt4iwSkpXPM2jQ
veNEUbBjerF90F2RqiKlu2nMEiP5tq2aDTTZoEgxfjpd6Cv7TeBlOFYOmD9N2+aC
qFE440Osn3qVIgTwoPJBJeRbR9TVjpBDPrbbAK0eTdihF1E3TLttS6dLpk+/A92I
7FGCsUodW7UMGTLjlBMxcoh15UZ5zHhLDyRuVPS9U6vBfCe4DKUBPFNHtXTVoAKK
GKvA3fg2vaPaggbiG2YJyFeenSvJ+5TlJGgREXeEj1//58HkOcAuC/VbjMNgKHCE
E3Y+b2LwoZNW1kb/Xj0ulKD5+VzOglFVTz/j27QT8kwr4CIHwZKOz81+PQoRC6sZ
FDqKMKcRlPaEn38lc1BX6FzOSKXAXv6Srr9lZliBtq5E6OqjE/hHnWeoxgSpL8E4
HCo+uekM6LHsKZjMg5ixPr46DpYMsMe2px/u8tqGicx+nJ1NZg5COTkC4HBpCC61
eYY8clvNMmzaNfaeQJnfhEeU4S908FfpM4tHGTYTmyMdSgoMKyLC9oL/PpDYAS4z
ATy/ZotNKAoSwfUbT2Ivc52uWOdpqITp65kkfkctL2YI79MMSeQ=
=s83K
-----END PGP SIGNATURE-----

--RoZIyWImXD3bVNqn--

