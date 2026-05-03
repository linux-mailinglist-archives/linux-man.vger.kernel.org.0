Return-Path: <linux-man+bounces-5456-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id PZqSA4m392n3lQIAu9opvQ
	(envelope-from <linux-man+bounces-5456-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 03 May 2026 23:00:57 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 514A04B767C
	for <lists+linux-man@lfdr.de>; Sun, 03 May 2026 23:00:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 635C930075CA
	for <lists+linux-man@lfdr.de>; Sun,  3 May 2026 21:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5597B372EDB;
	Sun,  3 May 2026 21:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/3mzRK8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196CC40DFCE
	for <linux-man@vger.kernel.org>; Sun,  3 May 2026 21:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777842053; cv=none; b=V8+7qxim03/cMMlHe1TnFxCji/Q4eXnfgmX9YksPWx1GgQytmOxgJe7ByjzyI6sbiuFp1hltOlErUAntvXnzWCyyVMlRTo9LPDN1jDE9MTaXKer1/lmdzFYldSTxQx3e66IyCkV82E9YbcPuK+kzqFYPaS3NM5m1PW+gBN5CZ0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777842053; c=relaxed/simple;
	bh=7/cayAwpEr7reN39HWfCwhoJlQfkMPhhbWyxDs8yVL4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZWvIHjQJKV26QPcTPWBPyZwQmyt1I4ZEdwJSvRoAtZow5RKmz9oqKeDh2NS/dTR2m3xM9UGTTZm76XhwB7JjlhNyj+Pd6ZuzP0EOwkypIqlW4yPuGQ+27vbU09+b3BJ7TdrwMYOm/9lT1em7lmpReJh7hLPuWrnPtZ5qyE3L8Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/3mzRK8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13C21C2BCB4;
	Sun,  3 May 2026 21:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777842052;
	bh=7/cayAwpEr7reN39HWfCwhoJlQfkMPhhbWyxDs8yVL4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i/3mzRK8nJZwMGxGEnmTVb85vBZnGbwYLL7eJgD1OnMT4k30pDl8SGVa8qHzkjiTf
	 OJq98H0K30owaLrgqnaSqYMZQplla9V0fG78pfyMBHRKqWqopyhFIh1LJzjFlMvkZL
	 udygaITGyHwM0gLdY5jpOflbFl3wwtrYvI0EjxgLjmfkHsDLZrLXT4hZ7++xk1BCuW
	 tuACUvkuoMJFHSiC4K99eZ8PfMx3/FXQPe4ZzFcyv25y9HzLxP4XXuZ7DX4v8+4nxm
	 bPHO4iz/UliqdzeDsGLK/WPRVJl7H5jjusx5tmggper55vs+oQqtSe51naGp9UMEJI
	 b4uNHzdLQRFAw==
Date: Sun, 3 May 2026 23:00:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Schneider, Robert" <robert.schneider03@sap.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man/man2/perf_event_open.2: ffix
Message-ID: <afe3MfB6E5aT0LB-@devuan>
References: <VI0PR02MB10873E01B8EE1A99CDFD03F0F8F342@VI0PR02MB10873.eurprd02.prod.outlook.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3jwh4iqmk7lhkz2v"
Content-Disposition: inline
In-Reply-To: <VI0PR02MB10873E01B8EE1A99CDFD03F0F8F342@VI0PR02MB10873.eurprd02.prod.outlook.com>
X-Rspamd-Queue-Id: 514A04B767C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-5456-lists,linux-man=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
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
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sap.com:email]


--3jwh4iqmk7lhkz2v
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Schneider, Robert" <robert.schneider03@sap.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man/man2/perf_event_open.2: ffix
Message-ID: <afe3MfB6E5aT0LB-@devuan>
References: <VI0PR02MB10873E01B8EE1A99CDFD03F0F8F342@VI0PR02MB10873.eurprd02.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <VI0PR02MB10873E01B8EE1A99CDFD03F0F8F342@VI0PR02MB10873.eurprd02.prod.outlook.com>

Hi Robert,

On 2026-04-29T17:35:30+0000, Schneider, Robert wrote:
> Fixes .TP list for PERF_SAMPLE_BRANCH_CALL_STACK.
>=20
> Signed-off-by: Robert Schneider <robert.schneider03@sap.com>

Would you mind adding a 'Fixes:' tag?

See <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING.d/patches/trailer#n16>
and <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING.d/git#n46>.


Have a lovely night!
Alex

> ---
>  man/man2/perf_event_open.2 | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/man/man2/perf_event_open.2 b/man/man2/perf_event_open.2
> index df0a199e..ae588451 100644
> --- a/man/man2/perf_event_open.2
> +++ b/man/man2/perf_event_open.2
> @@ -1547,6 +1547,7 @@ .SS Arguments
>  .BR PERF_SAMPLE_BRANCH_NO_TX " (since Linux 3.11)"
>  .\" commit 135c5612c460f89657c4698fe2ea753f6f667963
>  Branch not in transactional memory transaction.
> +.TP
>  .BR PERF_SAMPLE_BRANCH_CALL_STACK " (since Linux 4.1)"
>  .\" commit 2c44b1936bb3b135a3fac8b3493394d42e51cf70
>  Branch is part of a hardware-generated call stack.
>=20
> Range-diff against v0:
> -:  -------- > 1:  d597dc98 man/man2/perf_event_open.2: ffix
> --
> 2.51.0

--=20
<https://www.alejandro-colomar.es>

--3jwh4iqmk7lhkz2v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmn3t4EACgkQ64mZXMKQ
wqkHdA//XGLULSt09OXKMI7UK7Tjp/MDEPNGpTkFW7KLSy4aptoo70zGmc6/Uqdv
vkJ+02PKuisiAa95O5u+5itiAVVZXoLKYlJi0zz74EN5YT/2LR8b6rAhCWKrG073
3G/kgaWILFNxu7OdRv+7v1zWTLTzRMLUX/nVdM1FQ7xCoG+xB+oVey+LdXbK+eHQ
oHoEwvLc6VVk9f+LVhio14h/rKLnCkO4SvqYTI0XUkR9koREcozUEeFGrVnHSRfi
Bo5Oj34Or+SA1TLcB4/CdMgC5+Qniddd7rnAsMjYbOFBMHv/gs3oBao3KBdRO3JT
bN3UkTwhvn/RtNfTrbSh1tRDDN2usE7P4b0Fu2FAoTdFy7GPT8WZxxpZXnUhzauY
0WvU3z6+8nKqm32B9ADzTUc3iBzslWOf+jCzS94rZ/w9nKZyY6Q/PYSexwyomUSs
mWgVJ1QELXkijeEqRJZShvZ2UPy7o+cTzJfOl00RWJmCA3UiQAkealPajsEPOtUJ
QgdqMeNd0sIfRAYl5zc3xfsSFmY4aV+k/5r85Vp0qJ/D0we6cnf5aBtCMc/FKx9l
EVyJXmudtz+GlS5u9+qVy4EkQQ3RibPjofHvXEr+tQ2sSdZuVUqm5JaCm0lrEekw
4oSWxrbTOvZrnepnTS62L44N/4brrQckfLWUW4EP7/1yd2XBaDM=
=H5LY
-----END PGP SIGNATURE-----

--3jwh4iqmk7lhkz2v--

