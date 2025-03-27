Return-Path: <linux-man+bounces-2657-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE57A73A5F
	for <lists+linux-man@lfdr.de>; Thu, 27 Mar 2025 18:28:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 16B367A3015
	for <lists+linux-man@lfdr.de>; Thu, 27 Mar 2025 17:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DE0821507E;
	Thu, 27 Mar 2025 17:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jp0d22Az"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42007214813
	for <linux-man@vger.kernel.org>; Thu, 27 Mar 2025 17:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743096510; cv=none; b=tRxzI6qR9xn1ojq3/C9pqD7HjH6yLg/z69g2QPYVqOhf/CAT3chw6m7qIlTEejMK897d0yMRAJ2jOBonaTKMLaeS6CXWsHO0lRBCve86coSu6XrK41Yzpub9iRl7pD2V5GscTsSpDB1nloKYOmWNVrDpaFdYfDwZ0+3MK0fTjeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743096510; c=relaxed/simple;
	bh=BPHRdgAiJdtSdrXhuD05Sq78HC94DUTKxXChm7F7f64=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ntrE0UAF7MpeggNcXUHnVYxcScYL549UlrwknUao6XfyJ/+QSFTy7cwguiSG1CRDg6xYByxnFy9IPZ173BRKOLqxlm9KQEr082vGAWAl2ftrN9rSY3cYXrYtMnp/m0hiJ0oZcbOWeWvP4ZtB13+amcjODFGx0UlYU5hgJiT2sFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jp0d22Az; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3296C4CEDD;
	Thu, 27 Mar 2025 17:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743096509;
	bh=BPHRdgAiJdtSdrXhuD05Sq78HC94DUTKxXChm7F7f64=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jp0d22AzL2Ha1Ez88wnYndSvQHWNJQJ0iK115JOGwjlxLzAECr79JmCsEMNDBp8dX
	 c4ry4roiGp6pLEaHJNHlUGsX6VVNXXKkMfxAqXM9NhqK7jXzX7IHzHRs7w820Pe/nz
	 AqL1DWD1Zf4uCSJn60C1CgJqmZxQ7Ef9meONlrq8/LkuKEj5vwMiMQcO+Iqf7AhmNC
	 rTw58uXoOvJSKYwdzzVXYlxRAA1HWQz04HFQdQcA2twaA2evSBB3udXevykT0cRhRJ
	 01ngjn/JhLpZ8dkv+cnVeu+mbZjOzGr2gOSDd1Q1iEUlrXp7H0M4NTjGNFBjnNFu+v
	 BBbLzkNCd8oow==
Date: Thu, 27 Mar 2025 18:28:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Peter Radisson <radisson97@web.de>
Cc: linux-man@vger.kernel.org, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: fix: recvfrom() error handling
Message-ID: <7cf47smc7ntz2k4rkekbuzehzymi3fnvwybsrn42pqgptm75wg@6s5b6mrwkhfv>
References: <5449c846-e9ff-4c4c-b161-485da08a578b@web.de>
 <ryuuydac7ybjw4pxiqzrjokcwvds3a6ezbjdi6h5fbz7zbr5d7@cqk5eio4lyrh>
 <86f7516b-ba85-4737-9a63-951aabf3f681@web.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="khlnmy62yoxmconl"
Content-Disposition: inline
In-Reply-To: <86f7516b-ba85-4737-9a63-951aabf3f681@web.de>


--khlnmy62yoxmconl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Peter Radisson <radisson97@web.de>
Cc: linux-man@vger.kernel.org, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: fix: recvfrom() error handling
References: <5449c846-e9ff-4c4c-b161-485da08a578b@web.de>
 <ryuuydac7ybjw4pxiqzrjokcwvds3a6ezbjdi6h5fbz7zbr5d7@cqk5eio4lyrh>
 <86f7516b-ba85-4737-9a63-951aabf3f681@web.de>
MIME-Version: 1.0
In-Reply-To: <86f7516b-ba85-4737-9a63-951aabf3f681@web.de>

