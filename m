Return-Path: <linux-man+bounces-5654-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id x5+xJLNzMWrEjgUAu9opvQ
	(envelope-from <linux-man+bounces-5654-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 16 Jun 2026 18:02:59 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B640691A47
	for <lists+linux-man@lfdr.de>; Tue, 16 Jun 2026 18:02:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="h4/nYPMC";
	dkim=pass header.d=redhat.com header.s=google header.b=AKBkx8tx;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5654-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5654-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C72853019542
	for <lists+linux-man@lfdr.de>; Tue, 16 Jun 2026 16:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EAFD44DB6D;
	Tue, 16 Jun 2026 16:02:56 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D203C0628
	for <linux-man@vger.kernel.org>; Tue, 16 Jun 2026 16:02:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781625776; cv=none; b=O3GFVGVMuzfdc6+4XtXirgtoaF8EQSSUzS7+qyzL097HZJ8fj5DI/u7elvJFEOQD196jLmSDGZtqBDVv7hQV0Dk2oCwSQPa3oWlCBnwB04RCDZ30Y8whUI9KTzJtP4rBci3YiEjQWWVZzuhM+cgAU/YRdYz+hhklWFzimqWs4RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781625776; c=relaxed/simple;
	bh=Ny+bzGlg16l1E5QbNzYVE0ItkTxIAENu2hI/3Vyryfc=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=AVkcH/X2WNSto0gcvsP/WIhSHPh/FTXcTKF38zVNSqnmsNotJWkW20PRtYnkhNefr22i0+MnEaBE36KwBIPZSlspjaI6Jbt9SCqRD3byV2TjWVQZFG7buRLBme1ifOBeOHcnPNtiBn+VScH548ZMmF5vHIGN/8xGLzAL7gvyTe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=h4/nYPMC; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=AKBkx8tx; arc=none smtp.client-ip=170.10.129.124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1781625774;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=C+5cNk8mQMHok8o91gdSL35fKcngkiByh+kSCv4XPFk=;
	b=h4/nYPMCMx8gOOiBhxYBGNHGxP0HhU5dg/VW4+Q1YFJvsjt8+wJSlaD5FlaUrqoham21sL
	JEhe9+POg9fh31TtRUH6YirBLx4qT7Y1eX/L2mGJP2aR5tnjmZRXPaOPcSlo/DSO1A0Y27
	7L6nZuhmAc5+RYENPGzO9QpMYoZMVBw=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-171-NAoBrdnCOOeUejC3jC2FGw-1; Tue, 16 Jun 2026 12:02:48 -0400
X-MC-Unique: NAoBrdnCOOeUejC3jC2FGw-1
X-Mimecast-MFC-AGG-ID: NAoBrdnCOOeUejC3jC2FGw_1781625767
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-490dad70f95so48599945e9.3
        for <linux-man@vger.kernel.org>; Tue, 16 Jun 2026 09:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1781625767; x=1782230567; darn=vger.kernel.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=C+5cNk8mQMHok8o91gdSL35fKcngkiByh+kSCv4XPFk=;
        b=AKBkx8txvOqkgTn0UCnnNSQC8dG0WgBWVGMfGUMCAldP3ZKm9sA5k70eLZftybqnhw
         HUfktC+boy+NmxMX57j4Xwdd6GBA8+/Q8s20SZgzpJLVPrvNDx6GR3iQu618IgsXgQeg
         oBH5hvVVql98W5/buB6BbxjYDMnCCNLeSMaYzxd5H0r/HbRmzfnFXfHw6qLL+NwL2zIA
         +MvWWgqgKXe0vh68raHZ+PGKE/Uxbfb/0sWsy9T0I3AF2k4r52RqBkvCCHpP1Iq0DRJq
         15IJhQAKFQ0QAiYbFvzSsD0CkoTCBkpmWyCTbhW0Jcr9+BSvGP5KtBO8JEUuSeeAa4ry
         EpEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781625767; x=1782230567;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C+5cNk8mQMHok8o91gdSL35fKcngkiByh+kSCv4XPFk=;
        b=HnxHAHgeUIrlmmnjix3o1tyevL8KIiuXDRO7nyG+dur1/cgFoBf8/GckKh3RYEK+jv
         j5J+FulX9cOPaSYm07wT8PtdxEl8+0zB2y+xd/L4N+tgI7vWt00FXzvdzEnZywuQCaJD
         jvlNnaVJ9sHXRWcN9tY4W76OszbjvYK6VsJ4RWDGaV49C9366xBpSIwI5HMNlEf1CgK7
         9gA/B/r0TK0zw0gBFNVhw9GKWqf6onz93RtxHHxeMO58F0zDcBbGqi36Pm6yQqTy2j3x
         uZ08JsjGErApCYnaEnVPj+N4ft6lKS8QSaYnM4KNe4Sg9TH0xpYe7ICwTz0eaeJTSesf
         PuDQ==
X-Forwarded-Encrypted: i=1; AFNElJ9yDuglMMilhF8J65INPOIUzBds1x698eLzdxEwTM3Tk5aWH5dIm/WBEALUf4EiyNgs5T38w/JyAkM=@vger.kernel.org
X-Gm-Message-State: AOJu0YzVyeOFlNd09KkJHBwoEf8GQ3REMV3kKpVw8itlDtFGCYoz1q26
	EV3SY2HZZoX+ORr0aaah9Re6wtcRvikwEuCClzgfjuHU9+PeE9F6T5exeNFpLpEqYQ4t3EUaQWG
	iD2cAQNHy+kxdfL9J4AlK2OaKUxIFKshjjELiV3lPyXG6+fxJJZofy6oZAptnrw==
X-Gm-Gg: Acq92OGRxqJ4p1tyNlENM0HnL/43bkOKU34R7YPIwqWS91OhhokZvP6onCytv5mc1KK
	uyBIWDmUGp85biCIVzRi5EiCvjbJiDOkiOYoigWT5u1byaz3YeeU2pgYl5kEPt78Xy/NLThlXg4
	OXcXSSkRscqan/G9RYtJA/1mKFSwCakgEWvxbi2k83PgM0fqps0Ou0dYjPKc0R1nwo0qsfCi9sd
	tkRumJSir2TuKs9bAsMCCPIzZnaYr3ryJKS/fj5trvJB+0MQ9DMFN+jvcF0LFKRlOuFltbTXiZ8
	hUwjGS6RvWpk8J8l5i9ps4refp/t/Lug7EzTWEVo83mkUCFywifnZRLycwXspTBNEpw+clt77Bq
	k1+MjYoTCzWMBPlT1Aa6DakFAhBa6dSC4Gr8WlwUIYzxvkFJaJJc5
X-Received: by 2002:a05:600c:19cb:b0:490:4b89:535f with SMTP id 5b1f17b1804b1-4923339fcacmr2387795e9.8.1781625767005;
        Tue, 16 Jun 2026 09:02:47 -0700 (PDT)
X-Received: by 2002:a05:600c:19cb:b0:490:4b89:535f with SMTP id 5b1f17b1804b1-4923339fcacmr2386575e9.8.1781625766075;
        Tue, 16 Jun 2026 09:02:46 -0700 (PDT)
Received: from digraph.polyomino.org.uk (digraph.polyomino.org.uk. [2001:8b0:bf73:93f7::51bb:e332])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4620b1083e3sm1423119f8f.20.2026.06.16.09.02.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 09:02:45 -0700 (PDT)
Received: from jsm28 (helo=localhost)
	by digraph.polyomino.org.uk with local-esmtp (Exim 4.98.2)
	(envelope-from <josmyers@redhat.com>)
	id 1wZWFQ-000000032fn-25I8;
	Tue, 16 Jun 2026 16:02:44 +0000
Date: Tue, 16 Jun 2026 16:02:44 +0000 (UTC)
From: Joseph Myers <josmyers@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
cc: libc-alpha@sourceware.org, gcc@gcc.gnu.org, linux-man@vger.kernel.org
Subject: Re: _ISOCxx_SOURCE
In-Reply-To: <ajBpIbEH_7KkJrld@devuan>
Message-ID: <b22b20d8-b4bb-ce86-7865-87ac4ed7df25@redhat.com>
References: <ai1DVieT3gTr4J5S@devuan> <c357346a-ecd1-761e-47c4-5c1357b32c59@redhat.com> <ajBpIbEH_7KkJrld@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5654-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:libc-alpha@sourceware.org,m:gcc@gcc.gnu.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[josmyers@redhat.com,linux-man@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[josmyers@redhat.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5B640691A47

On Mon, 15 Jun 2026, Alejandro Colomar wrote:

> Hi Joseph,
> 
> On 2026-06-15T17:20:17+0000, Joseph Myers wrote:
> > On Sat, 13 Jun 2026, Alejandro Colomar via Gcc wrote:
> > 
> > > I was reviewing the feature_test_macros(7) page, and found the
> > > documentation of the _ISOC{99,11,23,...}_SOURCE macros to be incorrect.
> > > And thinking about fixing that led me to think that the design of those
> > > macros is less than ideal.
> > 
> > Users should normally use -std= options with the compiler to get matching 
> > language and library features.  These feature test macros are mainly for 
> > niche cases with old compilers.  So I don't think any new user-facing 
> > design for them should be added (the C23 and later ones already use the 
> > newer __GLIBC_USE style of conditionals in the header implementation).
> 
> Makes sense.  Should I document that users should avoid setting them
> directly (and that they should use the corresponding compiler flag)?

Indeed.  Also, users are probably using a compiler defaulting to 
-std=gnu23 or -std=gnu11 so the older _ISOC99_SOURCE and _ISOC11_SOURCE 
are doubly irrelevant for that reason.

-- 
Joseph S. Myers
josmyers@redhat.com


