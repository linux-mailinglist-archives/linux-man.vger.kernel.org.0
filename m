Return-Path: <linux-man+bounces-5184-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOmHKcLmmmnImgMAu9opvQ
	(envelope-from <linux-man+bounces-5184-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 12:21:38 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F81D16EF84
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 12:21:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BC0E9301185E
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 11:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 296CB244685;
	Sun, 22 Feb 2026 11:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F64y/Kx7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1E1123EA80
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 11:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771759295; cv=none; b=iV932OAA9jiDncvCpf496xpV7p/IdCR++V7jtEpuHLb/CPal9+AWaRUNSuCBO2mToACH2LLM/NFkyMZ5G+nmbWD65WBMWHwNPjI6UP4OhXTIFMA2Xnb8F5puJUTYouaYs4+BchevJPEY7IYQZVpZwaNSApvhXaQ9Rlj0gvDg9n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771759295; c=relaxed/simple;
	bh=wUqqSSldTnnLR0DuzFdgpc6FClvalNTUSsMZZTf6CyY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ro1PjJiCJZLndaBjO3UcNLpHg1lWziuGxjTqcoaqqRzBoOyTW6iaYFwTTOZ5BYzV8fFgKulTB5EaxRVT+2PcZb1k+QLjVJVMCTz/pKrsqA5oxe42/4ShAeQWryTWeQFgTLMoOsqj7V2PHDa7Csz3nxk8iBhLkfORlA5DUZO0rIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F64y/Kx7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94B5BC116D0;
	Sun, 22 Feb 2026 11:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771759294;
	bh=wUqqSSldTnnLR0DuzFdgpc6FClvalNTUSsMZZTf6CyY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F64y/Kx7o2LgcCH9NPVNAnT3AORQnCcdDY0oP4u6ndmnNQfTcgchT8Ex7hak+6BaF
	 09RtP+sV4C2kCHcHHeyRo5IZZieF6T7+BxPGuKgmjTumo3mC/zfksex49TpPXU7Vdl
	 pnU+Zpv5DTwnpRSIPRBvhis94V8vOK7PaoJEESu1JRapfQ2G+dWT6EA22BdlHeMinX
	 26aHPYV5k3JcmGiyrvW0YsUkVr6fIz7jqMdiJFsC0pvUqArsNx+dLENlG1dJjrH0q9
	 dxIFo5zkzzzhSKFM7ceI9rcB5uvJYYPO7ZoS4xVOHMHoWz2BbRwbZiLxryvWUCPuD6
	 AXjWhFaraLM1Q==
Date: Sun, 22 Feb 2026 12:21:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org, bug-gnulib@gnu.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <aZrmh5XLcUcKJz4b@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
 <a6bffb3c-6b81-4ed1-a13c-d111fd5948fc@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wtx6estpwm7fltf4"
Content-Disposition: inline
In-Reply-To: <a6bffb3c-6b81-4ed1-a13c-d111fd5948fc@cs.ucla.edu>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5184-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 0F81D16EF84
X-Rspamd-Action: no action


--wtx6estpwm7fltf4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org, bug-gnulib@gnu.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <aZrmh5XLcUcKJz4b@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
 <a6bffb3c-6b81-4ed1-a13c-d111fd5948fc@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <a6bffb3c-6b81-4ed1-a13c-d111fd5948fc@cs.ucla.edu>

Hi Paul,

On 2026-02-21T17:48:30-0800, Paul Eggert wrote:
> On 2026-02-21 07:02, Alejandro Colomar wrote:
> > +.BI char\~*streq(const\~char\~* s );
>=20
> I see you fixed the misspelling of "strnul". However, there's a more
> important issue here: that's not the type of Gnulib strnul. Gnulib strnul=
 is
> a qualifier-generic macro, and (unlike C23 strchr) there is no underlying
> function named "strnul". This needs to be documented clearly.

Yup, if there are no plans to have a function, I'll document the
const-generic macro.  Thanks!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--wtx6estpwm7fltf4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmma5rQACgkQ64mZXMKQ
wql37A/9HFcMADanTrrSl8xiHMdKLiWrS1zUYfsRls/dCLG4offl/M7j77m99eVE
jmKoEuwQ4Z3Lsy3pETyXquvr6r+UvCuuo7+F2H3QehpWXHfii4euMxLicbEXq+nr
OuohZ3Qx1dUyF3fIn1x5vumhFzspG/YW/PHGmHHtKdeuMFBj6ugKQvcmDc0SjcF6
Vu1nhkyvcN7fA13VqlYtMvLWAlltqL5fJYZaO71y8B08QpzZ5wrqIxKJeg+4lCgb
tlttSQ8G6WFF/C+O/VHIqfkEuTQRgDDNHHOoCzRRmiU1B66wg7fqxfFcGo5IQVlJ
2OA3zA+krcb8x89XDVSzcEyTPn+GQJtSoOQGJWndSiPzo6B+TBX3sO/JEyaHrDsg
sizjaou/J0/9oJskwQJtHf5UtFVfzWvW/diAcABt7BAkv6ApnaJR7rEY8xvr0c6r
jzI8dd2WaQMp848Qk4bb6Z1opUhgIPZ6g8euxVTib9HIrbKu2oBMGYz4EFyrNLao
9PNar01FBcCs+XJecIJYGpYKnBXfwOEqlNsUvQVBhnbD18f4uFNsJf9zpgW8UkWf
yu+je5AOS4dcIbbGYkuQuDPiQuLQbmGlAZin1skVN4mzfYBXfdZXqXJuOdrCGpk1
2yhtpZnLb++F12Y2uKybIrGITEK/pLZFgPF/swUXelGJuvqrDxk=
=cYW1
-----END PGP SIGNATURE-----

--wtx6estpwm7fltf4--

