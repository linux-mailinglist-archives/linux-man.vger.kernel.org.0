Return-Path: <linux-man+bounces-4525-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6027BCDCB62
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 16:32:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0DCEC30173BD
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:32:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AEFC30E0E9;
	Wed, 24 Dec 2025 15:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DM1h/1El"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A7FF30C639
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 15:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766590350; cv=none; b=qbMZhOHEDq3ZRbkviGcYPwE1DWBvoGXtyHTZkc/H6EPMK/Yu/zRNe7w1vmgxC2w4gEEKmTE/0GfxX+DcZCLGUpyRMZIoRQyCVuxbutFQU7b2hyRkLhYJhcYbHbvKiRCEhwAAhkr++ATyMEzDoB3s/6syV8z7uHFQqWzHMtZirn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766590350; c=relaxed/simple;
	bh=b5Siq7wrPI5PQilbcOSPSN0G8pSV2ST4NTkI62apWqk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lnR/VkjUWU2IhbJqrfpPsiDy73WIzpX8n0GDn4rPUi8yPPrbDDMxXjy1ZMVaQZyJp8TzLhNOAfqS72n1zoFki/HEC8DsyQviXAHnZIha2ZFqm6cHoUIwphuxE2vZcHTQ7xxX4AR/QJ245i6E8vuyJfP7lAruWgHdM4lb9qCSW+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DM1h/1El; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A008C4CEF7;
	Wed, 24 Dec 2025 15:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766590350;
	bh=b5Siq7wrPI5PQilbcOSPSN0G8pSV2ST4NTkI62apWqk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DM1h/1ElRo0zPETvd8Pr7Z/u5QCadsup5pUakbmvbBk2UOR6UUUNi7TeJ9bTOalZQ
	 qGD7XA2eVFJSLOePoRoZvNOuG/xpKiOTjx673CkYv/ZEY3kvTHRvR/y78IpngKneUJ
	 GoRWpvKFYDqwtAXfE7eTapfSuixUZMlfnQOrDlqeGA3plswM/ORI84KQ8cmRvktPKz
	 DbB9j1YTIXYQ0TBkcJSOQwqa6/008evMaeDXK39T/zy43Vkj/6TkaCV4rvdQ1VN5p3
	 j22AoKz4vCQBLBVK0Ay1f3wzmCCkpEQGbhiAFBNGifwQlrdLUtAFHF/OXGS4Xg+Pb5
	 opRokxSwtzBqg==
Date: Wed, 24 Dec 2025 16:32:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page mknod.2
Message-ID: <aUwHa051I7BDgWb4@devuan>
References: <aUv63WkdjBYbXoSc@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pbxci5lug2hczzgw"
Content-Disposition: inline
In-Reply-To: <aUv63WkdjBYbXoSc@meinfjell.helgefjelltest.de>


--pbxci5lug2hczzgw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page mknod.2
Message-ID: <aUwHa051I7BDgWb4@devuan>
References: <aUv63WkdjBYbXoSc@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv63WkdjBYbXoSc@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:21PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    This is the man page of B<mknod>, what is "like B<mknod>()" sup=
posed to refer to? Itself?

The text is in the subsection mknodat(), so it says that mknodat() is
like mknod().


Cheers,
Alex

>=20
> "If I<path> is relative and I<dirfd> is the special value B<AT_FDCWD>, th=
en "
> "I<path> is interpreted relative to the current working directory of the "
> "calling process (like B<mknod>())."
>=20

--=20
<https://www.alejandro-colomar.es>

--pbxci5lug2hczzgw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlMB4oACgkQ64mZXMKQ
wqlB1BAAlP3oYy41RXvwYs8zDAaZGzTjT6vnScmHrI4AffOXz2tiIf2gH9Q9QAqF
ioYcxFbKoq0zwbNA0kNkOVrVkFAjnpq39L372cbb8xpPfP28NZ07lfCSNYL7OGR8
uhlqPkjPq5fzMJGN5Y0dVDz7H1gpbwZ3t/rgLEp0sjERg6TeDehEpvIckONoY0JA
j1t8FuEf/8Nwa0ATnsF/acJMakiH5EnxShi5zDor3GA8MxH9VSKkNlpwYlKeoMXo
x1KRqGzqk424ADJNlm0mWlYsNn7E0RYwppuEXRRjXMGJF4zF3I/GGOycBWzsjuPU
cekxaUF3da7C+t4tjzqtCsNcLZwn2r1KdQFKJ7Rt+aejCknge73hFXSJmHb6Xxkx
e3+chLwbBx1NovCWN4FFp2thr8+Cry5wfKa0nVf8FIBMcsTbdVcpwZvZWooVsHZG
PFVS4c6AE4HZxabDk7q6QT0j44UYCKqtopwE6Mlfxdvsq/B3wk0H3XTbRAnCx+nK
h8aCbqMLUrvU3aKl7sDoBHOMr+i8zx2hJE0oVFki1SDDjVK3Q++R/Bo6MT8+0SdO
0XIcJJ9jV2OSjN2hqP54HSW9YaTIbTDsRABEYAh1v/Hcd4c7fWWaXHwCoIz2edt+
7BOFQy4lMFyFhbOfTcrWXWNLox6wKvPWVpeQ7qC22EfCojreVRE=
=helQ
-----END PGP SIGNATURE-----

--pbxci5lug2hczzgw--

