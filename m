Return-Path: <linux-man+bounces-4856-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B74EED3BD23
	for <lists+linux-man@lfdr.de>; Tue, 20 Jan 2026 02:50:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5BF44300E620
	for <lists+linux-man@lfdr.de>; Tue, 20 Jan 2026 01:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D116922A4CC;
	Tue, 20 Jan 2026 01:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hp1NtVU+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8243F1A239A
	for <linux-man@vger.kernel.org>; Tue, 20 Jan 2026 01:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768873825; cv=none; b=odfmwiMepkDvTQbM56ejc2j4AyhvEB4eo/h/bOc9ZLq1ZXjIf4FuOMJ7F6b/dpV70RWt+Ed0mI/JyGmWr4AiISFDmMOks4Isr8vHdZZ/HSnHdyQxIKl6WI0EeTIcFaLvjrSyz7uA/UBfBSxM8vEhdeiVDE8GvVSyJstE4QTWB8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768873825; c=relaxed/simple;
	bh=O9iRDuXv382Y9XPZBKusPT4i96bfdNrKI7OTf/T4eDU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Awuiw/znB6V/zsN5YmwgS59T7TapMaB13o0piqKcCvFxnolXTJk8uTiD6a6NMKAKo3MXzo4P7Xa/W+eqNtiYwXyOAEzlIn7YHBLmeyNO/rn80xwQYxBuV/MXEG44Gg3oS8GFpTSDqO6m2CXfAB7+Dy6yubbocBYw9G1DbzDrI1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hp1NtVU+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72809C116C6;
	Tue, 20 Jan 2026 01:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768873825;
	bh=O9iRDuXv382Y9XPZBKusPT4i96bfdNrKI7OTf/T4eDU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hp1NtVU+e7pPGL8+i1jmpuvkjDg0fP0eTukZt1otLzj/1vezVqM2CvG0XzXeNVMPP
	 l4kyPGTk7Puvc9lOPT45x3z2uVSw+wRsw1AUjgFuxuOJS1K56WpXVGVQguF9kYzMOx
	 mGpW1UrqHvDziJzuKhxJ891KprjEFxGMRt5xIPbk9mS2HQ8x3j1ub5netZ/NikVOoi
	 DG0GmQr7DUVjTACb2tycyyiiZFxYDZmytcldyOqRJCc3TxT9dvVo4HmWDPzvbTaY/d
	 LP6ZaoUKvM1e+Q4wwr+JyoRINbdUwc+Ty/36smJMFAA9y2lWXuGHCwWZy8ZTba+y20
	 ZplpyzrE3Ptww==
