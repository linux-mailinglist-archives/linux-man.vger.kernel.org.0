Return-Path: <linux-man+bounces-5290-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CE8ZMD0syWknvgUAu9opvQ
	(envelope-from <linux-man+bounces-5290-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 15:42:21 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C499B352484
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 15:42:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B26CF3003BD2
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 13:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15B5B309EE2;
	Sun, 29 Mar 2026 13:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hKbLU+ua"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89CD12D3739
	for <linux-man@vger.kernel.org>; Sun, 29 Mar 2026 13:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774791734; cv=none; b=t406ppRMxkpBLwP5xYOxFv6JW8mL+RmhDrgNBkj39eW50VHg68/EXSSWyvT0Msr8bsJDxYffiu55o9ro0J19zN3EW7iXurX/5HuK9CjfoUGnc67CDonsxG3oZgzomvNGvq0hCcgBeeQ+bZd3+HfoFPlzP7hqPuE4LL/bDSkZky4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774791734; c=relaxed/simple;
	bh=5gb2MMuVjg80rzVqhPeudbOgsOnIPsv96hW04N4fvKA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eM4oqGcxBGsnbnMJC5+qWaDbdasGv0WqMA5B5itKlGUAHxt1hUfzA9IHWtolxy6CJQIuSV8up/PIf57PVr5ALCiFC/s+3MyxOU+mrSjiSiopLDnhheI2Pm1xer+nVh96M2FfNwf43CBoGo2qdI6Z/aN70yzuz9oy3W9JdWRY7lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hKbLU+ua; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4852e9ca034so34985055e9.2
        for <linux-man@vger.kernel.org>; Sun, 29 Mar 2026 06:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774791732; x=1775396532; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZblzpRVT+acIZQOj+1Z4a17RFxR0SzuQLEXOd2GDL8Q=;
        b=hKbLU+uaVkXmd/RyKsp1O4mTyRwOiYCj+kVVsksU4M2mXcSggziJT9iyWcKCiJDD+U
         fF6uxt5foyHyxPAXHOXUFfaldmNMSp8HXXFTTx7IM9UNAOqFlg3zeXrQFFxg7n6UzfLS
         qtuYvPXwIDGHRdwl0z5o6VP7NJUjkco4al2cZEYwjinBw9Yh6PTuOPrDVWCq4tZ9mVp1
         6v/p7+ruppDzUlaBk0tOLcjeG9Ot46mhOv3f9L7zBFO/BPqhPXIlG2Hp1pfU224b80mD
         s3TfrgUdFlhNga/giRXFKNaMbTjxRF8DLIi12YkggDDZjwvjGWxtR4QEWP1uQBEQ6VAf
         SytQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774791732; x=1775396532;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZblzpRVT+acIZQOj+1Z4a17RFxR0SzuQLEXOd2GDL8Q=;
        b=oWFA/1Er6wMy4EVe/DmJPyXUupQ4Be/tqcwHgtZ/ZCu++ZqXrnOujnKztuBUtScyKq
         3fKXjarGeIarzN3XsyRM+J/v3BKGFCm9vpIyu1ayxcZJHKFEoTpMY6F0aCkBy9bIp6ak
         6xgH2RdVmrud+aGM+1SPne5jS9PJfHukr62oDWGZC9HBbOljUMsbLTX+zgwU9bxS3z0B
         8QjX9oJHehuhmRx8wdUY8tunu0BlGAnlzDN+pdGP5PaBaKuuuArmch98SihKBdUZHGpJ
         NtDR11nh1LU9RbYykNSbTW07S4BjADHdlaMqf7QgWGhZTwcXNSqVlmE+nWMJ4VhZinmk
         04WA==
X-Gm-Message-State: AOJu0YzpB2l+CsSrsBRF3T8vpTauL7tgbUvKPSj5DCifJ0ET7zcMEM8Z
	MK3RwTZ2X6SZ61JNqkJfXlY1UrhLptCdaj8Y0MtgITUmrOW1szAkgidy
X-Gm-Gg: ATEYQzzyMu2t5lKJmY9zE/br4lpCv++m4ks3VzAPuz+VctqhoQyOkHG/LrwIqesRWnS
	ADgQH+2PA5H5HlbHUoy7E/R2AQJk6ei705jF5YC8Iidka9ZCtb4Bj4SFM1kl3tychvRPp2M4gu4
	aLulxCd16rnQ5dBdUAgbUDjEi4Rrmk1xKowGjCu9kCqV9D4c9XPEUI01bqUjECsjOFEhhwfzFpb
	TiPgX4xX4jJvndBwYHaTO5bZ6bVoBlbLH2tTBckWxuuAu5MCW9Jo93duDmfSV0CAO/o2uqZRLWK
	HrKAPpmXpaIZZoPddXZdqyCDj1bAcdvfd8alv26wiEHXXs1WFqnMV5COg8YjrOZD27rN94ED4R/
	HSI934qBXrbGoHoZAcS4meM0hcl4liLbErWM9o8SoWC9QYxA8dyZ1kPRvk8UwpyfafygvWgvmah
	wMsEn9FMT+t/eCfjdcpHRXYG0VjYbsrX95/yvq/f94ojXIizui
X-Received: by 2002:a05:600c:8489:b0:486:fbdb:b718 with SMTP id 5b1f17b1804b1-4872807483cmr154780355e9.25.1774791731765;
        Sun, 29 Mar 2026 06:42:11 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4873881c195sm18223395e9.9.2026.03.29.06.42.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2026 06:42:11 -0700 (PDT)
Date: Sun, 29 Mar 2026 15:42:03 +0200
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	=?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <20260329.5167693e9f38@gnoack.org>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5290-lists,linux-man=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,gnoack.org:mid]
X-Rspamd-Queue-Id: C499B352484
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello!

