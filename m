Return-Path: <linux-man+bounces-3705-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F65BB3328F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 22:14:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E284A443F8F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 20:14:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C5B72264D3;
	Sun, 24 Aug 2025 20:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYHMBExD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BEF22330F
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 20:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756066465; cv=none; b=HRPtN7F0jB20LvOxbQsPEi404RKIQrXKU6/7xL+IKPzb3UP4r0lJHijPJu63wJGL2GozlnX7tL2Qf0kaiX1gGHNdkwIPv44eH6R2YCq3mJGyapYIiCqp4J0T4x/jKbAPADdTroZQHTKQhIoLkh+Jz1BGmTQP9vKOsr4nyIrCHxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756066465; c=relaxed/simple;
	bh=4StbF15Ts0LfNe8EiO4VUKCzw/RBD3X7L3bhxPyC5QY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P0dvsXZJcKLAO/vzJFn6ubs6kZhham5vOHmUdoheBA3Tx9Es/nPi79ukYv/UocKW0RFx5SguFUYbVVbtwT+RqhpdiOFFYblJrQkGnvy/GoB1zMpeYXaU5QOON8y4jZAj43Kvw3bQJLAQ6HpWfSPiRpTAps4Vu+Ff1iE/KuqjeWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYHMBExD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32213C4CEF4;
	Sun, 24 Aug 2025 20:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756066464;
	bh=4StbF15Ts0LfNe8EiO4VUKCzw/RBD3X7L3bhxPyC5QY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rYHMBExD2DtvJe8NsMqGWmSZPplJhhGTFNr241T1O+PtTxxurAP1ElL2TOsf1Qq5z
	 PJ9JvTYhlcIYB2dGJsJpNRKax9VuZj3FRgaSpVBglnhXAkxkTlXF+wKCR7lV9C8FIO
	 ktkCzXf0Qr4JN+Z0t9Bz/NXKM2YlLCWAul0eEjcqRUcqBBeAcTuo7M/fCvlthF+O/F
	 1TyYBWWZBWgtpyQJtjAdY2yU9dnyXnId54J0BRtHEDwr2S2qGTxaORdGwtRRBGMk+t
	 JTo3186A7FVd755pJk93MSchOFPTLuBoC2mu+g5OAEqEUiGtw5qy8w5Ci8MLHTDICn
	 smsHGDf7Pny+Q==
Date: Sun, 24 Aug 2025 22:14:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page ioctl.2
Message-ID: <hmtszsu3j37hc33jkafbc45s32zgdz2twvd6aerwtuvmenuzrx@vr2nhsfciuvr>
References: <aKsmStw-BIV8ppku@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kilw4xiienvabfvx"
Content-Disposition: inline
In-Reply-To: <aKsmStw-BIV8ppku@meinfjell.helgefjelltest.de>


--kilw4xiienvabfvx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page ioctl.2
References: <aKsmStw-BIV8ppku@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmStw-BIV8ppku@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:42PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    What is fildes?

It seems a weird way of saying file descriptor.  I'll change it to fd.

Also present in close(2), where it's a bug, because nothing else calls
it 'fildes':

	$ grep -rn \\bfildes\\b
	man2/close.2:219:.I fildes
	man2/ioctl.2:102:.BI "ioctl(int " fildes ", int " op ", struct sgttyb *" a=
rgp );
	man2/ioctl.2:139:.BI "int ioctl(int " fildes ", int " op ", ... /* " arg "=
 */);"


Cheers,
Alex

> "B<ioctl(int >I<fildes>B<, int >I<op>B<, struct sgttyb *>I<argp>B<);>\n"
>=20
> "B<ioctl(int >I<fildes>B<, int >I<request>B<, struct sgttyb *>I<argp>B<);=
>\n"
>=20

--=20
<https://www.alejandro-colomar.es/>

--kilw4xiienvabfvx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmircpsACgkQ64mZXMKQ
wqm/uw//aFSR2HeyjJ9OHDcMn13fDT7rQUoKt/zqNpvwRqfG8Yb7jmtiQ/KXPnYb
CFfnEfeREUt7Bq87Heuxso5YFdkVNBLsBk4nAAEdRFwZphKk9T3pkCEoDCZWnDWJ
QvgALpc5nUBh5n+CB/PUmJzYlzF8ZZs2rByM8BTT4lCkPAxdf7c/7aV6PKma+Eh/
HWSJlEFitb7YqrrelC3ttTytV/U5PtSzl4k6pd2WN5DkMUxHHxqf9zjhvu7d5D2T
9voUnRQeBbfiGp3yBKM6JKbYrGE3RsX6hqBMER0J6qroJDdGhSACvEwdq+QgM2qq
KZS5CYjpvfaOPW51KGDerlyQI/Wfz147d20hWfpTJSS8ZMITY0zNZabgVkmqQSkx
vQqZob0HnnxjYBFY6mb6Q3QAcY55rmedE0XjWqtCiWqupxqfEW5bEd+RvrloOySJ
9NKW7womxE+Tngcx0TsTi9g0QuVByvNahorjasV+kKgoSRj2SzPRXtIDhHw7MrbF
zijEJ93M2aVnBEyzFhuSieRM9YE4oyFQ9gyMKh+NqWfbXZzJZhJdjD+1+aGTXH9u
i9WHDSl9/2iLXCPDehqxhP313SyQeq9mqx0e9Fu1Fi9mbomEbMWLsi/i/QcuPrUI
rgt4moOVoZm/EIBqzyfZtJYj+gJ7YrmZ62PPFM5AdyADXmP+REA=
=qe1V
-----END PGP SIGNATURE-----

--kilw4xiienvabfvx--