Date: Tue, 20 Jan 2026 02:50:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/19] man/man2/*: Update history of syscalls A-CH
Message-ID: <aW7ep8LDcx_-ifCK@devuan>
References: <cover.1768822707.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rsbdcp5did4c7rez"
Content-Disposition: inline
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>


--rsbdcp5did4c7rez
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/19] man/man2/*: Update history of syscalls A-CH
Message-ID: <aW7ep8LDcx_-ifCK@devuan>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>

Hi Seth,

On Mon, Jan 19, 2026 at 11:54:29AM +0000, Seth McDonald wrote:
> Heya all,
>=20
> Continuing the updating of HISTORY sections, this patch set regards
> system calls whose identifiers start with A through CH.  This time, more
> care was taken to ensure any modified lists are given in a somewhat
> chronological order.
>=20
> As hinted at previously on this list, searching for a *truely*
> chronological ordering is likely a futile effort given the seemingly
> circular influences between many early systems.  But an approximation of
> this ordering based on our limited information can still be useful.
> Which is the attitude with which these patches were made.

Thanks!  I've applied most patches.  The ones that document non-const
old prototypes, I've not applied those; all others have been applied.

> And on another note, I think I've found a way to stop Proton Mail from
> corrupting patches.  So my patches should henceforth all be PGP-signed,
> assuming my workaround is sufficient.

Yup; that worked!  All patches were correctly signed, and none were
corrupted (or at least I didn't notice).  Out of curiosity, what was the
workaround?  And how did you sign the patches?  Was it with neomutt(1)? =20


Have a lovely night!
Alex

>=20
> Seth McDonald (19):
>   man/man2/access.2: HISTORY: Update first POSIX appearance of access(2)
>   man/man2/access.2: HISTORY: Specify different access(2) prototypes
>   man/man2/access.2: HISTORY: Update first POSIX appearance of
>     faccessat(2)
>   man/man2/alarm.2: HISTORY: Update first POSIX appearance of alarm(2)
>   man/man2/chdir.2: HISTORY: Split chdir(2) and fchdir(2)
>   man/man2/chdir.2: HISTORY: Update first POSIX appearance of chdir(2)
>   man/man2/chdir.2: HISTORY: Specify different chdir(2) prototypes
>   man/man2/chdir.2: HISTORY: Update first POSIX appearance of fchdir(2)
>   man/man2/chmod.2: HISTORY: Split chmod(2) and fchmod(2)
>   man/man2/chmod.2: HISTORY: Update first POSIX appearance of chmod(2)
>   man/man2/chmod.2: HISTORY: Specify different chmod(2) prototypes
>   man/man2/chmod.2: HISTORY: Update first POSIX appearance of fchmod(2)
>   man/man2/chmod.2: HISTORY: Update first POSIX appearance of
>     AT_SYMLINK_NOFOLLOW
>   man/man2/chown.2: HISTORY: Split chown(2), fchown(2), and lchown(2)
>   man/man2/chown.2: HISTORY: Update first POSIX appearance of chown(2)
>   man/man2/chown.2: HISTORY: Specify different chown(2) prototypes
>   man/man2/chown.2: HISTORY: Update first SUS appearance of fchown(2)
>   man/man2/chown.2: HISTORY: Update first POSIX appearance of lchown(2)
>   man/man2/chroot.2: HISTORY: Update first SUS appearance of chroot(2)
>=20
>  man/man2/access.2 | 14 ++++++++++++--
>  man/man2/alarm.2  |  4 +++-
>  man/man2/chdir.2  | 20 +++++++++++++++++++-
>  man/man2/chmod.2  | 18 ++++++++++++++++--
>  man/man2/chown.2  | 24 +++++++++++++++++++++---
>  man/man2/chroot.2 |  5 ++++-
>  6 files changed, 75 insertions(+), 10 deletions(-)
>=20
> Range-diff against v0:
>  -:  ------------ >  1:  58a0a70c6308 man/man2/access.2: HISTORY: Update =
first POSIX appearance of access(2)
>  -:  ------------ >  2:  d87c7800e0f5 man/man2/access.2: HISTORY: Specify=
 different access(2) prototypes
>  -:  ------------ >  3:  7e6b054be57e man/man2/access.2: HISTORY: Update =
first POSIX appearance of faccessat(2)
>  -:  ------------ >  4:  51224c3d2e6c man/man2/alarm.2: HISTORY: Update f=
irst POSIX appearance of alarm(2)
>  -:  ------------ >  5:  c6961e073ad1 man/man2/chdir.2: HISTORY: Split ch=
dir(2) and fchdir(2)
>  -:  ------------ >  6:  61d257dc5032 man/man2/chdir.2: HISTORY: Update f=
irst POSIX appearance of chdir(2)
>  -:  ------------ >  7:  b367400491b2 man/man2/chdir.2: HISTORY: Specify =
different chdir(2) prototypes
>  -:  ------------ >  8:  d6316545d253 man/man2/chdir.2: HISTORY: Update f=
irst POSIX appearance of fchdir(2)
>  -:  ------------ >  9:  ce5b927c6695 man/man2/chmod.2: HISTORY: Split ch=
mod(2) and fchmod(2)
>  -:  ------------ > 10:  de87aa2b3e28 man/man2/chmod.2: HISTORY: Update f=
irst POSIX appearance of chmod(2)
>  -:  ------------ > 11:  02eef8835d60 man/man2/chmod.2: HISTORY: Specify =
different chmod(2) prototypes
>  -:  ------------ > 12:  691b1ee71099 man/man2/chmod.2: HISTORY: Update f=
irst POSIX appearance of fchmod(2)
>  -:  ------------ > 13:  bc1d06a06e9e man/man2/chmod.2: HISTORY: Update f=
irst POSIX appearance of AT_SYMLINK_NOFOLLOW
>  -:  ------------ > 14:  2981d5702b65 man/man2/chown.2: HISTORY: Split ch=
own(2), fchown(2), and lchown(2)
>  -:  ------------ > 15:  fccd134bc9d7 man/man2/chown.2: HISTORY: Update f=
irst POSIX appearance of chown(2)
>  -:  ------------ > 16:  ece23c04dc89 man/man2/chown.2: HISTORY: Specify =
different chown(2) prototypes
>  -:  ------------ > 17:  bf9099a04c4f man/man2/chown.2: HISTORY: Update f=
irst SUS appearance of fchown(2)
>  -:  ------------ > 18:  5abf94a520b5 man/man2/chown.2: HISTORY: Update f=
irst POSIX appearance of lchown(2)
>  -:  ------------ > 19:  fd08b4cf0a52 man/man2/chroot.2: HISTORY: Update =
first SUS appearance of chroot(2)
>=20
> base-commit: 91fa6d909b1171bc2361b5b2192c11c8be06a7d1
> --=20
> 2.47.3
>=20



--=20
<https://www.alejandro-colomar.es>

--rsbdcp5did4c7rez
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlu314ACgkQ64mZXMKQ
wqkRpA/7BmauDTNj78eRie1Boke3SJIkdTf2cuW3SlW9mRFyNuBwCLidjBYU3l7N
ntrPcLPZjWk/4FBXs5zVTY9EneQGIL3H/GKMpXLq4OVR8FsatI0gfpw+e4U9CUNJ
o4rQor1dcLKtFgkzaVVWQFyo2uROatnInPon26GHGnhTyOzxHE+wOglCXh1/mE6g
7BBLiAgr2l5LapzPIl+xPOld66MSk5wUtQ5RahEpTAzhZUPdQ+T2CU/WDzbHpoWj
kB/0exNxGn27poi9ttojfxX1exSKBDQyB4vuHR070/VG10Bg89OPxGhWBmbyISQC
5PvO6CaBOnKad5TUJ9nwP7sTmsMMFMcVT28gdoSwFn6oQy1RinhgHbRq4/83qbe/
mYOss3RPkHfTmUxVdvHJrCE3+wvo7Mw0F0H4CO8NjSHjwYwhK3CVJa5PpnZllgoq
yAe69WsbIOm5rjjNPBKaeffSCNuaal0EiiCYUDc+tsN0TZ+SHiMsvdZe1oyKbF5D
4fLJCHzX1SgwsKnJRarYABo5trIRVzQOYrBMyiwmLGpp3+zurjt9ijo+gSHWRtnH
rELlZSS98j9vK4CyW7LizGv4fNuW2akLTY1xo1teddVEuzfrsr53IkihwLwkKYK5
DTB0uUfMOf9QprEcTHsUriZ1nDVuziW+NZXSc5bXBPErmvbuE4A=
=s47i
-----END PGP SIGNATURE-----

--rsbdcp5did4c7rez--

