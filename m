Return-Path: <linux-man+bounces-4464-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D9227CD4059
	for <lists+linux-man@lfdr.de>; Sun, 21 Dec 2025 13:49:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 35E533005D2F
	for <lists+linux-man@lfdr.de>; Sun, 21 Dec 2025 12:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0361F155757;
	Sun, 21 Dec 2025 12:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjABql/y"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6AD83A1B5
	for <linux-man@vger.kernel.org>; Sun, 21 Dec 2025 12:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766321355; cv=none; b=iep22M+zS56oVEcyuDW6v1uJqDJIJGiq6jRTU0jStY2Xzw+6zN4gcQcH/gOWL/6M+CfI/6oHJh2ebANrZ0/5KyxlNDiXVvAMgDnTP4NdqNo67LgMC6TAyrhwNVspWlckbjrvXfKMSkDVR/NkFhhmgOLQ4nCPe62vhdOdm5EdHMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766321355; c=relaxed/simple;
	bh=4EmRNd+Fel47oyaMKqHtPsAQ6k5wnfJ5RSX1vJnzjXE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jFEqSWt/bcXST6JcZCBtYVH0Mia8v2Su6ZGTu41B6atleXJFscPFFqWvDKZk6iG4W4MZZ19Pli1/RvMqXJWVPLkBvysVu9Vggcwn6ZawfHwGFzbKSb5dSTjqNC1zPiGnnKJhiGN+RWlzu/yYeAKiDvo1+4KIeKWfdsKkla7zWJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjABql/y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90E27C4CEFB;
	Sun, 21 Dec 2025 12:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766321354;
	bh=4EmRNd+Fel47oyaMKqHtPsAQ6k5wnfJ5RSX1vJnzjXE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gjABql/yCnl3aNt0Tu0gihSTdLfwHA20PtcNyGXYw2flLGurr2ZQeQIGbSuCXJ0yJ
	 c+jXv5UqLSEmGoFqwCVp2UzlNMO+knS3HH52LAFFOsvQ21WpcG5yb+VJCNliycNXxp
	 9iONf75N9oFHa+fA5fAnt/5Qqpdq6sUiyS5Rfh96c0aaBxkEqZAFCMSVRSlXhCukdA
	 DAV8gFVMtG/bTx3U0Dms74dGG/qHQQdlIYp9UvM73UUOteAJVE/diOqs24mQ5W3euo
	 LE9K3rX9SSUcG1W9s9+Rw5BpLIugNG6OfTbR5jN49OI8QyJNLi64fuHTEjkeQAZiEL
	 fBTtcPPJUdnCA==
Date: Sun, 21 Dec 2025 13:49:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Early POSIX versions seldom included in history sections
Message-ID: <aUfsE7Yt45BVO56T@devuan>
References: <Wd9QASP6rczMWW9o5HQVSOFmDMpmWqmUDTl5T1WrPshq-HU7DB41CGYaLMx7bHyEK5GOjtZ1EIV7GJgbXZlQyjS2DxLIuxWdMFYqPsoNJEI=@pm.me>
 <aUbf39o2ce0WhJoA@devuan>
 <nBJHItg3tSnUmbXVk7-VufAS9V8JckVOUAzwYGrGW59ireGiPGb3ppy40QL3bgZhJbheep4RVQ8owzThk4LFmFWV5kohm8s6FbGoqAxchp4=@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="se5fkighhacofmmw"
Content-Disposition: inline
In-Reply-To: <nBJHItg3tSnUmbXVk7-VufAS9V8JckVOUAzwYGrGW59ireGiPGb3ppy40QL3bgZhJbheep4RVQ8owzThk4LFmFWV5kohm8s6FbGoqAxchp4=@pm.me>


--se5fkighhacofmmw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Early POSIX versions seldom included in history sections
Message-ID: <aUfsE7Yt45BVO56T@devuan>
References: <Wd9QASP6rczMWW9o5HQVSOFmDMpmWqmUDTl5T1WrPshq-HU7DB41CGYaLMx7bHyEK5GOjtZ1EIV7GJgbXZlQyjS2DxLIuxWdMFYqPsoNJEI=@pm.me>
 <aUbf39o2ce0WhJoA@devuan>
 <nBJHItg3tSnUmbXVk7-VufAS9V8JckVOUAzwYGrGW59ireGiPGb3ppy40QL3bgZhJbheep4RVQ8owzThk4LFmFWV5kohm8s6FbGoqAxchp4=@pm.me>
