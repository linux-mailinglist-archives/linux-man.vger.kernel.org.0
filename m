Return-Path: <linux-man+bounces-696-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EF388B6DA
	for <lists+linux-man@lfdr.de>; Tue, 26 Mar 2024 02:29:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2C1D2E579E
	for <lists+linux-man@lfdr.de>; Tue, 26 Mar 2024 01:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD69C1CD20;
	Tue, 26 Mar 2024 01:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtnVctFt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E2301CD11
	for <linux-man@vger.kernel.org>; Tue, 26 Mar 2024 01:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711416549; cv=none; b=aI6qtxlXt/DpfBU3my+BpMFjYLOR70Ddv2ZQmU/ccwfvQRPw38qu9q7l1eEGkgo5F226QX+S3xpNNMLRUrLBaR4OY9GNfKNozCM05w3vNTUNw91rzQkstA6rqxuwm80/3nT9pOWSuZDasjWJgOFfvhcuRJtymFNSM8E4NFYLKw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711416549; c=relaxed/simple;
	bh=VuV4/ar+khkMCx6fhNzzwytqd3OcyrWj5nI65G9vvPQ=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RLcRH/GI69ikpPMjGrwQgf3a83AyuxNu0MSTq8wpUb2zzAukUkehhTqWUAw3ZNKDzBs+AVhrlG/aoz3rhcOfDw9pCAF5XqNLB9mlzpYd6jz2YzD+NyFY/Xm360G55HlP87RIvUjpaSKVoFRreS4gt+YuPKS3JZHWVBBBrrpp28U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtnVctFt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3670FC433C7;
	Tue, 26 Mar 2024 01:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711416549;
	bh=VuV4/ar+khkMCx6fhNzzwytqd3OcyrWj5nI65G9vvPQ=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=CtnVctFtMzT7zC+ipXyf/VCEUvpQ66vpJz74p+u5aowmViqADJu2bW0RHDc/f45u9
	 z3gl6NLH4bIdbwcVUdffye6VaAEhl6GLHsUFZdfnSPgBIIXYWQTD05IM/qKKSUYaHA
	 1w7rAJJk77A0TCIkG2aptifa1x6hZRYdD52fcwiHx4ymYf4+tlxqkvAJW5toRSMusx
	 zS83YT72HNRbdqIK7djuQENmhx+Zy2yuC65dOOsWA+hl4jrJebIGt3Tkgnq3iNMKXz
	 p5uxEsyI7heKWO5Wsk7f/C3lKl6fbWYbzQ3taqrFPbZUhH1iV93wbenFZRS3CJfFBJ
	 m4TWNybpXQNOw==
Date: Tue, 26 Mar 2024 02:28:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>, Stefan Puiu <stefan.puiu@gmail.com>,
	Jakub Wilk <jwilk@jwilk.net>, lnx-man <linux-man@vger.kernel.org>
