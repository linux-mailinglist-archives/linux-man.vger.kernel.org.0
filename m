Return-Path: <linux-man+bounces-5323-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yyFiBvWp22mzEwkAu9opvQ
	(envelope-from <linux-man+bounces-5323-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2026 16:19:33 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3CA3E4312
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2026 16:19:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C36803009FB6
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2026 14:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BCF4315D5D;
	Sun, 12 Apr 2026 14:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tctXZZ0m"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C428E175A92
	for <linux-man@vger.kernel.org>; Sun, 12 Apr 2026 14:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776003569; cv=none; b=cXwrlIfrufHIMLBVyf41m8r/zAm45lCPKrxIT26/LO17aphoV8k1y9xQsCwh1pKdVw1kJKNZgmpdzBevWs4od7WRI6AjqDfCK65w+LsWRCNw18pv8Ugg9ts9K7MYvJTj46T4AqfdLJ5X5akgVYK8QYqnR/9iUkUAlRoHN01lPzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776003569; c=relaxed/simple;
	bh=MK1l+IHKDVn6TatEXKabvzgTskMq09QyHgzFuoJCScs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tSTsLzaNNMt8lWrkIJx3jR5BIMrCQq9nVvs4YbWp8tXj+iPRqBthboOL0FCMFHeg4ts6OEJF8mkF3YzUMf0kIM9jr4HY/TjE5eIqFRCOPWVsKArsQ7d+xMdZ0rn00VpYzbxSyUeUWS1D4gcvUvD1wIRwTNNA0BSWK372R8FphzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tctXZZ0m; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0F4AC19424;
	Sun, 12 Apr 2026 14:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776003569;
	bh=MK1l+IHKDVn6TatEXKabvzgTskMq09QyHgzFuoJCScs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tctXZZ0mcvruHPNNpDgRmAe0m8kM7AG3ia1SbpyQGPwMwLkT68rwydk/52CgFo05x
	 bZjn2OZSNF0C4UkwkZ6HvdhNMNfBvuI+HxkHjlKz+uoVN3U7Ya0e/t6BuzntdviRtZ
	 Qm7kwTepaUpKhfhGlVzo8fqLrXFl8wDsN1eMQ1/KTHY2X/ZOHy5Lb+zujhtFL5uGua
	 ItIW5zVRNXw2n8nWWZ9di38GZYnlmOW0vyNsbAXg5rseRiJT9tF2oTVvgBTKjM/mNF
	 D+EPgPZqs0ZB7vuXw0DDI0ulUo1aVQaYODWnlgSJGYexR/SFT8gS8oAZd1usI0R4dA
	 BISKDwl8cyBGA==
Date: Sun, 12 Apr 2026 16:19:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?5L2Q44CF5pyo6b6N6Lev?= <tubuannohagi456@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Possible typo/redundancy in mmap(2) SYNOPSIS
Message-ID: <adupQhfJQ7kws17U@debian>
References: <CAKcLgdirzdKqnaziRdYytN-zrVTjijtzOiirL5YJdWF8SSNf+Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eofm6xcm2rast7xr"
Content-Disposition: inline
In-Reply-To: <CAKcLgdirzdKqnaziRdYytN-zrVTjijtzOiirL5YJdWF8SSNf+Q@mail.gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-5323-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,gnu.org:url]
X-Rspamd-Queue-Id: 5C3CA3E4312
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--eofm6xcm2rast7xr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?5L2Q44CF5pyo6b6N6Lev?= <tubuannohagi456@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Possible typo/redundancy in mmap(2) SYNOPSIS
Message-ID: <adupQhfJQ7kws17U@debian>
References: <CAKcLgdirzdKqnaziRdYytN-zrVTjijtzOiirL5YJdWF8SSNf+Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKcLgdirzdKqnaziRdYytN-zrVTjijtzOiirL5YJdWF8SSNf+Q@mail.gmail.com>

Hi,

On 2026-04-12T23:11:47+0900, =E4=BD=90=E3=80=85=E6=9C=A8=E9=BE=8D=E8=B7=AF =
wrote:
> 1. Where: mmap(2) SYNOPSIS section.
> 2. Issue: There is a semicolon after length and it appears twice,
> which looks like the function has an extra argument.

This is correct.  That's a forward declaration of a function parameter.
They're documented here:

<https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html>


Have a lovely day!
Alex

> 3.Actual display: void *mmap(size_t length;void addr[length],size_t lengt=
h,...);
> 4. Why it's confusing: From a syscall ABI perspective, rdi should be
> addr, not length. This notation might confuse users about the actual
> number of arguments.
> man 2.13.1
>=20

--=20
<https://www.alejandro-colomar.es>

--eofm6xcm2rast7xr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnbqeUACgkQ64mZXMKQ
wqlUXxAAicx/RMCyAnDPGvCgrKi8sl/NIuM4Ar1m8Wf9Z6x0xBsE4/EE73aTSACU
8xkL4GFpGO/CxLTmSd0jtBzItVzcYyz04NaOMXEygaUqSc8mbYzSf6EfforHAyTx
x7/di/JhQGRBbj7JSkgNYAuNn5s1tIyZC5HV4jrnF1l2NXTWOzjWOjN/c02aaT/G
Ah4GhJbFD4dK4COR/VGFi9RnQJuaYOEUrQ3vS7PmujTebIMeBlK4tMmazF1kCuDF
C7IOTrmIBb10F26ZbxzkvFetPIx7tu3ez8na+UKWSzy9Y5SwNmjiokZKng2+QyaL
KgGNAlbvOr9tzMzdRNEvQxZCc6h2UhvLIszLdMBYeMKWzjuBSzpcoS/P0z825bgv
Crb+qOHrYXf9SluYf4eXdzRC0StpEbzDo9cbzqmGuFpl9iuY1PaRVGDlutyGOG8n
Qiqaola1NtI1eRr7X1EkXVtMFHfj2bhO0ZXPWUOcLLm8Aq4+RLojywrJntCcfrNd
Derr8GsGyT8PJnNPoZjEu+eCvaTv9yDdTNmOXbptSYUizZW0F57Fclzs33DAj/TH
Wkv6lYAvgKJg/QXyQWJ7icZaczzFh3WIfSDC5sxPPtixP2nQI7+FNWTJjzme+0SI
xrxruKeedyhEFOeQe3l/IJ/iy5G0i9E8B2qauAwxG8V/1pyHsDo=
=idyM
-----END PGP SIGNATURE-----

--eofm6xcm2rast7xr--

