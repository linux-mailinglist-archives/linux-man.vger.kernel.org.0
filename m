Return-Path: <linux-man+bounces-4816-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C999FD3132F
	for <lists+linux-man@lfdr.de>; Fri, 16 Jan 2026 13:39:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A2CD301A1CC
	for <lists+linux-man@lfdr.de>; Fri, 16 Jan 2026 12:39:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C5711E0E14;
	Fri, 16 Jan 2026 12:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEvYt573"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FE51D54FA
	for <linux-man@vger.kernel.org>; Fri, 16 Jan 2026 12:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768567151; cv=none; b=Fu72V2IV2k1TeR7ZZUAtibVRsj/IoODRVp779efk6eLamy9qGeQb2W5kV+401BF66f+lnnPcXpSXlLE9lIV5BVCfAupPL69OBNY4nY9yt69SaWD8UykyLo7RAMa/pfsSQXlcP+iJODtRiMWjq2k9MMCh1H/hNfpAHQpeq8WK2Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768567151; c=relaxed/simple;
	bh=vO0y97q90pGQ/94JrdypYJVtfcBGGcl/G1qKkWV3G/M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DmAQuWQ6MEmSGuMaKB5xCcXH6K+/aD49krkF1K0gTZbadjVwnxIgTIa5NM9ZlsaUQ8u4+tHMxZHn534V2Iv4B1vJ67rD3foSfxQFD8xoNCdB7A8j869rUSYNuUxO5475xD1Ms3vQCszmDO8dUi/NVvBQwR5FXA7WSn27yqRORQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEvYt573; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EB54C116C6;
	Fri, 16 Jan 2026 12:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768567151;
	bh=vO0y97q90pGQ/94JrdypYJVtfcBGGcl/G1qKkWV3G/M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YEvYt573PuOxh6yvTSUfWaXeadPcZA2xCukJsoqahghe6Tqy2tfHVtm5JosYDqglg
	 MadCDxq7TMiq9XKxCJn7ifatBu/poiRUwXL47hBPPBluJb//0cDmZFcW7G8KozFkeK
	 bAyoTeUGlBhG5woXyXPy6xDgRdenf7bML9NI4AjCwPVK4JK80+dHmNJO1ziUQoV2uL
	 YB1ReB/cbuxx3++l13DLJM8qte0jRxn5RSA/BOa7F4M0VpKb492wuaQJ9F7sSMH2II
	 XHg6ELF4RWr4K2vj2952UDOidQfw4sAx1bO/+NFVJWZ7XoVo43rihsIA+FFfsFG2kW
	 U96+5RE8zeKXw==
Date: Fri, 16 Jan 2026 13:39:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Florent Revest <revest@chromium.org>, 
	Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_MDWE.2const
Message-ID: <aWowCOHKdluUVvfl@devuan>
References: <aUv631UU4y9H1x90@meinfjell.helgefjelltest.de>
 <aU2jhFY0ueqVHUJQ@devuan>
 <aWoOt_PCGehF1f_G@arm.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cote23s7rftpqy2p"
Content-Disposition: inline
In-Reply-To: <aWoOt_PCGehF1f_G@arm.com>


--cote23s7rftpqy2p
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Florent Revest <revest@chromium.org>, 
	Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_MDWE.2const
Message-ID: <aWowCOHKdluUVvfl@devuan>
References: <aUv631UU4y9H1x90@meinfjell.helgefjelltest.de>
 <aU2jhFY0ueqVHUJQ@devuan>
 <aWoOt_PCGehF1f_G@arm.com>
MIME-Version: 1.0
In-Reply-To: <aWoOt_PCGehF1f_G@arm.com>

Hi Catalin,

