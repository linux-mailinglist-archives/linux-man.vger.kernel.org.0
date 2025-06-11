Return-Path: <linux-man+bounces-3134-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E51BAD583D
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 16:13:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9EF73A65EB
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 14:12:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A572E29ACC6;
	Wed, 11 Jun 2025 14:12:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V2gvuwWZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6AF294A0A
	for <linux-man@vger.kernel.org>; Wed, 11 Jun 2025 14:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749651139; cv=none; b=sJbiv8y8dKx4SFKgfUttTqpBYMxIs0N290CzRivcn26/URWprwYhUlNRj8j/QFYGIJ7eNqz0wjl0e6+y8ZalYv2oIiDbCmWEpKD082RFwNZbwYcAnRgZLD/FtgOTdAFsmYNmDV/xTxVqjxPnyDLQbCJ+XX7RHwrEzA5zXSc6Avg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749651139; c=relaxed/simple;
	bh=U1rsLem0NigR1mbHvLaw8hE23XRW4GdBKrRBUSBfhkA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PR/kEhWVBEbd3BX8D3YMUzs3bUWye6FVoUvboEc1iQWNHkWH1o45+50YqRdf6iZs3If/YvHcAK1dsBTcgRadS6FbRZ87E9/LE+Ba6JZIoEIp5xEXOIzRVU9zyl3ok42Umi8gwPASsJP/eqXVnd6p8BP3IuIKqfosWMvZSAbUwYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V2gvuwWZ; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-60179d8e65fso7356557a12.0
        for <linux-man@vger.kernel.org>; Wed, 11 Jun 2025 07:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749651136; x=1750255936; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=W3kZbWBck7V+AmEc3kNNgK0nuUdmqQfleOgbaJFJzoI=;
        b=V2gvuwWZxvhDlYJLCjeYqXJ0w1Sf99yQRTHteQnrzodR4z50/r7QoBQKxvkc6EEN0W
         iH/x2Y8pEY7O/E1vXN1PNmovhlIt3cN+vXb04tG+jlplBVeP8V6jVheUpm+LLFSFmU8/
         9TLmlauXx6ywUPVfxysNr7TDudAwakC/hO3NtZ2mIankYAQ8TlkrKvWc471+nS6nsJNG
         0+a6dTq3eopSzH5FswbJ0oK97qyHB0h6iU+UX5Toa2kARUSENNIu3fJJmsTX5mzrdYa0
         o6wfOh2xFQH/GsNUGa/nFo+nIS9qy4b7PpLJWEYSWdXc74ypNqCzus90hwYR2CxD4Ocl
         bdgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749651136; x=1750255936;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W3kZbWBck7V+AmEc3kNNgK0nuUdmqQfleOgbaJFJzoI=;
        b=wkM3BMpYmlHSVAg1bfBMe4qkG7tDLT0iZgiLtBNgL9wWPlRoxCxMfBzaw74+t5YDbx
         BqY7DrpLPTfcma+n6KaGyymQSbi+CFZByna8usgZmhW1v4aYs2QubyXDZ2LRvcmWJ3hT
         SKx1QQu2mq03lnGF9hgIrJ6115g8/t+A0jigfN9EGS8QFBEZSLY26azlJnifILdi5SUF
         LmZAPK8paVBeu9Q+IGWGZMA4JqFGoUVU/aWYg+PVhL7ly0Ivbu7RON+zA0kgWf0UZArT
         aK/9+C90vrK6axf8gARvi/M+r6YZEUMN8kGIujltcD36BPSZpypLlc3/N2cU1t6tPWpl
         Bcgg==
X-Gm-Message-State: AOJu0YxKDE2xxk2++7z3fjA8qECbJSAge0lATZ3/OdcEi9UBfKAWkgj0
	mbdZtkvSm5j+mPEgxcqHmSthUqZB+qxuC6huo5eVCq35bNBYt4RNHZ7wBl+Nuspfxwkq5qd1OgJ
	GGpZ9D6r9lR5vt9FgZSmFNKFzhnzBGuY=
X-Gm-Gg: ASbGnctYItlSoqthxuQUwPsuQxE7GwAxObBl4cE/mNcMz6cRLrlvlPQlQlD04NoRl3j
	grgie1bCLuRRWSRQXTyvzU96PhiVbeapg60MSNU5x4ymHGJXGeeB0OUC9vtKahV7QmPCUx2Ai7u
	kT5irU+fDIi7J7Hk5VQs03LcfqWGBU0Ro7a7BQ8QUrQlk=
X-Google-Smtp-Source: AGHT+IE6/eOTEfHXhwt0RgsOe2nlmOMKzpgvYlgCxwbBr5vnTnMeiaDo0ZkSDB90odMTC42zBWZ1+No8Vv1VHPDv/8c=
X-Received: by 2002:a17:907:3ea9:b0:add:f191:d851 with SMTP id
 a640c23a62f3a-ade8971b404mr330695666b.32.1749651135652; Wed, 11 Jun 2025
 07:12:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250530124829.214375-1-technoboy85@gmail.com> <4b6ceu47mb26wrxpbwlrhtduosvmbtu7uyw4urp6y2kw2bptey@zmi66ue4vsgl>
