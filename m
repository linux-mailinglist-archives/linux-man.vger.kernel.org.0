Return-Path: <linux-man+bounces-4786-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0D2D0D566
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 12:44:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 544F4300727D
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 11:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EDE133D6EB;
	Sat, 10 Jan 2026 11:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5aI8/ca"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D1A33A71B
	for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 11:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768045460; cv=none; b=DDGMih1qhgZ+r7ZtZRiYFmoQTcfiIHoKpPlLw/7313nzOLiiBR+GaBjbNI9oLeh0GrtUuevuhm4GYVUk0XggrwwY8v0q2cXqdWqtFSAlHtb+/fyAsyZGOZdM0z/G7k/V0hiCqAqlfzr6ldk3YpdbAfmIMf4AQoekF+5dSn4ciNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768045460; c=relaxed/simple;
	bh=RK0kaXH946joA31HJoo8Bkcy4J+mhvrIEiIV6ullE/A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=slbkuKjCYtaekE0+2xrL1oSaXcvtamzvv1YQnDnhwlKQynWK0fWRyTtkr1PzJZlPDG6lAZBSU/v8Jh6n+0RmoPS4p2RwvFnmCeT5TC/CgTzvA2/4cDjXhwTy6Uhz3yaNRJDw3tk2NgtNM8bLZn6AclEzrE1DysvS9T3DpG7ErEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5aI8/ca; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F76AC4CEF1;
	Sat, 10 Jan 2026 11:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768045459;
	bh=RK0kaXH946joA31HJoo8Bkcy4J+mhvrIEiIV6ullE/A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p5aI8/cah3DaNSAcQpCI037nw1AWTX0ygVW5sH+vTZyK8HT7nmwEgw4fH4v+GQf/k
	 PRfwlxanEd0QobggYQ+gSgr8ARvMt0DGwYio07tmIAGs2zJv1EKCSTvgbh9iuKPS1h
	 InhtvSvRVgYRNxPWa5aMNRf/f2V0uUutap4ooF8u9nWvHlBGlAkrmo5/AvdmaAu92p
	 w45N5xkVMMWRDei2jmBvOI/ZjmlIcY3eYiNTMWBQKYbkuW6zfRFc2h1NoJmFq5TKlN
	 W3PcQ0h1VaxfmvuqCmWeBjHEpa+g7vWV/yXM5ef9G8H/mblhztZHRblKm07+Ssk76w
	 MtpCQUMmbDgaw==
Date: Sat, 10 Jan 2026 12:44:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 21/25] man/man3type/wchar_t.3type: HISTORY: Update
 first SUS appearance of wchar_t(3type)
Message-ID: <aWI4rAg8tYlkRMwK@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
 <a7d237cd5287cf35982d26f5289b1b9daaeb0be1.1767939178.git.sethmcmail@pm.me>
 <aWDZ5EM-knrbOb_t@devuan>
 <h4reW7ecM6XLHLIdrP5SKys4XwrtBO5ZoRHij7d30gTkw9a3W6zEALzJEpjfU_NoGp5Q3pEIQ0nIx2HN-AEBBSj_QNaR0Ca5Qn4lTwyZ3Sc=@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oca6x4ph7lpm7xp6"
Content-Disposition: inline
In-Reply-To: <h4reW7ecM6XLHLIdrP5SKys4XwrtBO5ZoRHij7d30gTkw9a3W6zEALzJEpjfU_NoGp5Q3pEIQ0nIx2HN-AEBBSj_QNaR0Ca5Qn4lTwyZ3Sc=@pm.me>


--oca6x4ph7lpm7xp6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 21/25] man/man3type/wchar_t.3type: HISTORY: Update
 first SUS appearance of wchar_t(3type)
Message-ID: <aWI4rAg8tYlkRMwK@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
 <a7d237cd5287cf35982d26f5289b1b9daaeb0be1.1767939178.git.sethmcmail@pm.me>
 <aWDZ5EM-knrbOb_t@devuan>
 <h4reW7ecM6XLHLIdrP5SKys4XwrtBO5ZoRHij7d30gTkw9a3W6zEALzJEpjfU_NoGp5Q3pEIQ0nIx2HN-AEBBSj_QNaR0Ca5Qn4lTwyZ3Sc=@pm.me>
MIME-Version: 1.0
In-Reply-To: <h4reW7ecM6XLHLIdrP5SKys4XwrtBO5ZoRHij7d30gTkw9a3W6zEALzJEpjfU_NoGp5Q3pEIQ0nIx2HN-AEBBSj_QNaR0Ca5Qn4lTwyZ3Sc=@pm.me>

