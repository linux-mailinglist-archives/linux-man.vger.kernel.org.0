Return-Path: <linux-man+bounces-1222-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B3D90ADC5
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 14:16:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB6B11F240AA
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 12:16:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC26C194086;
	Mon, 17 Jun 2024 12:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m99/lmxr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7935B7345E;
	Mon, 17 Jun 2024 12:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718626561; cv=none; b=U99+O3vDdlK+PPcCRY/SsJdKPg0EhlwrCA8v5N08mwLV/+ej+X8pu+LRcGvBwEW63OWlEhIM6UzqNQCBtlhHrPCIBwo698A9kJu0Ui+5BxugejK7GsVKcKIYT7yttNH5i5IAVoRFOYCR4kDV5oZ9DeuPqnMWurgLb/VBr3VtrKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718626561; c=relaxed/simple;
	bh=Xy1Oj+Yh2LEyU1k0tO8Awpbnl/9jCEACA1TTrblQPl0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i5C6vxIR51uZqZzbpQf9jLYRQAqHM5BwL+FIb84R1Uw6q8frZZLTTgQb+l8d3Kq9U8A34SEMpqBDuT1JaVqSoPIwSerW0/IhCC13zzBdFaOuVJ/w3Y9G+J+xkuk+nWrE1MJVoQiLwUbveth/YVrctfXB00QgQLDwC1SMj+ryAyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m99/lmxr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E6F1C2BD10;
	Mon, 17 Jun 2024 12:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718626561;
	bh=Xy1Oj+Yh2LEyU1k0tO8Awpbnl/9jCEACA1TTrblQPl0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m99/lmxreh/Kh9CzZ8DLQfrYB3c7u/AH89KvU7aTa+J9Fj8rs/pSUP2PLQIDB52eA
	 QWt8tUd4C7oA+o0qSbz2zm9Vg67EeFOccrODvmoe7FX2+0+oL2E6oiJvHI87eeqimn
	 UsQU0RGCdYEeokBZ6mDoHZCOjkiTvNRLkpw9m1rlFWQoV4ZD7GgHgiXeQovfNeqc5i
	 xwntpVzvCTtImsneEOwzUKXVHbh5TvN9uWoJ87oLcylX9a4rDj9xXUbxlG3Xn7C2jo
	 tG1DU/CzlMqu6cTL7pnsMtunCC/QVFp8zJnlv2ig4rhrx4QCwTDwbyuVYlIjK3wcVG
	 TBWNtqviPD7Qg==
Date: Mon, 17 Jun 2024 14:15:56 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, 
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org, 
	andyrtr@archlinux.org, Luna Jernberg <droidbittin@gmail.com>, 
	"Dr. Tobias Quathamer" <toddy@debian.org>, Marcos Fouces <marcos@debian.org>, Sam James <sam@gentoo.org>, 
	Jonathan Corbet <corbet@lwn.net>, man-pages-maintainers@fedoraproject.org, 
	Petr Gajdos <pgajdos@suse.cz>
Subject: Re: man-pages-6.9.1 released
Message-ID: <vqexqoi4imi6e4sm3ddz3vicqslxip24shu42ut37ydanfqnlu@2hpc5rue2d6e>
References: <cpolays26kcjvekvowwik3di3ut66puls47w3gvdfwep66uaul@ka4omfzltwcs>
 <dncnuuuqpf4pa3toado6hk3inupa6ntlqxdt4x4y4l63mubuoy@kyam5murveos>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2mxyowtrlcwxgtv6"
Content-Disposition: inline
In-Reply-To: <dncnuuuqpf4pa3toado6hk3inupa6ntlqxdt4x4y4l63mubuoy@kyam5murveos>


--2mxyowtrlcwxgtv6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, 
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org, 
	andyrtr@archlinux.org, Luna Jernberg <droidbittin@gmail.com>, 
	"Dr. Tobias Quathamer" <toddy@debian.org>, Marcos Fouces <marcos@debian.org>, Sam James <sam@gentoo.org>, 
	Jonathan Corbet <corbet@lwn.net>, man-pages-maintainers@fedoraproject.org, 
	Petr Gajdos <pgajdos@suse.cz>
Subject: Re: man-pages-6.9.1 released
References: <cpolays26kcjvekvowwik3di3ut66puls47w3gvdfwep66uaul@ka4omfzltwcs>
 <dncnuuuqpf4pa3toado6hk3inupa6ntlqxdt4x4y4l63mubuoy@kyam5murveos>
MIME-Version: 1.0
In-Reply-To: <dncnuuuqpf4pa3toado6hk3inupa6ntlqxdt4x4y4l63mubuoy@kyam5murveos>

Hi,

