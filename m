Return-Path: <linux-man+bounces-684-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B0C887ED7
	for <lists+linux-man@lfdr.de>; Sun, 24 Mar 2024 21:15:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5E48DB20AAA
	for <lists+linux-man@lfdr.de>; Sun, 24 Mar 2024 20:15:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5451E8BFB;
	Sun, 24 Mar 2024 20:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfelWekn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D237FC02;
	Sun, 24 Mar 2024 20:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711311328; cv=none; b=OO8K4YI8VNLn9Zpw4E5q5Ri9KLQ+U8EoQtjWt3fwl8pKSYDgD7n74kBCQLBCLtFrHyWTNLGhk1lmFv89wR0Tu8rab1XjhGXBCpxP2BNbvbzxuuAdotzkYRxpbmuj1PqaMzzyCNsK7WvXBCfQn9YQ2DnLMXKSI9Jzii/1wLiGjWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711311328; c=relaxed/simple;
	bh=NksRtom6VH+F0N1jaXNdS79Zvo5Z8laERBCwgx1tIg4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=otyZ65wsmlh/TmeJtqXBzohPyOH1ii1rXLcZNlW8avz/EH1+Q1X7s2QBpVFA4x3YVT4x2iIH6kJTzf0Wbpmpqez+oHKNNFpXve+s6S2jsTqYBgbNeiWBQU7Bpx6BZeCRlqAJWSjwl2kXWJbqxIOIbLneBJfhrnNKBjQoPNDUbBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfelWekn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 908FDC433F1;
	Sun, 24 Mar 2024 20:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711311327;
	bh=NksRtom6VH+F0N1jaXNdS79Zvo5Z8laERBCwgx1tIg4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rfelWeknHYM6UyAikegyjDZdxW7bfvfZudNo//F3/MhVe7GuSonpek002dBLcDlNv
	 RAJ8bckBWzou0JjUKm7e/sDIZSVb3i0538mFgs02n41j7Xv+pZzypNKA/jsEjc5Ggx
	 UGlekuQxAyCzXzFxX/HjGeTc5OIOVKWaKZTUhaapXiuTsNA+nydDA7CIZXgYc0WQKh
	 NcCPsmG4Ue7Jaub/ze4xLm2gUQWR1Rw6v3b2C7qff/A2ndCGXxcIjMxTXbDN3ohfNS
	 rOKwsqa3aZlSgLXgaoXjvb2SkHWnsf/gfrNi5TG11V4h6hHxZ5jY/M6V949zBZOVRb
	 seYtw1DQWQgqQ==
Date: Sun, 24 Mar 2024 21:15:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alexis Wilke <alexis@m2osw.com>
Cc: linux-man@vger.kernel.org, netdev@vger.kernel.org
Subject: re-listen(2) (was: <linux-man@vger.kernel.org>)
Message-ID: <ZgCJ3HtrAVViosBv@debian>
References: <59f9ef34-e9d9-41d5-8f97-2c070532a7d0@m2osw.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SDcLcTAJUisZp/9K"
Content-Disposition: inline
In-Reply-To: <59f9ef34-e9d9-41d5-8f97-2c070532a7d0@m2osw.com>


--SDcLcTAJUisZp/9K
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 24 Mar 2024 21:15:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alexis Wilke <alexis@m2osw.com>
Cc: linux-man@vger.kernel.org, netdev@vger.kernel.org
Subject: re-listen(2) (was: <linux-man@vger.kernel.org>)

Hi Alexis,

I've fixed the subject, and CC.  You didn't send the mail to linux-man@.

I've also CCd netdev@, since they probably know better.

On Sun, Mar 24, 2024 at 10:16:02AM -0700, Alexis Wilke wrote:
> Hi Alejandro,
>=20
> I was looking at changing the "backlog" of a listen(2) call and could not
> find any documentation on how to do so.
>=20
> Clearly, it is possible under Linux simply by calling listen(2) again.
> However, the documentation does not mention the possibility.

Hmm, I see that POSIX doesn't specify either.

I didn't find it documented in linux.git/Documentation/ either (but I
only had a quick look; maybe it's there).

> We see on this stackoverflow post that it is how Nginx does it (see answe=
r).

Nginx is known to abuse implementation details, and one shouldn't
necessarily trust what it does to be public API.

However, yeah, probably the kernel doesn't want to break Nginx, so maybe
we need to document it.  I'm not sure if this is a violation of POSIX,
though.  Maybe someone from netdev@ can confirm?

> https://stackoverflow.com/questions/64050281/can-backlog-value-that-is-pa=
ssed-to-listen-call-be-modified-later-on-without-c
>=20
> I would propose to either add a new paragraph or add one sentence to the
> existing "backlog" paragraph to mention the ability.
>=20
> Here is the existing paragraph:
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 The backlog argument defines the max=
imum length to which the
> =C2=A0 =C2=A0 =C2=A0=C2=A0 queue of pending connections for sockfd may gr=
ow. If a connection
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 request=C2=A0 arrives=C2=A0 when the=
 queue is full, the client may receive an
> error
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 with an indication of ECONNREFUSED o=
r, if the underlying
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 protocol supports retransmission, th=
e request may be ignored so
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 that a later reattempt at connection=
 succeeds.
>=20
> What I propose is to add the following sentence to that paragraph:
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 It is possible to call listen() agai=
n to change the the size of the
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 backlog queue.

Let's see what netdev@ says.

Have a lovely night!
Alex

>=20
> Thank you.
> Alexis
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--SDcLcTAJUisZp/9K
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYAidYACgkQnowa+77/
2zKASBAAh2gJ9w38FNpRbgksVR0nefRPZKthGzTTQcKV0rDR1H57kHj6NVAQF7nd
A3rS9f2GZY27tMqwenjHvOV4uWe3PrXvipQy+QGR6uGcATMx7PuE9cgR+7x3uMx5
wLbK8C0GhiJsHDqR5RlfZIF4FIzosSKi2pYV7BucP8hNlxJ075Mc6P4NJ4Cx7k49
iQlGV0DSiJkA6cCDgwnkiAEglTTeumB6ipOYcH+KUu6Oh89G4+UmRaSH2cF6lDxq
43YeCp56sUgob8fH25jOy1pdqbW4b53R/115Uj4FNgJ5lk6wjhlQ5ZQXX4v0dPBw
L8IaD5hy4L5lvZM4QlEogRXVwQQ6+UEdkEYr7sKEMrP33tV7zMkLDy6s/h/JAqv8
QAB12+3oSuCebyX1GGJw/xs30pV3sAmENl5T73U5JnQYoU9l9l9sbiSPP7puNNDU
xMEg28tOTeEAclu75YYtR6lFqgySio5LurdDlSERPSv5E0vVVkXvKSUmepdGwOjR
CGWdjV+h0oL6oBEqfCXjzGNN5l6CXeux9/bN1uGGQhBIo64soifBRc2ZE3GUh107
rJbhfaiQpROPhWU4+pZb8AGJ8f1bQjwCdMnsgKTLGGmw+FuARTXvuHx9hjazZmCp
q5M2y3bvWWEaVgRINQJacyeQ/uEAquvFuTo4fpt0Usp4wWWv8Wk=
=qUmt
-----END PGP SIGNATURE-----

--SDcLcTAJUisZp/9K--

