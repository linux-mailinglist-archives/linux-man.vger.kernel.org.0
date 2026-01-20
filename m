Return-Path: <linux-man+bounces-4857-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJuOE0ZJcGnXXAAAu9opvQ
	(envelope-from <linux-man+bounces-4857-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 04:34:30 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6A25071C
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 04:34:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3D7D5867AE9
	for <lists+linux-man@lfdr.de>; Tue, 20 Jan 2026 12:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77A033D3CF4;
	Tue, 20 Jan 2026 12:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="J0Wej7x+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24417.protonmail.ch (mail-24417.protonmail.ch [109.224.244.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D453C197E
	for <linux-man@vger.kernel.org>; Tue, 20 Jan 2026 12:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768911228; cv=none; b=sIfCrwKeeVhBgGaHX92THMUrXzOkzauIjHHcz+pW9y/DVLMidiHMAAQ7KK3xYpRFeng7RCj3irp4uE8bHXGaPpluoQ6xvBRT+kFgcN/6Vnq6guxBNulwf+7Hdw9ww8BwQtamjnQKLq73dDK6coPkdvw6RQ172is1gqlZ3TQ/rZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768911228; c=relaxed/simple;
	bh=GPYEnSFMZ1BjLttY8OB57X3WohAz9TrDLLekOuYmUdE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=l6e7CnmuwuqUghWzVoK4Tqg1A+ZSjoqd4cwb6x89qUB6mjhzq565xlA284IAHAqgC1HL0iHl0gCux17zY1Ox+ZLXbrr96wRFDMlwNtCELWO5V8WcCNJSepexczvQ/1tVO6fM8PpCmaYCJvLAbVT+fuF0OTsThnAe9e61geF2AXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=J0Wej7x+; arc=none smtp.client-ip=109.224.244.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768911217; x=1769170417;
	bh=7T3Co3N91VGQQYYZ/NieepJ2pPk088uSJrIJuXQrwdA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=J0Wej7x+3SQ2ABmCPubtuAFBQzov/+ldEdQj58INZL3mqFfNy8KN2xKN1KJJb3FQj
	 jR8nusGnrLOMr71F3uOJ30QLB5EDZnA1poZMpT+3MHITmfrAJO7IN4YagB7iM0RqlL
	 MqnZtso7f7pafHspm+3JqrkH1h4AVJc+ulcHQIQfi1oEjyDNsmPAV1+1PPmu3EJjaZ
	 RtH0neUVNap+pCdtDYVN3bJPZBNl85qENnNUdq8fUjGoxJYJX1XNvg+mgJwfCIfeaY
	 jmwX/2esw1454jf/JPb16jwc9yZKtZolCIhmq7+tnX3Nf/AlmZiLhPBNT6IH6hpkpA
	 BBArHwlRjOkug==
Date: Tue, 20 Jan 2026 12:13:32 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 02/19] man/man2/access.2: HISTORY: Specify different access(2) prototypes
Message-ID: <aW9xYhsFpNxlo3C5@McDaDebianPC>
In-Reply-To: <aW7aOgFHOdCSiwUH@devuan>
References: <cover.1768822707.git.sethmcmail@pm.me> <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me> <aW7aOgFHOdCSiwUH@devuan>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 49978d69c92852f691be4d8604ee8ecb6a97c75a
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------ec091236aa50c0a31104f38b344e894e0b285c892ea569864921369a74fd4bbe"; charset=utf-8
X-Spamd-Result: default: False [-3.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-4857-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: CD6A25071C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------ec091236aa50c0a31104f38b344e894e0b285c892ea569864921369a74fd4bbe
Content-Type: text/plain; charset=UTF-8
Date: Tue, 20 Jan 2026 22:13:22 +1000
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 02/19] man/man2/access.2: HISTORY: Specify different
 access(2) prototypes
Message-ID: <aW9xYhsFpNxlo3C5@McDaDebianPC>
Mail-Followup-To: Seth McDonald <sethmcmail@pm.me>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <cover.1768822707.git.sethmcmail@pm.me>
 <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me>
 <ev23B3DKLdN9g4CRRLa_ZC5ohdKhgj4TZKeP-J9xljLhk56B0K0zYZuezny6W9rPaBAcC_2uOvecVozER_IOXQ==@protonmail.internalid>
 <aW7aOgFHOdCSiwUH@devuan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aW7aOgFHOdCSiwUH@devuan>
