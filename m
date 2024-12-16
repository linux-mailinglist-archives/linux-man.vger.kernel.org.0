Return-Path: <linux-man+bounces-2153-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDEB9F2E1A
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 11:23:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA4F5163CC0
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 10:23:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B27D2202F9C;
	Mon, 16 Dec 2024 10:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="u4rcqcBZ";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="qZR5pPiK";
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="u4rcqcBZ";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="qZR5pPiK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEB3C1B4F3A
	for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 10:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734344613; cv=none; b=u5+OY9ujgxHvAtnnf6T9qssNJozw0vRMutLE7Q/md2eyJnbdWzTQlS5HabdUxUbUJvgHNo3Zbfn/rzi/BlBckYO1Pd4xt9YtoEulRO0PxLYHDeZ8/rtNX2gZzTP33jpiKDShVtkdhDTSnfKjoeTSR7siRWbKbWH6MgoSzoBKJSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734344613; c=relaxed/simple;
	bh=Yx1lsXDOGca9SpLp0GKkowsh32wqD+tt5UnM5NzGjCU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d/jDOpAyCuO6sC4y4huCxxgoC0ViiJNtZqPZtuLgatUqqpv4fPlCas4VVp/dqZomtGRA5JV57RqeLM5C7S83zCJW+goC3JK5zMUNmxtfkmitYr8ir+1Bcg2OcmhrOIrFM1XU5KqBHsZ5QqdfKKJoJJ7asoKCYNgDok234JGDu1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz; spf=pass smtp.mailfrom=suse.cz; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=u4rcqcBZ; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=qZR5pPiK; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=u4rcqcBZ; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=qZR5pPiK; arc=none smtp.client-ip=195.135.223.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.cz
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id C0B581F449;
	Mon, 16 Dec 2024 10:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1734344609; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mWi9KvhRAPShJXnTXBErogARnigwxe1GXi53/3bWm48=;
	b=u4rcqcBZnuN5r4nDUMjPEQq0WzmFQ5ue06+D5+vEDRRCzM8O55677Y9/bGd18uNxB0hr5x
	CEqIJ8ynRGV9hAvm5ZVK7Ll7JGHdrRR65HPX7R0t0GJ928FkGiyPishjKfBe7knXEO6bpw
	5N/EjyFNUb+EGVq/XQnhB5cyKXrRDvg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1734344609;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mWi9KvhRAPShJXnTXBErogARnigwxe1GXi53/3bWm48=;
	b=qZR5pPiKHJFVjnok4GXytqSBKaAERrE1BwW/zW3oVncknqcZ/qsfrAqnnT1hxBlWsswESu
	/YNvOhILSSbS4vDw==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=u4rcqcBZ;
	dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=qZR5pPiK
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1734344609; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mWi9KvhRAPShJXnTXBErogARnigwxe1GXi53/3bWm48=;
	b=u4rcqcBZnuN5r4nDUMjPEQq0WzmFQ5ue06+D5+vEDRRCzM8O55677Y9/bGd18uNxB0hr5x
	CEqIJ8ynRGV9hAvm5ZVK7Ll7JGHdrRR65HPX7R0t0GJ928FkGiyPishjKfBe7knXEO6bpw
	5N/EjyFNUb+EGVq/XQnhB5cyKXrRDvg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1734344609;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mWi9KvhRAPShJXnTXBErogARnigwxe1GXi53/3bWm48=;
	b=qZR5pPiKHJFVjnok4GXytqSBKaAERrE1BwW/zW3oVncknqcZ/qsfrAqnnT1hxBlWsswESu
	/YNvOhILSSbS4vDw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id ADA68137CF;
	Mon, 16 Dec 2024 10:23:29 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id gH72J6H/X2fhIAAAD6G6ig
	(envelope-from <chrubis@suse.cz>); Mon, 16 Dec 2024 10:23:29 +0000
Date: Mon, 16 Dec 2024 11:23:44 +0100
From: Cyril Hrubis <chrubis@suse.cz>
To: Alejandro Colomar <alx@kernel.org>
Cc: David Howells <dhowells@redhat.com>, linux-man@vger.kernel.org
Subject: Re: ioctl_pipe(2): SYNOPSIS: $1
Message-ID: <Z1__sIy3Kyka0nrS@yuki.lan>
References: <20241214180348.pp4vrlnxqpo6cus6@devuan>
 <20241214180423.2thsuyyfosrlyajb@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241214180423.2thsuyyfosrlyajb@devuan>
X-Rspamd-Queue-Id: C0B581F449
X-Spam-Level: 
X-Spamd-Result: default: False [-3.51 / 50.00];
	BAYES_HAM(-3.00)[99.99%];
	SUBJECT_HAS_CURRENCY(1.00)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[suse.cz:+];
	TO_DN_SOME(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:25478, ipnet:::/0, country:RU];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-Spam-Score: -3.51
X-Spam-Flag: NO

Hi!
> > The manual page ioctl_pipe(2) has this synopsis:
> > 
> >        int ioctl(int pipefd[1], IOC_WATCH_QUEUE_SET_SIZE, int size);
> >        int ioctl(int pipefd[1], IOC_WATCH_QUEUE_SET_FILTER,
> >                  struct watch_notification_filter *filter);
> > 
> > Which says the $1 is an array of int (the type is declared as int[1]).
> > However, this is incorrect, since the first argument is of course a
> > plain int, a single file descriptor.  Would you mind revising the page?

That looks indeed wrong, I suppose that we need just 'int pipefd' there.

And looking at the kernel both pipe file descriptors seems to get the
exact same fops so it shouldn't matter on which end we call the ioctl().

-- 
Cyril Hrubis
chrubis@suse.cz