On Fri, Jan 16, 2026 at 10:11:03AM +0000, Catalin Marinas wrote:
> Hi Alejandro,
>=20
> On Thu, Dec 25, 2025 at 09:54:46PM +0100, Alejandro Colomar wrote:
> > On Wed, Dec 24, 2025 at 02:38:23PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:     mapping protections =E2=86=92 mapping ?
> > >=20
> > > "New memory mapping protections can't be writable and executable.  No=
n-"
> > > "executable mappings can't become executable."
> >=20
> > That text was added in
> >=20
> > 	commit 457ca4a9ae3eae9835a5c011851c4eb88b49d322
> > 	Author: Florent Revest <revest@chromium.org>
> > 	Date:   Wed Oct 11 13:47:44 2023 +0200
> >=20
> > 	    prctl.2: Document PR_SET_MDWE and PR_GET_MDWE
> > 	   =20
> > 	    Memory-Deny-Write-Execute is a W^X process control originally intr=
oduced
> > 	    by Joey Gouly.  I'm the author of the PR_MDWE_NO_INHERIT flag.
> > 	   =20
> > 	    Signed-off-by: Florent Revest <revest@chromium.org>
> > 	    Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> > 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
> >=20
> > So let's ask the author and reviewer.  The manual page says:
> >=20
> > 	$ mansect DESCRIPTION man/man2const/PR_SET_MDWE.2const \
> > 	| MANWIDTH=3D64 man /dev/stdin \
> > 	| cat;
> > 	PR_SET_MDWE(2const)                         PR_SET_MDWE(2const)
> >=20
> > 	DESCRIPTION
> > 	     Set the calling process=E2=80=99 Memory=E2=80=90Deny=E2=80=90Writ=
e=E2=80=90Execute protec=E2=80=90
> > 	     tion  mask.  Once protection bits are set, they can not be
> > 	     changed.
> >=20
> > 	     mask must be a bit mask of:
> >=20
> > 	     PR_MDWE_REFUSE_EXEC_GAIN
> > 		    New memory mapping protections  can=E2=80=99t  be  writable
> > 		    and  executable.  Non=E2=80=90executable mappings can=E2=80=99t b=
e=E2=80=90
> > 		    come executable.
> >=20
> > 	     PR_MDWE_NO_INHERIT  (since Linux 6.6)
> > 		    Do not propagate MDWE protection to child processes
> > 		    on fork(2).   Setting  this  bit  requires  setting
> > 		    PR_MDWE_REFUSE_EXEC_GAIN too.
> >=20
> > 	Linux man=E2=80=90pages (unreleased) (date)         PR_SET_MDWE(2const)
> >=20
> > Do you agree with the wording fix proposal?
>=20
> Just to make sure I understand, do you want to change "mapping
> protections" to "mapping" in the PR_MDWE_REFUSE_EXEC_GAIN description?

I didn't have an opinion.  Helge proposed this, and I have no idea
whether the proposal is good or not, which is why I forwarded it to you.  :)

> Fine by me but I would use "mappings" (plural) instead. It matches the
> following sentence.

Yes, plural seems more correct.  Thanks!
I've applied the following patch:

	commit 6352d57d7324d8c6fee2d335f103d8755ea5a620
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Fri Jan 16 13:37:28 2026 +0100

	    man/man2const/PR_SET_MDWE.2const: wfix
	   =20
	    Reported-by: Helge Kreutzmann <debian@helgefjell.de>
	    Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
	    Cc: Florent Revest <revest@chromium.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man2const/PR_SET_MDWE.2const b/man/man2const/PR_SET_MDWE.=
2const
	index db75b1873..4749ea5be 100644
	--- a/man/man2const/PR_SET_MDWE.2const
	+++ b/man/man2const/PR_SET_MDWE.2const
	@@ -26,7 +26,7 @@ .SH DESCRIPTION
	 must be a bit mask of:
	 .TP
	 .B PR_MDWE_REFUSE_EXEC_GAIN
	-New memory mapping protections can't be writable and executable.
	+New memory mappings can't be writable and executable.
	 Non-executable mappings can't become executable.
	 .TP
	 .B PR_MDWE_NO_INHERIT " (since Linux 6.6)"


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--cote23s7rftpqy2p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlqMWwACgkQ64mZXMKQ
wqm1YhAAmYA9Y3wtGFVzSLtzeED4D+JJfUGKFAvSNnK6v+Sw7fhYlvkw/N4jB+g/
TLH2MVI2HJB91Ckkw95SsbmDpiVA5hjxo2AtbD0NJB+zBIA+eZe3tbjfmzBLdA4X
1/xqWYN56NOD4W5OaaXWWPKJU3nILkhki0ojaAFYX0OXS21hDtlfBDM3LJAnZg8b
iiCUhdv1On2U6DnpzeBdrMfs8JKjIg3xBoQs2zG/hHLO5dJykzwi+j36p4okOj/8
ZoTaihKLJK+ZkOIYPbO/O3Hb37ZPSDbhnQ0Lmgx3UKl61MWaNwzeLkL6OWSyiRzb
xPY4t41RG9rbcG+fu9FQa1xvwYEfCS+MOrzcKi9aegtmpdFNvknMbq/+qqrCbUTV
A+ErhwetG/7ZtR7EYph40BLc76NkYVquTqbvVtk09fOpuNfQ4AXp6HLYtKEMxpxN
OK5ixBV7bWaSav43EXQXlZjen8wkfkcSoIGkkyK7bR8LCpVm2ognnj/pXaKu292D
8V4nK7uaN/Ic/oSjKonN7CloK0Xv9Gll4NlUFt5FKNSHSYMBBar5LEGSANNZOsiB
6bhRYNRb9DqHqUBiGjCBDLn+zY8Ntp7XpKpI19EfljQJmmiqODNjltsYxUmhMdZ1
lImCezlDeo0Z5RMD7O4I0gMASB9S6ic+Hj7l5Boco3SyID563Sc=
=YOpz
-----END PGP SIGNATURE-----

--cote23s7rftpqy2p--

