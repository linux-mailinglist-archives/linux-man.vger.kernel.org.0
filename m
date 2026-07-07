Return-Path: <linux-man+bounces-5702-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qM1LB6PkTGqfrgEAu9opvQ
	(envelope-from <linux-man+bounces-5702-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 07 Jul 2026 13:36:03 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7C671AFE5
	for <lists+linux-man@lfdr.de>; Tue, 07 Jul 2026 13:36:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=google.com header.s=20251104 header.b=hjQyqgky;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5702-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="linux-man+bounces-5702-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 87F7B3009014
	for <lists+linux-man@lfdr.de>; Tue,  7 Jul 2026 11:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EB5B3F88BE;
	Tue,  7 Jul 2026 11:35:58 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E503F88AA
	for <linux-man@vger.kernel.org>; Tue,  7 Jul 2026 11:35:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783424158; cv=none; b=ke69xuY6dLcdfDHj5UU3e3aNmmYqOlYgQT1ODB72ZAuUsAVf+dlWkvM0XBrZ9Ech+MvzTGOZmPbmTUz+SpL3Klvwkg0JdBxXNhn/6QCZFTgZvWu7aTRd2fxyexeWLIyNsJ7HaQT4lQGcCwgnfAkuOdPhCe6dwAPs2CFgOlNp8f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783424158; c=relaxed/simple;
	bh=cCBv8OrCmWCfSbH2wPav//3Xt8UlNT+UHE/79mYvw/A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N9+66Kmq8K1U1JE35PSgjMpYuAbxf3Lst4jkeVMupTKR2XMak8l6Jmj+jQgGnjfaz6/nvWjMQWK/153l5Aalm+0vscgR1YVtIEBTSsvsbCWThu7W3qPeIC9b21hFVHxOEY3WvDU7x2EX5uhYlpf94RFXZnbui8QgO0cP1hcvzPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=hjQyqgky; arc=none smtp.client-ip=209.85.221.48
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-47362928f65so3876901f8f.2
        for <linux-man@vger.kernel.org>; Tue, 07 Jul 2026 04:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1783424154; x=1784028954; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MdK4gVsudYaq+7AB4Lb1yrnP9QD4SVNKHm46P2LSizw=;
        b=hjQyqgkyx2PuZYSNVlKXykdS5MtNAjqxONaI9q90zRQx9kpkqMoRyBexfc3HJ/1NE+
         nKjxmmxEREazYbc68Xw/tFydcCCinvHMgbiF75FNbPJfNe1oKkwcNuD2GdJv78x90r5m
         faAoQxae5SdKqiNkPQktN4WRuVo1dkr/K+exSe8Dw8+SmPCsA+Xg1DQSSiqlP5EXyrdm
         g/EJRmz0JMFkp7+PkM6qa9CALBJ36LNjiNghbfgdv3J/TQ6ca6rky029Vp5Ndi/GxwiL
         5gi77DPmT3TwFt6NG7iYhab6dDhTjyDkiF3poZKTqVUIzftBAoP0znc8jgq5zCFbhDAM
         pjMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783424154; x=1784028954;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MdK4gVsudYaq+7AB4Lb1yrnP9QD4SVNKHm46P2LSizw=;
        b=AQefovZgRIrBmnDi5jWl0f7XIhcyX4yvJdwtLTJs0+PevFcftekUJ7TAQHbYbLDWMC
         qxdx1p5l0EOgUZAsBKULrnrn2FFkM45XVbr5r3QTBMEmSwEDDIiyQdeWU4ziWra+y8SJ
         XsXLc/wYyj2MYIYj6yEmkoepiTyHyW15Zo+ON7OveE5iB4/FPGcgkG6mMOKBgBxazD/G
         um6TQeBSUfjv0lZCJOmM1LfQtjT/CJrnYiugoZADabf3AVmXfP9IWw/To9wspc2jDrq2
         uuiAXr4jTpw6bwvoQEj9605LzkPDB0yErwhXmHuliTSHatyDAq2jSRb5j3vOwBURr/E+
         xNfw==
X-Forwarded-Encrypted: i=1; AHgh+RrXorRPJvXeGY9I12IU8vvOPptxPHDmKJXG1wtpAafZAQg0gianlgc1bZj7WXUWXJl7aZVnHFvV8ok=@vger.kernel.org
X-Gm-Message-State: AOJu0YwmCGaG+UOzGvm6Zuy9sAKLHxsopqjEGd2A8hL92lGHRlyE34fV
	WnfVN2fk2qOjIk1CxPJnpXqKRdrfy4xtqDpUnzyH95KBkHqY5so9D3A07VtRfdsSbw==
X-Gm-Gg: AfdE7cnS7LdlSDq8Giwi8veVYSxhdGWJTKnHlyqwIRBp8j2EsaQeTLL3sOUPYhsDk/s
	ZgjmitCAJ5mUvzeu7P40zSsYxx7B3AYJipYOp0wKwK8LLI4JWx59zfXMbn3YVHnmgV0fjcE/2/l
	feiz6bEe0OH+whu2lAJ/dwbm6a+54GWBraUyJoJCI/8HRwxvuWKqeGZ1FcJOEka/R6hmoFNHETp
	zMjUJ3+4LMf4yG4/W9Ya0YoOrTfYmA+wxB6MS5DCTdfHshPaDKou63waOj2pif2leHO/y5HplTc
	AtEaZWv+C4p5/T9Jmk146CsCv7Yju8UC1kTz4KNCQA8aICbo7qBVbKepbMWG2MMjQQ0mODyxK//
	ejYxS4BkApr3P6I+GQwBftCWxBl99yKKoqJ11c3dLD5fCMlwHUpmfJY5Xbi2IY66VRvnFiGMPw+
	1OW+dvKE9PJq/p4W2rnuUGChs1QNbBzG5t7lwgGwu2H/FZCUM7W7VA0g==
X-Received: by 2002:a05:600c:5395:b0:493:bd2f:c5fc with SMTP id 5b1f17b1804b1-493df074984mr53217985e9.15.1783424153317;
        Tue, 07 Jul 2026 04:35:53 -0700 (PDT)
Received: from google.com ([2a00:79e0:288a:8:c86d:9b87:b8af:84e9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493e0f43912sm57953885e9.7.2026.07.07.04.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 04:35:52 -0700 (PDT)
Date: Tue, 7 Jul 2026 13:35:47 +0200
From: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>,
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 3/3] man/man7/landlock.7: Document
 LANDLOCK_ACCESS_FS_RESOLVE_UNIX (ABI v9)
Message-ID: <akzkkxh-9CUYG69k@google.com>
References: <20260515165753.8830-1-gnoack3000@gmail.com>
 <20260515165753.8830-4-gnoack3000@gmail.com>
 <agekjdIfWwu581gH@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <agekjdIfWwu581gH@devuan>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5702-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,digikod.net,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[gnoack@google.com,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:gnoack3000@gmail.com,m:mic@digikod.net,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack@google.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7D7C671AFE5

Hello Alejandro!

On Sat, May 16, 2026 at 12:56:42AM +0200, Alejandro Colomar wrote:
> On 2026-05-15T18:57:53+0200, Günther Noack wrote:
> > Document the new LANDLOCK_ACCESS_FS_RESOLVE_UNIX filesystem access right,
> > which controls lookups of pathname UNIX domain sockets.  Restricts both
> > connect(2) and sendmsg(2) with an explicit recipient address to UNIX
> > sockets created outside the Landlock domain (same semantics as
> > LANDLOCK_SCOPE_* flags).  Denied attempts return EACCES.
> > 
> > Available since Linux 7.1 (Landlock ABI version 9).
> > 
> > Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> 
> Reviewed-by: Alejandro Colomar <alx@kernel.org>

Friendly ping on this patch.

This feature had not landed in stable yet at the time we reviewed it,
but now it is in Linux 7.1 and would be ready to pick up for the next
man-pages release :)

Thanks,
—Günther

