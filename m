Return-Path: <linux-man+bounces-3836-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3483DB459A3
	for <lists+linux-man@lfdr.de>; Fri,  5 Sep 2025 15:53:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2FB91C26E5E
	for <lists+linux-man@lfdr.de>; Fri,  5 Sep 2025 13:53:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91F8635CED7;
	Fri,  5 Sep 2025 13:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="kbuqc6Nb";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="Yh4caJSP";
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="kbuqc6Nb";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="Yh4caJSP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8863535CEB2
	for <linux-man@vger.kernel.org>; Fri,  5 Sep 2025 13:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757080378; cv=none; b=YLB4nQJiLSQFDLqqRI2pBa+EBUkhn3JS+FuqxDwYmqb4dwNL9kG8Pyl9f0PvVWSGKxO5q42SG+ceV1Imd7j99//vfWLARYklTneiJeqRLJZfH6vxaaamObqNqkGf2YINZSwuJdvk9Mia6EgJRXN+GVpqxaIwM+2cFzSn7ghPsEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757080378; c=relaxed/simple;
	bh=6Q4bXI/nZZF3mbwbpGElgz9gSiz2RP4DQzyPBuh7N30=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PqMRE2NHSS/aPgJ9XiM2lve8OsrUZCijg8nd0CXPwTmzGPR9IJodiATVs2fzeEf0ihWFypyAMNTELRsh0I49/TIwsyliIxmaoUXUQ6i4jtTmtxMCt6Y/4WOnWvBjz0GDo/XJevGYQht1CJHTvthFmRA3YpVTS71UAHbZ0P5zm+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz; spf=pass smtp.mailfrom=suse.cz; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=kbuqc6Nb; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=Yh4caJSP; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=kbuqc6Nb; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=Yh4caJSP; arc=none smtp.client-ip=195.135.223.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.cz
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 6FC364E99A;
	Fri,  5 Sep 2025 13:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1757080374; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=SOs33he6l7qwg78xkB024PRKEn1LHIwUiukJ6iZ1CAw=;
	b=kbuqc6NbH57ePcxscfP361w3SMAVB8pIz3xnTqLCAUtzxQBmoTbjVczGaWLJZM/A4Hcupv
	3lptlvhAplxLmX02jy4zdPXNlmyh4lTUGCQojzAKWyqgnQWr49gvJlou8UWOkBEPfy4VXJ
	IijU5tK/aQzG2CfXX//XMiS1b3DPsjY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1757080374;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=SOs33he6l7qwg78xkB024PRKEn1LHIwUiukJ6iZ1CAw=;
	b=Yh4caJSPnjqzogilGbWUdFzrg05T0PFw6X9LfQ63dn4gPVH9u5VggDEQgaiJWy6QZdJ2Nh
	1LizJnG3w1Om+0Ag==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=kbuqc6Nb;
	dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=Yh4caJSP
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1757080374; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=SOs33he6l7qwg78xkB024PRKEn1LHIwUiukJ6iZ1CAw=;
	b=kbuqc6NbH57ePcxscfP361w3SMAVB8pIz3xnTqLCAUtzxQBmoTbjVczGaWLJZM/A4Hcupv
	3lptlvhAplxLmX02jy4zdPXNlmyh4lTUGCQojzAKWyqgnQWr49gvJlou8UWOkBEPfy4VXJ
	IijU5tK/aQzG2CfXX//XMiS1b3DPsjY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1757080374;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=SOs33he6l7qwg78xkB024PRKEn1LHIwUiukJ6iZ1CAw=;
	b=Yh4caJSPnjqzogilGbWUdFzrg05T0PFw6X9LfQ63dn4gPVH9u5VggDEQgaiJWy6QZdJ2Nh
	1LizJnG3w1Om+0Ag==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 55B79139B9;
	Fri,  5 Sep 2025 13:52:54 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id rfXhFDbrumhRfAAAD6G6ig
	(envelope-from <jack@suse.cz>); Fri, 05 Sep 2025 13:52:54 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
	id EED06A0A48; Fri,  5 Sep 2025 15:52:45 +0200 (CEST)
Date: Fri, 5 Sep 2025 15:52:45 +0200
From: Jan Kara <jack@suse.cz>
To: trillian <trillian@r9.pm>
Cc: Alejandro Colomar <alx@kernel.org>, Jan Kara <jack@suse.com>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/: Document quotactl_fd syscall
Message-ID: <zlmihxewizebdg6mja45mdxrmusfrrv2q6hoyr5nymuueod6s5@grusn7aizpqf>
References: <kcgr45epiqdxxfg3wwqvfifudaz23ten3tuwdnn4o5rp2pj7ta@27jsmwb26cze>
 <22e61e8f6c198c6a6c0468bb97b2d2add1fa0aec.1757076139.git.trillian@r9.pm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <22e61e8f6c198c6a6c0468bb97b2d2add1fa0aec.1757076139.git.trillian@r9.pm>
