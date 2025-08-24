Return-Path: <linux-man+bounces-3692-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC00B33247
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 21:13:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD7883B8C40
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 19:13:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5752F221FB6;
	Sun, 24 Aug 2025 19:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCxASrUN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034CE72613
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 19:13:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756062813; cv=none; b=toMHNSlXTAssERcNO061glOjukAeD9BZGUISJP/i37oUYdt1aucNKNb0vw3fl35qWOOVGiiBUZOoSCsQTWu3H4/UAxAQVf9iG1gsiGsoTajV3qMnL6gZZxRO1wIN+ZQHI0KCX6Wz3bVvjMYr1B6ix8BQv/+U7q8kxSYQB4Zey28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756062813; c=relaxed/simple;
	bh=TvyVqjbLh+dSvi0gu56gSV3e5gnMB6twBQZjPz3Ttc0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VzMFp+hynmMRsteg26EXYZnHLcNIyrxwx+5FOrKygTolfqXVtQ4CDA683bn099YeH0C+OmXu7r0jMyB6Q3eoynebhFhZ2hcj4WLhQjSINV/V+UdyW69VuuD9tU6wzaagwZd7tki9dr9BuuCX3e0+w0Bt08It2xfndWranqvBDLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCxASrUN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C4FDC4CEEB;
	Sun, 24 Aug 2025 19:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756062812;
	bh=TvyVqjbLh+dSvi0gu56gSV3e5gnMB6twBQZjPz3Ttc0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BCxASrUNi/kz9vFNXNKx5Lp0B86rsshV2a+SoXn79X+NfJtNy1vqcQzQC4jRLjbE+
	 emtRl7r7FwCcaNkxCKPKXHcZBlv18WN6rJKreVztKkAN5joKvPAs5qwYMDbLVDrk13
	 dqmnHbKbfAtEaPnPB+Od06xuriv/BXxav/bVha+ztv68pSlHH2klLdzK5VebdyG8+h
	 7TtT/r18PudJ1SmFmC/JzBg1EnL8x5IMjnRE/3ZdvwLwpbjNwuilL3XjKn0HrdoX/J
	 AQ1UKlbF4wf/1Ixq/hGW4IUhUcEM6H6LJi1auHwfbR9uTFmrnkJG/lzPZ3AckzFH17
	 BTuAhTsJfb/Uw==
Date: Sun, 24 Aug 2025 21:13:27 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	Carlos O'Donell <carlos@redhat.com>
Subject: Re: Issue in man page random_r.3
Message-ID: <sqszse46berqtvthwwqtcneixhgorshpgt5nxf4cqjvaj43pgr@uw5ifowxcyog>
References: <aKsmUW6zG4LLte4h@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nn46m4f2s44d5itt"
Content-Disposition: inline
In-Reply-To: <aKsmUW6zG4LLte4h@meinfjell.helgefjelltest.de>


--nn46m4f2s44d5itt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	Carlos O'Donell <carlos@redhat.com>
Subject: Re: Issue in man page random_r.3
References: <aKsmUW6zG4LLte4h@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmUW6zG4LLte4h@meinfjell.helgefjelltest.de>

[CC +=3D Carlos]

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:49PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue 1:  comma after B<initstate>(3) as in paragraph two up?
> Issue 2:  The function prototype above do not mention I<state>?
>=20
> "The B<setstate_r>()  function is like B<setstate>(3)  except that it "
> "modifies the state in the object pointed to by I<buf>, rather than modif=
ying "
> "the global state variable.  I<state> must first have been initialized us=
ing "
> "B<initstate_r>()  or be the result of a previous call of B<setstate_r>()=
=2E"

I don't know.  I've never used that API, so we'd need the help of an
implementor or a user to know what the page intended to say.
Thanks for the report!


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--nn46m4f2s44d5itt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmirZFYACgkQ64mZXMKQ
wqmPeA//SvPgFdwvh40QRtdQNtnv5MghP+T+Hk1vUfisj9bLadf4E3cCwBplCJK5
Q31rhSa62SDcsCHNG1sQC2F7wp1QGU+tmKC/SuAbs5tOz5gtQfO+Zfvt2K8qNjVE
xZpcyTU7RlnO5/YHEio3oPg6++apWPkA7qKzr5ZpG+v9DYsEhJyqE+siXQNhibAe
ThbKr0rhsI7r5LefncovT8X2CwYkGkxMrsMXUPWR2fjcUsjFYQiJuuL+nXTMrEUP
fbojsK6nkriy2yhUneMJlluGXsu2bfH1IxbfXDn22je4EXXxAjF9pPldk7W2xTmG
2obzRZ+2GMYkcwFJMEsQQ/hya2te4DPg6HfmAFQnWFPjT2SNLq8tHYujDISkinhl
HqbZ6ZFE3A0kYDCpacE4rg03og8IKDvS1OXgeS9Odk1XhmmfpFc0dZrr3i0Ss3sD
2DuS5vEM9mi5LViapukdiIF0O8FovbVQVvNx5PO8RTGgNdaQnWfbK3CW9gz1vMKX
u2ATYytcVItsKrUJePRoTjuy46lSYwcqKwuhPgIUjEI1p+JAUY8GxefWXAVDymn2
HFG/GfSqQJBnj+W//hxXucTtj3IiRJ/XlcXG9fglp3c1Exajm8mek3ycdSSkxzLx
+xl/4J9ZFPF3xbvs94dSZTyW2s7c37ZXNmpgk3VpwWBJYkPgV80=
=4Aea
-----END PGP SIGNATURE-----

--nn46m4f2s44d5itt--

