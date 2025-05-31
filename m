Return-Path: <linux-man+bounces-3073-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA45BAC9CC0
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 22:41:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F94717BD37
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 20:41:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69BF61A705C;
	Sat, 31 May 2025 20:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkP6P8yE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293191448E0
	for <linux-man@vger.kernel.org>; Sat, 31 May 2025 20:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748724074; cv=none; b=h4KSNOsNzliwiHvR2hcKVILGjLdSaVn3nYD2/Ht/kXvH3zOQ9nUnbl+GTV4WZCcxNkjvLH7KWkaZNuff1q37TAjZtx5SAFLikeI4QMHdqSpYTbpQoEnc6E3bQrudjfI+EWCEA1R8Cvz1bycbxDJXKNNQ+h0nSpErUEeoye4rxx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748724074; c=relaxed/simple;
	bh=rYDxXARm4ZTaIgGdUMd8GOYpXbAfnvuweJYX95SAHhs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hXEhyMTZkWO9NrKdqCdZycmGCuQLJbij8mZ8gt98dmuPP350zcMNbBXN7EFOE14fSfbLA+A6ABJq0AIm9sX4i2wgMQsYfj61kwhSh5dI3727LOz+cswRPrh/qDz67v0b/6wqobjGSRiwHrX2nxoqB9sqGf4gYVvWh5s3ckAOubU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkP6P8yE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEBADC4CEE3;
	Sat, 31 May 2025 20:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748724073;
	bh=rYDxXARm4ZTaIgGdUMd8GOYpXbAfnvuweJYX95SAHhs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HkP6P8yEYwPWrQGv8EE/9ArqOMB2TeH39OD7TshnJkt/pA5TN3kBmFjfxkCxiLY5G
	 +9P062+PnLSDG8hxkwhSD+iaQmIqLclXlSBJBDPkqZaU6wHsEIIr5p0qd0u5Hf7KHT
	 VhZMypFyxAkOifeRvjXLhmYSgOHZl54LuuvAJSCPTheiAJU9u3FOL76i9ak9y0wAgi
	 G534PTz8IqowWZtFTp4p17chMtYz1ZhYH48zbQEvJnDW5gz5u5XMDvSygXMd4FphMj
	 pCkYetH8xFnvDz85Z7ZX7gUqZMzL5Ue6hardAYSDbBtSlQR7QZLhGNiE+LAR2RMID0
	 jPlCdw0iMpH1A==
Date: Sat, 31 May 2025 22:41:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/: Fix name of vm.hugetlb_shm_group
Message-ID: <it532gmferbotcl7siamgsvtvoqkrqbnq23gtgluk6zmdi4scw@bx322ox7cite>
References: <buticgacol4egbwxw5vr2l7osa3rwhpsw2skm2qfazjrkggkof@ghg35koms4wa>
 <op673ihd4gyc7esgrdoajeer7bsvirf446rcq2tzuk3fkfs7fk@tarta.nabijaczleweli.xyz>
 <t67f5vgjqhm7zariy3phlva4lohzchvskkaxeo6qweoaiyifuy@h5dwlwfuzbsr>
 <qyhdcfqk5dgwikvvwj552sumntssctal2bs7ppihsorryt3oko@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mcihrjdl2ouhod6d"
Content-Disposition: inline
In-Reply-To: <qyhdcfqk5dgwikvvwj552sumntssctal2bs7ppihsorryt3oko@tarta.nabijaczleweli.xyz>


--mcihrjdl2ouhod6d
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/: Fix name of vm.hugetlb_shm_group
References: <buticgacol4egbwxw5vr2l7osa3rwhpsw2skm2qfazjrkggkof@ghg35koms4wa>
 <op673ihd4gyc7esgrdoajeer7bsvirf446rcq2tzuk3fkfs7fk@tarta.nabijaczleweli.xyz>
 <t67f5vgjqhm7zariy3phlva4lohzchvskkaxeo6qweoaiyifuy@h5dwlwfuzbsr>
 <qyhdcfqk5dgwikvvwj552sumntssctal2bs7ppihsorryt3oko@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <qyhdcfqk5dgwikvvwj552sumntssctal2bs7ppihsorryt3oko@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1,

