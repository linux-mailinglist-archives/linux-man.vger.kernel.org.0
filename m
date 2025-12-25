Return-Path: <linux-man+bounces-4562-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A99CDE188
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 21:54:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 54F493000F8E
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 20:54:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCEB028D850;
	Thu, 25 Dec 2025 20:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIdWcLiy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 799AF28C864
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 20:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766696090; cv=none; b=nV6Bi5FJOI+C3fxFqi5uHGEDo58FntVwmgvEoQ2UT/l0nBJb+zPDQMc94EMWkkYzED+CJGvw7wJTc1XoxpJddMs+XTkkOAlnw0yrNcCtwkwgeNY2H/Lturd3zOQ54qmqs/Q1BibGIRb8fTvH0zCve0QR7rWcc2+41d1OQaF4Km8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766696090; c=relaxed/simple;
	bh=OMu92FazqYjznkMo8sAjQyxK6FaWu/LOwAY74kdUKZE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UITZdydYt/8cbixpaZ48TATKD7kP8YyXH0xCTb/SNHMqYzV/4NYdaomskdVX5HmXk4DSRPVZNGS2wUNpd+YWzd7I20EaeUXE4d1pj/+GLuypdzYDSuca97OypiVsBtYSpRtL6cosqafpBnNb3CUv5sI5CWubP7Fp9AqoKMmTKik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIdWcLiy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB0D0C4CEF1;
	Thu, 25 Dec 2025 20:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766696090;
	bh=OMu92FazqYjznkMo8sAjQyxK6FaWu/LOwAY74kdUKZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pIdWcLiy+kc6FKQqVnmTF/UmIDQXDJWsZiF68fsEMCysxQ50vrLROPMnd0kPk0t5I
	 M7X6w6IBbocuo0jyGW3rVACoZQjrxrrqxlkxKM+A1+S1QhgxV/fmc+TT/0MPmXZqw6
	 tsWV6Kc1sN/D5/Gon4grta7eSOlMbaUWEZBYgUJdlFeaMXK8/MY7722gRNMAyLPHhZ
	 /H098Axio/aoOSwntqhGQzprUMLr6A8nR97GnmC55QHiajEbAA8tddX9/7z/5esTq3
	 /ip6VNGiNjGVUxVC4VpY35v2gYA9x6jU3ct5gUsTCccDQDo4WvbV0bq+fs6uBq42s4
	 3yMKXWbfMou0Q==
Date: Thu, 25 Dec 2025 21:54:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Florent Revest <revest@chromium.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_MDWE.2const
Message-ID: <aU2jhFY0ueqVHUJQ@devuan>
References: <aUv631UU4y9H1x90@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jjiwsfnheqnqc6mk"
Content-Disposition: inline
In-Reply-To: <aUv631UU4y9H1x90@meinfjell.helgefjelltest.de>


--jjiwsfnheqnqc6mk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Florent Revest <revest@chromium.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_MDWE.2const
Message-ID: <aU2jhFY0ueqVHUJQ@devuan>
References: <aUv631UU4y9H1x90@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv631UU4y9H1x90@meinfjell.helgefjelltest.de>

Hi Helge, Florent, Catalin,

On Wed, Dec 24, 2025 at 02:38:23PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     mapping protections =E2=86=92 mapping ?
>=20
> "New memory mapping protections can't be writable and executable.  Non-"
> "executable mappings can't become executable."

That text was added in

	commit 457ca4a9ae3eae9835a5c011851c4eb88b49d322
	Author: Florent Revest <revest@chromium.org>
	Date:   Wed Oct 11 13:47:44 2023 +0200

	    prctl.2: Document PR_SET_MDWE and PR_GET_MDWE
	   =20
	    Memory-Deny-Write-Execute is a W^X process control originally introduc=
ed
	    by Joey Gouly.  I'm the author of the PR_MDWE_NO_INHERIT flag.
	   =20
	    Signed-off-by: Florent Revest <revest@chromium.org>
	    Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

So let's ask the author and reviewer.  The manual page says:

	$ mansect DESCRIPTION man/man2const/PR_SET_MDWE.2const \
	| MANWIDTH=3D64 man /dev/stdin \
	| cat;
	PR_SET_MDWE(2const)                         PR_SET_MDWE(2const)

	DESCRIPTION
	     Set the calling process=E2=80=99 Memory=E2=80=90Deny=E2=80=90Write=E2=
=80=90Execute protec=E2=80=90
	     tion  mask.  Once protection bits are set, they can not be
	     changed.

	     mask must be a bit mask of:

	     PR_MDWE_REFUSE_EXEC_GAIN
		    New memory mapping protections  can=E2=80=99t  be  writable
		    and  executable.  Non=E2=80=90executable mappings can=E2=80=99t be=E2=
=80=90
		    come executable.

	     PR_MDWE_NO_INHERIT  (since Linux 6.6)
		    Do not propagate MDWE protection to child processes
		    on fork(2).   Setting  this  bit  requires  setting
		    PR_MDWE_REFUSE_EXEC_GAIN too.

	Linux man=E2=80=90pages (unreleased) (date)         PR_SET_MDWE(2const)

Do you agree with the wording fix proposal?


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--jjiwsfnheqnqc6mk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNpJYACgkQ64mZXMKQ
wqke/Q//aXxvlkba0pvdkBysPk/U8VWuV+eLeLcPjwR8AKSHHhE8JOxuvJjO7Jke
L0HEqvrUYnRiEAH0sAs3WC36CrZ48dOY7rc9WyE8TKWRz85+x50UX7rMRC4zqzzM
pEipEEjN2cIKBmt0V9raAytcSqKdfddxmcyTMHQNrHHBrAuFcrXZDcbqiQdEu7wV
fNei+cIg3KE5CpYdTS5Qbla6fD6E6rBnGdYyCF0kV5pifaFyOuUPiWZzQb927mMW
QT3hGXo+5ybM+nJiLYkDEVO7TnePHYY1h73qs5qzCEpT6Wu2nraqT/BU0VwRPmu8
iHAUPH+gduHGD25v19D2rtiPOwNvvpSAp03TGZ63kO/Rtg+lc659ChSwfis6GHkY
8QPFfDzXB/U46IlmoOGmMsLe4YahLKlI++bwhva2Aw/0gdJZ3Biy9wpZaHBY46tR
GUutfHwMpggiyPNRy8214hdQN4F+ALEs3KhykAYX2hQaiMbEAq50xrOq7lZ/zDmz
vOLkVl2dAXaY2AEmMVFSQQG7fn8D4DH1A6nEziXcPP/+0jmzHbhzLzun2cFkWgRS
6Wyc73BduU5jODmvPhste3o5k5ZAYmWAYzVef/YdCuKCO4qDTqSD6W+5uSlABO1P
/OCCXJ0xiNIT8cB6hSlpLqQWTgjXJnHn5OgP5L6lO0lv0Hw6WpQ=
=8CvF
-----END PGP SIGNATURE-----

--jjiwsfnheqnqc6mk--

