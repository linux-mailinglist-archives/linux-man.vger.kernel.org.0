Return-Path: <linux-man+bounces-5200-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sN4fCyxzm2kizwMAu9opvQ
	(envelope-from <linux-man+bounces-5200-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 22:20:44 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75765170681
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 22:20:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D08C9300E3B3
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 21:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8371B11CAF;
	Sun, 22 Feb 2026 21:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWJx6XLL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468351B983F
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 21:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771795239; cv=none; b=lXV+TQ0VwJMaz9FI3tRns5BSJ6F7RsyMwSakYFRcy/9FEvwzL2pWHoFQUO3BekQhGUfP8DOJ/FJYLISrj9HDzBM0Ck35I/55ylmXQqzWGKEv38Omcfs03LogOkcumCzVIelGG3osA2okZqgcQgMD9LtgZrzUOxmrlOvUQtdb4nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771795239; c=relaxed/simple;
	bh=1dDHUB6dm8F/UvAhNl4eqqF5u5GgB9A6KJ8+4Xyg5OU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rwBKqN64FbVsPl2YlbfMpkRxtdhJviaBYKxQRKtsV+imuzxHd3XhkNmMBD/i+P9tnY0aoHL0jxTFREcJkqYgF6RBJZEO1UKU8fQuJjaUMLm8n8VYUAjZMGGDl/HYnG3XAC+8gW75aEZkDsy1CetZfgXa+s3WovUSUFutWTKQtF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWJx6XLL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75AE2C116D0;
	Sun, 22 Feb 2026 21:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771795239;
	bh=1dDHUB6dm8F/UvAhNl4eqqF5u5GgB9A6KJ8+4Xyg5OU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SWJx6XLL5M+PykFBpzQ/SA62WwTJCRWx7uwCOZmDCOR/Zevn4T0jaMFVbGpFDH+Pw
	 chnD+jAacHbBxGCJ5+QOT+btMigDNrynAi9us35h8F8zvJt686eMO5nFpqpkPGm7jn
	 UkAlVCOrq/AULOWxHmBW7lGBxH9bu8hkCffbSZfFQR3Merfpp94y5j7h+F93fFagya
	 GRQP0evdF/9kFyKPR1GYRZRBDyL7kXFlPzq7JvsQnO+F25CiUr2EkRb6Ws+mXDClpb
	 gvk7k1eoQDV2T0bvjrVbzdZddtKFPIR9rOIkcj9wy7bqq1kfkLJ0+slE5b2o1LwvJB
	 q+uwm1QWhoLHQ==
Date: Sun, 22 Feb 2026 22:20:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <dev@sethm.id.au>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/5] man/man2/*: Miscellaneous fixes
Message-ID: <aZty1r8GlNalQAYP@devuan>
References: <cover.1771750388.git.dev@sethm.id.au>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rl6tmw44babu3fs7"
Content-Disposition: inline
In-Reply-To: <cover.1771750388.git.dev@sethm.id.au>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5200-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sethm.id.au:email]
X-Rspamd-Queue-Id: 75765170681
X-Rspamd-Action: no action


--rl6tmw44babu3fs7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <dev@sethm.id.au>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/5] man/man2/*: Miscellaneous fixes
Message-ID: <aZty1r8GlNalQAYP@devuan>
References: <cover.1771750388.git.dev@sethm.id.au>
MIME-Version: 1.0
In-Reply-To: <cover.1771750388.git.dev@sethm.id.au>

Hi Seth,

On 2026-02-22T20:12:10+1000, Seth McDonald wrote:
> Hi Alex,
>=20
> This is just a handful of minor fixes I came across, mainly for making
> some formatting more consistent.

Thanks!

> Btw, could you let me know if these patches' *PGP signatures are valid?
> I've written a script to help with signing outgoing patches and want to
> make sure it's working correctly.

The signatures seem correct.  Here's part what I see in the first patch:

	[-- Begin signature information --]
	Good signature from: Seth McDonald <dev@sethm.id.au>
		    created: Sun Feb 22 11:12:52 2026
	WARNING: We have NO indication whether the key belongs to the person named=
 as shown above
	Fingerprint: E9D1 26A5 F0D4 9DF7 792B  C2E2 B4BF 4530 D39B 2D51
	[-- End signature information --]

	[-- The following data is signed --]
	Date: Sun, 22 Feb 2026 20:12:11 +1000
	From: Seth McDonald <dev@sethm.id.au>
	To: Alejandro Colomar <alx@kernel.org>
	Cc: Seth McDonald <dev@sethm.id.au>, linux-man@vger.kernel.org
	Subject: [PATCH 1/5] man/man2/open_tree.2: HISTORY: ffix
	Message-ID: <3b27c0e095e33180f26181043f64f1a52a6066e8.1771750388.git.dev@s=
ethm.id.au>
	References: <cover.1771750388.git.dev@sethm.id.au>
	In-Reply-To: <cover.1771750388.git.dev@sethm.id.au>

	Signed-off-by: Seth McDonald <dev@sethm.id.au>
	---

Have a lovely night!
Alex

>=20
> Seth McDonald (5):
>   man/man2/open_tree.2: HISTORY: ffix
>   man/man2/perfmonctl.2: HISTORY: wfix
>   man/man2/process_madvise.2: HISTORY: ffix
>   man/man2/readv.2: HISTORY: ffix
>   man/man2/s390_guarded_storage.2: HISTORY: ffix
>=20
>  man/man2/open_tree.2            |  8 +++++---
>  man/man2/perfmonctl.2           |  6 +++---
>  man/man2/process_madvise.2      |  2 +-
>  man/man2/readv.2                | 12 ++++++++----
>  man/man2/s390_guarded_storage.2 |  2 +-
>  5 files changed, 18 insertions(+), 12 deletions(-)
>=20
> Range-diff:
> -:  ------------ > 1:  3b27c0e095e3 man/man2/open_tree.2: HISTORY: ffix
> -:  ------------ > 2:  5be05e964e14 man/man2/perfmonctl.2: HISTORY: wfix
> -:  ------------ > 3:  e0ecd2307cf9 man/man2/process_madvise.2: HISTORY: =
ffix
> -:  ------------ > 4:  f336517a9084 man/man2/readv.2: HISTORY: ffix
> -:  ------------ > 5:  464d2acd9d62 man/man2/s390_guarded_storage.2: HIST=
ORY: ffix
>=20
> base-commit: 8f299601fb600d305279acc03a92437a8378d0b6
> --=20
> 2.53.0.1



--=20
<https://www.alejandro-colomar.es>

--rl6tmw44babu3fs7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmbcyMACgkQ64mZXMKQ
wqkJOg//RC/XBb/HtdUB1vcc8WKa9Waiwu4Kbw0e8/Or0AwQWoF2omrO6hPafaLw
7BBE6uDEACQjQEWfkpSqvvw7Okv7ihyBGes0j1UgCQTZHJaaN5kRVtu3PlDPsb6X
tQDSswleFkFO4TOO4Gc3S1X8w6c6mCd/CNvGHNhGWnTB9LBv5/nbCbg+l97/N6LN
X3BzJEdy3jEXKtuXUjJxgYB3zTnofQLRzEM+WxcjqTkCQZXJlIoX2QDBt+FAZ/h4
f0pVVZLZb0JETCIO96w87ldwTZs17zXklfmoBrQwvSsnX7tDB9FMuQ6xMp4QlH+X
nwIlTBuP74v2rlM5kDsec0dWyVP94I9JeU+4RMuWfPpW7jYZ38ks7KfwJ8jobKfu
AR+trUa7EArYXK5gdPyaGglFRKe8Mavo/LRFdi3/CRXyrPp7ePbFFNAgtcOBX+l4
kwRiNFhQ78i7zymGeebXvmR8KufunJWcs/tfieo6liALG7zAqKMoGL/Hm4ZMKSiS
RPiuMm/pxss0J9CTPZV0CV2KfsvK05e2vXQt+N73Qt+4wQY/qhO9yoiqd9InxH6s
vcUnhVK338VOE/dFKJlJT4SkckNVpFMMRFi/UWKpDtYukf/qWQvTDkc50xgnt8Gd
vzMEMhQbPOv2VNJVCdk4TiqQCIL7Pm5asQXk909kTD0qUdGgcpA=
=sJhW
-----END PGP SIGNATURE-----

--rl6tmw44babu3fs7--