MIME-Version: 1.0
In-Reply-To: <nBJHItg3tSnUmbXVk7-VufAS9V8JckVOUAzwYGrGW59ireGiPGb3ppy40QL3bgZhJbheep4RVQ8owzThk4LFmFWV5kohm8s6FbGoqAxchp4=@pm.me>

Hi Seth,

On Sun, Dec 21, 2025 at 08:17:07AM +0000, Seth McDonald wrote:
> On Sunday, 21 December 2025 at 03:44, Alejandro Colomar <alx@kernel.org> =
wrote:
> > On Sat, Dec 20, 2025 at 04:17:44PM +0000, Seth McDonald wrote:
> [...]
> > > If the reason is the latter, then I'd be happy to help here. I have
> > > access to POSIX.1-1988, POSIX.1-1990, and POSIX.1-1996, as well as SUS
> > > (1994) and SUSv2 (1997). So I can check each function and update their
> > > man page's history section with an earlier POSIX (or SUS) version if
> > > applicable. Though only if that's desirable for the man pages, of
> > > course; let me know if so.
> >=20
>=20
> > Yup! Thanks a lot! That would be helpful. :)
>=20
> Cool! So just to ensure that I conform to the man pages' preferences/
> standards, I want to ask a few things about documenting POSIX and SUS.
>=20
> POSIX and SUS converged to the same document in POSIX.1-2001/SUSv3. So
> if, for example, a function was first introduced in SUSv2 and then first
> appeared in a POSIX standard in POSIX.1-2001, should its history section
> include SUSv2, POSIX.1-2001, or both?

Both.

And for any similar questions, when in doubt, more information is
better.

> Suppose instead a function was first introduced in SUSv2, included in
> POSIX.1-2001 as an XSI extension, then in POSIX.1-2008 it was moved to
> Base. Should its history section include POSIX.1-2001 or POSIX.1-2008 as
> its first POSIX appearance (since XSI is SUS)?

I think you could do this:

SUSv2.
POSIX.1-2001 (XSI).
POSIX.1-2008.

> Suppose a function appeared in POSIX.1-1988, but its function signature
> then was different (e.g., returning 'int' instead of 'ssize_t', or
> taking 'char*' instead of 'const char*'). And it only got its current
> signature in POSIX.1-1990. Should its history section include
> POSIX.1-1988 or POSIX.1-1990?

I'd include both, and then include a paragraph clarifying that in
certain standards it had a different prototype (and show the prototype).


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--se5fkighhacofmmw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlH7MAACgkQ64mZXMKQ
wqmmhg/9F0SuKK1VnGh7ZK0xOQZBpfTOkdnmrnDrGgTTjCh90lYqVeJWpdi5G+Wt
7sMpeJumvbPZXFxN7cL+/AWvCS5S0rZoOVRH3UmyBU4GFkSXj5+TIPL9zAO/EKmt
x8RxAj7ogEiQg61FAZWzrkl6h6hGw6M58iczaYLaLoy83TtBmG7bDQ42Qt3VoxHz
IQYGKE2c6ZYL25Z8LVsT2p0ve3BZ003nQKpcdvva6hdgmiCSm1NJe6PM1DK9rceV
RryUKVYW3XI9NoF95Ul1HfLQ7JRhBAxffOIgKbMwgA2LYL3F7xngn16VHOmRw4u6
9K0/NMhWzaL2kT741XqJy44x/EuqCxhvlL5xeKJLd/xQp+y6U5GPtDPagHtjpmeb
0IOJyYbFAdCnK/PyIilcjlMd0jEROV20jNdgk8PyK078nZwQ26nJO/GhIzLk/Tni
euqPokbPBQNV9i4ycX/5mc4KibUqhEk6GCUqYfKx/Y9q0vf5bTmwr+nipOvbieq1
7JpdFVIXycL+inuI/j3J+8xhOT15KTCktLGV8dJ697jf6X/ot0XISYj5z8Hf6J7G
dGmH1zpwKL6NwcPSWPhmMNdiAwuXy7tKtmMs2R7RKNMlU8uKvPqBumNRWGtNQfKg
T3fkFCG0SQyezEIkIDifID0asmL4LWMTxkV3UcV23qlmvI9cX5Q=
=Shka
-----END PGP SIGNATURE-----

--se5fkighhacofmmw--

