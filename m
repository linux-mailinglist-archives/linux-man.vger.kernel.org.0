Return-Path: <linux-man+bounces-5518-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKTyJk9kB2q90wIAu9opvQ
	(envelope-from <linux-man+bounces-5518-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 20:22:07 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0497E556174
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 20:22:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B9733057636
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 17:47:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA3013F8EA5;
	Fri, 15 May 2026 17:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZIZO/HVR"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05B43D47C8
	for <linux-man@vger.kernel.org>; Fri, 15 May 2026 17:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778867265; cv=none; b=CkWi52JVUsUgFEb4WEW/EmwAjDkc9eqzY6nsTpObLBy80LxkuEfT8xp3lHfS7ya6wzcjCU3V6mpA2Px1x0R6JFF7p3EegC3AOpmsvFNJJHyr8YaoT8/OKxsCswu1+OMlMNyRRpmVOdHds8p9Kmct1CAARtYD5DpDtfRV1ehIQ4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778867265; c=relaxed/simple;
	bh=luNbOGsSyJ3+zYzGJHbHSLdSG8wU6LH9cQPezM0w1Vk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fw0+K6nIPnkwl+te18SkTrfgAUE+OzsPu9V8hxKhAPVmlkTfk27quqijVC6z5y+6gnsvZn+YpaEuK0BlCo17tKcf7/H3FW6M375lMQJ8gmOF4Twfq3VJ7tESVtSqkBAO1lHW2RYbZAkVyUHHaBVuQtIKGqlaOFd2vNAg8oF3eYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZIZO/HVR; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4891b0786beso578755e9.1
        for <linux-man@vger.kernel.org>; Fri, 15 May 2026 10:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778867262; x=1779472062; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G72uoE9U+pr08U+GBaN3JIAxe1vp3C/cDMDwHdiRjs0=;
        b=ZIZO/HVROyBVddIsiAZ8byi/mYaJ0he0XV9nTa2jRTbf5i7N0m/dnT09e/evSR/3l0
         cEh5lPHJppA641B9VCxdeGrYoMC0xIqeIFkZ9UJ0CrFCYb7CqY8vAfRlI9jYvD0vDlQT
         AQbJK+Umrnn+mQwrqPepPcN9LjbzqCde1bC0Spdo5QSD+BMVzHupPutB8jFNCQHdMkb4
         i1aFHhe+FzpcUqdQ/7XUbuh2pHxzDYCl4uFeE6rDzZzWApYnEyBsIgpAnYB4fIX1Bzu8
         LGtmzcsAyP4/ysXDYVR0YTxZnVFkGrbNApiSSZl805ags71Fn9cOXFv1gdhQiJM+zjvl
         6sZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778867262; x=1779472062;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G72uoE9U+pr08U+GBaN3JIAxe1vp3C/cDMDwHdiRjs0=;
        b=nzEbCckTyBqzDHjmX/iE0LV1P5+xbe9B+tBxUMRKkaZaTa11N7TdeIET5EwQ/4xeg+
         ysvcxqxiwOz2XTkCLLsIDaf6PxMK+jTdNGS+KXwWGoMr3gDCdgzuHwbHyZ9IcDXYghLy
         v18wcb8t79KAJKRlgoJ+NzPIDgYNIvh/S3Kj3hmJ16KJxrhWoZK9mRev023FToyPjWKB
         uQW6LtrQLv54Po/3L3bCCuQK4sAOQ/ddzokEOx+c48agvCjxowvjmRi77nWPRjGPT+gC
         ISir4lIU0Ei1CRBaqJixSNBMsf9GLD/xVm/59SCstay9peNN4s8Hve2OYndSKaiPrbFf
         oURw==
X-Forwarded-Encrypted: i=1; AFNElJ/mypEHXjPPH/e4EdL249vDcAvfkoCyJ+rTAy0IWM1JiRAT5cAhw08/yMhydd84qsNEG7tnWcxez/8=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx01froSH6MpMVpYyQ/eqBfU0pG++4iaYFDhk+MaQVRp/TyWOX2
	/qtb4rhQtGp2yfne/LN1OfJ+R1DNi6Kulp598XdN6qIDWfWje+D2u5nu
X-Gm-Gg: Acq92OG4BxVwzKNTBNZW4H7uY6HE83CcscOeqFWBdoIrU24TqDP5erlA96ibybQ/MRN
	ZGq+p6KR7+5VTa4kDL0EZI2dWh5TvVT0asw1MzP5YuZfnK/2Q9pBEfzuY/m61oSUXyNskPJFYbR
	lk93N0WC+5GBEpC7Garrx6qAF0NgxIbvCN4+8FC3+VJTyKabePKGRWDVSVkQeoCMReJgB6o15qQ
	eL9QxjJW/kT9gCHFXPKW7661Tm9DatD004MgMsZOVjubiWILj/hI2Mhtwv5RgPpbRRQ5jVD4Yfy
	81YRqjUwIPdVyDxe0QhzwFeemUYjOJZb/zVVbgIXDCkmclAEi9VRHOnJVj/O0FWqduMrntTTH45
	Vaqfl3b3s+bC5iSHOACW4zfhDSdezRUm0xebbXmDz7pT5QBlwAC478oSEHK/CI/atnirlXdBJQL
	t2JCUozxuGCXGf/d+TImDAXUqXUzIq2kXbHSaCtafkpWebb1k7
X-Received: by 2002:a05:600c:c0db:b0:48e:8499:4be0 with SMTP id 5b1f17b1804b1-48fe60ee481mr54415985e9.15.1778867262271;
        Fri, 15 May 2026 10:47:42 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe4c8344asm124459415e9.1.2026.05.15.10.47.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 10:47:41 -0700 (PDT)
Date: Fri, 15 May 2026 19:47:40 +0200
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] man/man7/landlock.7: Document
 LANDLOCK_ACCESS_FS_RESOLVE_UNIX (ABI v9)