User-Agent: Mutt/2.2.13 (2024-03-09)

On Tue, Jan 20, 2026 at 02:34:08AM +0100, Alejandro Colomar wrote:
> Hi Seth,
> 
> On Mon, Jan 19, 2026 at 11:55:06AM +0000, Seth McDonald wrote:
> > access(2) was specified in POSIX.1-1988 with the prototype
> > int access(char *path, int amode); [1]
> > 
> > POSIX.1-1990 then changed the prototype to
> > int access(const char *path, int amode); [2]
> 
> I suspect this is common to all APIs specified in those standards,
> right?  Or is it specific to this API?
> 
> 'const' was invented by ANSI C89, so I expect the change was around that
> time.

I believe the qualifier is indeed absent from any* specified prototype
in POSIX.1-1988.  Which would make sense if it was first specified in
C89.  Similar to how void pointers didn't first appear in POSIX.1-1988,
but after being added in C89, appeared in POSIX.1-1990.

*Interestingly enough, the appendix of POSIX.1-1988 (section B.2.2.4,
page 192) does acknowledge the const qualifier when describing the C
Standard's atoi(3) function.  Which makes me think that POSIX was
actually aware of C89's upcoming additions to the language.  Which in
turn begs the question: why, if they knew about it, was it not used in
the POSIX.1-1988 standard?  Multiple other types and functions were
included in POSIX.1-1988 because they were (going to be) in C89.

This is just me thinking out loud here.  I don't mind if the answer
isn't known.  Although if the answer is relevant/broad enough, it may be
useful to mention it in standards(7).  Something like "POSIX.1-1988
attempted to align its specification with the features/syntax of the
(not yet released) C89 standard, but for ABC reasons, could not use XYZ
language features."

> On the change itself, it wasn't a breaking change: programs written
> before the addition of const wouldn't notice that const has been added
> to the prototype.
> 
> The change would be noticed by a program written today, but compiled in
> such an old system.  However, I expect such a program to be aware that
> pre-ANSI C was different, and it would have to adapt to it anyway.
> const would be something that would have to be globally ignored, with
> something like
> 
> 	#define const
> 
> Given this should be of no importance to users, I'd prefer not
> documenting this difference.
> 
> What do you think?

It's important to note that since the type 'const char*' is a pointer to
a const char, rather than a const pointer to a char, the type is
incompatible with its non-const counterpart.  That is, 'const char*' and
'char*' are technically incompatible datatypes.

This can be seen by attempting to compile the following C program:

	#include <stdio.h>

	int say_hi(const char* str)
	{
		return printf("Hi %s", str);
	}

	int main(void)
	{
		int (*func)(char*) = say_hi;
		func("Linux");
		return 0;
	}

On GCC at least, you should get an incompatible-pointer-types error.

Now imagine an old program that was built to be compatible with
specifically POSIX.1-1988, and which liked to use function pointers a
little too much.  If it happened to use function pointers to functions
whose parameters weren't const-qualified in POSIX.1-1988, but were in
later versions, then it (to my understanding) cannot be linked to an
implementation of a later POSIX version without either errors or the
possibility of undefined behaviour.

While I cannot guarantee that such a program exists, what I can say is
that I have used pointers to library functions in my own code before.
So I don't think it'd be unusual for such a program to exist.

Given this, I do think this still may be notable enough to document.
Perhaps not in every such function - as that can get quite repetitive -
but instead as a property of the POSIX.1-1988 standard as a whole.  But
feel free to let me know if there's something I missed here.

-- 
Take care,
	Seth McDonald.

On-list:  2336 E8D2 FEB1 5300 692C  62A9 5839 6AD8 9243 D369
Off-list: 82B9 620E 53D0 A1AE 2D69  6111 C267 B002 0A90 0289


--------ec091236aa50c0a31104f38b344e894e0b285c892ea569864921369a74fd4bbe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlvcWoJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmf6reAzfmwZXZg1NKP1xerLFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAM/4AP46khAc1hl1XaykTjRhG5R1fnqpRRydUMoEAKAW
TYbFHQD/a5UBa8fVYrY4H8nMGfOQQwmzj4n03Ltoo8iZV/qLjwU=
=RI/Z
-----END PGP SIGNATURE-----


--------ec091236aa50c0a31104f38b344e894e0b285c892ea569864921369a74fd4bbe--


