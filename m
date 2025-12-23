Return-Path: <linux-man+bounces-4473-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B66CD95D9
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 13:51:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94B8C3014ACA
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 12:51:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50E4133D510;
	Tue, 23 Dec 2025 12:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deIbjNMQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1064233D4FF
	for <linux-man@vger.kernel.org>; Tue, 23 Dec 2025 12:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766493840; cv=none; b=hhwOiyOpqNB0B2oy3ldHsZg47Pt6fx5sAOY1FKQJy0EPeKAC+ir1PYmJmy8vLOhYQHHa6mUrPkqUO4eD7qPeyDPstXVvYAGd46fGoNHjZ7ZvZdkKg4d3wA8GDryY3vK8+qmD0GY6qt3bH7QsHRvPAhDEr9BCLQIXWGT1TuWppv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766493840; c=relaxed/simple;
	bh=s/6kZP4ORR4AIrz5q/tK7K97in0YYw+FKldXpQg2HAg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QOhu3qxH3lqDJ3seGUZkywGBPVZKgklNBQtheMvcHqiCakIUJMLghkeAnZJk1VjE8W4klsjF6wAcuSrCUG73QjMRD9As40RxpUt41ymjOy+BEjAAKNgjUt0VVZx6CMB8MA2Cc4rlsfk0Y0A4/XxmmANYvJZ0x5lR2HCNvaoWepg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deIbjNMQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 116F7C113D0;
	Tue, 23 Dec 2025 12:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766493839;
	bh=s/6kZP4ORR4AIrz5q/tK7K97in0YYw+FKldXpQg2HAg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=deIbjNMQREXT2gYiIavb/RX5LEa+ZXGqh1RlEPj2rsMQMjVCq23nNvG4JYUuBWM7Z
	 WEDGe3+ezfpriVZK11XCi3tpOAgYcm+SbIp0h0ynpG012eUs1ZUt2W+AxGqzH4JqNo
	 znqBjR9i7xqiRurQBmuaqeCJP6IqF3oHYQGvFEK065OXULNobJM9jtzsnTOLgLhvbU
	 tIsFR8ZCwygElxzhg3KOJnw0Or1f7rFzGs/LvXftMxV/g9F35tj6G+HUT6YuJ+EX5M
	 PJUVMUNz0jaXtVRlCeStUUi9MDWNCqW+4z8rF5AK55g/zDNZmzvClveha1dFssyCi5
	 be+KuyXHY2NPg==
Date: Tue, 23 Dec 2025 13:43:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: Collin Funk <collin.funk1@gmail.com>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Early POSIX versions seldom included in history sections
Message-ID: <aUqNNsf3ygIj0mxI@devuan>
References: <Wd9QASP6rczMWW9o5HQVSOFmDMpmWqmUDTl5T1WrPshq-HU7DB41CGYaLMx7bHyEK5GOjtZ1EIV7GJgbXZlQyjS2DxLIuxWdMFYqPsoNJEI=@pm.me>
 <aUbf39o2ce0WhJoA@devuan>
 <nBJHItg3tSnUmbXVk7-VufAS9V8JckVOUAzwYGrGW59ireGiPGb3ppy40QL3bgZhJbheep4RVQ8owzThk4LFmFWV5kohm8s6FbGoqAxchp4=@pm.me>
 <aUfsE7Yt45BVO56T@devuan>
 <87bjjrbae9.fsf@gmail.com>
 <SsdGy_ZRyWESN5bZIDs6LXPW-oM7QbWpFa6AWUcX700C7u81iGXJPEatWc0ilPwOHnh4Dq8edSz_D7i-2Ti0iLi0ttFY2BoaYyw6yUjdmTU=@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pum4j56xw2gd6w6u"
Content-Disposition: inline
In-Reply-To: <SsdGy_ZRyWESN5bZIDs6LXPW-oM7QbWpFa6AWUcX700C7u81iGXJPEatWc0ilPwOHnh4Dq8edSz_D7i-2Ti0iLi0ttFY2BoaYyw6yUjdmTU=@pm.me>


--pum4j56xw2gd6w6u
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: Collin Funk <collin.funk1@gmail.com>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Early POSIX versions seldom included in history sections
Message-ID: <aUqNNsf3ygIj0mxI@devuan>
References: <Wd9QASP6rczMWW9o5HQVSOFmDMpmWqmUDTl5T1WrPshq-HU7DB41CGYaLMx7bHyEK5GOjtZ1EIV7GJgbXZlQyjS2DxLIuxWdMFYqPsoNJEI=@pm.me>
 <aUbf39o2ce0WhJoA@devuan>
 <nBJHItg3tSnUmbXVk7-VufAS9V8JckVOUAzwYGrGW59ireGiPGb3ppy40QL3bgZhJbheep4RVQ8owzThk4LFmFWV5kohm8s6FbGoqAxchp4=@pm.me>
 <aUfsE7Yt45BVO56T@devuan>
 <87bjjrbae9.fsf@gmail.com>
 <SsdGy_ZRyWESN5bZIDs6LXPW-oM7QbWpFa6AWUcX700C7u81iGXJPEatWc0ilPwOHnh4Dq8edSz_D7i-2Ti0iLi0ttFY2BoaYyw6yUjdmTU=@pm.me>
