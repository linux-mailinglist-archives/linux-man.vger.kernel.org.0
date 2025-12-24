Return-Path: <linux-man+bounces-4524-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1207ACDCB53
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 16:30:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0EC753004F10
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:30:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C38734DCF4;
	Wed, 24 Dec 2025 15:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LphRX+nP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9034634DCCC
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 15:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766590232; cv=none; b=SjtDmhcOP+zO8DNPekDEbXk2cr8RPOZen7RBqsS1J9LB0EySKJiy7g8BtxOg7f+/d6NjATMrLQWSNt/Qgh7Yb7jyz+bmZW+21jcjUjUVqOIzCkvjuLr7Oc8hwfV8lL8L4nSfXCkPOk6JbpPc2xl2lolW1X7era0Otf+WQil+R4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766590232; c=relaxed/simple;
	bh=rjOE/wGdz3jfClZ55J4TRGSVuc7dxpK35TprlyZVln8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PZkxgP1gkxNAPMex1zUBrpHr4/dg4VOh3yoR/peScVDA8swYd4uqWtxhgcbGueiQuyuPlPRxqXVxZ6HvhNwj+u1ymTmG+7UowxIMQfEOEER3WFaXrvItbSjCiMnWV49WwwjZryA4SOfFP8hvF/kP9OdNQe7LxXtkwXGlVWgSROQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LphRX+nP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A03FC4CEF7;
	Wed, 24 Dec 2025 15:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766590230;
	bh=rjOE/wGdz3jfClZ55J4TRGSVuc7dxpK35TprlyZVln8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LphRX+nPSBgCf75nwQd+sWuheA80xAmXRdxIe7g3ITTfWV5x/yV3ngYE/owcuD+mG
	 k7oxoaCwD7DZDsFOQCPozQRD6S91SKcru34ezpOcPwtv3i8LwJdXZoy3wDCvD4TBBJ
	 JvfVAohAtGyCmt3StWvlwqu6Atnw3zJW6emUtpRNbyal9J/lxsb0Tj87dKJWgEhlnV
	 OookYoNu60UjBXkx8MYFOixekbvGtJejuW25dHpgDLpZ9ybepeX8+VnhD0hhCfz8xb
	 Ilk+hXN2jw8JrB5RjgTKoM/w9x4WCOiJ6Y/KnDWTkinM2vADBdoLIkaFWcQEqB4H02
	 p+UV/75shWgjg==
Date: Wed, 24 Dec 2025 16:30:27 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page isalpha.3
Message-ID: <aUwHAfEUlBqeH172@devuan>
References: <aUv63X1xB-YsQmmo@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gp4s5zbuc6cofxqs"
Content-Disposition: inline
In-Reply-To: <aUv63X1xB-YsQmmo@meinfjell.helgefjelltest.de>


--gp4s5zbuc6cofxqs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page isalpha.3
Message-ID: <aUwHAfEUlBqeH172@devuan>
References: <aUv63X1xB-YsQmmo@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv63X1xB-YsQmmo@meinfjell.helgefjelltest.de>

On Wed, Dec 24, 2025 at 02:38:21PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    I<(isupper(c)\\ ||\\ islower(c))> =E2=86=92 B<(isupper(>I<c>B<)=
 || islower(>I<c>B<))>

This is expected.


Cheers,
Alex

>=20
> "checks for an alphabetic character; in the standard B<\\[dq]C\\[dq]> loc=
ale, "
> "it is equivalent to I<(isupper(c)\\ ||\\ islower(c))>.  In some locales,=
 "
> "there may be additional characters for which B<isalpha>()  is true\\"
> "[em]letters which are neither uppercase nor lowercase."

--=20
<https://www.alejandro-colomar.es>

--gp4s5zbuc6cofxqs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlMBxMACgkQ64mZXMKQ
wqmb1Q//e4zDVphQgDb0PzGHxx6a4D6+wliArMsIZQTE6rUvwDEu0TpJtzvo+Gsj
XBSsYJW88+ovGv0vzy56Phm1IuE0+N9WxiGDW73Nc6CvNTO6fNQksPsF1aGqNyGo
HDe2M4IMT9mBcuDUJs/RMJQaI2qF5tc0b/DK6DsicZTz8A2QN3tHqh+U4VBB9iME
wvHSI38lfk+lg6+LCrlFwQW6FdrDcNhHiQeQ4oWByIbuurDDDNZ6bZYb9mjQ0rs4
o5QYylNlXkIv6WiOeRG/gjPJnzZhvZoLocj36AXRlnB+mle/KyNO9FSPsTj0SYR8
MgtCDNr7KnouMdgPCMhnsRE3CcM4wD65D8nx89GjAgzZgzz7ROvhSNoUYMet1y0S
dkH2ci9URPzii+n1NxkZ2Dd4fUZL1PxL87aAQ6MGul8jLCj4y3awpCZNIXLcDqMy
XaYgrBGVgNJk7VI6lwkaLnOf/qQLHPQgw+NGptCWG539qW2SwlgVTPVu6d8GWRTt
0wAwT71VsQ0M4ejXgsZI+QWyXwrl/a40C0U3kqES5WgeRgTRE6atdfOXveo7u/vY
cuohRN4Y6hKRsN7iu+/pJnBptNy/5f4LbCjxndIu4BLzYxDvF3Kvqk2su8/7tsgW
wbRaIeHMnldMqaoBerEIl+JKGICah7wNKFAliC5vLmE3nVgyIL4=
=Nsrj
-----END PGP SIGNATURE-----

--gp4s5zbuc6cofxqs--

