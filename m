Return-Path: <linux-man+bounces-4928-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6E2GNAWac2nnxQAAu9opvQ
	(envelope-from <linux-man+bounces-4928-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 23 Jan 2026 16:55:49 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D1578137
	for <lists+linux-man@lfdr.de>; Fri, 23 Jan 2026 16:55:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 83584301A7D3
	for <lists+linux-man@lfdr.de>; Fri, 23 Jan 2026 15:55:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73B94279329;
	Fri, 23 Jan 2026 15:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FMVSElgN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C366A28BA83
	for <linux-man@vger.kernel.org>; Fri, 23 Jan 2026 15:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769183702; cv=pass; b=HDoNfxbBHrJlG0uRysAfKSs42EfT1h3fiNkAfZAluFS/qETvFfMuyZo5fKmo4Mo28nuAGco/813mlkCD+r4bW+LII1BkMc++mD6dFwIQ5iuo0Iwnsfz5SfoLGI1YCdsn0x7eb2cpNV14rQxPizDhYCgaAlOLJPg4MywqnsJjZBQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769183702; c=relaxed/simple;
	bh=aGwT6eSYJAyJpvMgjZBju3yJ1wXNIKG4aC+oQarr9pI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OE64yBxf3HyJSvJp3s8G+QBtVuZ9/RGb8W14Jl9rx7ukOE1v66d0Kzey4zqEkoRbxckbbJV1PodcDYuTjne40yax09/K9XOjVjv1I4fdn3jX6SyYcxy+gs4r3FbVp434ZyTGQtb0+f1C05Ugpf+Gsx/CdPfhQBPkchcrcUjO6F0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FMVSElgN; arc=pass smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-59de0b7c28aso2220444e87.1
        for <linux-man@vger.kernel.org>; Fri, 23 Jan 2026 07:55:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769183699; cv=none;
        d=google.com; s=arc-20240605;
        b=jbuxCdAs5tQho7qCZ31lqjHlbpuKhCtUtCsLRYHbptsa3Cjgu5J8ycJWBH50oSp8/c
         BDRPyDs4h8NNG0BVhiTSy9JBQnkSyoT26TK5HSRuB/tnjglJgb+7SYbOun+dtXp7wm19
         liP6nxWjLh2TyEdu4lLytntfqHbGeA6VRw0RizvU2ApyftZoeMDf75q2qkRKgB73Bu9V
         XkovTL5yQ21hdr1GOOHzAlCeHwUkYa1fvUKkbwzAfjUXUcohgkvtuwJTqMSYi0oeNXp0
         rekqed4M2to+M/Cg6kRlxicbPO6dgPcLc/U869ldZI/2iTV74o/wZxvIKpKSCEAou2SK
         fYbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AAGBim0+jkFFEwpGOwUBTaUGiilyTTjmb9x5/GQOmxU=;
        fh=ZY7RUJr7yNOVXM5n/4w1E1t7WEsC7VBaZSK/bRbzwbw=;
        b=VRcvUeByDoPkai+aSI4J0RcxeRLkGGYqKAnIp3muAI1whPyZld1Bf0NCYz6SgdzLvI
         qOEGqtAQA9kFhATKG0k/b1N8MhybRI3OKjSCqXix16ZeSXZJXf6Z8sB/zuo89xwX3c0T
         +RwtswzAglKEUD7Bsef3RIERNNueg6ML6GNRQJaGfp2hZKOUIdM6RLcbIN7C0hrDp+xu
         Qc20bFGWCGZ4kbttLBYEUEpkPA4thT4SKCEehf8ZI0B6f681Im7ZVKV0po2J1YC/htb0
         ZRLnY/F5wbA6/K+/ZGCZQyYgreEFkjtbchw/yyP3KQw/RNGCR9YtIFrn/AH+1oeDpJQ1
         ijDQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769183699; x=1769788499; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AAGBim0+jkFFEwpGOwUBTaUGiilyTTjmb9x5/GQOmxU=;
        b=FMVSElgNQ55cYk3kr9w7hQENQ6XWFdMEc8GrI90UUy00b9um20wnyfyuB/1SJOYjAI
         1lghV+7lf2Dw9foWYtIAIRtlqxOj7UOB/uCPD0+dJLNEngkuia+FJy0KLlHQB6rtmyUe
         Z2zHdt7gGOR6FQzWC+1DLuKq8GiLeXkxDyUFA9HhQFAYX+jies+fdEfrtEyOI/iTgz7u
         NJb+flpx7pj6n2LjKkoItWhHZGlNNVNw4abpgKrds7x0fK4L4GNrdKQzmZHhvZ/yAZWB
         HVcATatVwQSDjOPZnbmRPya9KY/36CJCiBer24UDQZkyeD6+liz/y9+pXrZI9naIqHOe
         XeeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769183699; x=1769788499;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AAGBim0+jkFFEwpGOwUBTaUGiilyTTjmb9x5/GQOmxU=;
        b=bXfOr9l2w3cids7rQRmtgfhuSv3lQqJlC3RuH5NV77V2dbYgjMxK9K51yuSi3z1I8o
         miUPu398I9o3c03bCiz5lfmV1bHATWPnNwjN1wyVh7+R3uHDjTSByj19R8CmzQIVeNfW
         PivoIlgDTtmcAeW5QbMAHA9aQBxel9Si+aby2y44drNhnGWD4jhJqcExXRhSWL9TH6q/
         k/Xd41LcIQGforQJLx+vWPRPGiXNzPMw7fZfHWJU3MEg72/TA/XpvtznITnk+JEwpcEi
         jWhFtzqO2GN5U52hJ6Bn0Od9TlAXWGJn2bNulT/AtHMh5woXdAAgCb6PMvqHe8uDXbEm
         T7kg==
X-Forwarded-Encrypted: i=1; AJvYcCXDE9lkIOQArIuH509bHKyZqrn8PzykDKIpR3gayK1V+89g8Ab5ViWWUJdMwDqdr/YOiY8kbqztSL8=@vger.kernel.org
X-Gm-Message-State: AOJu0YwC0lcOGIYw+rhfMNCN7tiilr1msIUBlBmxdIQjauAhbiIqCpT3
	g9Dt7Sa2BdZTE6dG2VCDUs06zi1koIw7j9nGWtPQ2ZKt0DSXfD0Pgy0cHhDmBJSCT+iOwPiAnVT
	eDkQXHB4+GyBz0IveYZXMGXPUNF6hNond7Q==
X-Gm-Gg: AZuq6aKZMo7IUzWEsAxQPAlxxllz/AMoroA+DZ1oopwu/Mrvojsd9rnBmSP1lCImJlS
	AiXbB0gS5SKA5O8gdcn8rSIRYWzyxA+z6elQa+Pw8PZtKZClUq0Bg5USECOcIrvBsrjxj0YeDWA
	SqaFaUc0FDisOuGqwLCF3GfeWrJ/RJFaWbpztKEp5MU0MC3JHjzLrY6+YA5ZxzHddLuLMtAmGyn
	SmmkiCxw33eVLCCar/tRWnci8Dfscgm1ZFhJ8ko4aYffSRK/R5Rm7kFPQew3cYIGfHNTnybjAG7
	/ofR+qUK95TNkBaEyZtAPAy3zQ==
X-Received: by 2002:a05:6512:128a:b0:59d:e00f:f802 with SMTP id
 2adb3069b0e04-59de4a2b712mr1095185e87.42.1769183698668; Fri, 23 Jan 2026
 07:54:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
 <1a421b5ee130c1d5892791060b6fdf8d911d8362.1769047228.git.sethmcmail@pm.me>
 <CAMdZqKGj6r7RcYSTGgvFj_z+xDJyOqFv3oc8g6tT+Gnh4W-NQA@mail.gmail.com> <aXOVnR99sUTBFmLJ@devuan>
In-Reply-To: <aXOVnR99sUTBFmLJ@devuan>
From: Mark Harris <mark.hsj@gmail.com>
Date: Fri, 23 Jan 2026 07:54:47 -0800
X-Gm-Features: AZwV_QhxJ7PuT8Q5fIwv5MlMgx0Fd2bFUdpvBDRMOqrDTBoeJi1PJR2OgP8yYXM
Message-ID: <CAMdZqKF3JotQrHase3wb5Vjti=kpKyUChE=4OeqYfkDv3-B98g@mail.gmail.com>
Subject: Re: [PATCH v2 01/23] man/man2/clock_getres.2: HISTORY: Update first
 POSIX appearance of clock_* syscalls
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
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
	TAGGED_FROM(0.00)[bounces-4928-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,alejandro-colomar.es:url,pm.me:email]
X-Rspamd-Queue-Id: 32D1578137
X-Rspamd-Action: no action

Alejandro Colomar wrote:
>
> Hi Mark, Seth,
>
> On Wed, Jan 21, 2026 at 07:37:33PM -0800, Mark Harris wrote:
> > Seth McDonald wrote:
> > >
> > > clock_getres(2), clock_gettime(2), and clock_settime(2) first appeared
> > > in POSIX.1-1996.[1]  SUSv2 incorporates POSIX.1-1996, so listing both is
> > > redundant.
> >
> > Technically these functions came from POSIX.1b (1003.1b-1993), which
> > was a set of optional realtime extensions to POSIX, published as a
> > separate document.  POSIX.1-1996 integrated them into the main
> > standard (1003.1-1996) as part of a Timers extension.  In 1997 X/Open
> > adopted them to SUSv2 as part of their own X/Open Realtime extension,
> > which includes the POSIX Timers extension and other extensions that
> > had been added to POSIX from POSIX.1b.
>
> Thanks!  For now, I think I'll take the patch, even if the commit
> message is factually incorrect.  We can then do a future round of
> patches researching those less common POSIX extension standard.
>
> Does this sound good?
>

Sounds great!

 - Mark

>
> Have a lovely day!
> Alex
>
> >
> >  - Mark
> >
> > >
> > > [1] ISO/IEC 9945-1:1996, Section 14.2.1 "Clocks".
> > >
> > > Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> > > ---
> > >  man/man2/clock_getres.2 | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/man/man2/clock_getres.2 b/man/man2/clock_getres.2
> > > index 5f8ed14f1555..1a486c886229 100644
> > > --- a/man/man2/clock_getres.2
> > > +++ b/man/man2/clock_getres.2
> > > @@ -369,7 +369,7 @@ .SS C library/kernel differences
> > >  .SH STANDARDS
> > >  POSIX.1-2024.
> > >  .SH HISTORY
> > > -POSIX.1-2001, SUSv2.
> > > +POSIX.1-1996,
> > >  Linux 2.6.
> > >  .P
> > >  On POSIX systems on which these functions are available, the symbol
> > > --
> > > 2.47.3
> > >
>
> --
> <https://www.alejandro-colomar.es>

