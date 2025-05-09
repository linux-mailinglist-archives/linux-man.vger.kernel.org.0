Return-Path: <linux-man+bounces-2883-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82307AB15EA
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 15:55:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D804E3A81BF
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 13:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61531292080;
	Fri,  9 May 2025 13:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="FYGsKKmT"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FBC2918D0
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 13:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746798620; cv=none; b=B1TxQVQ/Fq5P0daqpk1AR26Kj8Ts6MRK6Qv9lxa+c3phnuRLOxNzAlYQexSx0IWD8dEMnypqb1GAlqE8blODKjgLcf9D2Ckd7Lgh8khF7dnlKKw8t+0wxHo+07em37l82JUTJf8jFqSGf37KfnLCBqAmKC3HlX9j7BSTLvZ2y3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746798620; c=relaxed/simple;
	bh=937QOfqvFXxxL06eLS3UECui0zOyPRnpIB6WHGsiqjM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d9/NYLLNQTaxS1J/2AXVrxTMqs0wJjnk2+srmHYYtjeoFdavYlF213zR/d/D97BYzSzlu8jh4gVwo8kjmKOu2gn3pe0EhW6StmBzltb8YaBCOONqdBKS/kMu5+74wZo4bmckRrQ0KeSUQNXLQV59qMDNsHMvpoq/AwnTND7Ruaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=FYGsKKmT; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1746798607;
	bh=937QOfqvFXxxL06eLS3UECui0zOyPRnpIB6WHGsiqjM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FYGsKKmTukIqsDYYT8FytrWlNjeC1DHsNqnKDQoqLMEPgZ7nNcFqP8a/gv6g5poOJ
	 woeGv5LuQfpQlT86K4fOqQjuroGWocRMsOQcWBT4MBQsS7zGDpDycA6Ds9hfqrKShW
	 9e7CtCAJRPUW0x2yHbXFHMfS4Q7WNlCOkaVnaOWsul+F+DBEb/HdVKA1RiEsmLAaFv
	 L0ZP7l3HrJsEiGq4T8b2ZjPDUcgkUyLczAM0nsFpNvojBMGw1y8jY4zEBL/9WoN4ie
	 43QYMn2nYZ2IqedFtXIjum+yCROTya1KiHs9e+OBRUpeCZRtMjPDznbFihlZ82ywVU
	 R0iUQ1XHu02wg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 6A1BE614;
	Fri,  9 May 2025 15:50:07 +0200 (CEST)
Date: Fri, 9 May 2025 15:50:07 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <53bvrkso3m5lgdvxmx4qmncyxq6xuu6ohrnt3bl7j5f3mbqlzb@tarta.nabijaczleweli.xyz>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6alhlnhaqifvb573"
Content-Disposition: inline
In-Reply-To: <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--6alhlnhaqifvb573
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 09, 2025 at 02:54:31PM +0200, Alejandro Colomar wrote:
> Please let me know if it's okay to you to transform your copyright
> notices to make them uniform?  That is, do you approve
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=9f2986c34166085225bb5606ebfd4952054e1657>
> in what affects you?
Yes

--6alhlnhaqifvb573
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmgeCAwACgkQvP0LAY0m
WPGHRg/9F3wEOEw6KM81bY9qgNUJURK4RUHgRECohHNbmKAYwrZIQ9Prt6pYQoW6
wqg5eUyJcptpqGbLf0K+1cbYthUWJHt3zXVpGTkiUN2KHhIuvnH5bbxOI0BdZEhE
RSrprLNgIBP2RujEFMKCTmBSyA2ph63uxe928dK1JFVNm1/UHcugkXjXSZ4oFK7P
E8DIvmZXWIHncfHPT7Dq/PTR8NIz7gvnoTmh0od6k0jdv84F2MKgjLJFWqNjq8Yr
LWROtr9sftgXyptx9tzJppywiUPjt68Bnb0peMiD19DUsC5OBWCytBa3AtIJVRH2
00naLJ2hFrmDp4LD8CTQ0ntfQ46yPP5s1co8mSBH1lBLfDAQlAM87i/EqNPbB9yo
dTZo7dWuR5+jyJAwOtNizwIbfcvNCbXtK5geR41PE3zzAmYOVKEI1xTBRdQ7vKrG
MpQ0fy/wt4uvPVuYFCGnHKgeShZMkGXq5kRL3aPdrIBfbTELYLs+a956pbQSRZzn
fWxr8AUKbmbDPdTwyIjDUNGJj2PyYppoo4mZwdMyOu0KIW/iT+pMN3QqqYHEbD1Q
YbwItGbfPqrx8D42TdvWf+UP81EJySBLGEm5rVE+O5yATKCSf68EtdW69O74q9xh
nTZhslOLR54IxkidD5FpfBRmelnPKVeJVlow9gg6r6bvc0SS1p8=
=buo/
-----END PGP SIGNATURE-----

--6alhlnhaqifvb573--