Message-ID: <20260515.177c1a1fc598@gnoack.org>
References: <20260514070417.7923-1-gnoack3000@gmail.com>
 <20260514070417.7923-3-gnoack3000@gmail.com>
 <agW4yMK6CinJGqXt@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <agW4yMK6CinJGqXt@devuan>
X-Rspamd-Queue-Id: 0497E556174
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5518-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Hello Alejandro,

On Thu, May 14, 2026 at 02:21:14PM +0200, Alejandro Colomar wrote:
> On 2026-05-14T09:04:17+0200, Günther Noack wrote:
> > Document the new LANDLOCK_ACCESS_FS_RESOLVE_UNIX filesystem access right,
> > which controls lookups of pathname UNIX domain sockets.  Restricts both
> > connect(2) and sendmsg(2) with an explicit recipient address to UNIX
> > sockets created outside the Landlock domain (same semantics as
> > LANDLOCK_SCOPE_* flags).  Denied attempts return EACCES.
> > 
> > Available since Linux 7.1 (Landlock ABI version 9).
> > 
> > Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> > ---
> >  man/man7/landlock.7 | 56 +++++++++++++++++++++++++++++++++++++--------
> >  1 file changed, 46 insertions(+), 10 deletions(-)
> > 
> > diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> > index 0e3a11489af2..d0d9c720bfaf 100644
> > --- a/man/man7/landlock.7
> > +++ b/man/man7/landlock.7
> > @@ -139,6 +139,38 @@ whose implementations are safe and return the right error codes
> >  .RE
> >  .IP
> >  This access right is available since the fifth version of the Landlock ABI.
> > +.TP
> > +.B LANDLOCK_ACCESS_FS_RESOLVE_UNIX
> > +Look up pathname UNIX
> > +domain sockets
> > +.RB ( unix (7)).
> > +On UNIX domain sockets,
> > +this restricts both calls to
> > +.BR connect (2)
> > +and
> > +.BR sendmsg (2)
> > +with an explicit recipient address.
> > +.IP
> > +This access right only applies to connections to UNIX server sockets
> 
> s/only applies/applies only/

Done, thanks!

I should pay more attention to that,
it might be a German-ism to mix that up.


