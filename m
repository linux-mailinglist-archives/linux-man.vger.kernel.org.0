Return-Path: <linux-man+bounces-1656-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C90C95BDF6
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 20:06:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D91C1C21EB7
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 18:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC6111CF2BA;
	Thu, 22 Aug 2024 18:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="XiSNfvFt"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7AA1CF2B5
	for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 18:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724349951; cv=none; b=WpBuJJrHwQU5U1CZtPKYNoBu/kX36X6/1YrBBfens2A8So9wOUSD9i9Nt9CdSaM5N5KCwvbt9qO7lCSZYrkfSsIrIyfuj8GuvwQYRNEouCS4LfgZjC8RJeQT8iN2IxaYiwyST2auu9CYCz3WYpXX1jPuSaXW/kYmLChtnbso/RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724349951; c=relaxed/simple;
	bh=eLua6iKUWjrQisfZZoo6dtLjLn+DzxbP/XJan/75Tco=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gjXQ00kh+lNc6Hbohb9zuLtG5AjuAmb1jDJbDR08Te0xRSUSy5OcyWjsnObbrYQAEqZ1x1DetIcoFOe8Ekj71tWYoxPQw3mAlTCvvsHmOi9WuHr6Qgo9xHzJbxelAb9x0RDFxvT7QVbXlFaTqtgYI2EIoDRjsUuoml1chqvAfuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=XiSNfvFt; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6bf8b41b34dso5550956d6.0
        for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 11:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1724349949; x=1724954749; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kbZGpIVKx6xWBz8wQNjyPLU8+Fm7iHEd65jgYL/MBw4=;
        b=XiSNfvFtNrPgvNaFlsp74DfAbOseK3RoPR4RKwXVlADTXz/gA3tVfbguTvppWLk98E
         vVy2BmMC0pxOsraOD9L7/+eaDfTwn5Cf3Nyt44abE5j3bgcRjuIX9K+w1lVWxWUnhn23
         UZFUkXeNy3lxXf0iXD8LFc34gEUz2sf9mReUhbROmoNR4Gk8K3laRNnUHcC3F+YbEHxF
         NXmuTOqn4qIUYjlkRuS1/zcVNRAXBYrfWE7Fyx4kDuZiFAng3unulY0i2RzGz1nDZWaV
         ZXu7NPVZdGBeb+S3Xr4PWUkdwCqdEf+zkd/SkSc8j5vTeZCt9CsH19ti98aLJXBZL9eS
         8ibA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724349949; x=1724954749;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kbZGpIVKx6xWBz8wQNjyPLU8+Fm7iHEd65jgYL/MBw4=;
        b=KwYa5C/cXPJJY/f0TMNqdqMXqA7rqfrYT1kEJM9BAzZrGQsGixWpQsflCIYycR06vn
         APpbkwQhZWc0SR0tBV9mwr8ApkF0F1pFgSdk8JAWCSbUg5R4Tkrn9R1hY7msFNCdFBsb
         irnUMQw7gCcIWkBY5i0SFbhoEO0qBgsHl4gz6N/QOn5Wf75/dxJMlLJumnqXfOmbasAT
         5z3vG41mGI+e+r+56uwxRi+c2b3CYMYZmDmb7GwbCaLBw+TlP7vvlzEpUDQC2rlvoOA4
         Z090HYdJywruz4vm70sUFnbsRTZlMVVbwsjTNPDMZ1QiegImbmgpckSJnvlBAhgGeHHg
         XstQ==
X-Forwarded-Encrypted: i=1; AJvYcCWn90CZjOwsyN3aXngXLKutjfhuUhmqVQpTn9BIgII+G8igMOrcIa5AyFhI4FZZ8OS6E1rgbGyfWmQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YxeBxgeik+G0ASvZCmZZMoGjo3LPdtrcQ3UWUFhxnkFyay5cOHL
	VI5EGUfFbUZfrlqP4HvdAAmhKDUwOTd//4Ds3x2y45JkY5FGd3srRmaj5cBtVlbWnoAouiUpIBq
	ENslgTxqWUIjjaZ0FNvzsI4UAfjlAV81mMZoy
