Return-Path: <linux-man+bounces-5228-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJdZI5Ibn2kzZAQAu9opvQ
	(envelope-from <linux-man+bounces-5228-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 25 Feb 2026 16:56:02 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A2A19A109
	for <lists+linux-man@lfdr.de>; Wed, 25 Feb 2026 16:56:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C92E2320C0BB
	for <lists+linux-man@lfdr.de>; Wed, 25 Feb 2026 15:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DC473E95BB;
	Wed, 25 Feb 2026 15:48:59 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCB73D9026
	for <linux-man@vger.kernel.org>; Wed, 25 Feb 2026 15:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772034539; cv=none; b=McdGoq7P08UilgzAXwgPIhjD+CtiPH61KF/YJPk1C9Sf1KlOLf2kuiXyZtnkQSVmUuWqBXy41Ami4yRkIKjtSHlqFhYBdk8pQHpkNllvLE19IQElaPS0UGej612XWjGG76H1GBLD6GfwjT3k0JDpUM9Arw+bLaEL7vGVvNhyh/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772034539; c=relaxed/simple;
	bh=3gqzR38uG+e4n3E37szHBEIG+s4Q0a8YDPjOUECjpOs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DQoh45eArlQEebKC5WuhKOdH7exmVGkLESrfzNe1QOcLag9JVVAMiVy5I/zEFF1YBbu5DkkGF0+rEeKVpjkXJmw7wfIJR5wh7uuZiYPUEIQaKrd4Ytq1JiTUX2qUBoV7hRDx9rcZf44g+Nb3nttf704dA8K8yWCtdoASsbHbJXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rkta.de; spf=pass smtp.mailfrom=rkta.de; arc=none smtp.client-ip=80.241.56.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rkta.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rkta.de
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4fLfC91xZKz9vVQ;
	Wed, 25 Feb 2026 16:48:53 +0100 (CET)
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of mail@rkta.de designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=mail@rkta.de
Date: Wed, 25 Feb 2026 16:48:50 +0100
From: Rene Kita <mail@rkta.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
Message-ID: <20260225154850.GA35324@x220.rkta.de>
References: <aZ2xBQcy7mMEXW_b@devuan>
 <20260224185233.GE43043@x220.rkta.de>
 <aZ4Y_-MagoDmdE9g@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZ4Y_-MagoDmdE9g@devuan>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5228-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,x220.rkta.de:mid]
X-Rspamd-Queue-Id: E5A2A19A109
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 10:41:58PM +0100, Alejandro Colomar wrote:
> Hi Rene,
> 
> On 2026-02-24T19:52:33+0100, Rene Kita wrote:
> > > -  In the SYNOPSIS, do you prefer QChar/QVoid or overload style?
> > > 
> > > 	QChar *strchr(QChar *s, int c);
> > >    vs
> > > 	char *strnul(char *s);
> > > 	const char *strnul(const char *s);
> > 
> > IMHO the overload style is more appropriate for the next few years.
> > Everyone who has at least read K&R C will understand it.
> 
> Ok.
> 
> > For technical correctness the QChar/QVoid style should be mentioned, though.
> > That's why...
> > 
> > > -  If we document it as QChar/QVoid, I guess we should we add a
> > >    QChar(3)/QVoid(3) manual page documenting all of the details, to
> > >    avoid duplicating such details in each manual page.
> > 
> > these man pages should be created in either case.
> > 
> > > -  How much should we document the old function?  Should we keep that as
> > >    a historic detail in the QChar(3)/QVoid(3) page?
> > 
> > As I usually don't deal with C23 - and don't expect this to change for a
> > few years - I would prefer to have the old function documented. It might
> > be that I work on a C99 project while viewing the latest man pages on a
> > Arch system.
> 
> A problem, even if you write C99 on your project (let's say mutt(1), for
> example), is that the compiler will default to something newer, and
> you'll be exposed to those APIs.  If they're not documented, you'll be
> quite surprised that your code suddenly fails.  So I think they should
> be documented.  Of course, the old function would also need to be
> documented, because otherwise people might be surprised the other way
> around.
> 
> Hmmm, how about something like this?
> 
> 	SYNOPSIS
> 		#include <string.h>
> 
> 		char *strchr(char *s, int c);
> 		const char *strchr(const char *s, int c);
> 
> 		#undef strchr
> 		char *strchr(const char *s, int c);
> 
> Plus a paragraph in HISTORY clarifying this.

Without the context I already have, I don't think I would understand
what's meant with this #undef. Maybe better "Before C23" or "Former
version" or something, but I'm just brainstorming here...

I'm not even sure if it has to be mentioned in the SYNOPSIS. OTOH,
C23 brings some breaking changes and it might help people save time when
those differences are clearly mentioned.

