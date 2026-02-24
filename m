Return-Path: <linux-man+bounces-5219-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOsxC4LznWk2SwQAu9opvQ
	(envelope-from <linux-man+bounces-5219-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 19:52:50 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEC518B950
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 19:52:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EE6FA302DF69
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 18:52:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 640CD2BDC1B;
	Tue, 24 Feb 2026 18:52:47 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE63A27E054
	for <linux-man@vger.kernel.org>; Tue, 24 Feb 2026 18:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771959167; cv=none; b=u/ibD5ZVbyTYcX6Tnut+1ReZTWfDOW8URgS1+p8zF9mX68TSr1jPYI64qMLHUc6bp9CPSF1/UG4LqvokP1DIq4q/tUN1pY5wagz2kU0EQRCT9OB6U82WCvvcUa3XnMLNF0MqYAGL1Ar8Vj0q3s4cS37mPHFK9Q7mEp4n2Y17fHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771959167; c=relaxed/simple;
	bh=qdXm9666NKedF+YTW79kL1ox9tIuq5QP36eHel3AeLs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QMDLjEvbEiLtDRFGyqcrlXTdZ2HnPdAXhCgu0R9UdeQUyW2QBZf2F8EtVwvEdlkr7J0JQDc8qu5FH5cGBHIFY/sCJTcyfFFDIjCLjeaU1pySU4LkhkhLtvkz5ZaiYRynIZh13253v7jaxgmcpUD1nn3ImtFbuG/I3JW/lM04t64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rkta.de; spf=pass smtp.mailfrom=rkta.de; arc=none smtp.client-ip=80.241.56.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rkta.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rkta.de
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4fL6Kb2rh5z9vGr;
	Tue, 24 Feb 2026 19:52:35 +0100 (CET)
Date: Tue, 24 Feb 2026 19:52:33 +0100
From: Rene Kita <mail@rkta.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
Message-ID: <20260224185233.GE43043@x220.rkta.de>
References: <aZ2xBQcy7mMEXW_b@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZ2xBQcy7mMEXW_b@devuan>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5219-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[rkta.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mail@rkta.de,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,open-std.org:url,openwall.com:url]
X-Rspamd-Queue-Id: 6EEC518B950
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 03:28:44PM +0100, Alejandro Colomar wrote:
> Hi!
> 
> ISO C23 changed the specification of string search functions so that if
> the const qualifier is present in the input, the APIs preserve it in the
> output.
> <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3220.pdf#subsection.7.26.5>
> 
> For example, memchr(3) and strchr(3) were previously specified as
> 
> 	alx@devuan:~$ stdc C11 memchr
> 	void *memchr(const void *s, int c, size_t n);
> 	alx@devuan:~$ stdc C11 strchr
> 	char *strchr(const char *s, int c);
> 
> They are now specified as
> 
> 	QVoid *memchr(QVoid *s, int c, size_t n);
> 	QChar *strchr(QChar *s, int c);
> 
> The new specification is only possible through macros, and only in
> calls.  Function pointers such as &memchr or &strchr, or calls that
> avoid the macro, such as (memchr)(p,0) or (strchr)(s,0), do not use the
> macro, and as such, still use the old function prototype.  However, the
> ability to do this is declared obsolescent by both ISO C and the glibc
> manual.  This means that the underlying functions might eventually be
> removed from the headers.
> 
> glibc has implemented the C23 specification in glibc-2.43, in commit
> glibc.git cd748a63ab1a (2025-11-20; "Implement C23 const-preserving standard library macros").
> 
> I've written a patch for musl, but it hasn't been applied yet:
> <https://www.openwall.com/lists/musl/2026/02/23/1>
> 
> gnulib has recently added a new search function, strnul(3) --which we
> already document in a manual page--, and didn't include an underlying
> function, since it didn't make sense to add something already obsolete.
> I documented the strnul(3) API as if it were a set of C++ overloads:
> 
> 	char *strnul(char *s);
> 	const char *strnul(const char *s);
> 
> Now that I'm considering the documentation of the glibc changes, I'm
> wondering what's the most appropriate way to document them.  I have
> a few questions:
> 
> -  In the SYNOPSIS, do you prefer QChar/QVoid or overload style?
> 
> 	QChar *strchr(QChar *s, int c);
>    vs
> 	char *strnul(char *s);
> 	const char *strnul(const char *s);

IMHO the overload style is more appropriate for the next few years.
Everyone who has at least read K&R C will understand it.

For technical correctness the QChar/QVoid style should be mentioned, though.
That's why...

> -  If we document it as QChar/QVoid, I guess we should we add a
>    QChar(3)/QVoid(3) manual page documenting all of the details, to
>    avoid duplicating such details in each manual page.

these man pages should be created in either case.

> -  How much should we document the old function?  Should we keep that as
>    a historic detail in the QChar(3)/QVoid(3) page?

As I usually don't deal with C23 - and don't expect this to change for a
few years - I would prefer to have the old function documented. It might
be that I work on a C99 project while viewing the latest man pages on a
Arch system.

