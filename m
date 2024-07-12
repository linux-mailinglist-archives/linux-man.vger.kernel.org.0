Return-Path: <linux-man+bounces-1445-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D73692FB42
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 15:25:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9BBEFB22A37
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 13:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA21816F289;
	Fri, 12 Jul 2024 13:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="ixl9f3zd";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="kKX6JtgV";
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="ixl9f3zd";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="kKX6JtgV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C090F1607B2;
	Fri, 12 Jul 2024 13:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720790731; cv=none; b=IyCOr3cj/VhNAaVN44/RJfXkY4AzxV/npCsz/si9uLkUOQzpzTNlJa5dXwiT/T8E5/KcCHCX/+jp8Ty+xVst87He6NcDqDd5TSAKfMp2SCtPcuUlovd7ZzYtXvbgM0mtG48tTKrNpP/zV4ERyj3NxZLVAmLNHxJFLI28ocJQKbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720790731; c=relaxed/simple;
	bh=DpFpCWeTt7GWVg950nkayMsXq/FQwFcHU9Nz8MJjsvA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iM6cEFnCpcqPIpthPodyLC0Jm613c1MP1y2789oDx4BLdeTxZNHovSt25TJcoy1id876aFknG8Wy/GG9AV1DiqPBz7l3C40eyAR10w+BDAvogoGB+uv6Z/u02VI1wkGmBf6JN4uaohlOH+k/yqpdMOcWsctuovbawHymznwuDwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz; spf=pass smtp.mailfrom=suse.cz; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=ixl9f3zd; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=kKX6JtgV; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=ixl9f3zd; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=kKX6JtgV; arc=none smtp.client-ip=195.135.223.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.cz
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id F38AC1FB81;
	Fri, 12 Jul 2024 13:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1720790728;
	h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NjeaZcnTqi29AyyJLylG0e7oCxi4wK80VaVmtrI4218=;
	b=ixl9f3zdo7pdLO8PdPQdNHyDvERkzEsnuTDtBfOeSTi3mz5fVxBYsysuIhJgUQXCyNkpkT
	gEGM6kLGORi6lQ28xjBAWNPzSziql81H4XAhK9b4CkpdtWPuORyj+iLrsCVFjzoAeIkFQ1
	pEO6mOjvjyAh8CoDJhMqrIyCqe5ZJBU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1720790728;
	h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NjeaZcnTqi29AyyJLylG0e7oCxi4wK80VaVmtrI4218=;
	b=kKX6JtgVAXjMJ9ty1sDKjy7Eiz49gimonS2Xwnc6hLnsh8rSMA03Oi0GwwzOJ222AU0yqY
	YSK1U13ztmFesjBA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1720790728;
	h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NjeaZcnTqi29AyyJLylG0e7oCxi4wK80VaVmtrI4218=;
	b=ixl9f3zdo7pdLO8PdPQdNHyDvERkzEsnuTDtBfOeSTi3mz5fVxBYsysuIhJgUQXCyNkpkT
	gEGM6kLGORi6lQ28xjBAWNPzSziql81H4XAhK9b4CkpdtWPuORyj+iLrsCVFjzoAeIkFQ1
	pEO6mOjvjyAh8CoDJhMqrIyCqe5ZJBU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1720790728;
	h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NjeaZcnTqi29AyyJLylG0e7oCxi4wK80VaVmtrI4218=;
	b=kKX6JtgVAXjMJ9ty1sDKjy7Eiz49gimonS2Xwnc6hLnsh8rSMA03Oi0GwwzOJ222AU0yqY
	YSK1U13ztmFesjBA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id C6F5113686;
	Fri, 12 Jul 2024 13:25:27 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id a4qTL8cukWZ1ZQAAD6G6ig
	(envelope-from <pvorel@suse.cz>); Fri, 12 Jul 2024 13:25:27 +0000
Date: Fri, 12 Jul 2024 15:25:22 +0200
From: Petr Vorel <pvorel@suse.cz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	=?iso-8859-2?Q?Micka=EBl_Sala=FCn?= <mic@linux.microsoft.com>,
	=?iso-8859-2?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
	=?iso-8859-2?Q?G=FCnther?= Noack <gnoack@google.com>,
	linux-security-module@vger.kernel.org
