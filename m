Return-Path: <linux-man+bounces-4992-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mC1dHvFIemkp5AEAu9opvQ
	(envelope-from <linux-man+bounces-4992-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 18:35:45 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8284A6FD8
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 18:35:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 848333019124
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 17:35:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9966328B5E;
	Wed, 28 Jan 2026 17:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PI0ZTvRD"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E00329C73
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 17:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769621741; cv=pass; b=DpCn5yyDg4RCosV3b9Gshf+Jz/Xk0oIhWDc8UXjy5UqpHKbL3FIlVtr/P9y86pUD5HXYcHjtOtK9+RBk+nUvdyTMXG473tmxKgtnUYSesSWJCWdR/DkWe1qTF5N8MzpfyHhgfHMEaL626p1XEU1ZI5jjuhRcBlaI10VOT3C9u0w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769621741; c=relaxed/simple;
	bh=b5v1lw86qkMcpupMahSO1xWXCCFOBZHnR2wepV7iSDw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LzS9ijJ2PK7PpfFviyThG7HU08JSvMwbG+/DtZf3djNSgSPXrq4SGk9PtQ9HMKC68cU1WZ+W+4hZO0g+z1mQTWVvbgsD5Df2Rft9SXO/RcMhH9JgROhdgMNvdHqH3d/8awjp80oFeeCeXzWsV47XKHU6wK/mbxS7pmYTn4mOfB0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PI0ZTvRD; arc=pass smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-59de2d1fc2cso43421e87.2
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 09:35:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769621738; cv=none;
        d=google.com; s=arc-20240605;
        b=PTeNX/Kn91hH+Mv2rNKXBFBIsrHgWfl9VEUePGgYdMbrPvEh4dXUPcajBQaB5yY+9I
         27huW7tyZscAzlBVYtQKFq/DV+Hkwna44By6/ND7dTq4Zv07fK/C6DCkLIAAMdf0Vjjo
         K/2SlBZDlORwtbcCXoDIB8lwXS+K4t8m2dNFmzhQDievA9FZc6/TYyS5uVMoEHlC5eFG
         fELf7W6EBoj8TLtHwqjMGxDEjBCVRo/r++OlY4Z+h2uHoVYh1Gwf0nP+VoYXdwLw0E91
         RQgVGGdrHxgLK3u7U7mqj1mfmjH1a3xhQiLhFxjjwhZPHnnBNWC+ODSVsC3H2EFqNNXu
         2akg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=h6QtUO84fHAyyp+NRwvUH9e3lsqrrWY4UpLcgr1yxSw=;
        fh=MU5KU+A5JhoDyYskVQIDbsmIYIHgY/d6+1udD6HFl94=;
        b=cwkd3bnJyEMU6SuWWinT74dxlH4Gqju4YGV7BXX9BvQJuZ/qxaO+yZcbOZCIsrv2U+
         brclYC917Cur4ViB2Zi2JXuI8jYBuxrtWEjBA6yvPm3l6+6BfWU+lrgh48jFP8xQXw+j
         r1IsxPHC4qRfFufovM+TPpqCaP3VvpnM6XDMgv7vZZW+qSMb2oP+unkHGYuw/yiuZ0TB
         zzrrINrtYH2tZDqhrvHL5f8nDVS5tvmwF+k50vBBTd3MiywJn0SqSVjTpKUFp1iEELLe
         YNNIGaiCn+xdekdPludrhz8e7vFNBeRB103FqYYIMYzhg2gHIHeEAnupTm7IT2Zn9dLE
         dAbA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769621738; x=1770226538; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=h6QtUO84fHAyyp+NRwvUH9e3lsqrrWY4UpLcgr1yxSw=;
        b=PI0ZTvRDwyVtlD4xTAv/MP82SBXZvuH50AvI/udoh1DrXGBym+LDWloTCrjWqnE7TW
         R8ZP0ZgrQ9mW+pbRuz1Sli9K9g/Ae16QkMdr+YdsxbIDTLJ/qs24a5aXuxNhZ1saz9l8
         0Aagj75VRsEMChvtnWeFgOXZjzoO+Q+b5Y9qh9oCAt7RmOwmj+aEqxQssJjMlCv2aAqC
         4u1jbTV00qJVZt2fgxFo2KrLhV892dPSb5VMj6qZVGao5IErecXQ+m1sDM9IPyLttA0r
         2idzk/SJTn2pnx63lczgA1TxI1oODdgA2VcoAY5d4ZUPuDwhXhR95jbsrQ4AhlqVTkaF
         Uj9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769621738; x=1770226538;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h6QtUO84fHAyyp+NRwvUH9e3lsqrrWY4UpLcgr1yxSw=;
        b=esz46hhhXfLQTXWxvf25xwaANbFgPxvH950gr2BVSaAIRPadp6DaiOYxDQoDgf/Zmy
         UBB+515MzKEA5s7jLANWrnlXNyReJ+heJQcXxTTby7Me/vZqaAeWH+Wrs1ngByvSbBGU
         V8tzRiWRVaGB1ZnNG6eG4LAox/6Q9Zu8VKXCEg4mUOwyBj3Ipg6cpAHhkzF5XS6j5+pt
         jqXR41UZU0kNG8pc3VTj4/WcwqSdZqa1Cuha2LL8PlAPzMSFrPxhh8lHQ4NPjBJNIM64
         PEt6Ba1cNDKVvwGq8zXcFN4pB0DicsFQd+HSppjOL822CYsCQcV7zWG34anCqmszgJi6
         8hEg==
X-Gm-Message-State: AOJu0YzxVih4Rwci5btop4OsGa7Uxey3cDSMRG31caaYwSFyiIGE4eIz
	5/z5DBlYWod6hwTDPvmb5gDws276/tjsLRBsz/m35d0gg7iqxJFaxhjrUGH8wgm62rmRVLq6tpU
	vtk88YQ4iMPGps2xO7YRwkpnr46qok0U=
X-Gm-Gg: AZuq6aK/++Z4DhJIPVsmjic/DAHA02CkcFiSdnuSZjt8RcM02yc81YxNS1+hcK4bAZg
	Miacj/P/X/Zw0+w3HYs+Y13bQEwqvbXpHUqRcMMXSELXv7/N7iJ0k6hfzK5vIaGm+04ZZ4S2pgc
	R2o9o9FWWf2A7UR0ouM+odTsvhBrXvlFy06YSJuvNr2Mf1aHJsopiGXJ0iHZ8oU9ikh40O8OWL3
	8RXygTCQ5yjbd6/F12q24Gt0cWXBvlwvHlVcypbdKLdoQSF71Z1Vc1opItArD3IhHoSySONZaFC
	l/ET8vC+DMsxHlzWVjcv4YUC2Q==
X-Received: by 2002:a05:6512:3d1f:b0:59d:f545:f2e0 with SMTP id
 2adb3069b0e04-59e04013afbmr2286003e87.6.1769621737792; Wed, 28 Jan 2026
 09:35:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1b8aea00296c530f2a3a79158a98d44a46a795e5.1769581372.git.mark.hsj@gmail.com>
 <aXoixaxyo_OkBRJ_@devuan>
In-Reply-To: <aXoixaxyo_OkBRJ_@devuan>
From: Mark Harris <mark.hsj@gmail.com>
Date: Wed, 28 Jan 2026 09:35:25 -0800
X-Gm-Features: AZwV_QgcCNRrLB8gM-mN-p2dk7ZdEfMWbvyia0Lf3Gqu8PejzUPfJ9qfCASQ0do
Message-ID: <CAMdZqKGEPqYSP7wdGht8jgqfpeFVZty2fncp=TN0dQ9PVs04eA@mail.gmail.com>
Subject: Re: [PATCH] man/man3/timespec_get.3: Add ISO C23 time bases
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, 
	Adhemerval Zanella <adhemerval.zanella@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-4992-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sourceware.org:url,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: E8284A6FD8
X-Rspamd-Action: no action

Alejandro Colomar wrote:
>
> Hi Mark,
>
> On 2026-01-27T22:42:21-0800, Mark Harris wrote:
> > Document new time bases TIME_MONOTONIC, TIME_ACTIVE, and
> > TIME_THREAD_ACTIVE, introduced in ISO C23 and supported by
> > glibc 2.43.[1]
> >
> > [1] <https://sourceware.org/git/?p=glibc.git;a=commit;h=f28a11e43f40>
> >
> > Signed-off-by: Mark Harris <mark.hsj@gmail.com>
>
> Thanks!
>
> > ---
> >  man/man3/timespec_get.3 | 64 ++++++++++++++++++++++++++++++++++++-----
> >  1 file changed, 57 insertions(+), 7 deletions(-)
> >
> > diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
> > index 79bb82226..d2be50fd4 100644
> > --- a/man/man3/timespec_get.3
> > +++ b/man/man3/timespec_get.3
> > @@ -17,6 +17,25 @@ .SH SYNOPSIS
> >  .BI "int timespec_get(struct timespec *" res ", int " base );
> >  .BI "int timespec_getres(struct timespec *" tp ", int " base );
> >  .fi
> > +.P
> > +.RS -4
> > +Feature Test Macro Requirements for glibc (see
> > +.BR feature_test_macros (7)):
> > +.RE
> > +.P
> > +.BR timespec_get (),
> > +.BR TIME_UTC :
> > +.nf
> > +    _ISOC11_SOURCE
> > +.fi
> > +.P
> > +.BR timespec_getres (),
> > +.BR TIME_MONOTONIC ,
> > +.BR TIME_ACTIVE ,
> > +.BR TIME_THREAD_ACTIVE :
> > +.nf
> > +    _ISOC23_SOURCE
> > +.fi
> >  .SH DESCRIPTION
> >  The
> >  .BR timespec_get ()
>
> LGTM.  But would you mind separating the patch into one that reformats
> the page without adding the new time bases, and then one patch that adds
> the new time bases?

