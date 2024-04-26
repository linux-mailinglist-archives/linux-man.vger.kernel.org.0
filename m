Return-Path: <linux-man+bounces-818-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F4D8B3ED5
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 20:04:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D446F284887
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 18:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 188A616C84C;
	Fri, 26 Apr 2024 18:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="pF6Ff8mA";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="0w0OJT0F";
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="WQp10Fq/";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="u9Lb/qo6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0E3416DEAE
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 18:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714154627; cv=none; b=ELQ9NsM2UxzSqvOCNkRBKGlterRec5FK4rM/69NC08uqOTdIegrdCqqVPH9XVUpJfbYfZ6e6OzRIAVvNRpiSMyy8ir3MsPMCLh45ddPH6qq/RITpjktN8lLMTcEpIyJ8WxZaBjJCGnFQ61uyH82qAq+Fy6lQtUfMu/IIlJ1MRnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714154627; c=relaxed/simple;
	bh=jGVu2BEW2gHSpHXK4pRCUpBmdBEwGZtJ7aWEIDSdMY4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IPCHOSsSos4oe9W2+N1cHd1JsBOXXtLN5OKZ2qfdlqScAqo8CKV6U4GmKr/e5BA47ZiVPv0V6nQtzmq4YlIu7exIQLt++7irlfAJ1h2QFMUBQrym6xrSn7Uir3sGAEifr2vtIW+hp1ryM1rnh4lpMpGFZ0q2bQSWP2IQHp+EbLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz; spf=pass smtp.mailfrom=suse.cz; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=pF6Ff8mA; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=0w0OJT0F; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=WQp10Fq/; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=u9Lb/qo6; arc=none smtp.client-ip=195.135.223.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.cz
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 7EA2B35105;
	Fri, 26 Apr 2024 18:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1714154623;
	h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yKtb6aJhhP1P/pECIIcOSRnJpTSRKjp1C6oFA/nxFsk=;
	b=pF6Ff8mA09F0jK5xGfIMZ/anHLj58wFQ7uk+W7icxtxZ+G/mOd0ZnMn1VxFbUpLuaHlPv7
	6A3Yo78CdFA2EPU+twUJNESw9eciPoJ1EjlqGZhOOTFc8wp09ZOt/OybJuSpgQ+Hf5kXPr
	q6Lo4hI4Tuq+g1MIQknT6YmG4fY7tSs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1714154623;
	h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yKtb6aJhhP1P/pECIIcOSRnJpTSRKjp1C6oFA/nxFsk=;
	b=0w0OJT0FnLiwYvI9tlAMcjMl0w4MNkybIw9SaM79Piew3NucJUk5zV5l/+UTSkuE2GoxiK
	Xtrih5RIlx/oxHCw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1714154622;
	h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yKtb6aJhhP1P/pECIIcOSRnJpTSRKjp1C6oFA/nxFsk=;
	b=WQp10Fq/BqIqpgj+3whKhComkofF0FjnTtNLo+pjF03AaTK+O9Q9ww+t4nl/sZFF9djV5c
	sMvxT53YpyF4xYblTwG09s9D0WIyEmFOEbHsQq6rt2rd4zEGCHA2SrX8AxOWwPlSaTufB3
	b0lKwsaTfRDJ6rFaI+2r6MUeRhdA2C8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1714154622;
	h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yKtb6aJhhP1P/pECIIcOSRnJpTSRKjp1C6oFA/nxFsk=;
	b=u9Lb/qo6hvxIDSGsKCyh6hZDw7d29T8I6L1hjvtDlANC2BOgOhc2fxSIkAaNy5GWE2jbT9
	HayegMs3RhydfPDA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id C8B4D136DB;
	Fri, 26 Apr 2024 18:03:41 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id 4gDfGX3sK2YiKQAAD6G6ig
	(envelope-from <pvorel@suse.cz>); Fri, 26 Apr 2024 18:03:41 +0000
Date: Fri, 26 Apr 2024 20:03:38 +0200
From: Petr Vorel <pvorel@suse.cz>
To: Alejandro Colomar <alx@kernel.org>
Cc: Stefan Puiu <stefan.puiu@gmail.com>, Jakub Wilk <jwilk@jwilk.net>,
	lnx-man <linux-man@vger.kernel.org>
Subject: Re: Ping: Re: Move man* to man/ (was: Revert 70ac1c478 ("src.mk, All
 pages: Move man* to man/"))
Message-ID: <20240426180338.GA6871@pevik>
Reply-To: Petr Vorel <pvorel@suse.cz>
References: <YxcV4h+Xn7cd6+q2@pevik>
 <20220907205304.nlqce37l26gezjqi@jwilk.net>
 <7b9c2ab4-6cdc-b4fd-1001-8721083695fa@gmail.com>
 <CACKs7VADwh0Qs8Zo7=biVzpOhSgMt5xD1BSBXdg82sPAcdjYOg@mail.gmail.com>
 <Yxr9WN7f3FEqKVRg@pevik>
 <ZgIk4mN4bXfsiiYy@debian>
 <ZiuhVmLAnm2r5xaQ@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZiuhVmLAnm2r5xaQ@debian>
X-Spam-Flag: NO
X-Spam-Score: -2.00
X-Spam-Level: 
X-Spamd-Result: default: False [-2.00 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	MID_RHS_NOT_FQDN(0.50)[];
	HAS_REPLYTO(0.30)[pvorel@suse.cz];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	TO_DN_ALL(0.00)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,jwilk.net,vger.kernel.org];
	DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns,suse.cz:replyto];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_EQ_FROM(0.00)[]

Hi Alex,

> Hi!

> On Tue, Mar 26, 2024 at 02:28:59AM +0100, Alejandro Colomar wrote:
> > I'm thinking of adding some features to the build system that would need
> > having a clean man/ directory.  The main one is building several books
> > for other projects, one per language, where languages correspond to
> > every directory within man/ that doesn't match man*.  Currently, I'm
> > workarounding this by running the build system several times, for each
> > language dir, but it could be much simpler, I think.

> > For not having a regression in the number of characters one needs to
> > type to edit the manual pages, I thought of adding symlinks in the root
> > of the repository, so it would look like this:

> [...]

> > What do you think about it?

> Ping.

> To be explicit: I want to

> $ mkdir man/
> $ mv man* man/
> $ ln -st . man/man*

> Should I assume that no-one has reasons against this?  I'll still take
> some time before doing the change, to allow replies to this thread.  But
> please manifest youselves, even if just for saying you don't have an
> opinion.  Thanks!

Obviously have files outside of man/ directory would be better than having to cd
to one extra directory. But if you symlink it it should be ok.

But you know the source more than me.

Kind regards,
Petr

> Have a lovely day!
> Alex


> > Cheers,
> > Alex

