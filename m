Return-Path: <linux-man+bounces-5008-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IO4CF+eSe2nOGAIAu9opvQ
	(envelope-from <linux-man+bounces-5008-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 18:03:35 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E4EB2996
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 18:03:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5632F302352B
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 16:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E40E83446AF;
	Thu, 29 Jan 2026 16:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cqfx1dWX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5751B296BC1
	for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 16:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769705933; cv=pass; b=LHtc0FyGcK3giTIZjnaZkvmub+CMhN4znHEN6ibXnxLjTh3JMKBT6Auda/8aRDTDn1O7h6H1WDE96tKqdPZMIBs/VlXyiuT1sxVFUpagQkWccHAx8G7XQY43CuZkM1gwi1FWAnRm/2lqv8os4d2oN/plGJylKepdIgehUUJCjik=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769705933; c=relaxed/simple;
	bh=GatXtssq6kcDEM50MQndumOmJMVg9vintWvh2G67O4s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DWY5QB4NrnG1yzDOMrTRM6pRScVEEq6srQeN+P0YGlELmUkuQxdh5norSQ7OGrd04aWrzisZBjKzqVhfC0mHmmTf/qlZdQrRzqjFHspWI1WPInE6slUAUZizUhfHIRe/8ECqFXPoh9XZ91nNixabcm3zzxX+GISVJfwIYGpjRhE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cqfx1dWX; arc=pass smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-385c7507bc0so10097291fa.1
        for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 08:58:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769705930; cv=none;
        d=google.com; s=arc-20240605;
        b=jk5Ikjk1o8M8LndUzOPEpja4jxasitQom8I0K3M7ejcrqhIs5jINyglHXvE41B66Bt
         5GwlVIRXTfbHNxNwesZG5LM/xnrQRrhLBoXi9WSAv3cxQcXs39JSc1kd4cgVOl39JhVJ
         ux4+Hy07BzIHzV/8mlJf1BV+pS8i9ymoKHWx4IjEAsXEbeKnQIMbn881yQySzIFCKVLs
         7TfiCY+ZZUpHEJz/M88fyiI7scpNcY6OuWJ8G1f4Fl+uimAeZaQPbfFsfYDCAbFcAqTS
         V1gjMvTPhq5+pAOIgSyLPIZo76Oyx6UyXgVzElzonKJK7r9sQWqY3uZItaKVeDjyaieR
         M9QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lp+Y7MJlpT80JrhKLvn11tV8Hs2e+VTrsfCBIkeWJfo=;
        fh=kTbk4pccRQ7ywKItoF6eFeVMUIye+84NI5zbIP4rQ9Q=;
        b=YSGifqiea7GFRKkNet58QaPJOx1sNRoP+BAWizhtVmYeeMxhQZrtOfbIiAGsEQUn/W
         n+HK6cOBjhH+WxIHEJ+otNtAbR+g+WQwMkEwZeD80lGEH2fZQVwOPfXooz6cuGUA6VKq
         lmzjObJDXfFeiym0nnzGBCeHPkiZNAteVR1jbiojWM9uCqvuZh6fsdHeFVWyoDt73mSk
         Fyb2Y0CjjsHa9GF0FHppx/FEWYztZ2WEuOv2iIU5sK96FVnFROZkRR4GQnntOEjB0CvC
         Jq0WW9GD31zhzS5egnRGfexvPEMAM1a9EDaww1Ttz5BOECacpqCsYytYDRWtJ31psVh7
         ggqg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769705930; x=1770310730; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lp+Y7MJlpT80JrhKLvn11tV8Hs2e+VTrsfCBIkeWJfo=;
        b=Cqfx1dWXLZ3ZvvUmlB8W8IG6QeUtlPO4IRY86wDni1zXgW2YmwdD1o9uxHqp+Dp6vw
         6ePd3QWU2qMqEfqeIdZ9RGNGLAFRmcF7ScovN7FEz8HfK8u7PaGncADUIyD/nQuWUBsa
         wQGP1K0MIOUcSE9SzrSt57lJySq9Z3Ow/nZsPzA2eW/jXQC6LUcGH0SGX3viy0vhuV6a
         sHdLFhUXj7WNY8/hSdMronXBjS4xQmfIVNbvTe7gN63wTgeSqBz769w0+qvY13hL1hqw
         VHOTp+uhQHVgHwWZ56zMs5KFLRi5K8cJ/JhME+GMKDcN974YaeCfzeqkzI0Dg43OjCBi
         IVgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769705930; x=1770310730;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lp+Y7MJlpT80JrhKLvn11tV8Hs2e+VTrsfCBIkeWJfo=;
        b=tO7KC4LFI9+Yg1D9J4RasDhobXR7ooO1UvJJvWxzQhueq83auPWIAn9RkjvMUKxmK7
         QVtC0JVzIn+qJozp7uN3sRaVZadKb5WKIC2khtLORzhOPV/5xKy8V5fRzGlfzFK8wvsR
         Ryt8+ad6s2NTH1MDzkd5LmsFMSdyZdESCz9yhrR33Pd+OFC/ZQAbSA5U02B/kJ624OtP
         Ry1Kp3dCzGWoaw/gEnzmqCfydve9OBZuFiH0waYe5y4qpj8m3Oatrw9W7kt6S2bj13Ys
         9gRyCnf2a+NVvUnEgryCBOA3DqNalip3TH5sHZ1Ei2h9uXdvFO+Wa+41e9HxlHnv/Kx7
         IEag==
X-Gm-Message-State: AOJu0YyxdZsa4tTXDb+kDgWGiasu2N4i+/QAuU05NMS+7rGXr9aSLeX7
	SUKSlMxLY7QPdiLqfw0SG/LptKfX9d6yV1AmiJuf1pYeDTBTJ9xcR9S03FV2kCup7iOOgXVWDqD
	PPyQMBlMCgQD09uwUEdiN2y90ACY+7hB2Wg==
X-Gm-Gg: AZuq6aJALys+bTNi0i//haBUv3aKZheJhhescBuYWe0nuqhg5h+1QHChyyGHWogVqvK
	V6UcoLwANqV3Eoi6YjR7M9D2DA2V3Z4cR4TtASkZ/ohkQAtY++0YfD/H8KKhvIv36HSmPFiHQeI
	Gd+NE54FHYHmBpmDB0qdSCAEiKNjJlgeH/dLHBRBN4VRO1Qs5Yxz3yIa+Df4n2yaAV74jMqldR4
	P+A0EZZ6t2zdqUEK0wnFOfW3mUCk09Gk1a90Ri2E1S5xcxkBkza9ze+IqzbbfZd1x7UzvjSGIDm
	XktX5KFNM8byZg2ukQ/RvJRKJCLg0xRJaA==
X-Received: by 2002:a2e:bea1:0:b0:385:e702:e795 with SMTP id
 38308e7fff4ca-386348e450bmr17347701fa.4.1769705930264; Thu, 29 Jan 2026
 08:58:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1b8aea00296c530f2a3a79158a98d44a46a795e5.1769581372.git.mark.hsj@gmail.com>
 <79f235d4b360689a290d525c36c3a06a36e5164a.1769619403.git.mark.hsj@gmail.com> <aXt76inr6vGh4lod@devuan>
In-Reply-To: <aXt76inr6vGh4lod@devuan>
From: Mark Harris <mark.hsj@gmail.com>
Date: Thu, 29 Jan 2026 08:58:38 -0800
X-Gm-Features: AZwV_QgHrjDT0by_K7HTUKL0XSQB4g_uQxnWi5wdFxHuntEzgeb2KdZOwE_wres
Message-ID: <CAMdZqKFuBUkL9Hg9Bc0aJt4v6ZcwGjYsoVBHeXYC2NvLw=Rbpw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] man/man3/timespec_get.3: Refactor to prepare for
 new time bases
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5008-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 57E4EB2996
X-Rspamd-Action: no action

