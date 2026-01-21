Return-Path: <linux-man+bounces-4865-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DpeOnRucGkVXwAAu9opvQ
	(envelope-from <linux-man+bounces-4865-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 07:13:08 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A0151ECA
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 07:13:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 193D546740B
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 06:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11AF243CEEE;
	Wed, 21 Jan 2026 06:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="EyP17R6L"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24416.protonmail.ch (mail-24416.protonmail.ch [109.224.244.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD48426EAB
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768975980; cv=none; b=ZiO1UdpZ0TovryFraLKBZdkFRJ1aCad7Zt+Mtkw1Eom2PCjIM1q4okPB/TJorI6UbTl8TdrxUgl2PDl8GF8oqcSfVDkxC8P1Sn6+VbpFwrTLNwWDo+7ejwXvHa/jpAJVNjbpyM3Cam+2Dq6VJ58PRfPexObLJjgxRbH+lxXxKCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768975980; c=relaxed/simple;
	bh=xoREvrXa9PIzH2pyTpcLLesmtk3q6wyTYxsLwxN35KA=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Y2nwah6NVIJIOB5tvXYlg6qufkyI6X2gCfJdbYR3eYKzI2toGD/ntM0jL8EIuXSQBt+UcUAK1AidML8rZ9P1U2EZ2kcjRJ9zLbiSVi+6Hi7scOcSU1iVrZ5QzyrqdEkS1CS+LxXs+JVe59tLQg4MSbvEC5fyUczebTsJ0XZwSYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=EyP17R6L; arc=none smtp.client-ip=109.224.244.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768975969; x=1769235169;
	bh=8VTFof0YCNt7Lu+COSxspF061Cdl0UG/KS198KLbiZg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=EyP17R6LxEG6WWVv+BV6D6ewB6J8/jxN6P3GTeuQ5CZM9rjPFPJta5490797wngjK
	 NDk5NVZ42aXrK+OK1dSOWe3OlXro/cXTtJ7z5xGoFIYQUROlNyDDveD/qHgKmIWKai
	 HWM5nk0tFf99hxF12Bxgt99PYO27AeA+H1w3NW4pTBmgKYka/ZtqlQIreOHGIlF81/
	 BEvMmGj2N6xXlf1kajdkchFhgA4Riw5X8nywL1QE1453mehVhM1MQZtjXto86h4sJb
	 hMVZ4BTR83L4lLULm/59/H/JCxRZ67KTa0iZ58595cXSp14A6fINe+A4jDdhjeMkSf
	 evgESW3Ig9iyg==
Date: Wed, 21 Jan 2026 06:12:45 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: History of const in C++, C89, and POSIX.1-1988 (was: [PATCH v1 02/19] man/man2/access.2: HISTORY: Specify different)
Message-ID: <aXBuVeyTXLZ67TmH@McDaDebianPC>
In-Reply-To: <aW96GgzoYUurH5FS@devuan>
References: <cover.1768822707.git.sethmcmail@pm.me> <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me> <aW7aOgFHOdCSiwUH@devuan> <aW9xYhsFpNxlo3C5@McDaDebianPC> <aW96GgzoYUurH5FS@devuan>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: a139bb05445a7c0205f798e0cfc016ead16a4711
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------619155c734a7526646c12fae16591be6c37f31b62a8525cc5b91387ff8c82ca2"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4865-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,devuan:email]
X-Rspamd-Queue-Id: 97A0151ECA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------619155c734a7526646c12fae16591be6c37f31b62a8525cc5b91387ff8c82ca2
Content-Type: text/plain; charset=UTF-8
Date: Wed, 21 Jan 2026 16:12:37 +1000
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: History of const in C++, C89, and POSIX.1-1988 (was: [PATCH v1
 02/19] man/man2/access.2: HISTORY: Specify different)
Message-ID: <aXBuVeyTXLZ67TmH@McDaDebianPC>
Mail-Followup-To: Seth McDonald <sethmcmail@pm.me>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <cover.1768822707.git.sethmcmail@pm.me>
 <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me>
 <aW7aOgFHOdCSiwUH@devuan>
 <aW9xYhsFpNxlo3C5@McDaDebianPC>
 <w91s4TOinHPzD01SQoSj-uHbODY8O7XgARi5LXX1HCkUrS1nPf_UX6FD-1bF-_VxuEZSfQWk3cRX4mZdr9C5GA==@protonmail.internalid>
 <aW96GgzoYUurH5FS@devuan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aW96GgzoYUurH5FS@devuan>
User-Agent: Mutt/2.2.13 (2024-03-09)

Hi Alex,

On Tue, Jan 20, 2026 at 02:52:22PM +0100, Alejandro Colomar wrote:
> Hi Seth,
> 
> On Tue, Jan 20, 2026 at 12:13:32PM +0000, Seth McDonald wrote:
[...]
> > This is just me thinking out loud here.  I don't mind if the answer
> > isn't known.  Although if the answer is relevant/broad enough, it may be
> > useful to mention it in standards(7).
> 
> We might need a qualifiers(7) manual page.  Especially, once their rules
> are modified in ISO C2y.  Alternatively, we may need a new section
> man3qual, with an intro(3qual) page talking about this, and then
> const(3qual) and volatile(3qual) to document the usual qualifiers, plus
> a restrict(3qual) documenting how irremediably broken that monster is,
> and _Atomic(3qual) also documenting that qualifier (which I never really
> understood well, and from what the committee is talking now, they don't
> seem to like it either).

I'd be down for a qualifiers(7) man page.  Don't know about a whole
man3qual section though.  Unlike library functions (man3), constants
(man3const), or types (man3type), which are all provided by GNU/Linux,
qualifiers are a built-in language feature of C.  One could argue that
GCC 'provides' them, but I don't think that means they should be
documented as if they're a feature of GNU/Linux.  Documenting them in
the miscellaneous man7 instead conveys how they're important enough to
document and are related to GNU/Linux, without implying that they're
part of/provided by GNU/Linux (like other man3* sections).

Btw, I'm curious as to why you say the restrict qualifier is broken.
I'm yet to encounter much trouble with it, so I'd be interested in its
flaws.

[...]
> > It's important to note that since the type 'const char*' is a pointer to
> > a const char, rather than a const pointer to a char, the type is
> > incompatible with its non-const counterpart.  That is, 'const char*' and
> > 'char*' are technically incompatible datatypes.
> > 
> > This can be seen by attempting to compile the following C program:
[...]
> > On GCC at least, you should get an incompatible-pointer-types error.
> > 
> > Now imagine an old program that was built to be compatible with
> > specifically POSIX.1-1988, and which liked to use function pointers a
> > little too much.  If it happened to use function pointers to functions
> > whose parameters weren't const-qualified in POSIX.1-1988, but were in
> > later versions, then it (to my understanding) cannot be linked to an
> > implementation of a later POSIX version without either errors or the
> > possibility of undefined behaviour.
[...]
> 
> I suspect back then this was not a big problem.
> 
> Function prototypes were also invented by C89 (although it seems to have
> been invented in an earlier draft than const, by the fact that
> POSIX.1-1988 has prototypes but not const).
> 
> Before function prototypes, functions were declared as
> 
> 	int f();
> 
> and function pointers were declared as
> 
> 	int (*fp)();
> 
> For example, here's how qsort(3) was implemented in 4.3BSD (1986):
> 
> 	alx@devuan:~/src/unix/unix/4.3BSD$ cat ./usr/src/lib/libc/gen/qsort.c \
> 	| sed -n \
> 		-e '/^qsort/,/^{/p' \
> 		-e '/compar\>/p' \
> 		-e '/qcmp/p' \
> 		-e '/^}/{p;q}' \
> 	| uniq;
> 	static  int		(*qcmp)();		/* the comparison routine */
> 	qsort(base, n, size, compar)
> 		char	*base;
> 		int	n;
> 		int	size;
> 		int	(*compar)();
> 	{
> 		qcmp = compar;
> 			if (qcmp(j, lo) > 0)
> 			while (qcmp(hi -= qsz, min) > 0)
> 	}
> 
> Even though in 1988 function prototypes already existed, I expect code
> didn't start using them quickly, and thus no real incompatibilities
> existed.
> 
> About when function prototypes were introduced...  POSIX.1-1988 already
> uses them, and SVID Issue 2 (~1986) doesn't, so it was somewhere between
> those years.

So if I understand correctly, because function prototypes were first
specified in C89, programs written about 1988-1990 for compatability
with POSIX.1-1988 likely didn't use function pointers in the way my
example did.  In that case, I would agree that this change from 'char*'
to 'const char*' is too inconsequential to document here.

But I do still find it an interesting clue as to how these different
standards developed in tandem with one another.  Perhaps we could
still consider noting it in standards(7)?  Since that page already
documents how some systems/standards influenced each other in their
historical development.

-- 
Take care,
	Seth McDonald.

On-list:  2336 E8D2 FEB1 5300 692C  62A9 5839 6AD8 9243 D369
Off-list: 82B9 620E 53D0 A1AE 2D69  6111 C267 B002 0A90 0289


--------619155c734a7526646c12fae16591be6c37f31b62a8525cc5b91387ff8c82ca2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlwblsJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfQ6jcdMw67Qhl67LS94TYVFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAALg4AP9rYdaWlo0fCA/u4jBjcnGwNkQg+RzND6Y6weMJ
8+USewD/Reiquo0dlIeGKGvdysPi/W4IOrWN5NXCTjCy3eIm0Qw=
=QIZ6
-----END PGP SIGNATURE-----


--------619155c734a7526646c12fae16591be6c37f31b62a8525cc5b91387ff8c82ca2--


