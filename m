Return-Path: <linux-man+bounces-4931-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBvmCBhQdGkX4gAAu9opvQ
	(envelope-from <linux-man+bounces-4931-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 24 Jan 2026 05:52:40 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2627C83A
	for <lists+linux-man@lfdr.de>; Sat, 24 Jan 2026 05:52:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13AC2300E383
	for <lists+linux-man@lfdr.de>; Sat, 24 Jan 2026 04:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F27CA2F60D1;
	Sat, 24 Jan 2026 04:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="Gcdzsw3S"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24416.protonmail.ch (mail-24416.protonmail.ch [109.224.244.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E13D218AAF
	for <linux-man@vger.kernel.org>; Sat, 24 Jan 2026 04:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769230356; cv=none; b=ipYoCuzdmEeHVQZc3DMP0MRwFaD4dn6HUy3//IOfshgWKSLnjC0stt3YmvXs8anTLPtXzIh88S43+cl9vs21ofhZb0t55rxafztkaRPmqTb4EhhDKsnwBiaTyArkxVdav003BP1ysLkNtw2CjpFrdynmHr29EkAyaTtmkxgPpvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769230356; c=relaxed/simple;
	bh=OTKXfSa9zCJgtZmhJEI5olxlL0Tx2BoMPeatWy6Zg3A=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YH5CoDVtPBgKrolh72oSFXumxAe5BgB6kfRyc2tZ6Bh9GFiSpZ7hEAfg8zLNnWrnv+7/3l9nmnuAOFKJ5sbbwqbQ57Mhu9rYJb7VSLxwkFKmL+q5j0Qoq0b9HZlLP45ij50jHwbZ3dsTUheA2oSi5LN0B7SOOkPj0hDYgmyH7cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=Gcdzsw3S; arc=none smtp.client-ip=109.224.244.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769230346; x=1769489546;
	bh=MUZHc6vWBZ0IE0p1l9lbSnN6RYqCKVtEuIGbvYNRAV8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Gcdzsw3SBOPlxvReA/FpeaSiNfNYhIistMw/S4WMzjjXB7wN9vJ3NmChiTOF2qEpC
	 gT5+HBarXvxfobBbEVee58C7Seb50G/G4raNHkvFqWuoZzuUodMqkWmEyA5vv4wsd8
	 cbD82q4EGg9lNH0QyFlemP4fODyLWPQ95ynQq2GHog8zbZlX8ru3LXwcibugz201cr
	 /nGyRTvSZE3HJCJ5pPL7DRnv/vbsMJS/YPU0UNYksJK7W+hWMdyAcNIDO3tmc5+u5z
	 jQDQ9ctUa3UBwCtPaTQ2bimzxdP9KyfjRuu+6Tx4+rwJfA/b9T4dPMYrzp6z7BEFfC
	 MJRoAA85mvQ5Q==
Date: Sat, 24 Jan 2026 04:52:22 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Mark Harris <mark.hsj@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 01/23] man/man2/clock_getres.2: HISTORY: Update first POSIX appearance of clock_* syscalls
Message-ID: <aXRP_3yiC_grNVmN@McDaDebianPC>
In-Reply-To: <aXOVnR99sUTBFmLJ@devuan>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me> <1a421b5ee130c1d5892791060b6fdf8d911d8362.1769047228.git.sethmcmail@pm.me> <CAMdZqKGj6r7RcYSTGgvFj_z+xDJyOqFv3oc8g6tT+Gnh4W-NQA@mail.gmail.com> <aXOVnR99sUTBFmLJ@devuan>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 251ec4b2216a57cbd3d6a02ba8914cc96a64dc6b
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------46a7b0e91cbff0435cd6f75152c4305e9b02758b2029780b6a285c001ebfd7f9"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4931-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[pm.me:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	HAS_ATTACHMENT(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 6B2627C83A
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------46a7b0e91cbff0435cd6f75152c4305e9b02758b2029780b6a285c001ebfd7f9
Content-Type: text/plain; charset=UTF-8
Date: Sat, 24 Jan 2026 14:52:15 +1000
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Mark Harris <mark.hsj@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 01/23] man/man2/clock_getres.2: HISTORY: Update first
 POSIX appearance of clock_* syscalls
Message-ID: <aXRP_3yiC_grNVmN@McDaDebianPC>
Mail-Followup-To: Seth McDonald <sethmcmail@pm.me>,
	Alejandro Colomar <alx@kernel.org>,
	Mark Harris <mark.hsj@gmail.com>, linux-man@vger.kernel.org
References: <cover.1768995315.git.sethmcmail@pm.me>
 <cover.1769047228.git.sethmcmail@pm.me>
 <1a421b5ee130c1d5892791060b6fdf8d911d8362.1769047228.git.sethmcmail@pm.me>
 <CAMdZqKGj6r7RcYSTGgvFj_z+xDJyOqFv3oc8g6tT+Gnh4W-NQA@mail.gmail.com>
 <r-epfXun6E38iajoxZZzXlz9j03Kj0Hdn5PdMSLpDc1tIZPlhn0Kv-1ItLrNlcT9kgeuYHyri1EDjoDoMSvUng==@protonmail.internalid>
 <aXOVnR99sUTBFmLJ@devuan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aXOVnR99sUTBFmLJ@devuan>
User-Agent: Mutt/2.2.13 (2024-03-09)

Hi Alex and Mark,

On Fri, 23 Jan 2026 at 16:38:38 +0100, Alejandro Colomar wrote:
> Hi Mark, Seth,
> 
> On Wed, Jan 21, 2026 at 07:37:33PM -0800, Mark Harris wrote:
> > Seth McDonald wrote:
> > >
> > > clock_getres(2), clock_gettime(2), and clock_settime(2) first appeared
> > > in POSIX.1-1996.[1]  SUSv2 incorporates POSIX.1-1996, so listing both is
> > > redundant.
> > 
> > Technically these functions came from POSIX.1b (1003.1b-1993), which
> > was a set of optional realtime extensions to POSIX, published as a
> > separate document.  POSIX.1-1996 integrated them into the main
> > standard (1003.1-1996) as part of a Timers extension.  In 1997 X/Open
> > adopted them to SUSv2 as part of their own X/Open Realtime extension,
> > which includes the POSIX Timers extension and other extensions that
> > had been added to POSIX from POSIX.1b.
> 
> Thanks!  For now, I think I'll take the patch, even if the commit
> message is factually incorrect.  We can then do a future round of
> patches researching those less common POSIX extension standard.

Good to know.  I'll be sure to phrase my patch descriptions more
carefully from now on to prevent such inaccuracies.

-- 
Take care,
	Seth McDonald.

On-list:  2336 E8D2 FEB1 5300 692C  62A9 5839 6AD8 9243 D369
Off-list: 82B9 620E 53D0 A1AE 2D69  6111 C267 B002 0A90 0289

--------46a7b0e91cbff0435cd6f75152c4305e9b02758b2029780b6a285c001ebfd7f9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml0UAUJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdpm7xy6qCzGFEgA585jsuPFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAPnHAPwJtYSl4DDa8M9qRWOPdSe9GomT35VIyRAW8B2T
nPPaywD/RmgWXUsVi4xeHpaBrUATU2X9+4YgMsuDZQNFO0Ya5gs=
=30BV
-----END PGP SIGNATURE-----


--------46a7b0e91cbff0435cd6f75152c4305e9b02758b2029780b6a285c001ebfd7f9--