> > +which were created outside the newly created Landlock domain
> > +(e.g., from within a parent domain or from an unrestricted process).
> > +Newly created UNIX servers
> > +within the same Landlock domain
> > +continue to be accessible.
> > +In this regard,
> > +.B LANDLOCK_ACCESS_FS_RESOLVE_UNIX
> > +has the same semantics as the
> > +.B LANDLOCK_SCOPE_*
> 
> * is variable part, so it should be in italics:
> 
> 	.BI LANDLOCK_SCOPE_ *

Done.

> > +flags.
> > +.IP
> > +If a resolve attempt is denied,
> 
> 'resolve attempt' seems weird.  Should this be 'resolution attempt'?

Good point, done.


> > +the operation returns an
> > +.B EACCES
> > +error,
> > +in line with other filesystem access rights
> > +(but different to denials for abstract UNIX domain sockets).
> > +.IP
> > +This access right is available since the ninth version of the Landlock ABI.
> 
> I see this is consistent with the rest of the page, but we should change
> all of these to use cardinals instead of ordinals (and in digits, not
> letters).

Done. I made it consistent with the landlock_restrict_self(2) man page
as well, where we have put these version indicators as shorter phrases
next to the tagged paragraph headlines of the affected flags.


> >  .P
> >  Whether an opened file can be truncated with
> >  .BR ftruncate (2)
> > @@ -478,6 +510,8 @@ _	_	_
> >  \^	\^	LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF
> >  _	_	_
> >  8	7.0	LANDLOCK_RESTRICT_SELF_TSYNC
> > +_	_	_
> > +9	7.1	LANDLOCK_ACCESS_FS_RESOLVE_UNIX
> >  .TE
> >  .P
> >  Users should use the Landlock ABI version rather than the kernel version
> > @@ -563,7 +597,8 @@ attr.handled_access_fs =
> >          LANDLOCK_ACCESS_FS_MAKE_SYM |
> >          LANDLOCK_ACCESS_FS_REFER |
> >          LANDLOCK_ACCESS_FS_TRUNCATE |
> > -        LANDLOCK_ACCESS_FS_IOCTL_DEV;
> > +        LANDLOCK_ACCESS_FS_IOCTL_DEV |
> > +        LANDLOCK_ACCESS_FS_RESOLVE_UNIX;
> >  .EE
> >  .in
> >  .P
> > @@ -578,14 +613,15 @@ and only use the available subset of access rights:
> >   * numbers hardcoded to keep the example short.
> >   */
> >  __u64 landlock_fs_access_rights[] = {
> > -    (LANDLOCK_ACCESS_FS_MAKE_SYM  << 1) \- 1,  /* v1                  */
> > -    (LANDLOCK_ACCESS_FS_REFER     << 1) \- 1,  /* v2: add "refer"     */
> > -    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  */
> > -    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     */
> > -    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v5: add "ioctl_dev" */
> > -    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v6: same            */
> > -    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v7: same            */
> > -    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v8: same            */
> > +    (LANDLOCK_ACCESS_FS_MAKE_SYM     << 1) \- 1,  /* v1                     */
> > +    (LANDLOCK_ACCESS_FS_REFER        << 1) \- 1,  /* v2: add "refer"        */
> > +    (LANDLOCK_ACCESS_FS_TRUNCATE     << 1) \- 1,  /* v3: add "truncate"     */
> > +    (LANDLOCK_ACCESS_FS_TRUNCATE     << 1) \- 1,  /* v4: TCP support        */
> > +    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v5: add "ioctl_dev"    */
> > +    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v6: same               */
> > +    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v7: same               */
> > +    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v8: same               */
> > +    (LANDLOCK_ACCESS_FS_RESOLVE_UNIX << 1) \- 1,  /* v9: add "resolve_unix" */
> 
> We should probably use C99 comments (//), to reduce the width, and
> alignment issues.

Good idea, done.


> Feel free to send formatting patches for these side issues.

I split it up a bit, so that the fixes independent of the new feature
can go separately; see
https://lore.kernel.org/all/20260515165753.8830-1-gnoack3000@gmail.com/

Thanks for the review!
–Günther


