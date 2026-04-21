Return-Path: <linux-man+bounces-5358-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEfYBBm852mu/wEAu9opvQ
	(envelope-from <linux-man+bounces-5358-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 20:04:09 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7159E43E546
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 20:04:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A5FF3053CE6
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 17:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6A8B3064A9;
	Tue, 21 Apr 2026 17:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UHUdQLdt"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477E939DBD9
	for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 17:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776794300; cv=none; b=PO1FREQ2pWtmIApXHFBpxHQRjNMyJMJH/J0NNVR8J8LyAavDVhgdNlm2mDvzxd+I8vlUqFrGWEvCHaiMOAFcEPiD9jQurvx1e6m0cW0YJRuDtf9Re7IbZOXan4G41vpDSKPnbvlFHGia88DvXhqbqMEsBaz0FHo3ARcQcKeQOBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776794300; c=relaxed/simple;
	bh=4KnT9e0nYvqkKjzzRQhZTyM52GdA4IMPzjRBuMb2VWI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vpw+Yh6QpkOEiQLoJsNagtzCwNeUl60Wm7QPLHtcF3rAqp2ZbL3ErdsWq49+u0bwsQN8yguwUsMUTxMyOifqQXo1KwV/M7bv1QIwMbcdB4F/PMEx4gPcaPu42hCIePmGemLmT3h4xNCgxlplBe4OLNJpH/KoM2x6ZUFpStlzeIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UHUdQLdt; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-488ab2db91aso61268485e9.3
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 10:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776794298; x=1777399098; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+sahizZ39F8Ey1Slb2tUP0iAX78Ata04F9tTcodtd1g=;
        b=UHUdQLdt53eQM/+PWgfD1ihxEtR7Twc55PMVz3j1PDV8mhunC1cpweWZdoG7ahEpvK
         jUhq2g+KcHXD4ywxP7VcZEIFoa6oqkbvjeQGLtBwrl5NWARXud0qvwMMKKTqm17+nuL7
         bCqbaNPUFvvBHGZRmfwWjnBsAA+OTAMOS+IMlJIxo+1sQ6fwW2dvQfrni4STzpixcLyX
         MMrgAsMqON1sXctHaeLlP1S0hSdKEbjTfsxpzAXcL9hUn2tyYGkt2Dtxw6SeYtZDaOhv
         h/F28ZfAjUhnTQhDq1GDthfDRthNSyKIyHlWy5uaCoH9q1Iz7kvYZiJQ99x1gwUik//B
         R6Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776794298; x=1777399098;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+sahizZ39F8Ey1Slb2tUP0iAX78Ata04F9tTcodtd1g=;
        b=Qpo5/FSMAEDjAROtLjkRSS5ivpMxFlUYBi3yXxJr74VMWu7agW0FveaWVpQ5kVB9WB
         6nKeiZBoauw86lwYxSWy4NB7acqXA3VaPwGnzPcJgyzoShb4P6bRVlvS7rECUdUl1Wai
         3yCEygOlWBdFqI2I/lBnoG4c83o7wruAjPBW1KyVHsZ/iCfXbw6BR/TjotK4b4jGS670
         hTaAt2nILmGpXuik+Jx/q5Mcl9EHYUTCNIM5Dys0bNm3BcR8CwAn6cYJgk9bQxXxUzn2
         KzjxF1jC+PqGIoOsSiYoHT7XuNfQ05G5ODcxtF4bvpEJmISCDx4Yw/JYS9YiN255pyJe
         2Y2Q==
X-Forwarded-Encrypted: i=1; AFNElJ/V0960JgOi31GCILjlm0y6wu1hoYcinzFXd5WpNsU61KPFNKk5kaHCIQJZt4bdrg7wT3Q1RwkMoZE=@vger.kernel.org
X-Gm-Message-State: AOJu0Yym4BBG7rdIzgb3NNWqUcsXeNbMle9GcZvJwDLrH8hpe/jwySFr
	m8nE/7J2F9jGtPQeaIFasH2qP234ViV2gQ80hMExL6C2WXBRs2A0iOeOPCSQ/O62
X-Gm-Gg: AeBDiesrnm1FSsRlfjce/ofnnw4cL9wB50Mba4Imfu4em8KvDSHhVAKtlYfVoWVTspc
	Rg6aKMj0vJ7CwJ199Z/EdLCKR3UASpe303UOl85enBbzkuRC/0djdyHK+PyhFm7dEWD9aaGohOj
	R1Vv2vtvfbvAxd0oQpIZSlJkZhbUy6583nDYafoIvSdgtDGjzoF8jBrFJbMo2C7n+4Jw4lF/9zM
	axkJsQDy0/Ml8Ea5Y2dSKXXjMYHNOaqIa4xKbRHBvJmVRQz3n4b5taNgOBwF2s/X6tB4/FcvV0M
	twE72ZJ2+l7Hq8+7SiFl9Yu4rbkEKDVDEw6kf/O2//X4ybPNyZwSel8/TeK9mSHh66iJHCGiJ2P
	P36PltXUvei2pdA+pHxYmupE4Mg/oYt8Gsa9bPSo2+Pdm33IE43edrYLA1wXnN5vOoZwQK4fQI1
	wpeq0b2zpEJrEVRNmum/HgGD2sjGRQ4s2S9DtCKhb+SW9A/Jiu/Gs6bXRVEtlJc20BwpjnyA==
X-Received: by 2002:a05:600c:a416:b0:488:90ac:8f71 with SMTP id 5b1f17b1804b1-488fb73a9fcmr224484455e9.5.1776794297324;
        Tue, 21 Apr 2026 10:58:17 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fc1c773fsm431717575e9.12.2026.04.21.10.58.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 10:58:16 -0700 (PDT)
Date: Tue, 21 Apr 2026 19:58:07 +0200
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/4]
 man/man[27]/{landlock_create_ruleset.2,landlock.7}: Document
 LANDLOCK_CREATE_RULESET_ERRATA
