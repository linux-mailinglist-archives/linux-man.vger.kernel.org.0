Return-Path: <linux-man+bounces-1987-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C779D035B
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:55:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1730D1F23048
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28AE2145FE8;
	Sun, 17 Nov 2024 11:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o78XjmKa"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD006224EA
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731844539; cv=none; b=msyRdrIbljev0JO+0JpSpY8iDSmsLex5rX/3YifLlhuUtc2ixk3AzIBhws56l4gHjR8HJHN2lrxVD4pqS0GKxIyNj90oYEpKL8e+JnbcQwnc+DCkeS4oq/1Zlp4rvAaNRhD5pKNAYGE036rp2Ezlu/u1Aj4Xr9xxmJCZYz9koto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731844539; c=relaxed/simple;
	bh=aaShvML3c9i1ydg86k3yDlQQE3lg2yO+cS2er38NqF4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K0IEerOXwD6d4cD//DAhRfqsGqauHnKMueX8x3AD8zno5Cow/fK6ZwCx3btvND6Ja2TNZNQ9zIbNPL3N031L4dtoEbR3UDU1pTycFs7Q/MOE7Z7B+2u0cn6N0SlRsiSnxfOKMjI6Hc8lEXC//3xpkJ876F0soN5STKmG8yWOLK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o78XjmKa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FEE1C4CECD;
	Sun, 17 Nov 2024 11:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731844539;
	bh=aaShvML3c9i1ydg86k3yDlQQE3lg2yO+cS2er38NqF4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o78XjmKaLRJNQ8htlQdKyxmxlq2YJfWoU/PZEaa+DP0AMyfM7M0eQzo+NDd39YY7P
	 WTdo5ipGT1+o/g+/r4ZarXZZkGgj6pakjhVhDizkFQqpyF/30QoZ4ZBRBJeh0ZprBU
	 Hh2um+FMfQQcV7gx5OnCJd0snYf5xRCb1hZp3qt0FbZ2rBjx5BhaTXyPkHbGt7Po0y
	 tli9A86hBtGRjkgiqdypoZ3nOPpTJaEPcydOO+1kbs1xzghkDXeh+rN8ILHXZZNjzC
	 1qKFeWnI5TP6HiCJG6UR+o96lX9oMclKbPSlm2d7UgjnVJ4XEBWrGExOtvhryiqniT
	 dwHOJnCvAQxIQ==
Date: Sun, 17 Nov 2024 12:55:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: Issue in man page sprof.1
Message-ID: <xdv6pfasrfbegf3pb34ktupjcjao7kunwj65zmmbgwt53jdy6x@fnarmmxyzgpr>
References: <ZznJf0DLo7CVHddl@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c3fn3ewaghaql6wg"
Content-Disposition: inline
In-Reply-To: <ZznJf0DLo7CVHddl@meinfjell.helgefjelltest.de>


--c3fn3ewaghaql6wg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: Issue in man page sprof.1
References: <ZznJf0DLo7CVHddl@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJf0DLo7CVHddl@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Inconsistency detected by ld.so: dl-open.c: 930: _dl_open: Asse=
rtion `_dl_debug_update (args.nsid)->r_state =3D=3D RT_CONSISTENT' failed!

IIUC, this report is that running the example shell session resulted in
that problem.  I've CCed glibc in case they can help.

It would be interesting to know if this can be reproduced, and a full
reproducer.

Cheers,
Alex

>=20
> "$ B<sprof -p libdemo.so.1 $LD_PROFILE_OUTPUT/libdemo.so.1.profile>\n"
> "Flat profile:\n"
> "\\&\n"
> "Each sample counts as 0.01 seconds.\n"
> "  %   cumulative   self              self     total\n"
> " time   seconds   seconds    calls  us/call  us/call  name\n"
> " 60.00      0.06     0.06      100   600.00           consumeCpu1\n"
> " 40.00      0.10     0.04     1000    40.00           consumeCpu2\n"
> "  0.00      0.10     0.00        1     0.00           x1\n"
> "  0.00      0.10     0.00        1     0.00           x2\n"

--=20
<https://www.alejandro-colomar.es/>

--c3fn3ewaghaql6wg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc52bgACgkQnowa+77/
2zJlcA//f3PGCwwpoCBozXJgNaxVFJwNxUyepGxXzkTYijOQpvI7056Ecsumlv1T
5ISgpqQKRvfM9vXKa13Ym1INgGko/7ub19krXHc5W+HViVAuuVr+FnGae6E43N0/
6QnTqiEM53fSWWFTFk0LQtz4oTqw7IeDZ6v4pAvmyV4J22YWdEYBzNTvEfWU9myb
I0vIedqV/V0jaSVaBQLOuCvk5QI35Pilxo0sTu4g3D8S5x0JzABn/XRdaCseqBWb
iZWcssmeg0/oMvr1kcY1ltsDAww6zF2LIzeG6jz/h27qM7tRlGIzo8ZuHNjrpoCz
hXgWIJk5igwLizo7tOFbNyS4jjZq2qE6oSp3ZGvUF2EbC8Wg4+QBpj+u8ZuH+1tx
lAygWIcTDmtuFv+9uP9lf554pF0JcDYYXEB6fyx8JKnUt3SvvyiPovtcSHBy2Gga
kKZHfomlxJ8mRkzN3W5tcZu83JjGY6S2hwvSWaXP19BkzwFlxofaLFpGk/ghg1bI
GAT5g87OvzZGidJ9P08pAxUsRNMGDguuoU5OvH7aE173Owei+lH4Mp2kQGfbUTCv
SygBZqnSO61w4TzReJeHPqUW+qDevLqQ+lXQBUAqhKk0Aqle+Gz3JrvPKUGMHTM7
MYGnpvy2lVAb50fJbiTR7sf0YAMR0OkxMFdmXuniJbuqVSW0o3o=
=OFKb
-----END PGP SIGNATURE-----

--c3fn3ewaghaql6wg--

