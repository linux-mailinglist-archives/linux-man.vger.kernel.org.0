Return-Path: <linux-man+bounces-1699-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB6995E2FB
	for <lists+linux-man@lfdr.de>; Sun, 25 Aug 2024 12:48:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0BD6AB212BB
	for <lists+linux-man@lfdr.de>; Sun, 25 Aug 2024 10:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EF7313A89A;
	Sun, 25 Aug 2024 10:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7Lu4di/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2DD13D882
	for <linux-man@vger.kernel.org>; Sun, 25 Aug 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724582897; cv=none; b=kHpWvsvvmxChnuY5q92hi1JLSp7EG25xPHtsdCPHg87I0ZHY/X9l2oaRUxVuQsHdSoihD13NYYSLFhQHf+DPq76tVZW8SoL94K82em11WuP9aXZrOh/CuxIV6MUse8ao81V2q72ysTIdyJEzJdDT296HdBcKCojAkvMuGeQhZZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724582897; c=relaxed/simple;
	bh=oL7RKUtDSc4FsxIcExvtroS6spJ1TYzpiZev2x9u6TA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N9QMpvElt1ckD4YLX3UD1czn3RNPbqb/QN5kqk5eBrPKBC9DMuCDeqvt6SKkX6J0sJjAk//bKgbLK7WIkAMlxwzcL3pNeBn+QM6UdSUEHhcf8I/ooE8tmBXY+84n90iqU8FUA8RsGdoadCLhfQtWomh8QcipL0nubO8ZiFzdaGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7Lu4di/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28ED6C32782;
	Sun, 25 Aug 2024 10:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724582896;
	bh=oL7RKUtDSc4FsxIcExvtroS6spJ1TYzpiZev2x9u6TA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t7Lu4di//4RLlxjQlWCyMHWOAI9DT1lOL74KmtXOyp67eWMkyhplV1aqn+YVDyqw0
	 r7xVGZogPFExSYY60LQRcUk3vUhRQwp+Ix18Rt6zgHDdZD+d+WqEsWSc+E0xuL4lLY
	 MzC+Y5to14n1rGoAOf+YLSumRg9DyQ3XdPgTZrVA3P6Ek5bmWJpbtOow+pRe6Ws+zV
	 TNGZO2JGi302/SyPzegAyO2oRyhbJTpANGDK7a67/2TwVylSEcfOvkEJHV/ONHQxum
	 yzE74AIHQLTI8Yiqn7AlQhU6pgJYO0ZkI9qGjVFzJ83CaTOQ89L3jImw/6WP2fVs8q
	 8U/obENrvDSWw==
Date: Sun, 25 Aug 2024 12:48:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Greg Minshall <minshall@umich.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: getaddrinfo_a man page: add notification example?
Message-ID: <4vdd7x3bdhpomg5epf4huwbdsytvgd2qqgohyavpsjmqgwperv@tx2ytsol5ymv>
References: <728184.1724230207@archlinux>
 <ournrsj2l2cym7kbz5nl65mgtuuuqmd62i5unlkxr3kfduhq65@ajz4sjya43hj>
 <863308.1724581040@archlinux>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ps7temgcd55trnr3"
Content-Disposition: inline
In-Reply-To: <863308.1724581040@archlinux>


--ps7temgcd55trnr3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Greg Minshall <minshall@umich.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: getaddrinfo_a man page: add notification example?
References: <728184.1724230207@archlinux>
 <ournrsj2l2cym7kbz5nl65mgtuuuqmd62i5unlkxr3kfduhq65@ajz4sjya43hj>
 <863308.1724581040@archlinux>
MIME-Version: 1.0
In-Reply-To: <863308.1724581040@archlinux>

On Sun, Aug 25, 2024 at 01:17:20PM GMT, Greg Minshall wrote:
> Alejandro,

Hi Greg,

> here is a shar of an extension of the current example to one that
> includes the ability to receive notifications.  (note, this is just the
> source, *not* embedded in the man page.)  let me know if you'd like it
> packaged differently.

Would you mind sending the extracted files?  That way I can comment on
those directly.

Thanks,
Alex

>=20
> one design choice i made was to have the callback handlers print out a
> message announcing themselves, and then call `list_requests` to show the
> status.  they could not announce themselves, or not call
> `list_requests`, but presumably should do at least one (otherwise, how's
> the user to know anything happened?).  i've chosen to do both.
>=20
> anyway, any comments or requests you'd like me to change, please let me
> know.  (feel free to change whatever you or anyone else would like to
> change -- you own it!)
>=20
> if there are any licensing issues and you need me to sign a release, let
> me know.
>=20
> again, thanks for all the man pages.
>=20
> cheers, Greg
>=20



--=20
<https://www.alejandro-colomar.es/>

--ps7temgcd55trnr3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbLC+0ACgkQnowa+77/
2zL7Zg//dsv9/Jsbk2oftikZdcdw0qyiNPB36XE9OlIIqMY+/0Nftd5Xc2fDJt+i
dCXxKYGYIbPfAL5M9gy5VznDi7VHhjQB4eIjgX6NszX4SQq3I5XhhQY8rtq7me0V
AU28O7tVl8G2EaguR00iVy5RaGtxtXdPf7aS5GJJkWMkIi4BDvRpi5znfxrI4j/G
e83SVFAjBhPAfpsj41lRkiMuW5xawmGqYljCaBb29Ao5K8zT2UZoEHyV2q85ECwy
MxV7NniZ5hKemXbZ7p8fXa4MDLYxpPgqw/gy4pqf0l9Aw08lixqAquz3ExJDhnTn
zHjpPbvnj4CAjfJ79+rQxEWAqGaePM39fKMbEvfg4qfLxssg2sCFfH26xn+as6fp
APvRqnZIdGc+ZXfmKDvdb5t8fsbRBvAbdFWqVV3ltu66x3cei2kgtrsQHLywkv+z
JN/FZRzvFNZeV/lSz3wpl6uQD9HyXNiqmqmQllSV6Y3lEA/a1sCVSGXHiIqogPxN
/F70w3vWO1aIoIlXQA6bdrzKpQv5v3HBtcVO0vhTknEN0b3CTnE7dgLdRwP5U0CD
FVBCh7M0ZtXi1Ha7Fgl2TCklGCCLqJnExDH11r7Ro943OIWzPPOEX5GP8O4t7FWc
nhDiibJdrpYt7HUTs9PszJtvybf0aDcX3loDo6vETsTFRsjFXCA=
=atuc
-----END PGP SIGNATURE-----

--ps7temgcd55trnr3--

