Return-Path: <linux-man+bounces-5651-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id khU7ItNGLWoVegQAu9opvQ
	(envelope-from <linux-man+bounces-5651-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 13 Jun 2026 14:02:27 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB8F67E800
	for <lists+linux-man@lfdr.de>; Sat, 13 Jun 2026 14:02:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TBt8X0Vh;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5651-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="linux-man+bounces-5651-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 60AC0301D314
	for <lists+linux-man@lfdr.de>; Sat, 13 Jun 2026 12:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7EE11F5821;
	Sat, 13 Jun 2026 12:02:23 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5CB213D891
	for <linux-man@vger.kernel.org>; Sat, 13 Jun 2026 12:02:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781352143; cv=none; b=ZcEGXE14DvX9tyIBCE6YI1EaejwVMyqa6HirLkWvbp87LrI6X9RSQZeAjcflKhQJamOV0jtUuhdy53k62NjGSeUxSSrsYbb64a6KNKTuw2uDEhv9/K1WF9ldGCmwYxa5CjIJv9zkIyHGbuNOQ34pt4rVb73bIKMwV2ncrqQlxcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781352143; c=relaxed/simple;
	bh=rD++dA13cdlYquYLNyKpjOJ1fV+g+U5IK/26zJdQKq0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Ei4TsianZ2tw33PyQA3GxRRCOiwXy3JbwbF4qgmX1gmKM4gGSizJmFhAQacNu5WN5VV1SVukiswifdOIp3YLf+H2Zu4hEdQCTQcVmXggwZWwKp5d2oUAvOkD70MZjgcfDoo1ozZ+6KCRHhJBXkGtYtiQ8V3XUvw64Bj66wrO47c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBt8X0Vh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A6B31F000E9;
	Sat, 13 Jun 2026 12:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781352142;
	bh=b09Fg++viOjGWBNDCSIn6dx77qUi1e68faJyzVP4Lck=;
	h=Date:From:To:Cc:Subject;
	b=TBt8X0VhzPCAu9lkadzMFsVpukqNHk9O/xDGCMLsaMaCqptMoWGVgWKr0UiDQ99nJ
	 aKU61QA4/e4IUcCSqVwXHuhhcQirRogP2hU3chAgk0rfpzub9yPpt7vdVZZRQPgr5U
	 +dkswLqS2QoP1bX1jivB41LvjZd2JSNlBxDelmPbTBncORtltQaQEt+x6hDdhAmNUG
	 tHKVNfWsQFhtcqo+AMP09CPWRS7ItSzGVGoj5+GSAtF9eC/9VjAw19UkVL/OGFndVB
	 HEceqZXipgzzWpr7P2R/xWAJ7JhmqR+3wgkXux/HLJynb0UZYsLfo6hTwFvYJ1+jMJ
	 ayiNCeqREDwMg==
Date: Sat, 13 Jun 2026 14:02:18 +0200
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: gcc@gcc.gnu.org, linux-man@vger.kernel.org
Subject: _ISOCxx_SOURCE
Message-ID: <ai1DVieT3gTr4J5S@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fenefsfbrb37z2xj"
Content-Disposition: inline
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5651-lists,linux-man=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:libc-alpha@sourceware.org,m:gcc@gcc.gnu.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,alejandro-colomar.es:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CCB8F67E800


--fenefsfbrb37z2xj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: gcc@gcc.gnu.org, linux-man@vger.kernel.org
Subject: _ISOCxx_SOURCE
Message-ID: <ai1DVieT3gTr4J5S@devuan>
MIME-Version: 1.0

Hi!

I was reviewing the feature_test_macros(7) page, and found the
documentation of the _ISOC{99,11,23,...}_SOURCE macros to be incorrect.
And thinking about fixing that led me to think that the design of those
macros is less than ideal.

Here's for example some of the problematic text:

        Defining _ISOC23_SOURCE also enables C11, C99, and C95 features.

The above is not true.  See for example some contradicting (and also
incorrect/incomplete) text in the HISTORY section of gets(3):

	glibc header files don=E2=80=99t expose the function declaration if the
	_ISOC11_SOURCE feature test macro is defined.

gets(3) is a C89 and C99 feature, which is disabled with C11 and later
standard versions.  The text saying that _ISOC23_SOURCE enables older
features is only true as much as those features remain in the C23
standard.  And in gets(3), we should say that the function is not
exposed on C11 or later (not just C11).

A better design of this macro would be to have a single identifier, and
use a value to specify the version.  This is how POSIX does it.  We
could call it _ISO_C_SOURCE, and have a value such as 202311L for
requesting C23.  That would make it easier to describe: features are
available within a range of versions; often a half-bounded interval,
starting at a version, and not ending; but other times a bounded
interval, starting at a version, and ending at another version.

What do you think?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--fenefsfbrb37z2xj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmotRsQACgkQ64mZXMKQ
wqmyKRAAjt/g5B2VJNMc3D1yM4ymQpFS/0rCIKZZQOSNhXk3cO8BlY0OKYQfbfU4
7d0lsCukPxdgwjy7EawuOOgkCjhQzIZ/idgN5UmZ6cSzu/ByWO8GObDgCjwk6eNS
rs9Nt3OL13XRldSh/mWdo6GoUZ6AC3khHKhrzMJpYRte3lX+e2IX1o7EpDoOZqo1
4+EHsqRsBHQwbP5TQywJaHyGwaEj4rFKNivhBg9COSloJ0MC7sDbRWcLC6gD2NkE
3Ur6lbiNIRAjgB9or0snNFtiu63tQgELnvbzDijxFSL776yAyEZKFPKkf2iQAeJg
NFkVFwMnM1m3YlH45GkGEL+z9qWD/oclzj/hNtOuA2gv0YMrG+wa2WkF7yK4txPf
2OXWMBKCHNhNpoTwBFzUFwR3qqcGK4ESfQ2tNT/p5BmEC/s0sAczK/IMrRUcGibY
gzCjisKX9vS8RASSQTo5+8NZaj4nv3c6TwqmLhzvgrOkU5VU3qT+ohl4C+2vcHBm
wAa8j6DiR5NDUgNGe3XR+eHSMo7QXYhmkvbj7BKGxlRvF4HUcSqzixwKNCdw/cHI
RBrJBOsLpnPv9Po8b/d1L8t+2+ef0myN9AUN51Ck/gZZjHw3H4heqZNzIxrc7Ohc
3a7+ndtAsYsI31Uami/3w2slrBWulsCHdtFH1NUQkOm48+WtMGA=
=UoD2
-----END PGP SIGNATURE-----

--fenefsfbrb37z2xj--

