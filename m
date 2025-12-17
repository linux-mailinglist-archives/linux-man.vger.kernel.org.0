Return-Path: <linux-man+bounces-4431-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E422CC7CD1
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 14:22:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49CA230C8000
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 13:17:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24FF23559C3;
	Wed, 17 Dec 2025 13:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="VxERPyCx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DFE235504C
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 13:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765976621; cv=none; b=rHSC2QGkBW8TKkTmhYjuAhZ+e0fmDyg14SxiYQqFv1e8ty31WvhpSDmVtMhqoqlz+e27h/rcpaV0nyhdMDziDhdczRlXfkSDx3CfZnLp3c2j//9Q/elc4RaSV1pjJEOTxuEF21msj/Ej1MOfEHPJ+6+nxrri0QOeEu5bII4he0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765976621; c=relaxed/simple;
	bh=7KpOJ45KYoh46XEl4bYYsvUWWxwCvBybzYtGr7OKhy4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OedY04N52wtERuJXIN+INiKY9HZ77EVP+si9B9C4QiWq60BMutiVR5I0AVhP0GZubKjvvXQDlYiHI+4lgJs5/nda0GAKvoWOO4wpzxZ1jawWOP14CSTKuZDm3B6VrhOCe2COuVOMBMa0DYRzdpuZusr8VxEBiguhkfPXsT6VI0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=VxERPyCx; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1765976610; x=1766235810;
	bh=7KpOJ45KYoh46XEl4bYYsvUWWxwCvBybzYtGr7OKhy4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=VxERPyCxZzn41rUgLBiy8BKWl5g3949w3PB6Odr0GeQwqYVjCk25HN53U1ysfOSRk
	 cKEVs+UUITJtkV/4VbAB5gbDCdK29XAwO48pSoDOHcGe41qJqyeCGGRao2BTxUmh5e
	 O1K64JxXugMZYXroIR5iZXfVH+zybsNi62sZeNHBOEShV9Ky47u2CRJJdrFBP8g2tY
	 ++tHt1F/fTFi3vJWt8hg/hdvqaSSQYAhfqf57UV6XY4IW5l4teQ9IAx+U677F/n+QH
	 goIpabieeDfNV4PTwShsdcKtnhufw3hwFe48bv6gf+mpum1mwGHaPKxKjVh+IBrQ1x
	 S3ms7p5pzQcTw==
Date: Wed, 17 Dec 2025 13:03:27 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org, Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: Re: [PATCH v2 00/14] man/man3/posix_memalign.3: Several fixes, and split the page
Message-ID: <BNxvXNxDPLUlfS9uEgxC0SDT-Wnm3wASD8N9gP1CTQzTYHN1BIhAxneXfbP2JuIWZxB5n0p8mqWppRKDuZcj_izoyouvX5T6bBltSIdOJWc=@pm.me>
In-Reply-To: <cover.1765809415.git.alx@kernel.org>
References: <cover.1765370035.git.alx@kernel.org> <cover.1765809415.git.alx@kernel.org>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 1ebeaf6d3cbd0e8514c446c3a5840704857816eb
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------6a40432ebfc6b179eef870054007fe17552cc76d1819d97d4baf9a3921fa320b"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------6a40432ebfc6b179eef870054007fe17552cc76d1819d97d4baf9a3921fa320b
Content-Type: multipart/mixed;boundary=---------------------43358b2b4dbc647cf7737b51ccedf29b

-----------------------43358b2b4dbc647cf7737b51ccedf29b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

G'day (or night, as I'm writing this),

On Tuesday, 16 December 2025 at 00:41, Alejandro Colomar <alx@kernel.org> =
wrote:
> Hi!
> =


> In v2, I've removed the explicit sentence saying that one should use
> aligned_alloc(3) instead of memalign(3).
> =


> I've also documented that C11 had a bogus specification for
> aligned_alloc(3), and that OpenBSD still implements that (although at
> least, they don't exploit the UB). I've CCed them, in case they're not
> aware that C17 fixed those issues.
> =


> I've documented that while the C11 specification had a lot of UB, no
> implementation has ever implemented that, and so it's just theoretical
> (and thankfully extinct) UB.

I had a look at FreeBSD's documentation for aligned_alloc(3) - which is
just jemalloc's manual - and it does explicitly specify the C11
undefined behaviour.[1]

"The aligned_alloc() function allocates size bytes of memory such that
the allocation's base address is a multiple of alignment. The requested
alignment must be a power of 2. Behavior is undefined if size is not an
integral multiple of alignment."

However, I have spent a while going over FreeBSD's (jemalloc's)
implementation of aligned_alloc(3), and as far as I can tell, it
appears to work as expected even when size is not a multiple of
alignment. So it seems the man page is just repeating the C11 standard
to conform to it (though the page doesn't specify this conformance,
strangely enough).

Even so, it may be useful to also document FreeBSD's nominal undefined
behaviour in addition to OpenBSD. Perhaps emphasising how jemalloc
doesn't actually exploit this undefined behaviour, and never will given
the project's recent retirement. Thereby meaning the point about C11's
extinct undefined behaviour should still stand.

This would also prevent people (like myself, I imagine) from thinking
that the Linux man page is potentially outdated due to seemingly not
knowing about FreeBSD's (ostensible, but documented) undefined
behaviour.

----
Seth McDonald.
sethmcmail at pm dot me (mailing lists)
2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369

----
[1] https://man.freebsd.org/cgi/man.cgi?query=3Daligned_alloc&sektion=3D3&=
manpath=3DFreeBSD+15.0-RELEASE+and+Ports
-----------------------43358b2b4dbc647cf7737b51ccedf29b--

--------6a40432ebfc6b179eef870054007fe17552cc76d1819d97d4baf9a3921fa320b
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmlCqh4JEFg5atiSQ9NpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmd4ubWGz0lwLRjRd5eiJAvVDFdYX2XLNv+t1tDU
FOhQzBYhBCM26NL+sVMAaSxiqVg5atiSQ9NpAABKIwEA2Dk8NIIAEuPVjiy7
PtEGBRxgW6V0+SuThtNHZ9cJk9oA/2Z4PKtr+g3C+tXl732PqZYaB2vsluSn
4aChyPFY6OsB
=YUgT
-----END PGP SIGNATURE-----


--------6a40432ebfc6b179eef870054007fe17552cc76d1819d97d4baf9a3921fa320b--