Subject: Move man* to man/ (was: Revert 70ac1c478 ("src.mk, All pages: Move
 man* to man/"))
Message-ID: <ZgIk4mN4bXfsiiYy@debian>
References: <YxcV4h+Xn7cd6+q2@pevik>
 <20220907205304.nlqce37l26gezjqi@jwilk.net>
 <7b9c2ab4-6cdc-b4fd-1001-8721083695fa@gmail.com>
 <CACKs7VADwh0Qs8Zo7=biVzpOhSgMt5xD1BSBXdg82sPAcdjYOg@mail.gmail.com>
 <Yxr9WN7f3FEqKVRg@pevik>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nL06k02xwsovucal"
Content-Disposition: inline
In-Reply-To: <Yxr9WN7f3FEqKVRg@pevik>


--nL06k02xwsovucal
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 Mar 2024 02:28:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>, Stefan Puiu <stefan.puiu@gmail.com>,
	Jakub Wilk <jwilk@jwilk.net>, lnx-man <linux-man@vger.kernel.org>
Subject: Move man* to man/ (was: Revert 70ac1c478 ("src.mk, All pages: Move
 man* to man/"))

Hi,

I'm thinking of adding some features to the build system that would need
having a clean man/ directory.  The main one is building several books
for other projects, one per language, where languages correspond to
every directory within man/ that doesn't match man*.  Currently, I'm
workarounding this by running the build system several times, for each
language dir, but it could be much simpler, I think.

For not having a regression in the number of characters one needs to
type to edit the manual pages, I thought of adding symlinks in the root
of the repository, so it would look like this:

	$ ls -l man*
	lrwxrwxrwx  1 alx alx    9 Mar 26 02:26 man1 -> man/man1/
	lrwxrwxrwx  1 alx alx    9 Mar 26 02:26 man2 -> man/man2/
	lrwxrwxrwx  1 alx alx   13 Mar 26 02:25 man2type -> man/man2type/
	lrwxrwxrwx  1 alx alx    9 Mar 26 02:26 man3 -> man/man3/
	lrwxrwxrwx  1 alx alx   14 Mar 26 02:26 man3const -> man/man3const/
	lrwxrwxrwx  1 alx alx   13 Mar 26 02:26 man3head -> man/man3head/
	lrwxrwxrwx  1 alx alx   13 Mar 26 02:26 man3type -> man/man3type/
	lrwxrwxrwx  1 alx alx    9 Mar 26 02:26 man4 -> man/man4/
	lrwxrwxrwx  1 alx alx    9 Mar 26 02:26 man5 -> man/man5/
	lrwxrwxrwx  1 alx alx    9 Mar 26 02:26 man6 -> man/man6/
	lrwxrwxrwx  1 alx alx    9 Mar 26 02:26 man7 -> man/man7/
	lrwxrwxrwx  1 alx alx    9 Mar 26 02:26 man8 -> man/man8/

	man:
	total 120
	drwxrwxr-x 2 alx alx  4096 Mar 26 02:24 man1
	drwxrwxr-x 2 alx alx 20480 Mar 26 02:24 man2
	drwxrwxr-x 2 alx alx  4096 Mar 26 02:24 man2type
	drwxrwxr-x 2 alx alx 57344 Mar 26 02:24 man3
	drwxrwxr-x 2 alx alx  4096 Mar 26 02:24 man3const
	drwxrwxr-x 2 alx alx  4096 Mar 26 02:24 man3head
	drwxrwxr-x 2 alx alx  4096 Mar 26 02:24 man3type
	drwxrwxr-x 2 alx alx  4096 Mar 26 02:24 man4
	drwxrwxr-x 2 alx alx  4096 Mar 26 02:24 man5
	drwxrwxr-x 2 alx alx  4096 Mar 26 02:24 man6
	drwxrwxr-x 2 alx alx  4096 Mar 26 02:24 man7
	drwxrwxr-x 2 alx alx  4096 Mar 26 02:24 man8

What do you think about it?

Cheers,
Alex


--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--nL06k02xwsovucal
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYCJNsACgkQnowa+77/
2zK+lRAAmRksq875SrXW623UobLTNJzpUnX2Dzq1EvSaCEHAzWfxDI/dpg2hgHI6
3L3HgDAgpAChh7tKp8m3zyzlaToidBxnKhYYY/BGabD+onYi9pc7tq2xZ47r3kkS
S8oyf+jovmaSVGqoqIKtBT+y3UK4AVrZMnlDWCpJIu17w9bZw6zxJ2ranPRBPmIe
hdD4vgdNkn/G8RJ6wGMmTsGTwxYAPByh9pkue7YGSiWoGcbGhv4bjCvHPvc7+rgi
p7gAMiiI+6ayETnYO9uablVh0b9JfsTPkd2/OJujRy1GNNhk9i4W2ZpgHDFKq14m
UlXcMiublLsb2+CfUVEB6Q0veTcuDpN9b6MqFHYq7jaWm048kFjGy0rc1ZtFKtps
gpnClIZsjD8gfF/c7JjbttyhGuTyvZ2L81TKp5bnJnEMjYp5lENhN1Rmm0oym2vS
zkzwspqwRdAbkoLUM5gyJJSBNhqPXZhVNeIlT0dQpw/0z99YIH64/c7CCFbQJmIt
kYkEvtBKsUnSNY5rfdjNnDTV9By29rRFf0bcbnuDF/eu4U+X5OedP3QbvMsYJlus
scj5AxgGZwiOAC6CItSAH7nFHnUzAB4xOkziAKz9KQvm2YCVkgBcrLIzJQK8M1hF
Dmjh1woyyvaj4FEOO85kCtMyljl0/tP1vzAjz4qPfC7sWQnwy7I=
=nGXm
-----END PGP SIGNATURE-----

--nL06k02xwsovucal--