Message-ID: <20260421.ec0d503c0e84@gnoack.org>
References: <20260420223517.8020-1-gnoack3000@gmail.com>
 <20260420223517.8020-3-gnoack3000@gmail.com>
 <aebBYT2DKJGekGXe@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aebBYT2DKJGekGXe@devuan>
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
	TAGGED_FROM(0.00)[bounces-5358-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: 7159E43E546
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Alejandro!

On Tue, Apr 21, 2026 at 02:16:38AM +0200, Alejandro Colomar wrote:
> On 2026-04-21T00:35:15+0200, Günther Noack wrote:
> > Document the LANDLOCK_CREATE_RULESET_ERRATA flag, which returns a
> > bitmask of fixed issues for the current Landlock ABI version.
> > 
> > This mechanism was introduced in Linux 6.15, but backported to all
> > older kernel releases where these errata fixes were backported to.
> > On official Linux kernel releases, if landlock_create_ruleset() with
> > LANDLOCK_CREATE_RULESET_ERRATA returns an error, this is equivalent to
> > the case where none of the known errata have been fixed.
> > 
> > Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> > ---
> >  man/man2/landlock_create_ruleset.2 | 57 ++++++++++++++++++++++++++----
> >  1 file changed, 51 insertions(+), 6 deletions(-)
> > 
> > diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
> > index d4eb5d827656..a24a4dd6cbb3 100644
> > --- a/man/man2/landlock_create_ruleset.2
> > +++ b/man/man2/landlock_create_ruleset.2
> > @@ -116,11 +116,7 @@ Otherwise,
> >  can be set to:
> >  .TP
> >  .B LANDLOCK_CREATE_RULESET_VERSION
> > -If
> > -.I attr
> > -is NULL and
> > -.I size
> > -is 0, then the returned value is the highest supported Landlock ABI version
> 
> This fix (and the related changes below) should be done in a separate
> patch.
> 
> Other than that, this patch LGTM.

Thanks for the review. I'll split it out and send a v3.

–Günther

