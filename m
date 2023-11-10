Return-Path: <linux-man+bounces-10-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 924AD7E7F23
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:50:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3D391C20BCF
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 17:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D43933D98A;
	Fri, 10 Nov 2023 17:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcT0U7gC"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A77E3D3B1
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 17:47:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDC79311B0
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 03:47:14 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02673C433C9;
	Fri, 10 Nov 2023 11:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699616834;
	bh=ojSL7KtASLXtKuu1U2chdIzJY2uJovzIuVRZ2h9j5YQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WcT0U7gCsLMU8auqBhyZq9v8KVwfgp9hmHueZq8G1Nd5pO7wAuapm7xHsWYhH89v6
	 6tX9LsVQehPykgLq5+2Dd2ixhf1J6M0ihi3AiH0re+U1r9Qi2em6MzzDSjnzXbfO4d
	 CCJEsudFw+aqwy+/vGOOAeBG0lL95uNxhbNnjw/0HxGR600TbARU3gkVjXycnmumq+
	 ChwsbiyqUtSWwfVZQn0fxpgSf0j95E4WLUFGC/bqOi0QpNLXpepwN0QDwwn8l2YrvO
	 agXX4y/Hmby1Qq66aRmeOoXrEvElT5OScCLCwQmQ8O2vdqhtBOxMGE+Akq58MWbTfp
	 +qHD0RZ+VsbUw==
Date: Fri, 10 Nov 2023 12:47:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZU4YPnKxzYnlDlTI@debian>
References: <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org>
 <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu>
 <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
 <ZU4OgiVSyM98EHVN@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4GP2t+HV7BOtNDkN"
Content-Disposition: inline
In-Reply-To: <ZU4OgiVSyM98EHVN@debian>


--4GP2t+HV7BOtNDkN
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Nov 2023 12:47:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated

On Fri, Nov 10, 2023 at 12:05:31PM +0100, Alejandro Colomar wrote:
> Hi Paul,
>=20
> On Thu, Nov 09, 2023 at 09:36:43PM -0800, Paul Eggert wrote:
> > On 2023-11-09 15:48, Alejandro Colomar wrote:
> > > I'd then just use strlen(3)+strcpy(3), avoiding
> > > strncpy(3).
>=20
> Heh, brain fart on my side.
>=20
> >=20
> > But that is vulnerable to the same denial-of-service attack that strlcp=
y is
> > vulnerable to. You'd need strnlen+strcpy instead.
> >=20
> > The strncpy approach I suggested is simpler, and (though this doesn't m=
atter
>=20
> Yeah, although you can always wrap strnlen(3)+memcpy(3) in a strxcpy()
> inline function and have it even simpler.
>=20
> Rewriting the strxcpy() wrapper I wrote the other day to not be
> vulnerable to DoS, and hoping I get it right today.
>=20
> [[nodiscard]]
> inline ssize_t
> strxcpy(char *restrict dst, const char *restrict src, size_t dsize)
> {
> 	size_t  slen;
>=20
> 	slen =3D strnlen(src, dsize);
> 	if (slen >=3D dsize)

Oops:  s/>=3D/=3D=3D/

> 		return -1;
>=20
> 	memcpy(dst, src, slen + 1);
>=20
> 	return slen;
> }
>=20
> Hopefully, it won't be so bad in terms of performance.  And it is still
> protected by fortification of memcpy(3).  And thanks to [[nodiscard]],
> it should be hard to misuse.
>=20
> > much in practice) is typically significantly faster than strnlen+strcpy=
 in
> > the typical case where the destination is a small fixed-size buffer.
> >=20
> > Although strncpy is not a good design, it's often simpler or faster or =
safer
> > than later "improvements".
>=20
> Cheers,
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--4GP2t+HV7BOtNDkN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVOGD4ACgkQnowa+77/
2zITzA//RB694LXBS3PP23zl6Mp3WBoWK0KcE8Nx3CUfglvsmjMwcJON4qIHb/Jc
C2UNOLnvLCtpXNOBqt9VoxupxZmaG/dlXwuNj66dxIDd0/hmBP+7StqIgzwK2msr
wXMREO5PCuaKywZA9rxxm7jGIA2yCqwDtxbcB1y7p6/CkoL89rjGUVFkdu3brC6i
Ht9vyuIiSyAK/FtRxmXD2MAaGe7PI19br6AM31XV4CA5QQsaA9e4/uHv7Nq3wEQe
LDfBPTLpZqWjc2wfKMnMSwADyzXjnPQgQ2sRfI7L4dNEkFyNst/9Aqwsf3xs8XIw
F+/lAlaChjDND0JI1snB1yBmC/xoT/ns5AcJ24v5sjmZEuYwLeTZFcapicEl/9bB
13b5OhUQxqJtSmwDlPxMj4jgYDbBfOj9d/VOVbjPXM6ZwgmhFKyeYQOtFl7TW7nk
qPsng4+YvkZhi+PnI+yhZHp+WI6Pz2e+ZGQAoTCWVPAJrLWdktOXRsCjTrp8viJW
zL/ojCbdv3+sUPc1mwQK/5E3yi4jls3qZ8WnMhfQ2sr2W1+IpBTjCrLPv+t5HxgZ
TUvhYcvjj6iZZ/NHYtuzStlMrJntZsHttH/nvj/9+PSKP59F25ev/OG0DOZ6W5Hj
/kOj2y+UDt6VNbmQmb9SqRk9Xoy745TVPuPXdtoQHpB6/rvFg+w=
=FoG8
-----END PGP SIGNATURE-----

--4GP2t+HV7BOtNDkN--