Alejandro Colomar wrote:
>
> Hi Mark,
>
> On 2026-01-28T09:33:03-0800, Mark Harris wrote:
> > Add Feature Test Macro Requirements to document functions and macros
> > that require ISO C11 or C23, and arrange supported time bases as a list.
> >
> > Signed-off-by: Mark Harris <mark.hsj@gmail.com>
> > ---
> > v2: Split into two patches, add time bases to History section
> >
> >  man/man3/timespec_get.3 | 32 ++++++++++++++++++++++++--------
> >  1 file changed, 24 insertions(+), 8 deletions(-)
>
> [...]
> > @@ -78,18 +96,16 @@ .SH ATTRIBUTES
> >  .SH STANDARDS
> >  .TP
> >  .BR timespec_get ()
> > -.TQ
> > +C23 (though ISO C doesn't specify the
> >  .B TIME_UTC
> > -C23 (though ISO C doesn't specify the time epoch),
> > +epoch),
> >  POSIX.1-2024.
>
> How about this?:
>
>         .TP
>         .BR timespec_get ()
>         C23, POSIX.1-2024.
>         .TQ
>         .B TIME_UTC
>         C23 (though ISO C doesn't specify the time epoch),
>         POSIX.1-2024.

Ok.

>
> >  .TP
> >  .BR timespec_getres ()
> >  C23.
> >  .SH HISTORY
> >  .TP
> > -.BR timespec_get ()
> > -.TQ
> > -.B TIME_UTC
> > +.BR timespec_get "(), " TIME_UTC
>
> I prefer the format with TQ.  I wouldn't change anything in HISTORY.

Ok.

Changed in v3.

 - Mark

>
>
> Have a lovely day!
> Alex
>
> >  C11, POSIX.1-2024, glibc 2.16, musl 1.1.10.
> >  .TP
> >  .BR timespec_getres ()
> > --
> > 2.52.0
> >
>
> --
> <https://www.alejandro-colomar.es>