Hi Seth,

On Sat, Jan 10, 2026 at 09:08:49AM +0000, Seth McDonald wrote:
> Hi Alex,
>=20
> On Friday, 9 January 2026 at 20:37, Alejandro Colomar <alx@kernel.org> wr=
ote:
> > Hi Seth,
> [...]
> > I've recently learned that wchar_t and related APIs were introduced to
> > ISO C in C95.  If you are interested in them, you could check the C95
> > draft (there's a link in standards(7) --I added it a few weeks ago--).
> > Otherwise, I'll have a look at it myself.  Let me know.
>=20
> I can include this in later patches, as long as citing the draft is
> sufficient justification.  I personally tend to have a more 'final
> standard only' mindset, but if you're okay with the draft, then I'm
> all good to use it.

For ISO C, unless you have the money to pay for the standard documents
(usually, this is only done by companies that need certification), the
drafts are the only available thing.  The actual standards are behing a
paywall, and most people never see one.  I have never seen an ISO C
standard (and I'm member of the C Committee).

The C Committee publishes drafts of what will become the standard, and
usually, it's enough to consult the draft that's closest to the
standard.  See also:
<https://stackoverflow.com/questions/81656/where-do-i-find-the-current-c-or=
-c-standard-documents>

For C95, the draft n412 is, as far as I understand, identical to the
standard (except for the ISO cover sheet, etc.).  Draft n412 was an
early draft for C99 published around the publication of C95, and even in
the SUMMARY of the draft, it states that "This document represents C90
with Technical Corrigendum 1 and Amendment 1 applied".  See
<https://www.open-std.org/jtc1/sc22/wg14/www/docs/n412.pdf>.

For C23, for example, the draft n3220 is identical to C23 except for one
typo in C23 that was fixed in n3220.  (n3220 is the first draft of C2y).

In other versions of ISO C, drafts may differ more from the actual
standard.

>=20
> For the 3type section I've already covered, it'd probably be easier if
> you could patch up the few types that first appeared in C95.  I'd rather
> not keep going back to refine previous patches, as I've found (from
> general experience) this mindset tends to cause me to *constantly* find
> new ways to polish what I've already done, preventing me from making
> much progress.

Yes, I'm taking your patches as they already improve the pages.  I was
mentioning this in case you want to write patches in the future that
also document C95.  FWIW, I've applied the patches already.


Cheers,
Alex

>=20
> ----
> Seth McDonald.
> sethmcmail at pm dot me (mailing lists)
> 2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369

--=20
<https://www.alejandro-colomar.es>

--oca6x4ph7lpm7xp6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmliO4oACgkQ64mZXMKQ
wqkV2BAAuf8G/xdvPtXNtLxmtxOBljv18mmtjNEM/t3Grs/hYqqciUH9FwzyaNCF
qdP0xvJ+3boZe/sqq53Ul0FPyTxGxTSqrTOMDUTXZErpeIr9wZ6oHk1f2el7XHp/
Gn0kT88Z+XQoy5+vSFEqCEsrmfBYz2XaB3Nu13K9iM1OOBeLRQ56Qe6di7juVMom
W6h4Mk1jbA/77arRMVRfZaW8qH1e/7yv8jnt0f8FOACQBMkgvTAowpEZrTi6v+YL
GsngzgFY/jH7bxlQm0dF9CWkvPAvM7gH6AgSlusjHF4ocx/2GEnG7IhS7OrjcC9f
MPDGFG0fUCWyj89cv1nlLpZ0iRzyFG7WrjDbdQ8oPQ5TyTk9ZIcHpzUkxUUpkBok
7RstQ0Mh9P/GbKRo2rMPNiTEOudwyYWtYnO2kix+weomn87VBZE0o/ocd9wAGxi8
OCUC/RLHeN7U+VSgo23CdzBpXF/2l9FYD5G7H3I9VB0kX3n7jIOomi4RmdXmju8b
dDIHrxaCDwX4JteQLdUNUr/tvfMG3HqsabuBniUdc/ef5ysMVqGo0ZGkwwyYvE9r
YRYnKjCvu1h/mb6ip12LzCmWJyokjrOW2cb7SxohzKvXzwq48oGEj1sL7ub/LZ4Q
R7tqPgDEzcf9CLxrV4UIhLYVNVfL6F0/HgM1/ldujJIUAu8yuuU=
=/GR3
-----END PGP SIGNATURE-----

--oca6x4ph7lpm7xp6--

