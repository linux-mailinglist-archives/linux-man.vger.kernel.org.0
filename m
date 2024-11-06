Return-Path: <linux-man+bounces-1887-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB50A9BF7ED
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 21:21:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA6021C21ADB
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 20:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E199B20C017;
	Wed,  6 Nov 2024 20:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gS4MU4ri"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FC9C20C003
	for <linux-man@vger.kernel.org>; Wed,  6 Nov 2024 20:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730924455; cv=none; b=SBdwLsouZYDW6t8BE6B8NPnA3jDkFYPFeROTdP6JrCqBIID4gYHyd3Tzz8fRcXJxzj0UqJiYPB8k0sC2vaBTJz17YL4sTcZBM/DcZlHvSqu824FWFcTRSgviYQPAEWYRJXB2PUSdniYSQpVEoOyI3owNuXAm9TKE33l6ZkZw6Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730924455; c=relaxed/simple;
	bh=75xOOpB8ASYz3ywsllyYt8xxaYSCNh5/8wfWUC10+5M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EPTtKDa1s0crzaiN0wlkPQzeAHwO+FbB0pzM5pby/fBJM6PU/ahc5qNUF5BxHcHQY6hmDtnuOYv4xxqi8wAK861t2XQJEJzBQ75rUDAa5JUsFKMbG4/DOucGE/zfnY74vjIX2wKbuSl4eATtjEQeXtSN/ibo5+JcB9ZU/0lHtQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gS4MU4ri; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90D01C4CEC6;
	Wed,  6 Nov 2024 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730924455;
	bh=75xOOpB8ASYz3ywsllyYt8xxaYSCNh5/8wfWUC10+5M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gS4MU4riEXMi2Xw+vdevmwtZsR2iKGDbSGI+o2I8zHsmvBF7k6hJA2LJoAjsYq2B5
	 0erPHd5bVVVRHuiXvFJqmyMkLZhyURMj2623sNnbtTfxHnrwFPLHPKhnR2MRWIHI2A
	 f2ZTLKqQmLayGjAt8Edrl4U6F7LEpy4lWjesV6pqXRJVEQYwWf64cFBSpbnLHt345r
	 I0Ah+QTKRWSnLApbpVH1vdn1MqUBLGQvF+UqFf0OAmgryPnm5P/BK+qGjhmVaTs5Jf
	 AMLO7mk8/R1SscBeEALUsTJwCan9MEogcEgZF3zT8FTDEjA7T8gKsCy0ICZQ3qd4ya
	 +X1g1JdnNCX0g==
Date: Wed, 6 Nov 2024 21:20:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Philipp Takacs <philipp@bureaucracy.de>
Cc: linux-man@vger.kernel.org
Subject: Re: bind EADDRNOTAVAIL at wrong postition
Message-ID: <chqy6pk7tzvt4tigqxrgiwpgljhb7i6ln6kmuafrjpdafxy5q2@5wlmdvz7lyso>
References: <67816c00225a0e945f73e22641d4f299.philipp@bureaucracy.de>
 <20241101124840.icu2zoyzbmfnzckd@devuan>
 <9010315d55e27a361142b67cd5816ba4.philipp@bureaucracy.de>
 <auseqaq5nrc3rndajqtapsticsomipqpihgasfcmlnp2sgkczu@amngtstagdta>
 <ef69c2c2493d24f97b0d4938c62603ec.philipp@bureaucracy.de>
 <fj7iukibghp5hszfobo4bpghwejfnxzydemlnkamk3346gtivp@xkyeiof2ynft>
 <011d9f981fa08c8d14bf78627a5de8ed.philipp@bureaucracy.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yterppfxih5nougb"
Content-Disposition: inline
In-Reply-To: <011d9f981fa08c8d14bf78627a5de8ed.philipp@bureaucracy.de>


