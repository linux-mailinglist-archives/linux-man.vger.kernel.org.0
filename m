Return-Path: <linux-man+bounces-1125-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 63781904253
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 19:20:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E73B1F276F9
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 287BE482FA;
	Tue, 11 Jun 2024 17:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vwdm1UF6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2185101A
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 17:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718126438; cv=none; b=u5aWtfxsKWLiMxVgZmitcASo8LB4xZOvG1SQ3/LeIVtkzQ8BXMB5gLoBb9GT4VrlI+wyGIPssyDxUeK6rR9hrJjkfVjtIpYVivthO29OYhrPpYoMz/2IwxwVS55yHlWrXXYW1O0F+COe77tScaHMZ7b80BnLIvhcqKXyRyS03j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718126438; c=relaxed/simple;
	bh=NhXVm05eK2S8fmE/L4lOfXlcjW+X+yFj4ZiMr6wiMjM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VQ1x2/jkivBA+vBQIa4ZhkdYJtDCkF37DTruuv105jtJ+LcglGgzj6u5E2xU6Jvlw8mMiwdRQyqDM52W16ZPwyVbtieJ/0Tp4YDVXTsTJXKaSMZHBCMdRWyUI3kOuwtAuMbZuWJgrHTB8eoT0ys4FaFvyeK4LtfGu2Fccug0UMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vwdm1UF6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BED92C2BD10;
	Tue, 11 Jun 2024 17:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718126438;
	bh=NhXVm05eK2S8fmE/L4lOfXlcjW+X+yFj4ZiMr6wiMjM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vwdm1UF6mMxrgPqvdXblLuqTf5C/xE7cDSIDkpegTkzXfXjMoBMl+Y3DHLuFFsVNS
	 tbeDg7dtR6KPqBgKbroZwsbRQk2kUbUVicmS3oeQCNyj2LG/UKU1fpdsW1Sa4t3nsU
	 orMhVyX88DQ/C0Z8xufE+iq2hXImcDZvIVQwgkU/gAhywxLkCJgqGjJvatdzziHPJa
	 O0FYbnG3eIihMW06kkMDZYDikqU2N84zd4AyyNAZxOnsEuEOZx1GLJfT0lTlrD8kum
	 29AhbvvK8Oa9nGuTlFXk3QhbqZeZS+MGWju66czl9GOOILPhelPyy8UJwuwSMPoSjO
	 KSTEWIKSWO3qQ==
Date: Tue, 11 Jun 2024 19:20:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 09/12] tzset: update STANDARDS, HISTORY
Message-ID: <ldxon4rtrea5ms5u2bpjlun2iekvfkx6s2sfwfvbfyfg4d3bqv@os7e6wujlbgv>
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-9-eggert@cs.ucla.edu>
 <ffoptahg44keiagybgev3bcllobdcbev3i3pasrv4lqlsxdlwr@ufl66nu2unwc>
 <1da3bf6d-4ced-4e86-b226-12b120cefcf1@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ennf7cx4iafigdke"
Content-Disposition: inline
In-Reply-To: <1da3bf6d-4ced-4e86-b226-12b120cefcf1@cs.ucla.edu>


--ennf7cx4iafigdke
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 09/12] tzset: update STANDARDS, HISTORY
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-9-eggert@cs.ucla.edu>
 <ffoptahg44keiagybgev3bcllobdcbev3i3pasrv4lqlsxdlwr@ufl66nu2unwc>
 <1da3bf6d-4ced-4e86-b226-12b120cefcf1@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <1da3bf6d-4ced-4e86-b226-12b120cefcf1@cs.ucla.edu>

Hi Paul,

On Tue, Jun 11, 2024 at 09:56:15AM GMT, Paul Eggert wrote:
> On 2024-06-11 09:25, Alejandro Colomar wrote:
>=20
> > Is C23 also public already?
> >=20
> > Can you send a link to any public document that confirms this?
>=20
> It's not public yet, but it's "cast in stone" (i.e., merely stuck in ISO
> bureaucracy) and it's OK to cite it now. For some details, please see:
>=20
> https://www.reddit.com/r/C_Programming/comments/1ay92d4/latest_working_dr=
aft_n3220/?rdt=3D49226

Thanks!  That's enough for this patch.  When it's ratified by ISO/IEC,
I'll add it to standards(7), but we can quote it already.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ennf7cx4iafigdke
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZoh2MACgkQnowa+77/
2zJjUg/+JTFcmDv4/S122T4Nq9WA5a8QKQ2sc5GKWNs8Yodub0L71MecbmPVcBff
jVeBKpf/bLEhGrPaRZ4yCODr8iyOtRb+17Yn964TyweP5bGpZm8dwucjd5OIZCto
E1yIn42MR7hjhzeh9D4YY9QLJojOKyRBcz8IsSPe5m2XHm+3UeM09Il7iGIK33CH
+iqAfdlFiS/JLh4m0KuzYWgG1gMS4oD1MFmT+uz6sNoFs2IJrXZBE8dhhoOH4rKK
I1i+snUCmCORO32MQxpEu3G/2cvFWKTzayN669mhJZeXAU4oFo1oIH149AW8koLk
nAuYUN9J975AbaoRNC8+ZqEU8pmvJnlk1UwKvNMLLcew6GfDPkTGcnN1LrAyXWBa
BGQUp3QaeubuiKDp8Jfj9akDauTI5iW24PRYvVhAje3tlKjOEYPjWtkxJnV5/gBi
ZlAVu5VDrk8hQYL4rptkNhnIIzJnwS8Y2OXa6DpXe28lU3E8S8PkMKqVrpcKKPft
5kJFAU9Ul6dLAbI5/G4To4VR9C9Aww44wgVdJ4g9UifEGAhvhOsyeKZKUiFj4T8u
Bbf+gTb3JDf4cqBQTK1Hch5xfm+AUkYDVlSbAMJAbVg60D/D81umwve0GtitSLbH
ULielZqcZXqD0NwQ3X+8QMBvhjizi+De/wmf8+UYO2k68gtRuYI=
=fTjG
-----END PGP SIGNATURE-----

--ennf7cx4iafigdke--

