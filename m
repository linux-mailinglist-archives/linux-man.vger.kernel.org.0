Return-Path: <linux-man+bounces-4732-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0032BD06FF7
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 04:32:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 20E293003B14
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 03:32:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D2CF1CD2C;
	Fri,  9 Jan 2026 03:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="WSdTkNLN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10629.protonmail.ch (mail-10629.protonmail.ch [79.135.106.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D1F50094D
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 03:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.29
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767929523; cv=none; b=PEMKEzXpM/ERxrJ4l3nh8YoMqqzn35B2t5i3qH1UFQ3Ljr3/hvAbPQa/ObctRz/sHml1DeuzRytTAF8pFSbZrLzTgAmitA2Ukd509KsrWmWYm/+N+2A3B14FH0un4bsFWSlopqf+No5VkOtrUKqd8cVx/6sAbMHQ5P5fy51rUnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767929523; c=relaxed/simple;
	bh=nQV1acxdqaHzmn1W08MfOXUTC1AiGICYA1hgKH4vyQ0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BbexPimceyGAa85EAj60a/IwaD0rF64gN1BrFnmQ7ULC7VqL5MyEie5V2VDnO9TmfS9FouWk3sy5grnr1Bq5NFT/gpjBmzcgxShACa66Oo3FE1zKk8O1E+nWFJrwBpVVbnrrI27n+1fI+DoouRly+T9BXYZT32uE0P4OkTvdqw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=WSdTkNLN; arc=none smtp.client-ip=79.135.106.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1767929512; x=1768188712;
	bh=NWYX7TTZx/zNE51FyZWfmeAhWrudBPwGnJjanLf13k4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=WSdTkNLNnrPkf+mWg0vgsPCkGtEGyDU5F/8LQaIgxRVZGfytEbsUrmWA2d5FGret/
	 xjWV1z5C8hvKzcC/hk2JgRCjtQ9TnkhGjGonkY4Jpt4wmTrjvT2JQZ950MPg64HTLL
	 cGs6X7frjuRT7LD1ophT/fYxNDda6USkV+Gqjx503rpQkTsRikh9qApCmEbhXci32m
	 8pv7CFyLpwHlyC07gbXA6RYHFjuX3FJb0kNg83r2NQNTV68IvVrs20s6rilnyfc+p3
	 NqNg2fMU8qsXVuMv84qCh/AicuiJI2cqiSlve6eGtnJGCUi0VnCkzHt5P4CTw8XysT
	 N5B2oBz2MI3pQ==
Date: Fri, 09 Jan 2026 03:31:46 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 08/11] man/man3type/stat.3type: HISTORY: Specify first POSIX appearance of st_{rdev,blksize,blocks}
Message-ID: <AzV_uq5wDJK6TGmy0mhak2A1ooip-Z-E6YOBGNRtQXcSgNNe0SlkUc0uHPvPaAVxQZMRSpw_nrvCwq3u3MnibR-mB-ymp3ycoAH9fIhWu6k=@pm.me>
In-Reply-To: <aV-ZG_8At_-R7G2v@devuan>
References: <cover.1767840410.git.sethmcmail@pm.me> <9d3a705508aaaec7b2ee5c79bb284fd508008fce.1767840410.git.sethmcmail@pm.me> <aV-ZG_8At_-R7G2v@devuan>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 7861ad96e52b4e88e197b2dc5f285370c3a02ab0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------e9dc63d14b23ad904ffc935a8c097321aa4624febacd79e93bb0655920f005bc"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------e9dc63d14b23ad904ffc935a8c097321aa4624febacd79e93bb0655920f005bc
Content-Type: multipart/mixed;boundary=---------------------f2e44cbd348765299e848cc7a2afd7a3

-----------------------f2e44cbd348765299e848cc7a2afd7a3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Hi Alex,

On Thursday, 8 January 2026 at 21:48, Alejandro Colomar <alx@kernel.org> w=
rote:
> Hi Seth,
>
> On Thu, Jan 08, 2026 at 01:03:14PM +1000, Seth McDonald wrote:
> > From: Seth McDonald <sethmcmail@pm.me>
> >
> > The st_rdev, st_blksize, and st_blocks fields of the stat(3type)
> > structure first appeared in SUSv1.[1] They were added to POSIX.1-2001
> > when POSIX and SUS merged, but as an XSI extension (still SUS-only).[2=
]
> >
> > [1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
> > Version 2, Chapter 4 "Headers", p. 830.
> > [2] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 356.
> > https://pubs.opengroup.org/onlinepubs/009604499/basedefs/sys/stat.h.ht=
ml
> >
> > Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> > ---
> > man/man3type/stat.3type | 8 ++++++++
> > 1 file changed, 8 insertions(+)
> >
> > diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
> > index 44d45b4a52b4..83f6e881a5ae 100644
> > --- a/man/man3type/stat.3type
> > +++ b/man/man3type/stat.3type
> > @@ -137,6 +137,14 @@ .SH STANDARDS
> > .SH HISTORY
> > POSIX.1-1988.
> > .P
> > +The
> > +.IR .st_rdev ,
> > +.IR .st_blksize ,
> > +and
> > +.I .st_blocks
> > +fields first appeared in SUSv1
> > +before being added to POSIX.1-2001 XSI.
> > +.P
>
> I think this would be simpler like this:
>
> 	@@ -135,7 +135,14 @@ .SH DESCRIPTION
> 	.SH STANDARDS
> 	POSIX.1-2024.
> 	.SH HISTORY
> 	+.TP
> 	+.I stat
> 	POSIX.1-1988.
> 	+.TP
> 	+.I .st_rdev
> 	+.I .st_blksize
> 	+.I .st_blocks
> 	+SUSv1, POSIX.1-2001 XSI.
> 	.P
> 	Old kernels and old standards did not support nanosecond timestamp fiel=
ds.
> 	Instead, there were three timestamp fields
>
> What do you think?

That would certainly work.  I initially thought about doing that, but
decided against it since I hadn't at the time seen any other pages that
list individual structure members in their history section.  But if
you're on board with it, then I'll send in a v2 with this fixup.

Btw, I'll want to add in some '.TQ's between the listed members, as
without it the formatting looks a little funny.

	$ MANWIDTH=3D64 man ./man3type/stat.3type | sed -n '/^HISTORY$/,+5p'
	HISTORY
	       stat   POSIX.1-1988.

	       .st_rdev
	              .st_blksize .st_blocks SUSv1, POSIX.1-2001 XSI.

I'll also send in the next set of man3type patches with chronological
ordering, at least as far as I can tell. :)

----
Seth McDonald.
sethmcmail at pm dot me (mailing lists)
2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369
-----------------------f2e44cbd348765299e848cc7a2afd7a3--

--------e9dc63d14b23ad904ffc935a8c097321aa4624febacd79e93bb0655920f005bc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmlgdqEJEFg5atiSQ9NpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdqSapWmA2maDiGfN1Yxw5c0W56vQrq19pTodpy
asXwCxYhBCM26NL+sVMAaSxiqVg5atiSQ9NpAADPtQEAzxgC7IXEcNaoV+HH
pP0sBSKcS52Pin34pdUqwOG0ewMBAMxY3qDSEFQktCxdjY9Gx50UKPVpSm1N
75Xh17+kSvoB
=/jPz
-----END PGP SIGNATURE-----


--------e9dc63d14b23ad904ffc935a8c097321aa4624febacd79e93bb0655920f005bc--