On Thu, Mar 27, 2025 at 05:35:21PM +0100, Peter Radisson wrote:
> V2:
> * removed 1 empty line
> * and changed wording to "content of" to make clear *addrlen is used.
>=20
> To replicate the problem:
>=20
> // intended use
> struct sockaddr_in  sock_out;
> int slen=3Dsizeof(sock_out); //socklen_t
> recv_len =3D recvfrom(s, buf, BUFLEN, 0, (struct sockaddr *) &sock_out,
> &slen);
>=20
> // error case
> struct sockaddr_in  sock_out;
> int slen=3D1;
> recv_len =3D recvfrom(s, buf, BUFLEN, 0, (struct sockaddr *) &sock_out,
> &slen);
>=20
> funfact: this escapes the error handling in the linux kernel (no crash)
> set slen=3D-1 and you get EINVAL.
>=20
> hope that helps.
>=20
> From 056b50b50dca9f08d203d1d56fdcb6e84d228dba Mon Sep 17 00:00:00 2001
> From: Peter Radisson <--show-origin>
> Date: Thu, 27 Mar 2025 17:05:51 +0100
> Subject: [PATCH] Be more verbose about recvfrom(2) error handling
>=20
> Signed-off-by: Peter Radisson <--show-origin>
> ---
>  man2/recv.2 | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>=20
> diff --git a/man2/recv.2 b/man2/recv.2
> index 2659957a6..413c42271 100644
> --- a/man2/recv.2
> +++ b/man2/recv.2
> @@ -293,6 +293,22 @@ The returned address is truncated if the buffer
> provided is too small;
>  in this case,
>  .I addrlen
>  will return a value greater than was supplied to the call.
> +If
> +.I src_addr
> +is NULL
> +.I addrlen
> +will be ignored.
> +If
> +.I src_addr
> +is not NULL and the content of
> +.I addrlen
> +is less than null the call will return with

Hi Peter,

An integer cannot be compared to null.  Do you mean zero?  You could
rewrite it as

and
=2EI addrlen
is negative, ...


Cheers,
Alex

> +.IR EINVAL .
> +If
> +.I addrlen
> +is less than sizeof struct sockaddr_in the src_addr will
> +not be modified.
> +
>  .PP
>  If the caller is not interested in the source address,
>  .I src_addr
> --
> 2.35.3
>=20
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--khlnmy62yoxmconl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmflirMACgkQ64mZXMKQ
wqkeiA//d4ZCREHxnZ6xy+Dn9SylWT3BvUTt/RBmMBf/A6MaKp7qtqh3ZX0MItpB
69XCXbHqPJWLKn6mwSPCeenvH1LtGLueGpOTftYul/yOJO8M7/Jmkg+z5xAwowYU
PWSpVferxgbn4vrzKaaInB9HjsoBt9EeaUJsbSo+v6CZKKFs4a2BRh0uJ9Qqr0SC
tE1MVA3KeSq8qwWIkDraARBY+85Ua0AWQp9mK+O9ShLZ3J4/kWQH0y5NbOgeM+jj
XOmUYig+s4StYqbBDIlQbd/6sxX7UhQXTUtLWDWs1Q7z43BSNQQ/BaOXwnXr79eo
3TnRi5/VpIzswAWNMhxzEZ7xhHoR7RovUCOE6Rr6b2QAA/47CitmHO8Vp3K6IT95
lh/8oFVn+JpaH5Ve3Q3/0wTzxwylgKoXTeLy8BJD8BzX2+RLifl+CCbeHTWbNEvq
tT14oZuKD+dDKDJS7DoftNdqWQ6Qw7hymWNOLjd12Pmig0b4/qVg8Hwedvfq8EAQ
NRQVmG7fi7FqrppyP5EDVeIaZ65rcPRl0SdK1rR2Vl34dKizCKmztkDVaWfaNbdH
jEpdlVnImekriWPsW4iOQqGzfkJDseinFcHjQKUMsH4rU4z6KD/lmoGAi3F7rat6
gOsquFET7f6VSQkT9HJ3dVNmYLfRDWKMLD/m/b6ASFgxEajlRNQ=
=sai2
-----END PGP SIGNATURE-----

--khlnmy62yoxmconl--

