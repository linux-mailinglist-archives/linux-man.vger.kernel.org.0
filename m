Return-Path: <linux-man+bounces-815-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D62C8B3411
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 11:32:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 802D11C22672
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 09:32:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEE5213EFF4;
	Fri, 26 Apr 2024 09:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0Ln9Kes"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B030F13D53C
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 09:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714123936; cv=none; b=jQ5GOntE2t/9TFLNqVMZVhzGS/4pcASwtcP9psKMPzOfw+hkYzBPoabtWjmik+lUFL7EHKqaAxBgvQlFOi8XaouL+5yvf8z/bwlhpIhZ+jZxbXdTv8+8XaaGUdq5E4a0A+o8E+QFPgUhz/aZ6r97LrYUbQf/BKTwwSjhKrjUQZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714123936; c=relaxed/simple;
	bh=rqfXJoTu6T+3xCXXLXutbWsH1IW/0OYVD+Z0sWkMGsg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FhdfwDTg2YFR/IP6qXDCaxQcPF3wgEeyNLdI85Qe7eLSv2PeXge/BkptGjm7jc+y1Q1bYNGcLrFfZP2CaStCXesB3iLCm+bspvTGEg4Y8JZ2+sllHEf+mT8hxiR22oP4ejMf3PPNMvu79YH0+u5LsZo7+Uv0qSNQBR0NLTMUu4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0Ln9Kes; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F7FDC113CD;
	Fri, 26 Apr 2024 09:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714123936;
	bh=rqfXJoTu6T+3xCXXLXutbWsH1IW/0OYVD+Z0sWkMGsg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m0Ln9Kesr6yUUJ6gFG5p09bDoLpuy6G9WVD3WO1w9MHJmSQ7WIjhNtmlr/eNl68XI
	 O2Nxm7RLY8lpLJlKiNMHEBUauAGyXeQeD6doKy3Qpbz/p9JLltLMASBFmutXV7ErOh
	 Wmmx2paOyhY5+RTdpMIumPmimQYgFuu797vCjdhup9PREnL1YN5OfTh+RWoFXI31MH
	 bKJUc6qyoi4LdhKrg32jUdbbSyEbhoTFjBusLkfnTlFaKIrpvscIgYD9ufd8IdLu2m
	 oJPfBMfy1cBgn6H4gYBpEIVDqDmtCAt0WpdZGUS1ILKmZgh16eyZkEkgO6f0hGL7+H
	 MG76+xV1TWfag==
Date: Fri, 26 Apr 2024 11:32:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff@gnu.org, linux-man@vger.kernel.org, bug-ncurses@gnu.org
Subject: Re: Proposed v2: revised man(7) synopsis macros
Message-ID: <Zit0nT-jhNPE9T2v@debian>
References: <20240426055958.3hzal6m4r7mgzhqj@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yy7lY9ddY4c1jdks"
Content-Disposition: inline
In-Reply-To: <20240426055958.3hzal6m4r7mgzhqj@illithid>


--yy7lY9ddY4c1jdks
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Apr 2024 11:32:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff@gnu.org, linux-man@vger.kernel.org, bug-ncurses@gnu.org
Subject: Re: Proposed v2: revised man(7) synopsis macros

Hi Branden,

On Fri, Apr 26, 2024 at 12:59:58AM -0500, G. Branden Robinson wrote:
> Hi folks,
>=20
> Difference from v1
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Support reuse of previously computed indentation, to line up function
> arguments and similar across multiple synopses.  Requested by Alex
> Colomar.
>=20
> Proposal
> =3D=3D=3D=3D=3D=3D=3D=3D
>=20
> I have been dissatisfied with groff man(7)'s SY and YS macros for a long
> time.  My primary grievance is one that has frustrated its uptake by
> documenters of libraries: the macros are designed for synopsizing Unix
> commands, not C library functions.
>=20
> After working on the ncurses man pages for a while it became clear to me
> how to modestly revise the way groff man(7)'s SY and YS macros work to
> serve both sets of authors better.
>=20
> My proposal, as a diff to groff Git HEAD, is attached.

[...]

> Attachments:
>=20
> * "git diff" of my working copy, also including updates to existing
>   groff man pages and to a regression test script, to reflect the new
>   `SY` and `YS` behavior.
> * Sample document exercising mandoc(1)'s incorrect handling of
>   `in` and `ti` requests.
> * An example document, renderable with groff Git HEAD, 1.23.0, 1.22.4,
>   and 1.22.3 (at least), illustrating use of these macros.  View it with
>   "nroff -man".
>=20
> My questions:
>=20
> A.  Does anyone object to me committing this change to groff's master
>     branch?  It will of course require a NEWS item, which I will write.

Acked-by: Alejandro Colomar <alx@kernel.org>

> B.  Does this look enticing enough to any documenters of C libraries for
>     you to adopt it?

This one at least.  :-)

> Regards,
> Branden

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--yy7lY9ddY4c1jdks
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYrdJYACgkQnowa+77/
2zKLAw/+Mr1DARfcsGn7Lll5Via4vaSvejACpiUk7W9oFRr4eGYJUCpKNmO+VYdp
UbNwAC9bBdVxUPMWB/Xa6aTsEnTPXWAUaEhjnaLj1sZx3+nlDAaNC5Yggl7DMDX2
mVBlDhoFl9unMx+7ZbzpP8N0yZRrHi2dPeDkqJPqT7Wr7IuONB7xSbnWwTRn6OFP
9raDnb5w8r2cT9H35sEK/3HQEvZ36ZCh2L9/BoSODP2ypgMaftUwVzL0SQdjv870
BDb+6kZ9DgyMV1EozxMwjzSwwnmaU/Gt7eDTvbAZzRG5uar++FtAttUZOVd3JeMA
Cx6mwrR9o+tgYt6DdJwVerc5QSzeoCK0L+zUiRuFXZOtAQhrd3iAABKHUl9TC0ly
KcriunYfGH7Dl3fqMWo0btGr2HGC5+r+mlfp1gmhcvztk+9S9Qxp7Mzbo4iKhQb1
cK7JwUwxtEtFdQVT7iULdWADh/So1oQhjHe03NHvBs7Gncr+JYKDmf101PpkUIMO
Yax8QS+IGNyjSrurUUcjZRFBgrpoNbzK2ANhbogV7Kkil+DcvFo9BX8GrbPO3UET
QlfgdfwPdjqqOIKwdldIqj4nunYUxMRjqy63xCc5F2p7AbJANk7q9cgTiSyNSzSb
Y+v/Uq7g/TrGh6+n7FdUqRPrxKKJ2Ep4qzS4vI0LATzzN2glfps=
=oTQD
-----END PGP SIGNATURE-----

--yy7lY9ddY4c1jdks--

