Return-Path: <linux-man+bounces-4540-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B5DCDDCDF
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:04:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 57DC03001C02
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:04:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B21D25FA05;
	Thu, 25 Dec 2025 13:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsbmfcEQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19DA23BCF7
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766667863; cv=none; b=BOM4l8it9neIKCYtA/1sSC/oqXukQJ09Q7VX8IumJyQ4jAHGqlu1fHkhGDQQzj6+FR+T4Mn75TXgdf5ZMWBsACYTtNZoogLyPN3fZoo9Mi6qZWTN+5qpSo9RY1lNpLPkxMT0CzwqVoKx9jK1XOGpNe4Mxt2TRwHwaigwtqdgfV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766667863; c=relaxed/simple;
	bh=L0J0JZCTjN82xfXz0chEunad8ubTi8MuMHwndT0R2sQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=usCkVN0VhTu8MCv/t3s2mBshj/ACHIu+FAaJ0jqDyjGtXw7WVutdOuaal/ULCQwUgomDdv6BOVKtbx+Amj8SO6v2Baz1W2jt1z8Pjx2AHeUg+tn9/rdWaJbD9iPz2yccCE1J/EQVjXv40UUvC1lG3GboIFuWWwz4iMFPGQV6ma8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsbmfcEQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05C64C4CEF1;
	Thu, 25 Dec 2025 13:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766667862;
	bh=L0J0JZCTjN82xfXz0chEunad8ubTi8MuMHwndT0R2sQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TsbmfcEQ1V5p1z5jt6sxWGB38HzEMH+X2mGYdas0QXTu1LmAcPqIgtEiQGym22fbR
	 4EF+Ak+IawfPsQfiH/NEmLuTewkyTgm14h8XNMDmJHP5N4uTXPw+s0PiYd3Nf2HkrO
	 wTfvmJOvcycM82ra1a2lGpIpZvKifD0YT8bwJVgKzfK37kqYPYnOQHARqr5dAvOaOs
	 sXj6GL/R484sl70K3x1iSm78WAlAzdgAkdXkWiGI9qFgrLLEtE4glKRAIyD3GzQeEM
	 8cGvnS/pf3biKH3DGPfM4wfGjj0kG6bvs2AftTiX7acI62iLn+UAJfX7voNYu6tWjG
	 UK1yXRLB+82xw==
Date: Thu, 25 Dec 2025 14:04:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  sysfs.5
Message-ID: <aU02JAjEEwd5k2EB@devuan>
References: <aUzjYZg-PRZ1N30c@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pqaksodoxc74hbeq"
Content-Disposition: inline
In-Reply-To: <aUzjYZg-PRZ1N30c@meinfjell.helgefjelltest.de>


--pqaksodoxc74hbeq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  sysfs.5
Message-ID: <aU02JAjEEwd5k2EB@devuan>
References: <aUzjYZg-PRZ1N30c@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUzjYZg-PRZ1N30c@meinfjell.helgefjelltest.de>

Hi Helge,

On Thu, Dec 25, 2025 at 07:10:25AM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     Documentation/trace/ftrace.txt =E2=86=92 Documentation/trace/f=
trace.rst

Thanks!  I've updated many references to linux.git/Documentation/ in the
following commit:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D1=
5700d018db46abb08acabbcda4689e828fe435d>


Have a lovely day!
Alex

>=20
> "Mount point for the I<tracefs> filesystem used by the kernel's I<ftrace>=
 "
> "facility.  (For information on I<ftrace>, see the kernel source file "
> "I<Documentation/trace/ftrace.txt>.)"
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es>

--pqaksodoxc74hbeq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNNlMACgkQ64mZXMKQ
wqlOAw/+PFXgax4EpUDbYB8hpAnQxBPvpH76o3GwtpA+kpS12nvp7t53Vop+RzMH
c3XtTjDTosRynhFvMg3K9W3Q6HERgL9dw3laVLvXc729j8+v22flrHBmqBCXcAnq
H7xlhrQLmDVsfcx7dkICKK7ZINARK7HtaqOP/rZH1r3MvLjRGRoZZjB5nQMfTRJs
0etIyAw9zNv6O4cOyplt8mkR6TE01bRYcb8Gw/ybcR7+LI8PSQv5kl8BVO3QmsEA
VAfuSzD0SVF4vO/rtKjX7E7qquksvVubZqcQ7iPzAFOqZ1sdq9KWEddMGGT/52C9
wWz4MILKigXLwpCaFjeYnEzd6n411ETI1E6S3Ow00uaN/ISexF1UNrVwlp7ud+HZ
xIZi7Od6x4CGrowHFo+J354ka8x54aKx6t4azbBMacq10qcTzwbbhGyxxBylwk3A
/IrqLfzttW/4thJTETGMLC4fZU/Ofh8x9SgKpP36mAWMi7a+g6SRsvyDL6j0l7/q
t9QxEiWTiX9uuYH7iy2TFisbqlfVGaXjW5lBo8GkFSrEEXQWwvak8uEZS9cpAiBQ
gYi1f5VEcHh27sW4TY7yMQLDJcTsEQvSVA8Mu9ljTexDt7goRz9SdjcJOYVlJxnb
VprDkep5ME48l9sT7ZVo+6imCYN1hZaUQfGAVSjWr3t0Tpk6jkI=
=BpQd
-----END PGP SIGNATURE-----

--pqaksodoxc74hbeq--

