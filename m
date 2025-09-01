Return-Path: <linux-man+bounces-3794-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 62812B3DB95
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 09:56:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E830A189A930
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 07:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82FD42EDD6E;
	Mon,  1 Sep 2025 07:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzJjPWDu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C37C2EDD57
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 07:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756713335; cv=none; b=ti/3n5L9i2/LNdYkizYAPyYfxSRHITKODWJ6D3Sez4OPYFRYTqHMsAfUGpd7aJQLsGsPpb4Nim0ZWObid4IQzQgvP/jUon+L6DVidlSAoi/PbBj/c+780qp0qk0ZZhu+O1RTH9hlfZHh3whAy4Ds1teAhCjMK6UgMvAE1u1cGG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756713335; c=relaxed/simple;
	bh=OWa3Da6ChGkQX92H9zvP5vGqWExpIEbqWSNwVZFa+GE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=npjmy3xXJFn0BjWSwjf3WMucNxtc5hqEnv8fzGZEKNpyPlUV+7fsWaOUYckLEWoVnIs4+SFd7SEUQpZYmf9MaxDNZszpn3D7bJGrTbsPy92eTH/dfKQn6xfUiMHYXmT4sG6uWSJ4fOqU3juA2qXZ46TGT7aatlRao/vY00G2J9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzJjPWDu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51808C4CEF0;
	Mon,  1 Sep 2025 07:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756713334;
	bh=OWa3Da6ChGkQX92H9zvP5vGqWExpIEbqWSNwVZFa+GE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mzJjPWDuH9Qf2Cqcy5NceKLOqt0vd/8yFRTkHIMMyPqznpY9Z71XTofm7+6kx3aSZ
	 HELTeWM5eMZJVGX+620hJ1w3/nVUmDTuaNVyqCXBpHqa3dBd94gMLSer5+jK/+htDZ
	 Yw9RWWacdX88SES59nAerTX8o40LBwEuX1HhkQ41/tE38wYprd3N3OGJnNfJuNA+nO
	 SSrRv2epMIK7MW+RangKKQVZToQl26LH8V5pK/o5i33lwB4razUeSSgOho4T/l/n0f
	 dCWOBvU/rPQgP9EHnuk9z5XYVUFBb56MvHaSWyxbETvs9kStao1WdIQxc4VrCR9WsA
	 KzkH5iM2cBo7A==
Date: Mon, 1 Sep 2025 09:55:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page div.3
Message-ID: <xzf6anqg7a3h5rgiovec5nd3ktkptmtnpvbg5tqfhhajcatmdx@3by7r2wa6ekl>
References: <aKsmRo0iCNu6B0H_@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ltnieqsklkrdlq44"
Content-Disposition: inline
In-Reply-To: <aKsmRo0iCNu6B0H_@meinfjell.helgefjelltest.de>


--ltnieqsklkrdlq44
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page div.3
References: <aKsmRo0iCNu6B0H_@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmRo0iCNu6B0H_@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:38PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue 1:  I<numerator/denominator and> =E2=86=92 I<numerator>/I<denominat=
or>

Fixed; thanks!

> Issue 2:  I<quot*denominator+rem\\ =3D\\ numerator> =E2=86=92 I<quot>*I<d=
enominator>+I<rem> =3D I<numerator>

This one is correct as is.


Cheers,
Alex

>=20
> "The B<div>()  function computes the value I<numerator/denominator and> "
> "returns the quotient and remainder in a structure named I<div_t> that "
> "contains two integer members (in unspecified order) named I<quot> and "
> "I<rem>.  The quotient is rounded toward zero.  The result satisfies "
> "I<quot*denominator+rem\\ =3D\\ numerator>."

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--ltnieqsklkrdlq44
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1UXAACgkQ64mZXMKQ
wqkPJhAAtHrLUuRUJAiS4WF/MdXLt00KJVW5sOsKJAteIwmEdKZKkurYsxrw9G1z
MIzV+5tBhoc/j57910fuaj+F9fqggcYwdF3qM4TgkqrbuTcbvexCu7CvKSj+B/Y3
3W5hjKk7h/AuYQYaEVHcMsILBQA92UkfPmeVT6gHbbyVNlcRKzxA9a7MRS9T88a8
iiA8aSkUAP88yyy5PaA3gSgQ6s2FIf/2acKEAvekHkskydRzEgMz32l9FzYRyQwk
rKQuHEFVa8Tc5VXZqZksY9p9s2rAWriODxMBYOE3y3uUgnJXYmtfibUQqwKxmcdr
LMvicbhRgrDTgiiTDUYKutIwnDUHd+oRjMCUkyJgQh873hzD1j34lMcW0fkjGLm6
edX8MjAGWzifMy5AFZouWcK6g2txN4udqrNrrnwhbVYR+rxd79bAgzqEezB5VYCV
I3aBMiDlhmCbhDYJ5NOwlHbUZBw5NXWhAkLC4Ecg1hhQU3UR2u7MPnWQLLU186Sx
K0pd+NroKQ/DvkWww3g5CS7dFM4XwekFXTwJMaHBn7mokK2SOpquLvZvZIgIY/DB
q3enWac88qZklNhKCp73+we7u16pvpktJm4agSkTSCaVbRmKWcODaKhWx5MNWklZ
0JMwo00rLyzRf0pV+ozeaMZSMSwhaHaiHveqmNU9mQE+6TTZYTI=
=kA21
-----END PGP SIGNATURE-----

--ltnieqsklkrdlq44--

