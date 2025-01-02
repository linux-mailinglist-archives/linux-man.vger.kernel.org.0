Return-Path: <linux-man+bounces-2185-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB519FF945
	for <lists+linux-man@lfdr.de>; Thu,  2 Jan 2025 13:13:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91072161220
	for <lists+linux-man@lfdr.de>; Thu,  2 Jan 2025 12:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A9E51917F9;
	Thu,  2 Jan 2025 12:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrqmA6aM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9CF171E49
	for <linux-man@vger.kernel.org>; Thu,  2 Jan 2025 12:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735820023; cv=none; b=hDwBngzSpW6DXzRY6iPZ7qBsvZqHjZrGVa+h6mD7l+pF9+2e/Z0QnNJXuqCqq1byGTCELK7G4vZDoc9zAXBgPWjcODAZTxoUiKs/g+rICd2zEwYrtDIoFm2+GgdVSbXdWCaDfDJbUgYM/aOoOlhnRx7OJ05hoQfS4oeQA6ADY5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735820023; c=relaxed/simple;
	bh=OoOzf8ho9FNyfobFbVOm52d5MIAKIbPh2w6qQqYInf0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SAXKwDV7q47RCUno5BF6wuXNDOSOwA1OvhEhcGSK6MNNsU8I6x8VRzN+yYwGPk7vaE5VHaM9QGUdkEiuSq9qtdd8TUYSADpTTOkVJm5QI0rccPXl9sY+ytKRqc5RZmdpkzNY3/Ej8iC5K0D2wyWfk8ew3Qk9UWe05PewhFOKlSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrqmA6aM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FC9CC4CED0;
	Thu,  2 Jan 2025 12:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735820022;
	bh=OoOzf8ho9FNyfobFbVOm52d5MIAKIbPh2w6qQqYInf0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MrqmA6aMU5deVRXyrnZmTxDpbtmgGwKZovS/42s06ZQD30w+sFhVufnrIuxVLZaPt
	 oKACSmg6ycWEUYddBWd/RWbQhVHdoPwZzVZG4yYBXZtmkuVpKfkBcsnQ/uyhP+dP/O
	 +cSOo/ALsxHqO6uV2pefYLbZ2JpfpUrgGPevh2FoDCc327ULmsRyCO2HnPz5Mq0lpd
	 KWrld7m099udM5Lq64b+cQkFB/kzzleogSeQKXYSO13iYr7hox8w8poV6QPXg2Kdxc
	 GnLjaVSgYh49yifKR4rtQ7ARmL7ehwZkljB0qgxEZh+XVQueWUmZWXZtwJFZsBXTiR
	 UBgpD2as9efnQ==
Date: Thu, 2 Jan 2025 13:13:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>, mtk.manpages@gmail.com, 
	linux-man@vger.kernel.org, libc-help@sourceware.org
Subject: Re: signal(7): why does it say that pthread_mutex_lock() and
 thread_cond_wait() can fail with EINTR?
Message-ID: <akntzhpuou75xnct7ymvajyqerfd5vpumzpjjqw3wbqyz67nri@grdc4nyaspkw>
References: <Z3W_qgawqyEB-QrA@comp..>
 <ltdxctn6eghheiagtjfqwji22xdapzi63nvuxttgvvmh4v2236@6enzyka7yaks>
 <87ikqxee2y.fsf@oldenburg.str.redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zj5il4u26c7ktx6v"
Content-Disposition: inline
In-Reply-To: <87ikqxee2y.fsf@oldenburg.str.redhat.com>


--zj5il4u26c7ktx6v
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>, mtk.manpages@gmail.com, 
	linux-man@vger.kernel.org, libc-help@sourceware.org
Subject: Re: signal(7): why does it say that pthread_mutex_lock() and
 thread_cond_wait() can fail with EINTR?
References: <Z3W_qgawqyEB-QrA@comp..>
 <ltdxctn6eghheiagtjfqwji22xdapzi63nvuxttgvvmh4v2236@6enzyka7yaks>
 <87ikqxee2y.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
In-Reply-To: <87ikqxee2y.fsf@oldenburg.str.redhat.com>

Hi Florian, Arkadiusz,

On Thu, Jan 02, 2025 at 10:53:57AM +0100, Florian Weimer wrote:
> * Alejandro Colomar:
>=20
> >> The underlying futex() call indeed fails with EINTR but it's called
> >> again by both glibc and musl.
> >
> > I've CCed glibc, in case they can comment.  Maybe this behavior changed
> > at some point in the past?  I don't know.
>=20
> Maybe in the LinuxThreads implementation.  I think NPTL has handled this
> correctly from the beginning.  POSIX bans the EINTR failure condition.

Thanks!

Arkadiusz, would you do the honours writing a patch?  Should I?

Have a lovely new year!
Alex

>=20
> Thanks,
> Florian
>=20

--=20
<https://www.alejandro-colomar.es/>

--zj5il4u26c7ktx6v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmd2gu8ACgkQnowa+77/
2zIKXg//UFo5VXGxTJV4S5PSy9tLTiZhA5c6FKhboIbmsu69lM8jpXKVX0Vo7Bzz
GnfbUZVx22uHZSRhxLjkOJdXPnKiO6bPyUoLamzx/C2Y8m7kolRx0ayMP1UIuYXa
+qjNEUxteqQmoP7LPIcvmFD0MBehfJ+3+wG6+41xaMYWJHeDOpf49tskdsD0L6ET
bdAyqgfK5fsCcs/0E+/ExoyBJNUH0bRjD9llaBhtsIDlP+luAgTr8dYxn3SiGBKu
zjr4f/M07EVuQ8uQ1BWSO3oz1jQyXTlQG+DvN+Avo+DZ1L+v4hKp2t4hoyn5KAtI
YJztvmmaetPD1XMCp0PoU5wfHAa9F39YkUrBaD4FlnuWBZ+Iqa2lzQq4ej34j/6g
A9ZNF8l5678OrkcUxIrDBu3N8BJXEh7UX1tWsFGUH3muL33wL8yMION1q77i3PBS
HSeEcliLdX387hIMzwmajhBSwORj9jjNapLAxMqP9WoFtKwDveIUCiTdYrlOSexB
g6wiuFV/Dyt4CiXbHawdqGB+QeL+C/L72J2d1ZPXnrNVanA3hPm1bKv2CFSOZHLC
Fi7j/sF2dz4wl1IjAM6M+FVdJwzGDRFpPG9RhQ//CdBUra8DC4zqpHZ97QkoJKQg
B3jts9WgY21hUG9F0MdTxkztOT9Z6rvEUgvzK02luwevbh13A/A=
=H/Yq
-----END PGP SIGNATURE-----

--zj5il4u26c7ktx6v--