On Tue, Oct 14, 2025 at 11:27:26PM +0200, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
> 
> Hi!
> 
> I've already been DDoSed in my own home server by AI crawlers (which is
> the reason I decided to move the HTTPS server to port 80, just to break
> links and stop the madness.  I could install Anubis, but I'll resist for
> some time.
> 
> So far, I haven't noticed any contributors using AI.  Probably, the
> combination of relatively few people contributing documentation,
> combined with still working on a mailing list, has helped us avoid the
> wave of AI contributions.
> 
> However, it's better to take preventive measures.  AI is entirely banned
> in this project.  The guidelines are clear and concise.

I know I'm late to the discussion, but for the record, I would like to
throw a scenario into the discussion that I consider a compelling use
case for AI-assisted man-page contributions.

As you know, the Landlock man page work mainly consists of taking the
existing kernel documentation text and putting it into the man page
form.  That means that when producing the man page patches, the main
additional work is:

(a) formatting existing text in groff
(b) adapting the structure to match the man page format
(c) copy-and-pasting wording fixes between kernel and man page tree
    (in either direction)

Because this is tedious and time-consuming, and because the added
value over the existing kernel documentation is low, Landlock's man
pages tend to lag behind the kernel documentation by many months.

Coding agents are very good at such reformatting tasks though, and
that would make it potentially feasible to keep this up to date much
faster.  (with the rough process being that you point a coding agent
to the man page and Linux source trees and ask it to carry the
documentation changes over in a way that respects existing man page
style and structure). [^1]

Since the submitted man page text is the same as on the kernel side,
the main work done by the agent here is in Groff formatting, and in
finding the text in the kernel tree and putting it into the right man
page structure.

For inspiration, the Linux kernel itself has, after substantial
discussion, recently started adopting a different policy, where
AI-generated contributions are permitted, but where it is still made
clear that human contributors must review all AI-generated code and
have the same responsibilities as for a normal human-authored patch:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/coding-assistants.rst

I realize that the Landlock use case alone is maybe not enough to
change your stance on this, but I feel it's worth at least pointing
out that there are use cases with potential upsides.

I think that with a Linux-like policy for coding assistants, it would
be easier for us to keep the man pages up to date.

–Günther


Footnotes

[^1] An alternative that has been considered in the past was to create
     a mechanistic translation program to create the man pages from
     kernel .rst and .h files, but this also seems brittle and would
     mean that the man page structure would likely stay close to the
     kernel documentation in structure.  In my understanding, Linux's
     eBPF helpers use that approach.

