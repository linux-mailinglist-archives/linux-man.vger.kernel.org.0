Return-Path: <linux-man+bounces-4866-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGkQIle7cGmWZQAAu9opvQ
	(envelope-from <linux-man+bounces-4866-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:41:11 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 083E75624E
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:41:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5B50D92C774
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 11:17:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C29944BCBC;
	Wed, 21 Jan 2026 11:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="OlgOdp00"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10631.protonmail.ch (mail-10631.protonmail.ch [79.135.106.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A504657E9
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 11:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.31
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768994090; cv=none; b=ogpMB3wzFUsYf2RIhWY1TX6u59A/UTT9dhIGSZpRDSxZ3oTY8vstG+Z2jm1kBxcHFP2XAKuV2WtO1IHTutKGbNHxcqVLO7O9CY1xIsRzckLqJZF4rN9rNvsPnB+p8C2CDfl+Pq4MqWgEj5KjsPJDzAL6xIwdynSwVY+9ziKMzXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768994090; c=relaxed/simple;
	bh=89AHs+kNCuZ9bBI0tHU9czuhsfhboVNJ8TbZLcqoz0c=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=LZVeA0cXuDLXruT9Ea0ljIvJ33yk2qXlSTVCzPG9ogcWS6h2wfMKj2ARrwB+Fxyo9umPp4Zlq6n4mnhHlUbwUqpilxZtstXPft7bwLJCcchmUl922ypFNWssnT5R6wDCX90PksuqWpLGaOS5yrMA3XYF0R74VXnOwO3x9vx9uhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=OlgOdp00; arc=none smtp.client-ip=79.135.106.31
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768994080; x=1769253280;
	bh=qj0JmcK/ZoL2Xg/mc9BA2SrBrG5cFXfRZsXCPjkR6w8=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=OlgOdp00ReOWb9n2X88OL7UGX17j05KPBX+ZhE6/Ck2XrdHfTuple0C/qKZaGxywH
	 lEZFRRgsq3zSNmHShdmoRLz6GskZfBpcvlJt99u2ILWTlOouB93lj7lvCoqT27vkHb
	 AoKKl05O3HzhyBTVsTj806ZSiubLk6RHvJT+tAN2c/7TFl8NT4lEH9WAALShi6fyPa
	 SmTXBvUA9I+XBGY9ytnuQWJNSDQCGcZ2Y7VGFi0LcjEYCppHFXz7rhccMhA00pU3O9
	 1ccvDVKC2jNDXq45qMPQpD1w71NbYwGHf7K6NHVwdcFDXcK+vgmEfeO1OPrUQ+s4yo
	 0nCL7J294pDBg==
Date: Wed, 21 Jan 2026 11:14:34 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/19] man/man2/*: Update history of syscalls A-CH
Message-ID: <35lZsvMN8xE1C1VDR8Qwz4lNsKFkEYnumVqGPHg7F6k0_GLk6Oqnz9-k9owiHRCszhZCqwDE9BFR73d3nCqawQ==@protonmail.internalid>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 9555f4020e5d9ebf4f86c9ba4d7e79f2cdc04dc3
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------c5f3422f73b7c4a0bbd1a25bfc25701e5e944bb96cb288856389a89a9fd1e247"; charset=utf-8
X-Spamd-Result: default: False [-3.06 / 15.00];
	SIGNED_PGP(-2.00)[];
	FAKE_REPLY(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-4866-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[pm.me,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[pm.me:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	HAS_ATTACHMENT(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,pm.me:dkim,protonmail.internalid:mid]
X-Rspamd-Queue-Id: 083E75624E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------c5f3422f73b7c4a0bbd1a25bfc25701e5e944bb96cb288856389a89a9fd1e247
Content-Type: text/plain; charset=UTF-8
Date: Wed, 21 Jan 2026 21:14:27 +1000
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/19] man/man2/*: Update history of syscalls A-CH
Message-ID: <35lZsvMN8xE1C1VDR8Qwz4lNsKFkEYnumVqGPHg7F6k0_GLk6Oqnz9-k9owiHRCszhZCqwDE9BFR73d3nCqawQ==@protonmail.internalid>
Mail-Followup-To: Seth McDonald <sethmcmail@pm.me>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <35lZsvMN8xE1C1VDR8Qwz4lNsKFkEYnumVqGPHg7F6k0_GLk6Oqnz9-k9owiHRCszhZCqwDE9BFR73d3nCqawQ==@protonmail.internalid>
MIME-Version: 1.0
Content-Disposition: inline
X-Pm-Gluon-Id: 7c251d09-5357-43c8-bea3-535d41ed17d6
X-Pm-Date: Wed, 21 Jan 2026 04:33:15 +0000
X-Pm-Internal-Id: 35lZsvMN8xE1C1VDR8Qwz4lNsKFkEYnumVqGPHg7F6k0_GLk6Oqnz9-k9owiHRCszhZCqwDE9BFR73d3nCqawQ==
X-Pm-Content-Encryption: end-to-end
X-Pm-Origin: internal
User-Agent: Mutt/2.2.13 (2024-03-09)

Hi Alex,

On Tue, Jan 20, 2026 at 02:50:22AM +0100, Alejandro Colomar wrote:
> Hi Seth,
> 
> On Mon, Jan 19, 2026 at 11:54:29AM +0000, Seth McDonald wrote:
[...]
> > And on another note, I think I've found a way to stop Proton Mail from
> > corrupting patches.  So my patches should henceforth all be PGP-signed,
> > assuming my workaround is sufficient.
> 
> Yup; that worked!  All patches were correctly signed, and none were
> corrupted (or at least I didn't notice).  Out of curiosity, what was the
> workaround?

tl;dr: The solution was surprisingly simple: just always use
quoted-printable or base64 for the email's transfer encoding.

Because I did not want to associate my Gmail address with my PGP key(s)
(I very rarely use it), I spent a good while trying to figure out why
Proton Mail was corrupting my patches.  And specifically, I continually
experimented with different patches to see if I could predict exactly
when and where any corruption would occur (scientific method ftw!).

This included trying out different combinations of options for
git-send-email(1), including those which I previously had no
understanding of.  And I eventually found that, given the same email,
executing git-send-email(1) with the --transfer-encoding option set to
'7bit' or '8bit' would produce the same corrupted patch, but with it set
to 'quoted-printable' or 'base64' the patch would remain intact.

I also found that the mangling was deterministic.  The same email is
always mangled the same way.  And the mangling always occurs via the
insertion of line breaks into the email contents.

Not only that, but (and this is the weirdest part) if we treat line
breaks as two characters (i.e. as CRLF), then every line break is
inserted exactly every 1000 characters.  If you go back to the first
corrupted patch I sent in and count from the start of the text/plain
contents, you should find two out-of-place line breaks both 1000
characters apart (again, counting line breaks as two characters).

After doing some research with this information, my guess as to what's
happening is Proton Mail is getting an email from an external source,
and checking it to ensure it conforms to the semantics of the specified
content transfer encoding.  Including that lines are no longer than 998
characters and line breaks use CRLF when using 7bit or 8bit encodings.
But may not correctly reset its line length/character count to zero when
encountering an LF and changing it to CRLF.  And so thinks that the
email is one giant line, and inserts line breaks every 1000 characters
to "fix" it.

This is just a guess though.  And regardless of the actual cause, I've
reported the bug with this information (and more) to Proton.  So
hopefully it'll be fixed sometime.

> And how did you sign the patches?  Was it with neomutt(1)?  

The way I set up my email workflow is with Proton Mail Bridge, which
creates a local SMTP server I can use to send emails via mutt(1),
git-send-email(1), etc.  I have it configured to by default sign all
emails I send with the corresponding PGP key.  That way, any email I
send with mutt(1) or git-send-email(1) should be automatically signed.

Now, yes, I am aware that a third party (Proton) having access to an
(encrypted w/ my password) store of the private key I use can arguably
defeat the purpose of using PGP.  After all, only *I* should ever have
access to it.  And in principle I 100% agree.  But since my personal
threat model currently doesn't include being a state target, I don't
see the need to change my workflow.  (But who knows, seeing how the US
is currently going, I may be compelled to change that...)

Besides, I also have a separate PGP key I keep *only* on a physical
security key which I use for most non-email situations.  Such as
encrypting documents and signing commits.  If I ever need extra
assurance for authenticity or encryption, this is the key I use.

-- 
Take care,
	Seth McDonald.

On-list:  2336 E8D2 FEB1 5300 692C  62A9 5839 6AD8 9243 D369
Off-list: 82B9 620E 53D0 A1AE 2D69  6111 C267 B002 0A90 0289


--------c5f3422f73b7c4a0bbd1a25bfc25701e5e944bb96cb288856389a89a9fd1e247
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlwtRoJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdxxPT2++K2dZV35EHiiw5xFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAANo5AQCbbEb+odhAlAb8BiTbSLzSXPtiN1b91/UgzPDn
rZKP0gEA98v2+1waOUVz4oiBdV3CwzWmsp45HqQ/4mSPiDQkAgY=
=l5av
-----END PGP SIGNATURE-----


--------c5f3422f73b7c4a0bbd1a25bfc25701e5e944bb96cb288856389a89a9fd1e247--


