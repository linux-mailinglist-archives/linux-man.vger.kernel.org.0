Return-Path: <linux-man+bounces-3795-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 796D9B3DBA9
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 10:01:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D829160572
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 08:01:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5001233711;
	Mon,  1 Sep 2025 08:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDHGmzB2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 931E12B9A4
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 08:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756713674; cv=none; b=kRj3f0PG8xbIFTjmHKQloboT2jg4IW/HWVbXuUqR83atA3CvGILxKRPrduZX4TtLQ3FqNFlC+Ikq9oVbvF47UxHM4N//0KMddHqVCAAx/N+c6MknpOaScioq+RV8O0Xd7dS5vBzHCcY02RrN0B1yVfzvzJoHfTEDx2hr30ZOlHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756713674; c=relaxed/simple;
	bh=fVP3tOsn9Y6nluclcznFrmslo6BMu3NOGJ4DgILTBcQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A8dYyh2NPE0rfJHy5ruQjgvNioYGWiv3+F/g4oLtaU56El3dWpKcL4Wj4KaLVah5/ecvze0PwzY/T1zBjrxP19dmV9ql5Mnxs7MGv9K++j0lVKHQu9jwFlm3dRG3J+5N4HpyIkR0JlnP81/itT/UBmqKIGmZSIPGeOBH2iw8AwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDHGmzB2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D47FCC4CEF0;
	Mon,  1 Sep 2025 08:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756713674;
	bh=fVP3tOsn9Y6nluclcznFrmslo6BMu3NOGJ4DgILTBcQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HDHGmzB2nxqnn9Qb2CEMf9DaZ0Pis/lDINa8W2yz1Kc+Hq3wm057qRWV4GO1oJh1P
	 J6g9rcXOfldkcSyB0mBNAMsj0wc9WrGcLgdT3A0IrY03t1noERNfXyHg1gjxgoFAZ5
	 ZmK2LkGaahwKPDlk32a8IZxvFgA8lFai8XeQTrZAJCDApWQnLf6/lZwXGl5ThWzpdO
	 4LxfFy72QrdcJTkEn1y282R5dw6yHwORCpRXA5tVsl/6xDE1RroHr47flqGNknlt7M
	 dodTBuHM5X45ZPVpXEsuNnH8m6OMSBEJoPTHsojknW2T5VgNs0eVg0qVzcvEs1a36V
	 CIrlhgrGcVcfg==
Date: Mon, 1 Sep 2025 10:01:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page crypt.3
Message-ID: <vq3wn54jxttpwmrloroygtizxhzqettwlwsx75efb33b2vz6mr@uu3uhtblkd5r>
References: <aKsmRSS7QJuxhK0o@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kdv2yv6h7selxrem"
Content-Disposition: inline
In-Reply-To: <aKsmRSS7QJuxhK0o@meinfjell.helgefjelltest.de>


--kdv2yv6h7selxrem
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page crypt.3
References: <aKsmRSS7QJuxhK0o@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmRSS7QJuxhK0o@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:37PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    "fail closed"??
>=20
> "The behavior of E<.Nm crypt> on errors isn't well standardized.  Some "
> "implementations simply can't fail (except by crashing the program), othe=
rs "
> "return a null pointer or a fixed string.  Most implementations don't set=
 "
> "E<.Va errno>, but some do.  POSIX specifies returning a null pointer and=
 "
> "setting E<.Va errno>, but it defines only one possible error, E<.Er ENOS=
YS>, "
> "in the case where E<.Nm crypt> is not supported at all.  Some older "
> "applications are not prepared to handle null pointers returned by E<.Nm "
> "crypt>.  The behavior described above for this implementation, setting E=
<.Va "
> "errno> and returning an invalid hash different from E<.Fa setting>, is "
> "chosen to make these applications fail closed when an error occurs."

I don't see any of this text in this page, nor in its git history.
Please check.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--kdv2yv6h7selxrem
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1UsUACgkQ64mZXMKQ
wqnjag//WitQbluOSP4L4wUy1yJcJyeb0sJlU2y90no8azBO29OAjIVkI3AKW5tt
Qi5BmrXgNOpp2f8wKQFlxkNig6SKbWAA+/E2HPL4031Q47+odzKxoxxnbWWrn8sq
E/vEq4ktc6w4DRqW/GE5mHbwsHhcXE6vCIoMF/9oO4+J+G3U3QbJlEF4nT5LHCKJ
QO4zOCiojcVP2dZlO+NT5gQVFDXbdbVJkH0aNQL10Ame9NafusofJGMAJXnnRyPv
JB45gf8v1BxlG7R9iV/GVYxWz7+FnhtTcUfjg+JVmhFIylJm04IlWkpPuVXpdy2S
p0DeGdnCR98MACbmg0h4nUKwp2Y2D/Gdxoj5+DH0CVKJNi4bLVW8VlVp4XZPcaCe
l+wgiBwRlU9FCAfrdbtH0aUD8c8PqCZs/faO2KiTdGCiB8Dq+81Td5llMvCJDHrx
6NS/B2hIII8+COZTOrgbV8R0ZFdiRJM+txIHE01v96DEvO+ayvTSkcJHbaUg3Xik
iXYo12dL5hOqtDH/RXApMpM+RI+tMd552I1Bc9XqlkQLW7//JTbUAAuLYabbH3vr
wVBCdMugRnSF4tkb4WPTr6fm2QoeHHSpQ2DDJMc9JedEYbyq0cJKuu/EYC4SItj9
7qK7K0MIkTQy7sZYDVr78SreqAZ4mq0IqbFnOXfpU+gf6bupcew=
=m2KH
-----END PGP SIGNATURE-----

--kdv2yv6h7selxrem--