X-Spamd-Result: default: False [-4.01 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TO_DN_SOME(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email,suse.cz:email,suse.cz:dkim];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[suse.cz:+]
X-Spam-Flag: NO
X-Spam-Level: 
X-Rspamd-Queue-Id: 6FC364E99A
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-Spam-Score: -4.01

On Fri 05-09-25 15:42:19, trillian wrote:
> Based on the earlier discussion in the linux-man list.
> 
> A few remaining questions regarding formatting:
> 
> is it enough to mention "since Linux 5.14" in the HISTORY section or
> should it be mentioned elsewhere too?
> 
> Does the discussion of quotactl() vs quotactl_fd() belong in NOTES or
> should it be moved somewhere else?
> 
> (Also, I've CC'd Jan Kara as the maintainer of the quota subsystem.
> Should I be CC'ing anyone else too?)
> 
> I based these changes on kernel commits [1], [2]. Man-page wording
> changes inspired by [3]. Rationale for the syscall itself is from [4].
> 
> [1] linux.git 9dfa23c8de925041b7b45637a1a80a98a22f19dd
> ("quota: Add mountpath based quota support")
> [2] linux.git 64c2c2c62f92339b176ea24403d8db16db36f9e6
> ("quota: Change quotactl_path() systcall to an fd-based one")
> [3] <https://lore.kernel.org/all/20210304123541.30749-4-s.hauer@pengutronix.de/>
> [4] <https://lwn.net/Articles/859679/>
> 
> Signed-off-by: trillian <trillian@r9.pm>

Changes look good to me. Thanks for the writeup! Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  man/man2/quotactl.2    | 76 +++++++++++++++++++++++++++++++++++++++---
>  man/man2/quotactl_fd.2 |  1 +
>  2 files changed, 72 insertions(+), 5 deletions(-)
>  create mode 100644 man/man2/quotactl_fd.2
> 
> diff --git a/man/man2/quotactl.2 b/man/man2/quotactl.2
> index 126426b8a..8e04e93c5 100644
> --- a/man/man2/quotactl.2
> +++ b/man/man2/quotactl.2
> @@ -4,7 +4,7 @@
>  .\"
>  .TH quotactl 2 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -quotactl \- manipulate disk quotas
> +quotactl, quotactl_fd \- manipulate disk quotas
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> @@ -17,7 +17,19 @@ Standard C library
>  .P
>  .BI "int quotactl(int " op ", const char *_Nullable " special ", int " id ,
>  .BI "             caddr_t " addr );
> +.P
> +.BR "#include <sys/syscall.h>" "    /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
> +.P
> +.BI "int syscall(SYS_quotactl_fd, int " fd ", int " op ", int " id \
> +", caddr_t " addr );
>  .fi
> +.P
> +.IR Note :
> +glibc provides no wrapper for
> +.BR quotactl_fd (),
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  The quota system can be used to set per-user, per-group, and per-project limits
>  on the amount of disk space used on a filesystem.
> @@ -31,7 +43,13 @@ after this, the soft limit counts as a hard limit.
>  .P
>  The
>  .BR quotactl ()
> -call manipulates disk quotas.
> +and
> +.BR quotactl_fd ()
> +calls manipulate disk quotas.
> +The difference between these functions is the way the filesystem being
> +manipulated is specified, see description of the arguments below.
> +See NOTES for why one variant might be preferred over the other.
> +.P
>  The
>  .I op
>  argument indicates an operation to be applied to the user or
> @@ -56,11 +74,21 @@ The
>  .I subop
>  value is described below.
>  .P
> -The
> +For
> +.BR quotactl (),
> +the
>  .I special
>  argument is a pointer to a null-terminated string containing the pathname
>  of the (mounted) block special device for the filesystem being manipulated.
>  .P
> +For
> +.BR quotactl_fd (),
> +the
> +.I fd
> +argument is a file descriptor (which may be opened with the
> +.B O_PATH
> +flag) referring to a file or directory on the filesystem being manipulated.
> +.P
>  The
>  .I addr
>  argument is the address of an optional, operation-specific, data structure
> @@ -118,6 +146,18 @@ field returned by the
>  .B Q_GETINFO
>  operation.
>  .IP
> +The
> +.BR quotactl_fd ()
> +variant of this syscall ignores the
> +.IR addr
> +and
> +.IR id
> +arguments, so the
> +.B Q_QUOTAON
> +operation of
> +.BR quotactl_fd ()
> +is only suitable for work with hidden system inodes.
> +.IP
>  This operation requires privilege
>  .RB ( CAP_SYS_ADMIN ).
>  .TP
> @@ -350,10 +390,14 @@ where the format number will be stored.
>  .TP
>  .B Q_SYNC
>  Update the on-disk copy of quota usages for a filesystem.
> -If
> +For
> +.BR quotactl (),
> +if
>  .I special
>  is NULL, then all filesystems with active quotas are sync'ed.
> -The
> +.RB ( quotactl_fd ()
> +always sync's only one filesystem.)
> +In both cases, the
>  .I addr
>  and
>  .I id
> @@ -770,6 +814,7 @@ but there is no ID greater than or equal to
>  .I id
>  that has an active quota.
>  .SH NOTES
> +.SS Alternative XFS header
>  Instead of
>  .I <xfs/xqm.h>
>  one can use
> @@ -797,6 +842,27 @@ constants for the available quota types, but their values are the same as for
>  constants without the
>  .B XQM_
>  prefix.
> +.SS quotactl() versus quotactl_fd()
> +The original
> +.BR quotactl ()
> +variant of this syscall requires specifying the block device containing the
> +filesystem to operate on.
> +This makes it impossible to use in cases where the filesystem has no
> +backing block device (e.g. tmpfs).
> +Even when the block device does exist, it might be difficult to locate
> +(requires scanning
> +.I /proc/self/mounts
> +and even some filesystem-specific parsing in the case of e.g. bcachefs).
> +.BR quotactl_fd ()
> +instead works on the mount point, which avoids this limitation and is
> +simpler to use (since the filesystem to manipulate is typically specified
> +by its mount point anyway).
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +.TP
> +.BR quotactl_fd ()
> +Linux 5.14.
>  .SH SEE ALSO
>  .BR quota (1),
>  .BR getrlimit (2),
> diff --git a/man/man2/quotactl_fd.2 b/man/man2/quotactl_fd.2
> new file mode 100644
> index 000000000..5f63187c6
> --- /dev/null
> +++ b/man/man2/quotactl_fd.2
> @@ -0,0 +1 @@
> +.so man2/quotactl.2
> -- 
> 2.51.0
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

