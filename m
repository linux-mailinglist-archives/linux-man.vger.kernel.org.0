Return-Path: <linux-man+bounces-254-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02852810D77
	for <lists+linux-man@lfdr.de>; Wed, 13 Dec 2023 10:31:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35E5F1C20945
	for <lists+linux-man@lfdr.de>; Wed, 13 Dec 2023 09:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82FB5200A6;
	Wed, 13 Dec 2023 09:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLfv/kCK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406FA20B00
	for <linux-man@vger.kernel.org>; Wed, 13 Dec 2023 09:31:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0C8FC43395;
	Wed, 13 Dec 2023 09:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702459871;
	bh=F71D3C77w4mMbeNM9QF5ZsTChWbEtcou2Od+ek+K5KI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QLfv/kCK4jAIbvyZ0b1dIIotwEyYodzt22AiW1tJeVeiHP6niVdHzpBCC05dXKJuw
	 Vf3Ystwx/CaQmSzgtSbHncZQK4LGYX8fV9VGKe99K43lqX3aWU54EGHKJLN24aK9iI
	 f8yczfB6o3Kdh/IP4zuFRCHYwCzVLUYsx5wto9Q6W0F8ylLI5tPIcLBy5F7R8r+mLw
	 fl3YbHICE1i97prnvfq6XWNqZq6Y9IR0/deXAZKdWniF1f+AasjxmSNkTXgRRPFrE2
	 razTQOYcfqDQzKKV+8id1a02BJBHj07K33shamfZC+g8KehKfD/kUcyNUxUtdnZU8q
	 vHLp6svBW9RBw==
Date: Wed, 13 Dec 2023 10:31:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: ellie <el@horse64.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions
Message-ID: <ZXl53MYCgFRMSYUG@debian>
References: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>
 <ZXhrblTGLBirUpki@debian>
 <c78fe5eb-65cd-4705-8628-d07240906bff@horse64.org>
 <ZXiaxx3mjXhLDayT@debian>
 <2c20d504-e6a4-476e-879f-be5618a4fd35@horse64.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Psb40S3rdCk+iDbS"
Content-Disposition: inline
In-Reply-To: <2c20d504-e6a4-476e-879f-be5618a4fd35@horse64.org>


--Psb40S3rdCk+iDbS
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 Dec 2023 10:31:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: ellie <el@horse64.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions

Hi ellie,

On Tue, Dec 12, 2023 at 06:55:22PM +0100, ellie wrote:
> Hi Alejandro,
>=20
> Thanks so much for elaborating! Just to clear it up, I hope it's obvious
> enough readlink("/proc/self/exe") to get a path, and then using open() on
> the result has a race by design: of the binary targeted by that path being
> renamed and replaced with a different one between the readlink and the op=
en.
> Yet this approach seems to be commonly used, so a warning on the man page
> listing /proc/self/exe not to do that seems useful.

Would you mind sending a patch for that?

>=20
> Now whether open("/proc/self/exe") has the same race condition would like=
ly
> deoend on what that does behind the scenes. If /proc/self/exe is internal=
ly
> resolved to a path string first and not directly to an inode, then it sho=
uld
> suffer the same race condition but with a smaller time window. If instead
> the kernel implementation is smart enough to not actually handle it like a
> "true" symlink, but rather look up the inode associated with the process
> directly, it would likely be safe.
>=20
> Since I vaguely remember /proc/self/exe still working when the inode was
> deleted, I assume it's likely something smarter and might be race-conditi=
on
> safe when directly opened. But it would be nice to have some more definite
> info on that in the man page, just to be safe.

I'm going to guess a little bit, from the following script:

	$ cat ppe.sh=20
	#!/home/alx/tmp/bash

	f=3D"$(readlink /proc/$$/exe)";

	set -x;

	mv $f $f.bak;
	cp /usr/bin/bash $f;
	readlink /proc/$$/exe;

	cp /usr/bin/bash $f.bak;
	readlink /proc/$$/exe;

	rm $f.bak;
	readlink /proc/$$/exe;

	echo malicious >$f.bak;
	readlink /proc/$$/exe;

	head -c4 /proc/$$/exe;


	$ ./ppe.sh=20
	+ mv /home/alx/tmp/bash /home/alx/tmp/bash.bak
	+ cp /usr/bin/bash /home/alx/tmp/bash
	+ readlink /proc/5055/exe
	/home/alx/tmp/bash.bak
	+ cp /usr/bin/bash /home/alx/tmp/bash.bak
	cp: cannot create regular file '/home/alx/tmp/bash.bak': Text file busy
	+ readlink /proc/5055/exe
	/home/alx/tmp/bash.bak
	+ rm /home/alx/tmp/bash.bak
	+ readlink /proc/5055/exe
	/home/alx/tmp/bash.bak (deleted)
	+ echo malicious
	+ readlink /proc/5055/exe
	/home/alx/tmp/bash.bak (deleted)
	+ head -c4 /proc/5055/exe
	ELF

It doesn't seem to care about the text of the symlink, which in fact
changes as much as the file itself does.  There don't seem to be any
races in open("/proc/[pid]/exe", ...).

>=20
> My apologies if I got some of the technical parts of this wrong, but
> hopefully it provides some explanation of why I brought this up.

Sure.

Have a nice day,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--Psb40S3rdCk+iDbS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmV5edYACgkQnowa+77/
2zIaQg//Ytb+XzJnl/qQpurgajUyExdMnvLdFaR4avLwuQ3Nk2hE4e+8D9JT+iwI
RFfXYn3GXgTcQdC03b12Tf44F4FkCY0zPEj6IMbGmcBrceiatEz6GndWokzVnJDg
dQpK35mO+xtNm71C14TmIlKs2wUGCtUOHt2mq+naid/l7yZ7hsWqxWrWiEMnalwJ
iszhQbTjBSB3vMG3B3uz0bdljR6I8WbldU82P8okUxJM3EDNRpsROwGyUa/gwgEg
EMncTQX8+V9GyDhWivi8wDktvolmpzNUNjZQ5qZRH9ywWavx30lzMkXgLorAotJx
C0bJglrO+p5IcFeOF1+yDHMEPIbD3+ikwAkyJsN5ctByaQ9O0Qc+mHJa3J2sFerj
ZO1j57xR8vIB/Lr+vttxoNJVTa8iRkPWB9DK1nS2DIoMgum5pPn8V02WNm8JCi9P
5P9x0V6E/jY5Lx4WqGnQWdHJYjkPFl/HTJJqda1gCwThj2YSn5cml8zuGao8P4TL
vhS47wSzTcma4WaZbYnffsUybO5ugMaaEwDIdjMSmO/JY4MH8d3z1TlH+CgVWKVa
CWUGArBXUnK1+AbjHjE4fJYeGSMyHI2LDF5OQ1etzXzh7xPUhKTyuMNZ/KigEjvI
QfamZIy82ux4jN52QtEc7c/9Ncr96cOs+/8OwE9XF0fDCmtBU8Y=
=GDJ4
-----END PGP SIGNATURE-----

--Psb40S3rdCk+iDbS--

