Return-Path: <linux-man+bounces-3517-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA20DB2DC79
	for <lists+linux-man@lfdr.de>; Wed, 20 Aug 2025 14:30:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7229816B43D
	for <lists+linux-man@lfdr.de>; Wed, 20 Aug 2025 12:30:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6996311953;
	Wed, 20 Aug 2025 12:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ej9DYiz6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A498426C393
	for <linux-man@vger.kernel.org>; Wed, 20 Aug 2025 12:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755693044; cv=none; b=RnIqH54iFYm6lGa0+ECSOICZfDarpBzRJlZfo9QqzX55aK8QE9Ra4xDHJcSE5OJNV7F7T4pDpcrY173owwsdv0yHjp3b0lKZxuN39a5hIv79OQ0+FWZujS73c+JddME1NeuvBAmRh5Sdwa1BOnm7X8ggHxGbGQZFJmZ4iFuGMgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755693044; c=relaxed/simple;
	bh=zqvpLzn/NPt7gcz18kFU/gAibQdkL1en63UnD9RlN4U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sNF8NQ7eK2mWEulO7wy/UR1CejZ4ocXGxU/UQ4fuWMjx+MXq+wR0CdneOrg/Y2YJmYCvJQiuA6xneFjvrJpC2LLX3DJAnczzbXsH+NM1VxyUn0U5QV4UciiRiSP7XeKWYSfRuUkQuOBQ/k4g7ZcNtkysB7LCWjPSBWNInGHY0Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ej9DYiz6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45F5BC4CEED;
	Wed, 20 Aug 2025 12:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755693043;
	bh=zqvpLzn/NPt7gcz18kFU/gAibQdkL1en63UnD9RlN4U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ej9DYiz6ny6gaMesUZlIAZfk4p82OwU0GKuISCGT9bBEDbNOWEpzo5VCqu9lTn7sV
	 +9XVkCcYhkdPs85H7RkLx43TNcpOn2SGvQt4aBnBMcZ8A0gqjtqjmpeFJ2R1Xp16Gp
	 f0RqD6VwdoXCgAnma6N3Du2yjnfKPDhr+6xHeFOThr8E1pAZaHYAAYB1Y/v4Ys4BZx
	 Z3zkFVmWNEJEjeM4zHGrhrprem9XB5IOhl99xSQSGrkRKljoXvFV0XQGppQcFHgyr8
	 ulnWVh3tXAWneAo753BpRtod2SHd7m5TEXKygoV+h47cAdvfOkfsAwxWxppwb1HScC
	 nZ6Ij9xGMl1cw==
Date: Wed, 20 Aug 2025 14:30:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Dr. David Alan Gilbert" <dave@treblig.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/strftime.3: Check parameter
Message-ID: <hunnzfurpkaqzsetfg7ajwdelj343fzd5tr7pssocymwxt5kxr@zieonkcjumxu>
References: <20250818174553.70132-1-dave@treblig.org>
 <sa3mkaxgskcwrma3g7chd6d2bokswwk6i32bn74ueca3qr7f63@tn4ddlmihqon>
 <aKRj_-jnlO_BxWHr@gallifrey>
 <cj4pybbqz74oxknh3fh44ejvwsxus5spmsvwsjdlg7xfw4t7d3@bynwkotgfzw5>
 <aKS8YhvnXbQeyyEh@gallifrey>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n6jqsbu3chskwpt2"
Content-Disposition: inline
In-Reply-To: <aKS8YhvnXbQeyyEh@gallifrey>


--n6jqsbu3chskwpt2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Dr. David Alan Gilbert" <dave@treblig.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/strftime.3: Check parameter
References: <20250818174553.70132-1-dave@treblig.org>
 <sa3mkaxgskcwrma3g7chd6d2bokswwk6i32bn74ueca3qr7f63@tn4ddlmihqon>
 <aKRj_-jnlO_BxWHr@gallifrey>
 <cj4pybbqz74oxknh3fh44ejvwsxus5spmsvwsjdlg7xfw4t7d3@bynwkotgfzw5>
 <aKS8YhvnXbQeyyEh@gallifrey>
MIME-Version: 1.0
In-Reply-To: <aKS8YhvnXbQeyyEh@gallifrey>

Hi Dave,

On Tue, Aug 19, 2025 at 06:03:14PM +0000, Dr. David Alan Gilbert wrote:
> > > but it seems to be missing 'checkpatch' and I'm not sure which checkp=
atch
> > > that is. (I'm on Fedora 42).
> >=20
> > Yup, checkpatch is the one you can't run.  I have a fork of the kernel's
> > checkpatch, which I want to eventually package.  I need to find some
> > time to do it.
> >=20
> > For now, you should be able to do what CONTRIBUTING.d/lint says about
> > make's -t and -k options, which will allow you to ignore those failures.
> > Let me know if that doesn't work.
>=20
> OK great, I'll give those a go and hopefully you'll see some more patches!

Thanks!!

Actually, it's even simpler.  I hadn't thought of it, but you can do

	export CHECKPATCH=3Dtrue
	make -R lint build-all check

And that should make all checkpatch-related targets succeed.  :)


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--n6jqsbu3chskwpt2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmilv+4ACgkQ64mZXMKQ
wqk9Og//RTl07YH21uASD7KhwIjbjV9BlArGiQH27yPVY1+j3JnPpi2toeYqcm0N
H7wJB3v1dfLkcQgspqhqzHU8QmJIq9w8SYb1lcxI9+HqOznaO5i0jzJjtiLb50yg
L9V2sDcE/UdoTfnfy/5eAsESgPOijhvdJ2VB9kKNS6Wtgph9ZD7w7vIxOLBOGS44
qA65CYLMQPMkffZiBz/p2cUijyD5MPODzSfmPiMlbSak+pbH0NBfIw9/dBTjAVmD
hnmllQlG8L4MJi7cZLOCZxgtsoz3fqYnO8GgsM2eIfWCa03XC3qUl8GJzl0FLEc2
j/b4ON5EocvkdBYeF30g81JNpFhoSpoP2xzGK+aKG9gvVm0QMvAR41SiuxReTCLw
OD4s6LmVlJD1PM2m/cSmPAv6Ru7g1P5/hyAWVCp2qa8kVrNclmf3Gakm5Kh12CS7
tK+LmkEaGH7DRKgwZNP4lnhgdyvU4bYKV9kjyDKFpw15YleAI/6o+COzzxxwdhMA
+933oK/XpsYTBQ9pPsmJFU8XkT3TOtXjPwqUpMbwDacwPs6mrUucY5ISUcvJQFjY
LUKaCijYz20fD5rrjbzLhZ6LAQMYtBhDzFyJ33PuBB0DkBQKkoR4nkybdIfLnfpK
8zCKlLT60crWU78fCxbtHPw7tjbqFjcLFLTzxwkIVjuMj8lyaBA=
=Fah8
-----END PGP SIGNATURE-----

--n6jqsbu3chskwpt2--