In-Reply-To: <4b6ceu47mb26wrxpbwlrhtduosvmbtu7uyw4urp6y2kw2bptey@zmi66ue4vsgl>
From: Matteo Croce <technoboy85@gmail.com>
Date: Wed, 11 Jun 2025 16:11:37 +0200
X-Gm-Features: AX0GCFv5Zb9JVfMZmN9N9Alja32LWnR2kWYDUT-kEeMg-yMUMUETwIy5N43xjjk
Message-ID: <CAFnufp2h6Z7DpDHWyrCxJ++7hA8qce8ADNLEsYRq8jf3TSodfw@mail.gmail.com>
Subject: Re: [PATCH v3] man/man2/cachestat.2: add a man page for cachestat()
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Nhat Pham <nphamcs@gmail.com>, 
	Johannes Weiner <hannes@cmpxchg.org>, Matteo Croce <teknoraver@meta.com>
Content-Type: text/plain; charset="UTF-8"

Il giorno mer 11 giu 2025 alle ore 11:09 Alejandro Colomar
<alx@kernel.org> ha scritto:
>
> Hi Matteo,
>
> On Fri, May 30, 2025 at 02:48:29PM +0200, Matteo Croce wrote:
> > From: Matteo Croce <teknoraver@meta.com>
> >
> > Add a missing man page for cachestat().
> > The text was converted from the commit message:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cf264e1329fb0307e044f7675849f9f38b44c11a
> >
> > Signed-off-by: Nhat Pham <nphamcs@gmail.com>
> > Signed-off-by: Matteo Croce <teknoraver@meta.com>
>
> Thanks!  The patch looks good.  I was going to push it, when CI reported
> some issues:
>
>         MANDOC          .tmp/man/man2/cachestat.2.lint-man.mandoc.touch
>         mandoc: .tmp/man/man2/cachestat.2:60:3: ERROR: skipping unknown macro:  If
>         mandoc: .tmp/man/man2/cachestat.2:27:2: STYLE: fill mode already disabled, skipping: nf
>

Oh nice, didn't know about mandoc. I'm using it to validate the man page with:

mandoc -W base,stop man/man2/cachestat.2

thanks!

> See comments about that below.
>
> > ---
> >  man/man2/cachestat.2 | 111 +++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 111 insertions(+)
> >  create mode 100644 man/man2/cachestat.2
> >
> > diff --git a/man/man2/cachestat.2 b/man/man2/cachestat.2
> > new file mode 100644
> > index 000000000..12dbd900d
> > --- /dev/null
> > +++ b/man/man2/cachestat.2
> > @@ -0,0 +1,111 @@
> > +.\" Copyright, the authors of the Linux man-pages project
> > +.\"
> > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > +.\"
> > +.TH cachestat 2 (date) "Linux man-pages (unreleased)"
> > +.SH NAME
> > +cachestat \- query the page cache statistics of a file
> > +.SH SYNOPSIS
> > +.nf
> > +.B #include <sys/mman.h>
> > +.P
> > +.B struct cachestat_range {
> > +.B "    __u64 off;"
> > +.B "    __u64 len;"
> > +.B };
> > +.P
> > +.B struct cachestat {
> > +.B "    __u64 nr_cache;"
> > +.B "    __u64 nr_dirty;"
> > +.B "    __u64 nr_writeback;"
> > +.B "    __u64 nr_evicted;"
> > +.B "    __u64 nr_recently_evicted;"
> > +.B };
> > +.P
> > +.BI "int cachestat(unsigned int " fd ", struct cachestat_range *" cstat_range ","
> > +.BI "              struct cachestat *" cstat ", unsigned int " flags ");"
> > +.nf
>
> This should be .fi  (.nf is no-fill mode, while .fi ends that --it
> starts fill mode again--)
>
> > +.SH DESCRIPTION
> > +.B cachestat()
> > +queries the number of cached pages, dirty pages,
> > +pages marked for writeback, evicted pages,
> > +and recently evicted pages in the byte range specified by
> > +.I .off
> > +and
> > +.I .len
> > +in the
> > +.B cachestat_range
> > +structure.
> > +.P
> > +An evicted page is one that was previously in the page cache
> > +but has since been evicted.
> > +A page is considered recently evicted if its reentry into the cache
> > +would indicate active usage under memory pressure.
> > +.P
> > +The results are returned in a
> > +.B cachestat
> > +structure, pointed to by the
> > +.I cstat
> > +argument.
> > +.P
> > +The
> > +.I .off
> > +and
> > +.I .len
> > +fields must be non-negative.
> > +If
> > +.IR .len\~>\~0 ,
> > +the queried range is
> > +.RI [ .off ,\~ .off+.len ]
> > +. If
>
> The '.' should go in the previous line.
>
>
> Have a lovely day!
> Alex
>

I'm fixing these errors now, have a lovely day too!

-- 
Matteo Croce

perl -e 'for($t=0;;$t++){print chr($t*($t>>8|$t>>13)&255)}' |aplay