MIME-Version: 1.0
In-Reply-To: <SsdGy_ZRyWESN5bZIDs6LXPW-oM7QbWpFa6AWUcX700C7u81iGXJPEatWc0ilPwOHnh4Dq8edSz_D7i-2Ti0iLi0ttFY2BoaYyw6yUjdmTU=@pm.me>

Hi Seth,

On Tue, Dec 23, 2025 at 03:56:23AM +0000, Seth McDonald wrote:
> > > SUSv2.
> > > POSIX.1-2001 (XSI).
> > > POSIX.1-2008.
>=20
> I do believe the standards(7) man page does describe these standards,
> including XSI. From the POSIX.1-2001/SUSv3 section:
>=20
> 'The standard defines two levels of conformance: POSIX conformance,
> which is a baseline set of interfaces required of a conforming system;
> and XSI Conformance, which additionally mandates a set of interfaces
> (the "XSI extension") which are only optional for POSIX conformance.
> XSI-conformant systems can be branded UNIX 03.'
>=20
> That said, I can certainly understand how just listing a bunch of
> acronyms and numbers (SUSv2, POSIX.1-2001 XSI, POSIX.1-2008) would be
> confusing for many not familiar with these standards. I can briefly
> describe such a function's progression through the standards with a
> short paragraph, if that would help. Using the function fchdir(2) as an
> example, let me know how this sounds:
>=20
> HISTORY
>        fchdir()
>               SUSv1, POSIX.1-2001.

I'd make this

		SUSv1, POSIX.1-2001 XSI, POSIX.1-2008.

>=20
>    SUSv1
>        fchdir(2)  was first introduced in SUSv1.  The function was then
>        included in POSIX.1-2001, but as an XSI extension.   Finally  in
>        POSIX.1-2008, it was moved to the base specification.

I tend to dislike paragraphs.  This would be interesting for the commit
message.  As you say, all of these names are documented in standards(7),
and I think the above should be readable once you know standards(7).

>=20
> By the way, I too find these documents confusing as hell! I only have a
> grasp of them because I happened study them due to a recent
> hyperfixation on portable standards (my autism be like). So I certainly
> get where you're coming from here. I just don't know how much more I can
> describe in the added paragraph before intruding on the job of the
> standards(7) man page.

Agree!  It took me some years to know the standards' history (and
I still have some gaps in the older ones).  :)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--pum4j56xw2gd6w6u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlKjoMACgkQ64mZXMKQ
wqnEDQ/+OFj+yK7w5OAYBdJRAQPFRu5mQ1KUnkLmzrPL7KJ4OqNGuphNOEtqomvx
Ncaz6Vtbk1r1G2L+4IyeGJr4WhDEP4tO9+09OhK7EFriolVf/B5wlB5NoHmfmwrO
GGEpssayPt8NLACuV12oOhK3s5PmtpoGqLSOj+jvUjPuDA5FmboHxMVh8gChYeTf
nWLIEMEH/mfeCuSREwvSCgkoK+GMP/mEGiksaWrcun45lopqGbpUjsBp0+bfMGvz
C1ZXy6lzK4puQU+YtmfkCTbzNGSaUesaZvkdOZuYSUOmEUiYvkE4aegCRlShQr26
CwX7t/CdUdjNGilsMVCgwixiGpHza8tAcCDA47W/6nKjxyXNoyo/R6OuKdsAM+ju
rcG6fXoP1HB+2R0XsJAHXPb65UrG4VK2qDg+c5gZB2BakQDjDTTpgVfKVECyUY1P
gLf3MeG++5IZE3t5eiSNKgfspEL89MIRuqgTd7XSukTYVcXPaDrYLTLUPXgzLEaf
BxuOfj2yaWB/dRD0EE6joqy1j/IlMC8pOoFh6TJZTrJjP7b0TThXBTuA5x2H7YzE
7fCn0V3fJLQ30bf2cQ1rf20TVqQ/HLixHafinbCd5J+65GlfsPYL78XJXoZMXYsC
OeKc+FnEs1zlXQrLKP5KofZhwXiHU+NxcvBdwoZbaHr1/zMNdfA=
=X+EG
-----END PGP SIGNATURE-----

--pum4j56xw2gd6w6u--

