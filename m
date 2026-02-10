Return-Path: <linux-man+bounces-5094-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLoNKx6mi2ntXgAAu9opvQ
	(envelope-from <linux-man+bounces-5094-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 22:41:50 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F3C11F73B
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 22:41:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2D293028826
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 21:41:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04817330B2B;
	Tue, 10 Feb 2026 21:41:48 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from vmicros1.altlinux.org (vmicros1.altlinux.org [194.107.17.57])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B8FD277C88
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 21:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.107.17.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770759707; cv=none; b=YFwaqk2J4WbcYMaDq/Xa8BWLy9LlwoEYvWHGjMvnPxs4AZFPQ6UHAcp172p/5+1VBcD+mqvl/+rhS1V624uP0rnq4QfBdO+NNkzxr9AX9sg0Yx4Q7qdj/jZjKWk7iF3ZjRa9uTtI6CtkkYzZEjZmPZV1a0zLeWDGnxs6lbDp8Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770759707; c=relaxed/simple;
	bh=D6PxlS2prVtTBoZrquA2rTnLUV0qbPQXcNbZRcvaPz4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iqLpt/6KWBifdmQqpI7z6vPnDfZ1w+YP1LM8+/cjYl0OXBq5DkBKqT8e3E1L6JQOAhLk3+TyZacjunhJtMB43Y228K4HZUs+5VU39UXK0CRU3/P/Ych5L4Zk+vGWHGp13pLrnNW1zb3xI5++IgUd2Rr4Ord0oxCgxoQHmDnB2RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=strace.io; spf=pass smtp.mailfrom=altlinux.org; arc=none smtp.client-ip=194.107.17.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=strace.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altlinux.org
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
	by vmicros1.altlinux.org (Postfix) with ESMTP id B32F872C8CC;
	Wed, 11 Feb 2026 00:41:45 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
	id A79B57CCB3A; Tue, 10 Feb 2026 23:41:45 +0200 (IST)
Date: Tue, 10 Feb 2026 23:41:45 +0200
From: "Dmitry V. Levin" <ldv@strace.io>
To: Alejandro Colomar <alx@kernel.org>
Cc: Marco Cavenati <Marco.Cavenati@eurecom.fr>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/ptrace.2: Add PTRACE_SET_SYSCALL_INFO, update
 struct ptrace_syscall_info
Message-ID: <20260210214145.GA1335@strace.io>
References: <20260121155550.281916-1-Marco.Cavenati@eurecom.fr>
 <20260121165639.GB6261@strace.io>
 <aYuRZuZIQCMw1gqP@devuan>
 <20260210205347.GA31604@strace.io>
 <aYuggAXkgFO22QI2@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYuggAXkgFO22QI2@devuan>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	TAGGED_FROM(0.00)[bounces-5094-lists,linux-man=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,strace.io:mid,strace.io:email]
X-Rspamd-Queue-Id: 33F3C11F73B
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 10:20:02PM +0100, Alejandro Colomar wrote:
> Hi Dmitry,
> 
> On 2026-02-10T22:53:47+0200, Dmitry V. Levin wrote:
> > > > Looks good, thanks!
> > > 
> > > Should I take that as a Reviewed-by?
> > 
> > Feel free to add:
> > 
> > Reviewed-by: Dmitry V. Levin <ldv@strace.io>
> 
> Thanks!  I'll quote it, if you don't mind, as name-addreess pairs can't
> contain an unquoted '.' --git(1) misbehaves on the '.', unless they
> fixed it recently--.
> 
> 	Reviewed-by: "Dmitry V. Levin" <ldv@strace.io>
> 
> Is that okay?

I've been using the unquoted format for a while, but the quoted one
is fine as well.

Thanks,


-- 
ldv