On Sat, May 31, 2025 at 07:58:30PM +0200, =D0=BD=D0=B0=D0=B1 wrote:
> On Sat, May 31, 2025 at 07:44:12PM +0200, Alejandro Colomar wrote:
> > > Fixes: 090fdddb4 ("memfd_create.2, mmap.2, shmget.2: Document the EPE=
RM for huge page allocations")
> > > Fixes: 6cee0ddeb ("proc.5: Document /proc/sys/vm/sysctl_hugetlb_shm_g=
roup")
> > Please use 12 characters for the hash, and include the commit date in
> > commit references.
> ftr I re-used the format from 6a949e9b08fd1ad4e77584276b9566e45fc07a93;

Yeah, I sometimes forget to complain or amend myself.  :)

> the Fixes:es from git llog | grep -m100 Fixes: | uniq

Hmmm, I see some interesting pattern.  The first commit in which I used
that syntax was

	$ git log | grep ^....Fixes: | grep '(....-..-..' | tail -n1
	    Fixes: ba687b00ecb3 (2023-07-30, "man3/: srcfix")
	$ git log --grep 'Fixes: ba687b00ecb3 (2023-07-30, "man3/: srcfix")' --one=
line
	842a69c6a man/man3/isalpha.3: tfix
	$ git ref 842a69c6a
	842a69c6a594 (2024-12-11; "man/man3/isalpha.3: tfix")

and since then it seems I've been quite consistent, with only a few
exceptions:

$ git log 842a69c6a594^..master | grep '^    Fixes:'
    Fixes: d7dec35a3b19 ("man/man2/ioctl_userfaultfd.2, man/man2const/UFFDI=
O_MOVE.2const: Document UFFDIO_MOVE")
    Fixes: a252b3345 ("ioctl_userfaultfd.2: Describe two-step feature hands=
hake")
    Fixes: 336bd62ba24c (2021-03-21; "close_range.2: Include a better examp=
le program")
    Fixes: bb8164dec0c4 (2020-10-22; "slist.3: ffix: Use man markup")
    Fixes: 18e7c4597c4e (2024-11-17; "man/: Terminology consistency reforms=
 (n, size, length)")
    Fixes: d2c2db8830f8 (2025-03-14; "man/: SYNOPSIS: Use GNU forward-decla=
rations of parameters for sizes of array parameters")
    Fixes: 2904e040ded2 (2025-02-02; "man/man2/mkdir.2: ERRORS: Add EOVERFL=
OW")
    Fixes: 76f12e3fd3ea (2025-02-10; "share/mk/: Escape '#' in regexes")
    Fixes: 906ab4945cd3 (2021-08-20; "mount_namespaces.7: Rewrite locked mo=
unts examples to use/etc/shadow")
    Fixes: 0d69e51cd4b8 (2025-02-10; "share/mk/: Use ?=3D assignments for u=
ser-facing variables")
    Fixes: 35a780a99bd8 (2024-07-20; "share/mk/: CPPFLAGS: Only define _FOR=
TIFY_SOURCE if it's not already defined")
    Fixes: 2130162900ab (2024-11-03; "share/mk/, etc/shellcheck/: lint-sh: =
Add target to lint shell scripts")
    Fixes: 7bda5119fe5e (2024-09-08; "timespec_get.3, timespec_getres.3: Ad=
d page and link page")
    Fixes: b42296e4feaf (2022-09-15; "Various pages: EXAMPLES: Use unsigned=
 types for loop iterators")
    Fixes: 07c3768e9db8 (2023-08-15; "proc.5, proc_pid_limits.5: Split /pro=
c/PID/limits from proc(5)")
    Fixes: 8c74a1cea495 (2016-07-07; "user_namespaces.7: Clarify details of=
 CAP_SYS_ADMIN and cgroup v1 mounts")
    Fixes: f2dfd79facf0 (2024-12-13, "src/bin/diffman: Add default case")
    Fixes: ef53ef760638 (2024-12-18, "man/man3/getline.3: Clarify ERRORS")
    Fixes: ba687b00ecb3 (2023-07-30, "man3/: srcfix")

I should try to avoid those mistakes, though.

Another thing is that I originally started with a ',' but then switched
to ';' as the separator, because I prefer to keep the comma to separate
the author date from the commit date when I print both with my ref2
alias:

	ref2 =3D show --no-patch --abbrev=3D12 --date=3Dshort \
		--format=3Dtformat:'%C(auto)%h%C(reset) %C(dim white)(%ad, %cd%x3B \"%C(r=
eset)%C(auto)%s%C(reset)%C(dim white)\")%C(reset)'

$ git ref2 master^
8bc318c60ffe (2025-05-18, 2025-05-21; "man/man3/*printf.3: Document ERRORS")

> vary widely and most don't have a date either.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--mcihrjdl2ouhod6d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg7aV8ACgkQ64mZXMKQ
wqkL+Q/+KdDCsxxQXu6YpAEsGIOLpmYd/HcJLMScQEQ5BtRQFBvj6+4W8VWaJdxP
98uRyNBxnGmFYsC/ZRqxWgRdqRQyO26bJTQcJ/zNj5MgGBApmIybuS4aqSKtETlp
cliZs3T93YvFDMm6wMzHlf2GSaDy9yYt20ZTDy4A/+gcBRLVIX1WEPz912vsrklY
HfN57XACeNTEoowP89XQzxtVNdPomd3ZcT78lzI6KyxJPZV3kpbnSBoVlmHbX2Su
8IG5ciuDt1zXDfUY15xrP4+CV85p16J+sLZ0wYmAZfvkVd+nlQCF6mhZWBWhmu8B
ovy+2hY6x/y2+F7Xj2zvUK/4R6GNxuqA2f5MpSXoTF4Vmf6GrgMThbUcx4xkOUvE
4B77hKQ6GmvRUlgX1O63sKFf95X7P1OjFpC6f/4xd4S0mezPSEi82v8Vz7KrsLYb
xIgi4XOzyvEgl9JeheZ+rrzL1RBVrjcvRTpIbHeKYcYMVeUNJzrEmXntxjBWt4Du
//SpHmdjj1C5Reit3nz1/iI18q+MYXwg5flt9uJSw8Ol9lVFEj7nS3Ru1H+HA1t/
XLbkA4na9NVGtRX+0odmzE151uT7E3/7rI5uMXpqRD/2TBb9b1mfQy7kH6dONBhZ
XJLfX7IOX9hGGv4bzkM5gCKSjvnJcMCs77uXul2qM8/59DPrNs8=
=AaIo
-----END PGP SIGNATURE-----

--mcihrjdl2ouhod6d--

