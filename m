Return-Path: <linux-man+bounces-939-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB798C9A93
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 11:42:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C7161C2048A
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 09:42:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31EEE225D6;
	Mon, 20 May 2024 09:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwpCEONI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E509E225A2
	for <linux-man@vger.kernel.org>; Mon, 20 May 2024 09:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716198150; cv=none; b=Q/Cr5kLbB1wawy8sCi//7EsV+0wGhJauRE9s9gZxcsOWHejPLiJq3cefVDCYqZvHikHdZdCrW+xcAD86i7Inoa5lCDkT0+1Kr9cE7pDWOL0ZXohONZyKvue1VKm6xC2YjcaqSK4/IIA8H/d1ERgWvxE6UxfBh0OMsqRZKpuUgBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716198150; c=relaxed/simple;
	bh=fEPJnm/B8P4oXbQf51b+O1/sfwbZzxR/XiJX74Y+OOY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B72paen8UXyGqIkxNxXQsubdA8c6QWc2oHRK3iF5tsMsWtnnEyIe9gEDgQBFKaHMYulAzb1JXlnjfSqaNBTs8paFW8Zg3iR3SK8jV4UQUvzhAuTXQ/dqBWKGb1igOenadsEpBtKojFbkCfDVlB7nTmbqw0NEqz1motSSh8TMVCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwpCEONI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FB79C2BD10;
	Mon, 20 May 2024 09:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716198149;
	bh=fEPJnm/B8P4oXbQf51b+O1/sfwbZzxR/XiJX74Y+OOY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rwpCEONIkrCRy6yUGFFBTh0bIAt7lErzc4ZJp5LeSF/bKLdX7RaNw+AMufPjR57m0
	 aff7i5Jcw7SJ/k10W0fNKYt2I9woLYvqvhdX+aJSfIQ6p4iTUBgP7ORSEPEWdyHewQ
	 nGUmP352ygHwT1JL33Rdxp2fpJWD0HSDWRml9G674ED7TAkcmrcWFnq2EPI2FUxxoP
	 RQv+V1rfGPf4U3blb9ql04c5pkTpTSfikkPKQ+iPsE0L+x2/9nDR1lA9tr/G2AOLOY
	 8SPUrMlv4dwL4RVnzfhux3UFKfFLkSE1yxSB+3urpccFexfj/NSh9EIrSYTqQdeZos
	 /ZSp42E3ot+ew==
Date: Mon, 20 May 2024 11:42:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@vger.kernel.org
Subject: Re: pidfd_open.2: PIDFD_NONBLOCK is not defined by the listed headers
Message-ID: <wdtw7fjo7x6j2aq6g6h5r5kibamod5ww3c22qbfnbmt2vmbuyj@iqmm2zuek5hg>
References: <ZkrZb91EgZoaOybZ@t420>
 <e4avr4d44fpkqtby6i53qthlkvhvum7fxkq63hkmuqtqgougyr@cropbgglzx2a>
 <ZksUDXCkKeVdIBox@t420>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oit7j54pnmnubfn2"
Content-Disposition: inline
In-Reply-To: <ZksUDXCkKeVdIBox@t420>


--oit7j54pnmnubfn2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@vger.kernel.org
Subject: Re: pidfd_open.2: PIDFD_NONBLOCK is not defined by the listed headers
References: <ZkrZb91EgZoaOybZ@t420>
 <e4avr4d44fpkqtby6i53qthlkvhvum7fxkq63hkmuqtqgougyr@cropbgglzx2a>
 <ZksUDXCkKeVdIBox@t420>
MIME-Version: 1.0
In-Reply-To: <ZksUDXCkKeVdIBox@t420>

On Mon, May 20, 2024 at 11:12:45AM GMT, Emanuele Torre wrote:
> On Mon, May 20, 2024 at 10:29:12AM +0200, Alejandro Colomar wrote:
> > On Mon, May 20, 2024 at 07:02:39AM GMT, Emanuele Torre wrote:
> > > So probably the best solution is to just make the pidfd_open(2),
> > > pidfd_send_signal(2), and pidfd_getfd(2) man pages tell users to incl=
ude
> > > sys/pidfd.h and call the GNU libc functions instead of including
> > > sys/syscall.h and unistd.h and calling syscall(2) directly; now that
> > > sys/pidfd.h exists.
> >=20
> > Ahh, interesting.  I'm using glibc 2.38 and still don't have that one.
> > It seems added in 2.39.  We can directly document that in
> > pidfd_getfd(2).
> >=20
> > > And maybe to also add a pidfd_getpid(3) man page for the new pidfd
> > > helper function.
> >=20
> > No, usually we document the glibc wrapper in man2, unless there's a big
> > difference between the kernel syscall and the glibc wrapper.
>=20
> pidfd_getpid() does not have much to do with pidfd_getfd(2), and it does
> not call pidfd_* syscalls either.

Ahh, sorry, I got confused with so many similarly called functions.
Anyway, we need to document that glibc added wrappers for them.

>=20
> As far as I understand (I have never tried to use it in a program),
>=20
>   pid_t pid =3D pidfd_getfd(pidfd);
>=20
> Is equivalent to the following command in shell:
>=20
>   pid=3D$(grep -Pom1 '^Pid:\t\K.*' /proc/self/fdinfo/"$pidfd" || echo -1)
>=20
> It reads the /proc/self/fdinfo file corresponding to the given fd and
> returns the value of the "Pid" field as a pid_t, or -1.
>=20
> o/
>  emanuele6

--=20
<https://www.alejandro-colomar.es/>

--oit7j54pnmnubfn2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZLGwIACgkQnowa+77/
2zKgOxAAlVc8yFb2JLGKyxM9e/2VrU3XLP8i2+MyhmgziPSA9oEr40rZ0VDHh5/N
DtIYnVaTXBRf12jlnNlZ07wG8O15buG13cMw6lVk+QUbhyYSieN9wKLPPTiUUKSV
ItI3JwheNsOy9OfJkO3JbvFa0oG1xyM3mgYv4Hk692Dg27Qf64B688xoQkNNjpKG
IUP+aMtbRn3i8DxfQvYI6iQtBB1TiaxF7hpgzZ3e3b0+JvP0b8JjvEaZWUFaIljv
oR0ncTmAHLjOI1Aems7a6diKA+O/k7j3qGVMHkq7xrauHUGxVu1GQsgkDjoJN6fX
rkqixLHmjwQqzvwISnRpN/nn66q8fCP1IHzreZSXf7BCaklrsH/+RpJO05pDhQoj
cNxn021PMLDvF23C6SXQdSFIkywxJ11soa5Wk3KlBH5CVw4zKRN+vxRBMgz0+BKO
Y/BNjyLkhFeaANznbziLDnIo4ksIYtVUFP9bVDjmesTCfCG74tAhDXWh3jcIdH+C
IRnSpxTzOKjbL/Oh/+1tlcSyx+KGyA0Sb5mSLERCbG3e/AYJN62CoK88jWNbVR1R
Verr7aDyd6yBQVxM1br5ZteZ+ffW5J3ATIE2JUlwXdJrbY0baevdaY2GVel5xQxV
uuDN8eq2RMwZmobNIpqbDw0olSQEYnEYAtNSRtOUXLbpNv4Q/Tk=
=l7sB
-----END PGP SIGNATURE-----

--oit7j54pnmnubfn2--

