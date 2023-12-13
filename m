Return-Path: <linux-man+bounces-256-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 651018113C1
	for <lists+linux-man@lfdr.de>; Wed, 13 Dec 2023 14:54:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 979AB1C20FC7
	for <lists+linux-man@lfdr.de>; Wed, 13 Dec 2023 13:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13EAE2D7BA;
	Wed, 13 Dec 2023 13:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cneTAHxG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7912D7B0
	for <linux-man@vger.kernel.org>; Wed, 13 Dec 2023 13:54:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 596E4C433C8;
	Wed, 13 Dec 2023 13:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702475669;
	bh=7n6XmpDPzQG71sTp71L4NtLC7Xh8GcivXz4OOWAk6kk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cneTAHxGxswHviEVjG2PUnJDLXym+bVw30GN6/MM0lvknFWgOX8H0gOjRV8tKNBA6
	 hZnAxwiPD8vuVEAy1n+F0qPR9kG/qDiAqnTHLVqJs2mPvREe86MnveSZw1i4O/eJY9
	 ZqlZiXbvInVwvc2oOLLMqq1iJKft5hPAzJsVXjuAanE6nvQEV//jAWDuWn8RVmRYIk
	 rVGonKdo3UjEcUlU2KVKWf2nK0tseQhw8xh4hol1B56WeZnjWnZ5xaEIFmK4JCHmCC
	 zIWQZDT3zt858tMMzPzIW/x4lxoU5/xHTVoiSCiFdFf0V6WQ89zTurICao5W9WaGMK
	 EZoUDvMCSrWOQ==
Date: Wed, 13 Dec 2023 14:54:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: ellie <el@horse64.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions
Message-ID: <ZXm3kXJF-FGtbMxf@debian>
References: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>
 <ZXhrblTGLBirUpki@debian>
 <c78fe5eb-65cd-4705-8628-d07240906bff@horse64.org>
 <ZXiaxx3mjXhLDayT@debian>
 <2c20d504-e6a4-476e-879f-be5618a4fd35@horse64.org>
 <ZXl53MYCgFRMSYUG@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XmbQ4cdShGijzocv"
Content-Disposition: inline
In-Reply-To: <ZXl53MYCgFRMSYUG@debian>


--XmbQ4cdShGijzocv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 Dec 2023 14:54:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: ellie <el@horse64.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions

Hi ellie,

On Wed, Dec 13, 2023 at 10:31:02AM +0100, Alejandro Colomar wrote:
> I'm going to guess a little bit, from the following script:
>=20
> 	$ cat ppe.sh=20
> 	#!/home/alx/tmp/bash
>=20
> 	f=3D"$(readlink /proc/$$/exe)";
>=20
> 	set -x;
>=20
> 	mv $f $f.bak;
> 	cp /usr/bin/bash $f;
> 	readlink /proc/$$/exe;
>=20
> 	cp /usr/bin/bash $f.bak;
> 	readlink /proc/$$/exe;
>=20
> 	rm $f.bak;
> 	readlink /proc/$$/exe;
>=20
> 	echo malicious >$f.bak;
> 	readlink /proc/$$/exe;
>=20
> 	head -c4 /proc/$$/exe;

On 12/13/23 10:31 AM, Alejandro Colomar wrote:
> There don't seem to be any
> races in open("/proc/[pid]/exe", ...).

ellie wrote:
| Sorry if I'm just confused, but I don't understand how the given test=20
| script reproduces or tests anything relevant to a potential open() race.
|=20
| The race would work like this:
|=20
| 1. Process A issues open("/proc/self/exe")
|=20
| 2. Process A's open() on /proc/self/exe heads into whatever libc or=20
| kernel path that resolves where that symlink points to a path, if it's=20
| treated as one.
|=20
| 3. Process scheduler switches to process B.
|=20
| 4. Process B switches out process A's binary, such that a different=20
| binary is now at the old path.
|=20
| 5. Process A's open() code in libc or kernel space resumes and opens the=
=20
| file pointed to by the given path, which is now a new binary.
|=20
| I'm pretty sure you can't test that anyway to rule it out, that could=20
| only be answered by looking at all the relevant code and whether=20
| /proc/self/exe is ever resolved to a path (like I assume an actual=20
| symlink usually is) or directly to an inode (which would likely be safe).

I didn't test exactly that, but I proved that it doesn't work like a
symlink.  If it were a simple symlink, my script wouldn't get the new
path of the file after moving or removing it, and the symlink would
become dangling.

Still, the kernel could do the stupid thing: magically update the
symlink when the file changes, but still use a symlink, so open(2) would
still have a race.  I'm assuming the kernel doesn't do that stupid thing.

It must be implemented using the file description, or something like
that, and thus it would be free of races.

Have a lovely day,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--XmbQ4cdShGijzocv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmV5t4sACgkQnowa+77/
2zLDlxAAkNtJleFCrOvuMBDdryHF1+ZYlIfPvdLNxbKmES+exkL+vYZHvb46nap/
/GvJeedNhzQnycMVOUitB/FzEbqbtSLncn9HjY+M1LI0bQAUHoZvFHDQSJNz939C
La3hMxmitwbIjjAs/qaqSHi9fSOPND8/3JYqWNk9ylw4g0Ex6ledJXIIAhFexSfX
IrhaQ7lrBMadNaG9ihzjkfmVUcnoHvp43kYwdDoPBWjxry3cLeKvNH0HpfReVkqU
Sx7FY5Sz7igNJvg69zRWPKaLvUPxDAILMVts1HQMlWFYihcD5ZAKJKcv7lCXhlHr
l2UmJjeimmuAwS4qAg9bGlAQnZc7muP/LuAyGYHxzj1P9Swx1XCV4aXZcI/+zO3m
w4k9rv8F6DAW6aZ9bjil73kgJhjqc+RpN6CbjMXr55fGVSGFbME3q+ppiAfDjRGE
pz+Am93htac6ERrgIV9GsMZRAlwTgMxL5H10TRY6D8ahzqri5+BgY66dDdNaesSG
urUnBVJUVcbYb68BbQCxYpHZqeXMnO4qngeDGDZq0mNIx2qxL1gFwhPE6ylMQw5q
3r69ufBp6scgkjV4lDwMryyjf84fsOSB3T8q7RblWk2/dDGaT1StsTCdoyR1aNNh
A3aU1g9UBj0Gu9j6aa7pmgkacd1zK/BmPPyQqh/JhlaaV2Yonl8=
=uOJ9
-----END PGP SIGNATURE-----

--XmbQ4cdShGijzocv--