No problem; I will send a v2.

>
> > @@ -39,16 +58,49 @@ .SH DESCRIPTION
> >  For a particular time base,
> >  the resolution is constant for the lifetime of the calling process.
> >  .P
> > +The time base
> > +.I base
> > +is one of the following:
> > +.TP
>
> Same here.  I'd like this to be part of a pre-patch.

Ok.

>
> >  .B TIME_UTC
> > -is always a supported time base,
> > -and is the only time base supported on Linux.
> > +A system-wide time base that measures real (i.e., wall-clock) time.
> >  The time and resolution in this time base
> >  are the same as those retrieved by
> >  .I clock_gettime(CLOCK_REALTIME,\~res)
> >  and
> >  .IR clock_getres(CLOCK_REALTIME,\~tp) ,
> >  respectively.
> > -Other systems may support additional time bases.
> > +.TP
> > +.BR TIME_MONOTONIC " (since glibc 2.43)"
> > +A time base that measures time since an unspecified point in the past,
> > +where the time within a process will not decrease even if the
> > +system's real time clock is set or adjusted.
> > +The time and resolution in this time base
> > +are the same as those retrieved by
> > +.I clock_gettime(CLOCK_MONOTONIC,\~res)
> > +and
> > +.IR clock_getres(CLOCK_MONOTONIC,\~tp) ,
> > +respectively.
> > +.TP
> > +.BR TIME_ACTIVE " (since glibc 2.43)"
> > +A process-specific time base that measures CPU time consumed by
> > +the calling process.
> > +The time and resolution in this time base
> > +are the same as those retrieved by
> > +.I clock_gettime(CLOCK_PROCESS_CPUTIME_ID,\~res)
> > +and
> > +.IR clock_getres(CLOCK_PROCESS_CPUTIME_ID,\~tp) ,
> > +respectively.
> > +.TP
> > +.BR TIME_THREAD_ACTIVE " (since glibc 2.43)"
> > +A thread-specific time base that measures CPU time consumed by
> > +the calling thread.
> > +The time and resolution in this time base
> > +are the same as those retrieved by
> > +.I clock_gettime(CLOCK_THREAD_CPUTIME_ID,\~res)
> > +and
> > +.IR clock_getres(CLOCK_THREAD_CPUTIME_ID,\~tp) ,
> > +respectively.
> >  .SH RETURN VALUE
> >  .BR timespec_get ()
> >  returns the nonzero
> > @@ -78,9 +130,9 @@ .SH ATTRIBUTES
> >  .SH STANDARDS
> >  .TP
> >  .BR timespec_get ()
> > -.TQ
> > +C23 (though ISO C doesn't specify the
> >  .B TIME_UTC
> > -C23 (though ISO C doesn't specify the time epoch),
> > +epoch),
>
> I don't understand this change.  Could you please clarify?

Previously it only listed one time base, TIME_UTC, so it was clear
that "the time epoch" referred to the starting point of the TIME_UTC
time base.  Now there are multiple time bases so "the time epoch" was
changed to "the TIME_UTC epoch".

>
> >  POSIX.1-2024.
> >  .TP
> >  .BR timespec_getres ()
> > @@ -88,8 +140,6 @@ .SH STANDARDS
> >  .SH HISTORY
> >  .TP
> >  .BR timespec_get ()
> > -.TQ
> > -.B TIME_UTC
> >  C11, POSIX.1-2024, glibc 2.16, musl 1.1.10.
>
> I'd like to have the new bases documented in HISTORY, which will allow
> documenting also support in musl and other libraries.

Ok, added in v2.


 - Mark

>
>
> Have a lovely day!
> Alex
>
> >  .TP
> >  .BR timespec_getres ()
> > --
> > 2.52.0
> >
> >
>
> --
> <https://www.alejandro-colomar.es>