Subject: Re: [PATCH 1/1] landlock: Mention -1 return code on failure
Message-ID: <20240712132522.GB145191@pevik>
Reply-To: Petr Vorel <pvorel@suse.cz>
References: <20240712130904.145010-1-pvorel@suse.cz>
 <evf3o7bjqr6262out6aazgbmmgm45o3gtuywdulrzhtd742p7n@v6xdj5yftinm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <evf3o7bjqr6262out6aazgbmmgm45o3gtuywdulrzhtd742p7n@v6xdj5yftinm>
X-Spamd-Result: default: False [-3.50 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	MID_RHS_NOT_FQDN(0.50)[];
	HAS_REPLYTO(0.30)[pvorel@suse.cz];
	NEURAL_HAM_SHORT(-0.20)[-0.995];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo];
	REPLYTO_EQ_FROM(0.00)[]
X-Spam-Flag: NO
X-Spam-Score: -3.50
X-Spam-Level: 

> Hi Petr,

> On Fri, Jul 12, 2024 at 03:09:04PM GMT, Petr Vorel wrote:
> > Mention -1 return code on failure for landlock_add_rule(),
> > landlock_create_ruleset() and landlock_restrict_self().

> > Although it's a common rule to return -1 on error, it's better to be
> > explicit (as the other man pages are).

> > Fixes: a01d04a69 ("landlock_add_rule.2: Document new syscall")
> > Fixes: ca5163697 ("landlock_create_ruleset.2: Document new syscall")
> > Fixes: 3f7e4f808 ("landlock_restrict_self.2: Document new syscall")
> > Signed-off-by: Petr Vorel <pvorel@suse.cz>
> > ---
> > FYI we test return codes in LTP.

> > https://lore.kernel.org/ltp/20240711-landlock-v3-0-c7b0e9edf9b0@suse.com/
> > https://lore.kernel.org/ltp/20240711201306.98519-1-pvorel@suse.cz/

> > Kind regards,
> > Petr

> Thanks!  Please see a comment below.


> >  man/man2/landlock_add_rule.2       | 4 ++++
> >  man/man2/landlock_create_ruleset.2 | 4 ++++
> >  man/man2/landlock_restrict_self.2  | 4 ++++
> >  3 files changed, 12 insertions(+)

> > diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
> > index 4b95afb07..6fdc2f896 100644
> > --- a/man/man2/landlock_add_rule.2
> > +++ b/man/man2/landlock_add_rule.2
> > @@ -79,6 +79,10 @@ must be 0.
> >  On success,
> >  .BR landlock_add_rule ()
> >  returns 0.
> > +On error,
> > +\-1 is returned and
> > +.I errno
> > +is set to indicate the cause of the error.
> >  .SH ERRORS
> >  .BR landlock_add_rule ()
> >  can fail for the following reasons:
> > diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
> > index e62a3f9b9..4f638e85c 100644
> > --- a/man/man2/landlock_create_ruleset.2
> > +++ b/man/man2/landlock_create_ruleset.2
> > @@ -86,6 +86,10 @@ returns a new Landlock ruleset file descriptor,
> >  or a Landlock ABI version,
> >  according to
> >  .IR flags .
> > +On error,
> > +\-1 is returned and
> > +.I errno
> > +is set to indicate the cause of the error.

> I think the common wording is s/the cause of //

> Michael unified these a few years ago.

Yes, you're right, it's mentioned in Changes.old.
But I copied that from man/man2/mount_setattr.2 and it's on several places:

$ git grep "the cause of the error" man/ | wc -l
12

I'll send v2 later today or on Monday.

Kind regards,
Petr

> Cheers,
> Alex

> >  .SH ERRORS
> >  .BR landlock_create_ruleset ()
> >  can fail for the following reasons:
> > diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restrict_self.2
> > index 43f15c932..88850ddfb 100644
> > --- a/man/man2/landlock_restrict_self.2
> > +++ b/man/man2/landlock_restrict_self.2
> > @@ -72,6 +72,10 @@ must be 0.
> >  On success,
> >  .BR landlock_restrict_self ()
> >  returns 0.
> > +On error,
> > +\-1 is returned and
> > +.I errno
> > +is set to indicate the cause of the error.
> >  .SH ERRORS
> >  .BR landlock_restrict_self ()
> >  can fail for the following reasons:
> > -- 
> > 2.45.2