X-Google-Smtp-Source: AGHT+IE4nOdoKh8nT7ynyvH7P93oOVHq42vYg/qXtkeIKLRDQj+ugvi+BYqKrChXXtGX8FsS0Svyi6ktNkWg33bkYa0=
X-Received: by 2002:a05:6214:498d:b0:6bf:9ce2:654b with SMTP id
 6a1803df08f44-6c155e2662cmr93938296d6.52.1724349948765; Thu, 22 Aug 2024
 11:05:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <937dcbd1-69c3-48ba-ada1-6b25e5381672@linaro.org>
 <CAJgzZoq+PgP71mP3XBnJsiD_wr58Z-7mAix7NxBWV2K_=0cxKA@mail.gmail.com>
 <CAJgzZorYAxxxa0+RFz706ip1J97hz0oDz32et_FONMu-bLpeKQ@mail.gmail.com>
 <138cac72-3ec9-42c0-9c1d-982aae975fc3@linaro.org> <xryntaw4ltavijpf7ejf4v7uhvwfp2lytgfzeablezxlvex4ky@yfkfhw7jtzch>
 <a580c3e7-2489-445d-8ea0-cbac245092a7@linaro.org> <CAMe9rOpSYOG-J1H+pLWHp5aNtSFuoHo=ZFS5H17jhK2obZtddQ@mail.gmail.com>
 <CAJgzZorgr+vHuQgQyMkMZPwWjDpr=b1ibkv4U0B2V9Lh=K_dag@mail.gmail.com>
 <lnrhoiigxf7ft6p4lv7x5euyeu6qwdqndmhjxr36orkaxztrkw@qsazxkgfyzvn>
 <CAJgzZooftn7zPoSa8_P+OuQ2rH9ZXnsFnrZXcHA8oxXq7q_2-w@mail.gmail.com>
 <zhim7duq7za34iw4zhircvsp2zx7fm7cw7ic2t476ncar2hubo@4ikcz6zekspp> <CAJgzZooJuS92W5bbr_jFu_TYNJ-TwkpmMnv=3_FTcv-mxg2xnQ@mail.gmail.com>
In-Reply-To: <CAJgzZooJuS92W5bbr_jFu_TYNJ-TwkpmMnv=3_FTcv-mxg2xnQ@mail.gmail.com>
From: enh <enh@google.com>
Date: Thu, 22 Aug 2024 14:05:33 -0400
Message-ID: <CAJgzZooK43s5A82+RsmnMmLcj8Y2+CTOFENYekz2tu66oaJchQ@mail.gmail.com>
Subject: Re: arch_prctl()
To: Alejandro Colomar <alx@kernel.org>
Cc: "H.J. Lu" <hjl.tools@gmail.com>, 
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>, libc-alpha <libc-alpha@sourceware.org>, 
	linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2024 at 1:34=E2=80=AFPM enh <enh@google.com> wrote:
>
> On Thu, Aug 22, 2024 at 12:57=E2=80=AFPM Alejandro Colomar <alx@kernel.or=
g> wrote:
> >
> > Hi Elliott,
> >
> > On Thu, Aug 22, 2024 at 12:34:11PM GMT, enh wrote:
> > > On Thu, Aug 22, 2024 at 12:27=E2=80=AFPM Alejandro Colomar <alx@kerne=
l.org> wrote:
> > > > I'd rather add a diagnostic for those who define it themselves now,
> > > > than providing a sub-par prototype for eternity.  I guess the exist=
ing
> > > > number of users is small, and it doesn't break binaries, just
> > > > compilation.
> > >
> > > yeah, afaict it's basically just "qemu-like things" and the occasiona=
l
> > > debugging tool.
> > >
> > > > Those will probably just need to add an ifdef for the glibc version=
 that
> > > > added the prototype, so it's an easy fix.
> > >
> > > no, they'd just have to change their declaration to match whatever
> > > glibc ships. (which is definitely more verbose if it's any kind of
> > > union.)
> >
> > Redefinition of transparent unions is allowed?  I'm not sure; at least
> > prior to C23.
>
> huh. i did not know that. "works for me" on clang, anyway, and seems
> like a good argument for the transparent union...
>
> i took a more careful look at the code i can easily search, and i found:
>
> 1. extern int arch_prctl(int, unsigned long);
>   the most common choice, presumably popularized by the kernel source
> and the man page.
> 2. extern int arch_prctl(int, uintptr_t);
>   much less common, and compatible with option 1 anyway.
> 3. extern int arch_prctl(int, unsigned long*);
>   very rare, but used in compiler-rt for tsan (and at least a gcc
> hwasan tests?).
> 4. extern int arch_prctl(int, unsigned long int);
>   if you're not into the whole brevity thing.
>
> so actually the transparent union is the only thing that's source
> compatible with all the existing code [in the corpus i have easy
> access to].

...except transparent unions are C-only, so we'd need something else
for C++ if we went with this for C.

> > > i don't have a strong opinion, other than "i want to make sure that
> > > bionic and glibc have the _same_ declaration so that it's at least
> > > possible for folks to fix their source to 'just work' everywhere"...
> >
> > +1
> >
> > > > But I tend to value more eternity than added diagnostics, and other=
s may
> > > > disagree with that, so whatever you decide is probably good, and I'=
ll
> > > > document it.  :)
> > >
> > > minimizing the need for changes on the man page is also a [minor]
> > > argument for just going with the kernel declaration :-)
> > >
> > > plus it's demonstrably "good enough" for existing callers. it's not
> > > like the union would make the api any less error-prone?
> >
> > The union removes the need for a cast.  The cast is error-prone, since
> > it disables most compiler diagnostics.
> >
> > Cheers,
> > Alex
> >
> > --
> > <https://www.alejandro-colomar.es/>

