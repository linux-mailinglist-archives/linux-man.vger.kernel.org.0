Return-Path: <linux-man+bounces-5000-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCqEFKr1emnDAAIAu9opvQ
	(envelope-from <linux-man+bounces-5000-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 06:52:42 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A7656AC1AF
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 06:52:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4946C3035D76
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 05:50:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8089364049;
	Thu, 29 Jan 2026 05:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="pvixlrnN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-244123.protonmail.ch (mail-244123.protonmail.ch [109.224.244.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D97C359FAA
	for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 05:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769665841; cv=none; b=MhAIWB5LefQvM67OBfYLJsaB0QG5to/ECO9RDkPU6WXnPqlyx4lP2sXovap7jyQA0jam68C2Wl8QcmdIFhs4sTsn/SWC+moEnQX9aFlKD/aLTHEV4Jxb1+dC5gWEfySSFce88yo100MDtygrMF69+Q1xv1t9EKCRqfPJOEXpXtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769665841; c=relaxed/simple;
	bh=asTAFC4gjDhmLZUU6ke/E3OkMQ/BhHpqmg3zQ1qjssg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AZHh2mpIuCCH5f7VCXjZFTy0l6c900ViEfrKEdkvE4DrvmIDDUQM4NgDpKNsjhGJ9zO9r3y+x1j1hiLUaOEwkYrhAw1xvyu38036LQGkRfn+rrivviMK6L/hK5z/DeZbkrvRQpL4BNsGkdf483/RyI4LTM/bAf3uFxBb/Sq+yqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=pvixlrnN; arc=none smtp.client-ip=109.224.244.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769665831; x=1769925031;
	bh=/cKhf/pt8s2XPULxMGR6TfIiePPgAsfN9JhMZuGDZlo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=pvixlrnNKTlH4/DN3+A42gUEHOppRfDWZJRzQs573ji1hs0Ssr2HyqQ9EFY0daJjD
	 DLaG4COr8/1PONPWteWxQRY2L+sqi27kLca067TqZHh1bsSE9f6dfw6RV3bpLSJcoe
	 rKlSVRYW8XKN40VEffy9ezDJtHO8xvoyr1gmoReeZEs/hU91+wgmvpeyhZW1mH5SqN
	 VYiF8ydb5dATNV7gw8Z+gdM29blzCLzH+t/q3p8uX5dC9KBnT+xj8Qn4APmgISwi3g
	 V7QAAqwaw7b9AlxoWC5F0j+spFvKpOeTok6GO4pjgtMeiXrpPnUA1GurgVCGnwFQR6
	 4D1lJvvfchIFg==
Date: Thu, 29 Jan 2026 05:50:26 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org, Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, "G. Branden Robinson" <branden@debian.org>, =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH v2] src/bin/mansectf, man/man1/mansectf.1: Add program and manual page
Message-ID: <aXr1G4Y2VZZO0t3N@McDaDebianPC>
In-Reply-To: <c5da437ce6c8a41c4e5c26ee969170254b49dcab.1769626502.git.alx@kernel.org>
References: <cover.1769497513.git.sethmcmail@pm.me> <c5da437ce6c8a41c4e5c26ee969170254b49dcab.1769626502.git.alx@kernel.org>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 9c59b2128915c5e9a3f43d85ae413a80b2eeac49
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------7ea5ba926be01b22ccb4fb50b2ce5e4c4180da834bf66ed464888c53e7265982"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5000-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[pm.me:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	HAS_ATTACHMENT(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A7656AC1AF
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------7ea5ba926be01b22ccb4fb50b2ce5e4c4180da834bf66ed464888c53e7265982
Content-Type: text/plain; charset=UTF-8
Date: Thu, 29 Jan 2026 15:50:19 +1000
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
	"G. Branden Robinson" <branden@debian.org>,
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH v2] src/bin/mansectf, man/man1/mansectf.1: Add program
 and manual page
Message-ID: <aXr1G4Y2VZZO0t3N@McDaDebianPC>
Mail-Followup-To: Seth McDonald <sethmcmail@pm.me>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
	"G. Branden Robinson" <branden@debian.org>,
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <2LCP4REyNFpOfnmZJzfDKxZP6Sf7QMtwVIE3T-9qIAmSmYEZAnCPLPlv2j2ea57aQ8bZqGFX7ijFFK8dfqY4kg==@protonmail.internalid>
 <c5da437ce6c8a41c4e5c26ee969170254b49dcab.1769626502.git.alx@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c5da437ce6c8a41c4e5c26ee969170254b49dcab.1769626502.git.alx@kernel.org>
User-Agent: Mutt/2.2.13 (2024-03-09)

Hi Alex,

On Wed, 28 Jan 2026 at 19:55:43 +0100, Alejandro Colomar wrote:
[...]
> +.SH PARAMETERS
> +See
> +.BR mansect (1).

(If this isn't a problem then feel free to skip this)

AFAICT, 'PARAMETERS' isn't a heading used anywhere else.  Running

	~/Code/Linux/man-pages$ grep -Fnr 'PARAMETERS' man/

comes up empty for me (besides mansectf(1) of course).  Perhaps instead
the DESCRIPTION can explicitly state this.  Something akin to "This
command uses the same interface as mansect(1)."

[...]
> +#!/bin/bash
> +#
> +# Copyright, the authors of the Linux man-pages project
> +# SPDX-License-Identifier: GPL-3.0-or-later
> +
> +set -Eefuo pipefail;
> +
> +mansect "$@" \
> +| man /dev/stdin;

Thinking about it, one thing I did like from v1 that would be nice to
keep is the specified sections being case-insensitive.  Since the
section headers should always be in uppercase, specifying them in
lowercase when invoking mansectf(1) shouldn't introduce any ambiguity
(i.e. "Does the user want the 'NAME' or 'Name' section?").

-- 
Take care,
	Seth McDonald.

On-list:  2336 E8D2 FEB1 5300 692C  62A9 5839 6AD8 9243 D369
Off-list: 82B9 620E 53D0 A1AE 2D69  6111 C267 B002 0A90 0289

--------7ea5ba926be01b22ccb4fb50b2ce5e4c4180da834bf66ed464888c53e7265982
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml69SIJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmf9eAut1rnOKoePMQOLdkA9FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAMn4AQDFF89/WG6V7KIovi/ioNaxB91bt23iScmeU/rG
iW1W4AD/VXd/JG9isAN/M9cr3VBmB2Og9wOxT0AJOa+gamYCdAo=
=f9+3
-----END PGP SIGNATURE-----


--------7ea5ba926be01b22ccb4fb50b2ce5e4c4180da834bf66ed464888c53e7265982--


