Return-Path: <linux-man+bounces-1185-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2F69097CE
	for <lists+linux-man@lfdr.de>; Sat, 15 Jun 2024 12:57:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76EAA1C2112C
	for <lists+linux-man@lfdr.de>; Sat, 15 Jun 2024 10:57:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D89B0376E1;
	Sat, 15 Jun 2024 10:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzBLLUEo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 989B722097
	for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 10:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718449019; cv=none; b=iQaRt41yNwp0NDrnTUrEahiGqAzFmu5yYdadwrIg/Bzw65jrQh6gOs19XACpHftpoxxUmQeqO6HvlFkLBY/cIgyfS4DzEjysAU05NluKepxdhWUsHAj3X1ac73KSWFynUxM96cTcldn0R0hCUZ/2Tsff8uj06Tz6V3ROx+z/cR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718449019; c=relaxed/simple;
	bh=93kdwge9KfyyYrxXBd9gIxDRQfHS1O37d4viytQ5y/A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dEjCcls1MseQCHd7L1Akp4p45v59oCWQABs8OGxBnHewp+JSz0FNpQgRHPz9oSo4N8nklBHapAJTnD54I22CMPahQqSQw4zy85GYd4DgIrDGYiOk9+xV7zrXGRN8VhNWBN5meTqXvZwkuDgptZ/t3jhfjJTICZA0/6v9HdHb+fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzBLLUEo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C9A0C116B1;
	Sat, 15 Jun 2024 10:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718449019;
	bh=93kdwge9KfyyYrxXBd9gIxDRQfHS1O37d4viytQ5y/A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YzBLLUEo21J30wmG3y7wW6pVJK6CdK5IVkr/rPUzmbQI2/kCoPYHXbljxXwJtJ3hc
	 +moUb1AUUd5G40IFFt46sk365oQaD08WOVc8phZMNJTmUH+rz2zBCSiKgn1X7jT1Iw
	 aNXiwtlg5EIdKvmU5m7Eu+rPGPrrQKkBHrqm2IwAEC0oARt0uCioJfbszvVLVEWusp
	 nnXgt8xaE2o8+5XqiB6jqsFPFLCU2gPPc7VMZaS7rJuJVV5yeBAF6jFzduUkLdMR2i
	 NvXmuhWMNEky5xmpuqOwLJPEVkrDSqTgVOo9+6w227m/8TZBh2VP6lxsEcAsylXJVv
	 LpxdUGXLKXO+g==
Date: Sat, 15 Jun 2024 12:56:56 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: Please consider reducing build system churn
Message-ID: <5zkv4ktktwarhri3hg5ykvpyjf7kt4iijis6lzww2jdgxew5xr@s6tzthjk473c>
References: <87ttjm8ero.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dfrqy65w6s2i7won"
Content-Disposition: inline
In-Reply-To: <87ttjm8ero.fsf@gentoo.org>


--dfrqy65w6s2i7won
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: Please consider reducing build system churn
References: <87ttjm8ero.fsf@gentoo.org>
MIME-Version: 1.0
In-Reply-To: <87ttjm8ero.fsf@gentoo.org>

On Sun, Apr 28, 2024 at 02:19:55AM GMT, Sam James wrote:
> Hi,

Hi Sam,

> I had a request to bump man-pages in Gentoo [0] and I must admit that
> I've been fatigued recently, both by other work, but also the large
> number of build system changes between man-pages releases.
>=20
> I already try to review all build system changes but Recent Events (TM)
> means that one must take even more care and not be fatigued by changes.
>=20
> man-pages in particular is a critical package and if I can't review its
> changes properly, I can't package updates to it.

[...]

> Alex already knows my feelings on homebrew complex Makefiles so I won't
> repeat them here, but I will say that homebrew complex Makefiles
> combined with a high amount of regular refactoring makes life much
> harder.
>=20
> Please consider either getting all the refactoring out of the way if
> possible or reducing the amount of churn in the build system.
>=20
> [0] https://bugs.gentoo.org/930798

I see you still haven't packaged any new man-pages versions since then.
Take all the time you need, but if there's anything specific where I can
help, just let me know.

Have a lovely day!
Alex

>=20
> thanks,
> sam



--=20
<https://www.alejandro-colomar.es/>

--dfrqy65w6s2i7won
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZtc3EACgkQnowa+77/
2zIhoA//RnsbRULPC7amOjhx5mp6Mh7A6qEmIgp8Mkf0Fb02ttWytnPmBnHaqpK6
HVSMNM7doSMOut/yvlDXm0tl5/kuXPLforyhrZgC1tAJq4fp1dQg1GgrjOaf+nsc
OGjiMjWAHKZWDs2N3GdoDbH3/5y1Cm2qq5E5sbdd0dqf7QNMf1ggMQd4/4tnqJuS
MWGPTLhYPjZtfSZTkwRyJIEN+TBNFtKMXXqC16Jn0BnaTD1lGK5EwxO8SjQkl/oj
1kruTvgo8FsJeq7QDnRy2MesK08g4ag4QkFhqE9CaBGoKwFj9PQza35QViu2o4Jj
fczexpvZmwjbYci+XWtEedWqfHszY0SLgpOG6REAEhk2NKd0D8yb3OiLYQh5bNzF
HlhzaPzYjFpYSMhnupXcBXMGbymZF/1cUid0ks159IhI1BgzECMZNCFvDK/eeTuh
FF2bOOh8eoHtiBUc7GhcEujUGNEsdju/HZ6BUnkzkrZq8CFwBhNiX9g91Ezzb1t+
EHdPpyqLwdYVm6FYJD8HQDgbLBs+DRvvVgxcdrLFkDo4JHjl3zsVfLELgu2uOBr0
S81d1A/ieL0QOIAS3dHoGYW1iPjCXIRgm2vu3tNUDczBy3WVVikTbpzA20s/jyCm
b6Riw17+VTpafGCkv68WNsYsjUCV1cbgQ9djOg+gB3b+y2bQDbw=
=/HeL
-----END PGP SIGNATURE-----

--dfrqy65w6s2i7won--

