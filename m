Return-Path: <linux-man+bounces-1993-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F72C9D037D
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 13:09:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BED81F21B60
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:09:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AC74176ADE;
	Sun, 17 Nov 2024 12:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTEeXcZl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD72BA937
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 12:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731845371; cv=none; b=VLNlcQzoV4Ht1sfBOv77jqsCdmN5Jx7kw5sat2xOjIy7opHKa3MRZV1Q5XJyMg2TZQIren8T1Tj3Mwki7QipVX1H7rW9EiS9R3AipzxT6ivUu/crVdnbc0+WNwgZLs7bEhi+CZCMlmHKBFQEOoX+QrUvsO+Wo/D14D/nXC0zSCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731845371; c=relaxed/simple;
	bh=duBCa5krP4TwMwEVG3HhWNdJSidHlEAY/3I62rKyjQk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V1SOj1S4nFzDmCH6W/Xjwq1xdsnUyldVYrVPy8g+Wc1fYdAmuat7rFBDLeTgA586YcESDFyUUqO7atXsRdeVGherXsaUNDcI9rHBkv2rFGPphQNxSZrYyR5RY0bj0xd5XHj7XLaR+Z3pbUP45bBuihlZV7MQ+9znfuSW0ALYCFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTEeXcZl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6A6FC4CECD;
	Sun, 17 Nov 2024 12:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731845371;
	bh=duBCa5krP4TwMwEVG3HhWNdJSidHlEAY/3I62rKyjQk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kTEeXcZlI/KzbRgyhTIcvnuD2TQDeQ9/SXmKvOvtSSKAnlPgiw4ughvuw0b9MHNi8
	 BRpLVgIcG4orrwSPvQiwpSzmHT9pyXLT+SRvr3VVCGq64isS+JMCR731D5dIjgVUiA
	 mHv+B5UQ4M9u69sZtJNTeI0+vdRgtaAyTQLVwifOdKA2I4J/z9GECLUD2cor2PiSj5
	 32ShDVvWz0T6cueXzNo4SyCbvs1pKa8c5k5F25a1EAkOaEr95S66wvhtEZugT0XtB5
	 oj5AJtaNPOLhu70ysPxtBvVdXmkxQLMxbam7TlGWysznLwRjJRkkD1QnNutu+dAI8f
	 SkdCJsS7eRu2A==
Date: Sun, 17 Nov 2024 13:09:28 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sscanf.3
Message-ID: <kiitb6fbn4h7tecgkg5khsjofiedoqur5qpbj5mopzejgck3nm@l24vek57r7jb>
References: <ZznJgJrfwS4O3toC@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ckzkfngsdp7pcvfo"
Content-Disposition: inline
In-Reply-To: <ZznJgJrfwS4O3toC@meinfjell.helgefjelltest.de>


--ckzkfngsdp7pcvfo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sscanf.3
References: <ZznJgJrfwS4O3toC@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgJrfwS4O3toC@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:24AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    on other architectures =E2=86=92 on other plattforms

I've used systems instead of platforms, but yeah, agree.  Fixed.
Thanks!

Cheers,
Alex

>=20
> "Some combinations of the type modifiers and conversion specifiers define=
d by "
> "C99 do not make sense (e.g., B<%Ld>).  While they may have a well-define=
d "
> "behavior on Linux, this need not to be so on other architectures.  There=
fore "
> "it usually is better to use modifiers that are not defined by C99 at all=
, "
> "that is, use B<q> instead of B<L> in combination with B<d>, B<i>, B<o>, "
> "B<u>, B<x>, and B<X> conversions or B<ll>."

--=20
<https://www.alejandro-colomar.es/>

--ckzkfngsdp7pcvfo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc53PgACgkQnowa+77/
2zIx4w/8C8XwvWtQS+B87JVw+nIfFXzzcslevpbDsPhEBY1L68S8cdyj8BlRR3wl
BIp9MTCCsl4wFYQKPwq3CRJyA13+eUbnhhmpVnPsBmbCD6VN6We78rpkZCUofmpl
X21zw9oOj876Hs1AkaT7J2jzANVOskD9uYVDaLyOfbhTOVPAzYp7wSLFinto4mvI
EzUJdrfDjVrn06QsE1IrCeu0OkAi9FnqaLZH6qZvLg4Tdkc7gtKB6Zl7WAYrI3GJ
lvTep/gFuo06uum0+hDD5z/TMOZbQsbMUbIjgq8y2waFShrB6B6/fu/auPYOETd9
INKWdJAmxbKJQ7twyz3fk3PW6JIh+e2D76smusVncvkTv/ezrYZiwyO8Czpk34F3
6BMpeiGW6+rDjJcS1nLQBjNI0FU1QF7C3LQtamRJSrP3QEN8cJpZ5eLvZ98xArs8
23a35nYtMzKXCVLTh87z0bu6zbHBlLAKsae1oJa8uXeApckXLcwqarOR7DnrfeGn
tyZhTyY8bgegkEmo25aLTVBdst4vQ+HPeYSpc1uU4xI5H3sLS/3pka8+nIvbVIC4
bXPuC0rdSSMpzx+eQ+kmDehYgTGRReWk5pGUkTW+EYaYuzXVJ8NmhI6JVytC5W0v
/fGurXmxBxcOrlg9XRA+Ndt9sb37azoTk1jjsOMw2cMwB9ZCWfg=
=lK88
-----END PGP SIGNATURE-----

--ckzkfngsdp7pcvfo--

