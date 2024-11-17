Return-Path: <linux-man+bounces-1969-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 922E79D0329
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:02:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2754E283196
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 233C07E0FF;
	Sun, 17 Nov 2024 11:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/asJqQe"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6BB511CAF
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731841370; cv=none; b=naMcBjl3GmjtmHe0+PbQwEfvihqPc7SocTkaluEoz/98KEUkIorYGuLXrlz1QVRwhmWcxzzunsCeUZrlYd38SD9qY1unBf9HYRQH3IwOVa+f7Zor+uINAlFhvZnfZa5CxQi5p19bRbL0cARxJWWgYq39aF+1g5v8FsHc4UuhZEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731841370; c=relaxed/simple;
	bh=/dxBrhdRmiZocCzDSZHXOWqmVibw+di6GztewgPMcQk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=svKFMVHQnuuyNhiMYdhlKGHZ5YL+qpZj164LwnlYOubhVMwRN15mm1RBDTJlKnUIAvDr+EAD2Zcz32G00awL2T8Uq7MMRC8Xq+uhPDW5PkD/sfUX6fRRbP1ZwEPJmdR5H9v46UKwGiHN9A0xuwswR0PPVyx7lbCSJIxbZUXdhNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/asJqQe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 802E8C4CECD;
	Sun, 17 Nov 2024 11:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731841370;
	bh=/dxBrhdRmiZocCzDSZHXOWqmVibw+di6GztewgPMcQk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T/asJqQejewWF2KVwiNAcQQwTXigFZ09EZ/HaVAqkPGhJFO5V8EJWPlOFuT+RVuWP
	 RbcSNnc4hVSjzurNbFGUz9WtVyVzgH6sSgO3V20+xwbPohUKqSAXuJzgsvRxnJqzHH
	 jhmo3Mg4ikaX8joA7RmCi3rbuAwIxMiMWCp1hWEfJ7XUaf8Mk5x3V7p58vPRSMwBYz
	 cpyElfiJ08qukJX/37FpSEOs9rvOoXyfwp7rg9aUSvBInCEAfXcldnIzv1dVAEulx6
	 D0i1v5p5N2Xb6fkYqxgeNmCX+/83AG9a1O4lALAgB2PPYds7EUpoZK8jVLSR7N4a0l
	 AyYva0ZXWgWhg==
Date: Sun, 17 Nov 2024 12:02:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page memusage.1
Message-ID: <7c7xphzszwon2fimcia2hxiy4oe6zpxs4bv2ixnmaunfbef7t7@jz66nwmpmhrh>
References: <ZznJfd6TxHLeyFf_@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="thmcgvowq5jvwccv"
Content-Disposition: inline
In-Reply-To: <ZznJfd6TxHLeyFf_@meinfjell.helgefjelltest.de>


--thmcgvowq5jvwccv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page memusage.1
References: <ZznJfd6TxHLeyFf_@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJfd6TxHLeyFf_@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:21AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    bash =E2=86=92 B<bash>(1)
>=20
> "B<memusage> is a bash script which profiles memory usage of the program,=
 "
> "I<program>.  It preloads the B<libmemusage.so> library into the caller's=
 "
> "environment (via the B<LD_PRELOAD> environment variable; see B<ld.so>(8)=
).  "
> "The B<libmemusage.so> library traces memory allocation by intercepting c=
alls "
> "to B<malloc>(3), B<calloc>(3), B<free>(3), and B<realloc>(3); optionally=
, "
> "calls to B<mmap>(2), B<mremap>(2), and B<munmap>(2)  can also be interce=
pted."

Fixed.  Thanks!

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--thmcgvowq5jvwccv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc5zVcACgkQnowa+77/
2zIFUQ//VTqRIvZ8d8uhdXSVWvuXp7+q6sK3VNvV8wkX6Hl/jbawr8n/To2E5+dv
o0PT/BDZx4PjXnZSGEVLuxQn0urQsfwqfIDuIzxxqThv4nK9GW+hL1BR3ib8iyAa
uDpZ/hMLgwvsbejVmY2q5WspRQ6SmNoDzhEtpK7DMM2I/MKsoZvZeUbtK/5Q04CQ
/RBvQYrF/UbPRU0SykuLF4W9O/qKz/sTtC5QmYd3Q82C05y4EuL4HBefWMBen4YF
/FHVBTvWQuZKDU8AiT50RdIXTqQfroeEg3EJuPGK8vR+I3hQRk9pX1jd/c1fHfVz
COeC6n+1CNO0MHPt9/+7CfpmWcD/YslhXF1M5kmuy2ECDNAGmWlDJGjVrNT7va6O
pAVAMQBgUQWbfgkHTyhlj044rA3m3a7fCahK7BvsMTJro6ZuhNwPyRZyLZijb+qJ
PK7WbG5iahPQVnv65u6IQLWzrJlyUBeaaxyfW+06jYN3C8xRvVtxM6D8435TI8cL
hzTGnt24OiAcrwG57ThO2EzxVJJUmcrON9JpcrJUcZOk5sod0DujX4jVpZ7SXHv/
ifBLs71gb9J2B2jLDe4KJ+qG+VgsxUAvhaU9NpcfQmD+5p76Y45TZPJm4eouYIpq
kmyjGu2gXyAKsjni/2qgHe/UhNMbnIZA6CELqeQG4Zy6kH1uuvk=
=OKNK
-----END PGP SIGNATURE-----

--thmcgvowq5jvwccv--