--yterppfxih5nougb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Philipp Takacs <philipp@bureaucracy.de>
Cc: linux-man@vger.kernel.org
Subject: Re: bind EADDRNOTAVAIL at wrong postition
References: <67816c00225a0e945f73e22641d4f299.philipp@bureaucracy.de>
 <20241101124840.icu2zoyzbmfnzckd@devuan>
 <9010315d55e27a361142b67cd5816ba4.philipp@bureaucracy.de>
 <auseqaq5nrc3rndajqtapsticsomipqpihgasfcmlnp2sgkczu@amngtstagdta>
 <ef69c2c2493d24f97b0d4938c62603ec.philipp@bureaucracy.de>
 <fj7iukibghp5hszfobo4bpghwejfnxzydemlnkamk3346gtivp@xkyeiof2ynft>
 <011d9f981fa08c8d14bf78627a5de8ed.philipp@bureaucracy.de>
MIME-Version: 1.0
In-Reply-To: <011d9f981fa08c8d14bf78627a5de8ed.philipp@bureaucracy.de>

Hi Philipp,

On Wed, Nov 06, 2024 at 08:47:04PM GMT, Philipp Takacs wrote:
> > > Actualy I tried to avoid this, because I'm not a big fan of the
> > > git-send-email workflow.
> >
> > Is the issue with sending patches as email, or specific to
> > git-send-email(1)?
>=20
> It's git-send-email(1) specific. This has two reasons:
>=20
> 1. I don't think my vcs should include a mail user agent

You don't need it.  In fact, I use neomutt(1) as a driver for
git-send-email(1), which leaves the MUA job to neomutt(1).
git-send-email(1) itself doesn't do much work.

Here's what I use:

$ sed -n '/^\[sendemail]/,/^[^\s]/p' ~/.gitconfig=20
[sendemail]
	sendmailcmd =3D neomutt -C -H - && true

In fact, I prefer if a real MUA does the send, because then it allows
signing the emails with PGP.

> 2. I would prefere to just add commits as mime attachments

I accept them as mime attachments.  But I strongly prefer having one
patch per email.  If it's okay for you to send one email per patch, and
want to do it manually, I don't care too much if it's a mime attachment
or inline.  git-send-email(1) is nice in that regard, because it
automates invoking the MUA and piping one patch to each invocation.

You can (and probably have already done) check the files under
=2E/CONTRIBUTING.d/, which detail this.

> Philipp

Have a lovely night!
Alex


--=20
<https://www.alejandro-colomar.es/>

--yterppfxih5nougb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcrz54ACgkQnowa+77/
2zLoyQ//Ryhjf3t2avMX56UohfOvMkuvhs3yXVU4hLNgJjZbSzw4EphFXhgv9IWr
m2srhKzi20nXTw4n219XeY2AppWxHzpxUGzgQbH2sYUpemKfndLlZGrDDEeakt3G
pitloE8jtAec13dglLyNyJ4XDwtaha1qPncz76dPChr6BEYXktsK9jxjbju7O5Ty
dXesO05LaHilTbTEHqd4CZmQG7i9IgyiR83eEPL/gUEaOuvDmJebTBEz2JzIKIL0
bIAUeIvi24mNCGUYDPrbETVFXyAMQFbIRK+l0ZbEMePi9PJ2B69OZBCH3FsQaycY
OW4VTAYAhaHE+Sn7p8p+++xj4wMOoG8Av3AJ8ZakHb/FBmqM0pAhsb9BIQfiYB6U
SIj5l/zr/Q/tBibp5X0IGuK82xjvz0KwVKzULiGGTEbbxZHwkx57EsCzaTwRbLC0
iQwQdz6dAP0MSj99gvx1Abp33YLivY3Uv+fHj+cYXEsvoCYCZm2F8Wk0qGTxdJfX
V2q4b7SPfmh/4e4GP5JLJ/Ncd34jNgm7QZ0p2cgInqjGxodF9eNsrsY1AVg0Z8vW
3Tvv3QA0bhvRccTSwiDLw/AVFdeCRn394KF1N1N2JKWJyBbaUZHFkCF2tP2bYqaX
USFqWteC4J2v6CMtK0rOx417Mqb+1uevIlQ5JEFVMvgY+HD1ULU=
=RBbC
-----END PGP SIGNATURE-----

--yterppfxih5nougb--

