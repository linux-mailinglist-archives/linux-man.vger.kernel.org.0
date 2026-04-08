Return-Path: <linux-man+bounces-5312-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HaiCKE01mlZBwgAu9opvQ
	(envelope-from <linux-man+bounces-5312-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 12:57:37 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9B13BB050
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 12:57:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7BA603004070
	for <lists+linux-man@lfdr.de>; Wed,  8 Apr 2026 10:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58CD43BA24C;
	Wed,  8 Apr 2026 10:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b="B4vFU7Re"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-bc0c.mail.infomaniak.ch (smtp-bc0c.mail.infomaniak.ch [45.157.188.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A7E3B7764
	for <linux-man@vger.kernel.org>; Wed,  8 Apr 2026 10:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.157.188.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775645836; cv=none; b=Brxeynu//fCJa3WtK6WG9M9PEd7rmnDKDOkN307/FK0hq+OXpjb5jiRVHp/fJAqu9Q4scwdFzBGHReIh/aR1GIeTlhhms+/t0Is3mkQbI4llfpQGkrbq46Vr3jigSRKU0RDWQG9vfG9O3CLPQPfHMbbXOYKv1pW9aBugi5gFzZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775645836; c=relaxed/simple;
	bh=oxBbZkgDB1CaMNMMBq8+bM1MJkthU7Be+NQUxXsMxMU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CcgHRKqh6tWB8rakaOsZPBMDBPqe6tvHQHQOibrQ2poYhBESqTomiS3q4eC5yqnD1uUj/s3TRk5ww2gHV6okJY4C844jFKyPr8NEpJ1gILoZpzqsQi5j+lT6F3QDQLUk+2EO2pcp0jJ0kE/HenG4lWoyatTu+hOmlnX2om6ah+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net; spf=pass smtp.mailfrom=digikod.net; dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b=B4vFU7Re; arc=none smtp.client-ip=45.157.188.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=digikod.net
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4frKlC0D2TzrPd;
	Wed,  8 Apr 2026 12:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digikod.net;
	s=20191114; t=1775645830;
	bh=vCGIgP70RSBw4FrHHQloi9U9ozXVwPHTO8naE4yVBuA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B4vFU7RekesbJAnUzOsVFyFjcuc9zGO5jqNjDg6o325RwdeI4zzYunQeIXT2ssL+w
	 LsmY3ox1iSCiG3iyDcWhcQbH80JbF4/NzXPAmaw48DA6UcOmbhi/AcnV90mLuoqA0Y
	 QH8FF/lJTGWElAo0U/nnOsW5SBrtHe8zSM5seSWo=
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4frKlB35W2z3JK;
	Wed,  8 Apr 2026 12:57:10 +0200 (CEST)
Date: Wed, 8 Apr 2026 12:57:05 +0200
From: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man/man2/landlock_restrict_self.2,
 man/man7/landlock.7: Document audit logging (ABI v7)
Message-ID: <20260408.Vie1tai4eeco@digikod.net>
References: <20260329124815.92502-2-gnoack3000@gmail.com>
 <20260329124815.92502-5-gnoack3000@gmail.com>
 <adL41g1HDqiFMQzA@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <adL41g1HDqiFMQzA@debian>
X-Infomaniak-Routing: alpha
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[digikod.net:s=20191114];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5312-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[digikod.net:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[digikod.net];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mic@digikod.net,linux-man@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,digikod.net:dkim,digikod.net:email,digikod.net:mid]
X-Rspamd-Queue-Id: 1A9B13BB050
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi!

On Mon, Apr 06, 2026 at 02:11:47AM +0200, Alejandro Colomar wrote:
> Hi Günther,
> 
> I've applied patches 1/3 and 2/3.  However, I've tried reading this
> a few times and still don't understand it well.
> 
> On Sun, Mar 29, 2026 at 02:48:16PM +0200, Günther Noack wrote:
> > * Document the flags LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF,
> >   LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF and
> >   LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON.
> > * List these flags in the compatibility table in landlock.7
> > 
> > The documentation text is copied from the kernel documentation,
> > originally authored by Mickaël Salaün in [1] and [2].
> > 
> > Link[1]: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/include/uapi/linux/landlock.h?id=ead9079f75696a028aea8860787770c80eddb8f9>
> > Link[2]: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/include/uapi/linux/landlock.h?id=12bfcda73ac2cf3083c9d6d05724af92da3a4b4b>
> > Cc: Mickaël Salaün <mic@digikod.net>
> > Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> > ---
> >  man/man2/landlock_restrict_self.2 | 67 ++++++++++++++++++++++++++++++-
> >  man/man7/landlock.7               |  6 ++-
> >  2 files changed, 70 insertions(+), 3 deletions(-)
> > 
> > diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restrict_self.2
> > index 530ef9a4cd25..9e80a40ee4a4 100644
> > --- a/man/man2/landlock_restrict_self.2
> > +++ b/man/man2/landlock_restrict_self.2
> > @@ -68,8 +68,71 @@ is a Landlock ruleset file descriptor obtained with
> >  and fully populated with a set of calls to
> >  .BR landlock_add_rule (2).
> >  .P
> > -.I flags
> > -must be 0.
> > +By default,
> > +denied accesses originating from programs that sandbox themselves
> > +are logged via the audit subsystem.
> > +Such events typically indicate unexpected behavior,
> > +such as bugs or exploitation attempts.
> > +However, to avoid excessive logging,
> > +access requests denied by a domain not created by the originating program
> > +are not logged by default.
> > +The rationale is that programs should know their own behavior,
> > +but not necessarily the behavior of other programs.
> 
> If I understand this correctly, the default is to log after fork(2) or
> execve(2), but not before.  Is that correct?

There is a distinctions before and after the first execve: once a
process sandboxes itself, by default, every denied operations are
logged, until it calls execve(2).  At this point, in most cases, it is
not the same executable code, which means that this new program may not
be aware of the restrictions and may try to repeatedly do some denied
operations, which will not be logged by default

> 
> > +This default configuration is suitable for most programs
> > +that sandbox themselves.
> > +For specific use cases,
> > +the following flags allow programs to modify this default logging behavior.
> > +.P
> > +The
> > +.B LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF
> > +and
> > +.B LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON
> > +flags apply to the newly created Landlock domain.
> > +.TP
> > +.B LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF
> > +Disables logging of denied accesses
> > +originating from the thread creating the Landlock domain,
> > +as well as its children,
> > +as long as they continue running the same executable code
> > +(i.e., without an intervening
> > +.BR execve (2)
> > +call).
> 
> And if I understood this well, this changes the behavior so that fork(2)
> is ignored, so that logging will only be enabled at execve(2) but not at
> fork(2).

fork(2) and clone(2) are ignored, only execve(2) flips a bit and may
change the default behavior.

> 
> > +This is intended for programs that execute unknown code
> > +without invoking
> > +.BR execve (2),
> > +such as script interpreters.
> > +Programs that only sandbox themselves should not set this flag,
> > +so users can be notified of unauthorized access attempts
> > +via system logs.
> > +.TP
> > +.B LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON
> > +Enables logging of denied accesses after an
> > +.BR execve (2)
> > +call,
> 
> But this is the part that makes me think my previous understanding was
> wrong.  I had understood that execve(3) already triggered logging.  So
> what does this enable that wasn't enabled already?

LOG_NEW_EXEC_ON means that logging will not be disabled after execve(2).

> 
> 
> Have a lovely night!
> Alex
> 
> > +providing visibility into unauthorized access attempts
> > +by newly executed programs within the created Landlock domain.
> > +This flag is recommended only when all potential executables
> > +in the domain are expected to comply with the access restrictions,
> > +as excessive audit log entries could make it more difficult
> > +to identify critical events.
> > +.TP
> > +.B LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF
> > +Disables logging of denied accesses
> > +originating from nested Landlock domains created by the caller
> > +or its descendants.
> > +This flag should be set according to runtime configuration,
> > +not hardcoded, to avoid suppressing important security events.
> > +It is useful for container runtimes or sandboxing tools
> > +that may launch programs which themselves create Landlock domains
> > +and could otherwise generate excessive logs.
> > +Unlike
> > +.BR LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF ,
> > +this flag only affects future nested domains,
> > +not the one being created.
> > +It can also be used with a
> > +.I ruleset_fd
> > +value of \-1 to mute subdomain logs
> > +without creating a domain.
> >  .SH RETURN VALUE
> >  On success,
> >  .BR landlock_restrict_self ()
> > diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> > index 05664b3d7cba..bcf06ea30ad4 100644
> > --- a/man/man7/landlock.7
> > +++ b/man/man7/landlock.7
> > @@ -445,7 +445,7 @@ users should query the Landlock ABI version:
> >  box;
> >  ntb| ntb| lbx
> >  nt| nt| lbx.
> > -ABI	Kernel	Newly introduced access rights
> > +ABI	Kernel	Newly introduced constants
> >  _	_	_
> >  1	5.13	LANDLOCK_ACCESS_FS_EXECUTE
> >  \^	\^	LANDLOCK_ACCESS_FS_WRITE_FILE
> > @@ -472,6 +472,10 @@ _	_	_
> >  _	_	_
> >  6	6.12	LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET
> >  \^	\^	LANDLOCK_SCOPE_SIGNAL
> > +_	_	_
> > +7	6.15	LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF
> > +\^	\^	LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON
> > +\^	\^	LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF
> >  .TE
> >  .P
> >  Users should use the Landlock ABI version rather than the kernel version
> > -- 
> > 2.53.0
> > 
> 
> -- 
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).



