Return-Path: <linux-man+bounces-5091-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNclM2ici2k3XAAAu9opvQ
	(envelope-from <linux-man+bounces-5091-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 22:00:24 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A8A11F373
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 22:00:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DD0023013952
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 21:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E05DD3358BC;
	Tue, 10 Feb 2026 21:00:22 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from vmicros1.altlinux.org (vmicros1.altlinux.org [194.107.17.57])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA36233506C
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 21:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.107.17.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770757222; cv=none; b=rCVyjWd2MemGdi2B26S35AO/aKpP0F2ffFB43ljM2+hE1vOgOm6i8qKeEooX0wzvfr9orCobvcA67yz5q8Kt4wReC+rPQSmRK9aIFv2TTayZRdXJJBePNFGMG+5pMOxGG82WE14uPldmDLTM8KYxX3e3cbgsh3oeS9nzbURk09U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770757222; c=relaxed/simple;
	bh=7edp6Yi/qaxU41Kejhl6cbXt6TggeKhLMXWigeANIlY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZnDqo2CvfZyq22g1TVM4HZ2k0ugUVCq3WW6Nf3NzeChU2Z2TTB5R5VwEfz+oGPcz+gZ+Vy/6e8CcgxszYo7e0lhg3Lu3onreC762Neunk9EcvmOgl8W4fT93wAtAv+Us1PwORarA3EIrvBhZQzhYoRVVpBVK6FVWvsxGSCYfKXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=strace.io; spf=pass smtp.mailfrom=altlinux.org; arc=none smtp.client-ip=194.107.17.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=strace.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altlinux.org
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
	by vmicros1.altlinux.org (Postfix) with ESMTP id A031D72C8CC;
	Tue, 10 Feb 2026 23:53:47 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
	id 94A057CCB3A; Tue, 10 Feb 2026 22:53:47 +0200 (IST)
Date: Tue, 10 Feb 2026 22:53:47 +0200
From: "Dmitry V. Levin" <ldv@strace.io>
To: Alejandro Colomar <alx@kernel.org>
Cc: Marco Cavenati <Marco.Cavenati@eurecom.fr>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/ptrace.2: Add PTRACE_SET_SYSCALL_INFO, update
 struct ptrace_syscall_info
Message-ID: <20260210205347.GA31604@strace.io>
References: <20260121155550.281916-1-Marco.Cavenati@eurecom.fr>
 <20260121165639.GB6261@strace.io>
 <aYuRZuZIQCMw1gqP@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYuRZuZIQCMw1gqP@devuan>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	DMARC_NA(0.00)[strace.io];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ldv@strace.io,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5091-lists,linux-man=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,eurecom.fr:email,strace.io:mid,strace.io:email]
X-Rspamd-Queue-Id: 77A8A11F373
X-Rspamd-Action: no action

Hi,

On Tue, Feb 10, 2026 at 09:14:29PM +0100, Alejandro Colomar wrote:
> Hi Marco, Dmitry,
> 
> I'm back.  :-)
> 
> On 2026-01-21T18:56:39+0200, Dmitry V. Levin wrote:
> > On Wed, Jan 21, 2026 at 04:55:41PM +0100, Marco Cavenati wrote:
> > > Add documentation for the new ptrace request PTRACE_SET_SYSCALL_INFO,
> > > introduced in Linux 6.16.
> > > 
> > > Add 'reserved' and 'flags' fields of struct ptrace_syscall_info.
> > > 
> > > This description is based on kernel commit 26bb32768fe6552de044f782a58b3272073fbfc0
> > > ("ptrace: introduce PTRACE_SET_SYSCALL_INFO request") by Dmitry V. Levin.
> > > 
> > > Signed-off-by: Marco Cavenati <Marco.Cavenati@eurecom.fr>
> 
> Thanks!  I've applied the patch.
> 
> > > ---
> > >  AUTHORS           |  1 +
> > >  man/man2/ptrace.2 | 21 +++++++++++++++++++++
> > >  2 files changed, 22 insertions(+)
> > > 
> > > diff --git a/AUTHORS b/AUTHORS
> > > index 9035d405a..f332932e1 100644
> > > --- a/AUTHORS
> > > +++ b/AUTHORS
> [...]
> 
> > Looks good, thanks!
> 
> Should I take that as a Reviewed-by?

Feel free to add:

Reviewed-by: Dmitry V. Levin <ldv@strace.io>


-- 
ldv

