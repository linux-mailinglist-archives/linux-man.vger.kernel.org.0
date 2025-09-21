Return-Path: <linux-man+bounces-3925-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E9759B8DA73
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 14:02:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C88DD18999F1
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 12:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14AA723C4F2;
	Sun, 21 Sep 2025 12:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aarsen.me header.i=@aarsen.me header.b="wC61eWQP"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8190E34BA39
	for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 12:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.161
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758456154; cv=none; b=nIz9zI5XCXoqrBhvSIhTQvMAArZNxFzndIrcu30zzu8DrmKJfUtZxw8vTxA0aDho1qgGtR9QhsQX7007RPfvDiYnh2vJ5yEMhq8Jn7dJgV1xX1bWZGTRmT+Y/yyvajPcjMHLzsBmWz36ietxsqFWBR/tEKhB/lhDkbkwUgMhkE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758456154; c=relaxed/simple;
	bh=2oyT0cl7brsUNnwSCvlf77AjWN7QcRJr3MWUQ1oslII=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=sIYJlbR3/r/EB4eaiooqOELHQc6kXK3TpwqFIyjeq/yPwcyNBnPEPZMZQnGByh7XDdGWEAlOgDgHF1PSHZMQzUDFjbUovTSTLXZs8s/FlJk4eaBJLyfxgSJ8orjdf5mYTfML2MArEVDNLpaEzglGEVOkH02qQFfC+DoLknx2PlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=aarsen.me; spf=pass smtp.mailfrom=aarsen.me; dkim=pass (2048-bit key) header.d=aarsen.me header.i=@aarsen.me header.b=wC61eWQP; arc=none smtp.client-ip=80.241.56.161
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=aarsen.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aarsen.me
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4cV4cF6Y6Sz9sPx;
	Sun, 21 Sep 2025 14:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aarsen.me; s=MBO0001;
	t=1758456141;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=z+UxFLccvmCCrrjzrf1Inqzggy5QFMTv2QH+8RGnUzQ=;
	b=wC61eWQPHysmbFGASiD6oAA4Pi9vBn6CnEepzkaLhFmBlpEz1GBjjeMeYFpB4J1KACSNr+
	dxWhvKMjxp8cyT8JjJj1PH8lgvG7tT8K2n0x3Tz/VeTZ0wR9Ib5YxYDuZUXNkxgZoJOAWM
	FtEsmAlBQJcqmNjTQcpV2QAloQc7iXbyI4tpPExmkR+29vSbQV2kt7u5EQlNQ+wRFhxCqS
	zIYveKxDLGiRAfCO2on6aAnd0ZLCitKTdM6NLyTH1kW8T8wUZ1hgF938u3iUtSQw5QZXJS
	ymotutOf/f+jA3XRJoLj0w8u6KudnkVZdsKZfpmFc1Rf3DPXBZMnthfrA28yqg==
From: =?utf-8?Q?Arsen_Arsenovi=C4=87?= <arsen@aarsen.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: coreutils@gnu.org,  linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
In-Reply-To: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
Date: Sun, 21 Sep 2025 14:02:16 +0200
Message-ID: <87jz1sm2t3.fsf@aarsen.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Alejandro Colomar <alx@kernel.org> writes:

> [[PGP Signed Part:No public key for EB89995CC290C2A9 created at 2025-09-2=
0T18:08:35+0200 using RSA]]
> Hi!
>
> GNU coreutils manual pages are to some degree incomplete.  I was told
> today that "tsort(1) is a bad joke".  I wonder if you'd be interested in
> moving the maintenance of the manual pages of GNU coreutils to the Linux
> man-pages project, where I could take care of them, and improve their
> contents.

IMO, docs should not be outsourced from the project they correspond to.
Doing so makes them harder to install and keep accurate to the installed
version of what they target.

> I understand GNU's stance on manual pages, and that you might not be
> interested in improving them much, but maybe you're open to them being
> improved elsewhere.

It's frankly better to improve them inline.  But I'd rather see us move
past the woefully inadequate 'man' documentation system, for instance by
providing an info viewer users are more likely to find usable (though, I
struggle to see why the current standalone info viewer is so
problematic, especially since I taught multiple people who got the hang
of it fairly easily).  Installing pages with a richer markup (HTML
perhaps, or a new format that can be easily rendered on-the-fly to
reflowable text or HTML) would also be nice.  The current format is one
of lightly marked up catfiles, and so isn't great in modern
environments.

Given that coreutils manpages are generated from help text, adding a
paragraph to the tsort help text would probably suffice (see sort for an
example).

> The Linux man-pages project already documents the GNU C library, so it
> wouldn't be extraneous to also take ownership of the coreutils manual
> pages.

And it's a source of problems; they don't always correspond to the
installed version of the libc, don't get installed with libc, and have
lead to the actual manual being somewhat forgotten.

> What do you think?
>
>
> Have a lovely day!
> Alex

=2D-=20
Arsen Arsenovi=C4=87

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iIYEARYKAC4WIQT+4rPRE/wAoxYtYGFSwpQwHqLEkwUCaM/pSBAcYXJzZW5AYWFy
c2VuLm1lAAoJEFLClDAeosSTFdoA/1Pc+T8MINMoT+VUIqCYJ1mJrfZNkMc2io2p
Bu+T6pGKAQD9RC7zrlfy8prTRdqlKWjn3yoAKVMeSUaFfsdExc6SAw==
=1i3k
-----END PGP SIGNATURE-----
--=-=-=--