On Mon, Jun 17, 2024 at 01:55:36PM GMT, Alejandro Colomar wrote:
> man-pages-6.9 had a broken link page: FICLONERANGE.2 pointed to a
> nonexistent page.  Thus, here's:
>=20
> 	man-pages-6.9.1 - manual pages for GNU/Linux
>=20
> Tarball download:
> <https://www.kernel.org/pub/linux/docs/man-pages/>
> Git repository:
> <https://git.kernel.org/cgit/docs/man-pages/man-pages.git/>
> Online PDF book:
> <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/>

Huh, kup(1) is reporting some problem, and I'm not being able to upload
the files.

	$ kup put man-pages-6.9.1.tar{.asc,} /pub/linux/docs/man-pages/
	Enter passphrase for key '/home/alx/.ssh/korg-alx':=20
	perl: warning: Setting locale failed.
	perl: warning: Please check that your locale settings:
		LANGUAGE =3D (unset),
		LC_ALL =3D (unset),
		LANG =3D "C.utf8"
	    are supported and installed on your system.
	perl: warning: Falling back to the standard locale ("C").
	perl: warning: Setting locale failed.
	perl: warning: Please check that your locale settings:
		LANGUAGE =3D (unset),
		LC_ALL =3D (unset),
		LANG =3D "C.utf8"
	    are supported and installed on your system.
	perl: warning: Falling back to the standard locale ("C").
	perl: warning: Setting locale failed.
	perl: warning: Please check that your locale settings:
		LANGUAGE =3D (unset),
		LC_ALL =3D (unset),
		LANG =3D "C.utf8"
	    are supported and installed on your system.
	perl: warning: Falling back to the standard locale ("C").
	FATAL: SIGN output impossibly large

	$ ls -lh man-pages-6.9.1.tar*
	-rw-rw-r-- 1 alx alx  12M Jun 17 13:29 man-pages-6.9.1.tar
	-rw-rw-r-- 1 alx alx  833 Jun 17 13:29 man-pages-6.9.1.tar.asc
	-rw-rw-r-- 1 alx alx 2.0M Jun 17 13:29 man-pages-6.9.1.tar.bz2
	-rw-rw-r-- 1 alx alx 2.7M Jun 17 13:29 man-pages-6.9.1.tar.gz
	-rw-rw-r-- 1 alx alx 1.9M Jun 17 13:29 man-pages-6.9.1.tar.lz
	-rw-rw-r-- 1 alx alx 1.8M Jun 17 13:29 man-pages-6.9.1.tar.xz
	$ gpg --verify man-pages-6.9.1.tar{.asc,}
	gpg: Signature made Mon Jun 17 13:29:36 2024 CEST
	gpg:                using RSA key EA3A87F0A4EBA030E45DF2409E8C1AFBBEFFDB32
	gpg: Good signature from "Alejandro Colomar <alx@alejandro-colomar.es>" [u=
ltimate]
	gpg:                 aka "Alejandro Colomar <alx@kernel.org>" [ultimate]
	gpg:                 aka "Alejandro Colomar Andres <alx.manpages@gmail.com=
>" [ultimate]

I'll try to get this sorted out ASAP.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--2mxyowtrlcwxgtv6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZwKPwACgkQnowa+77/
2zIqqA/6A8SRXBDlwjrNjQDatqxydYR2jguBO2mrJigrUFy8faFJ3Ug6SnKRxGHr
KSuk/y4KKTmwxvLUAy3tYFyZynyfEKUmevdBigus6k7AIkq4WPM1CWmXh6b4ZFdd
5yzjNYB5YeqfLR+2P1/4wjJkWaCSPl9Fm91eLuRwIH2WpSp9cwnPRiae1Y3t8d50
JVi4Ov6k0JanPYwACFIqFHKJ+CHsoKgFyvJB6e1MFHx5W5Xjx6SSbWfGWs0FwGNl
xzaEx1UYDIhrTugZoYp/YCTe24UpPMWJ6S/zsJ7V2yOv1YHTqb3e/lQfdlVj4w2R
v1XapacysZM6iq1gMFnUEsmGYyMAyKnvJbTZoZUD98k3Mx5yOzKevOgF51zcnIgg
O8XnNdzAOZXnhvhRfL4gdZmn04r5qIPLRVvgneFKTFORzJ5XppM1AGjMWD4q6yeN
gNFS4KG5Lnovs1dxwTJXX2B0bqab/rFhgWEK+0G4bXcry61TEgWGDhvwZmXHszhK
nvCXIObz3VFpHswRVTJOBwHMUxri+lLGUM7kOQQ90fkSUCNh4bWxnFgi/0TBZCSN
sJWzRW2sd8w6kwte6QJ3ofXlkHa1PzB77tbmdz47L9mTgNtMisEdG78thFHZXRKu
zREynV63MSNr/2F6f1Aq993cqHdEEwEIKXRxrjURAb0drgG2nRQ=
=r5S7
-----END PGP SIGNATURE-----

--2mxyowtrlcwxgtv6--

