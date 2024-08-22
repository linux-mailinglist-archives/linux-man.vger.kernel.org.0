Return-Path: <linux-man+bounces-1655-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8847E95BD62
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 19:35:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6A761B25FF6
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 17:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E5E71CCB4B;
	Thu, 22 Aug 2024 17:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="JfA6kyx/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98C4C1CEACC
	for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724348095; cv=none; b=ClpbDyIHzO380ax+7qaV1u+zCOINf158rMqwz82uHBGlCX8uTprGhFCg189f7rFFkOF6b8LzX3EIe9MQFbcgS626WWS5Hj3sxfy9etBqlzGfy+FRbLzRi0RYxrSiEk/lCWJ53ZiQVM3jNhodOTOP3lPUupU8i717yDKGfX/tie0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724348095; c=relaxed/simple;
	bh=LWer6P5gsOiKcrXLFTk/g39spV5R60yd3BI2EwR9acU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S3/zTanixwmWEPgdvyIjSZDUW7QzInGmgKxEJs0KItqYl5dg0dHRgSheKBKgOIFwEtpL8t1dO1JhFf4e1JqWP74+bVYiYYL76R+K3b5LcTegybq93vK0QNXi9w6wZAtMMR5YXjnWYd1xy+goKeXjS+knMJpd8nktX+KzKmepmJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=JfA6kyx/; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6bf6ea1d34aso5325296d6.1
        for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 10:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1724348092; x=1724952892; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uHFExF9dsha8y1AP0lkL+rBTFTZz7xaUBH3a3+1rngs=;
        b=JfA6kyx/GDuzo53mwqdzkoaCfoVuB10tfvV89Y06FDU3oZCzupWdprITM5SeuVOAZQ
         zkca47V0tM6goIV4eX/q92rk+F3m5qq5EKXvZRPp9eAXJix7RLmArr9B3EsOAS6xxtzh
         zxFdscPFDrds94DQd5dTUFThDWVmcaG4VLV1GxyYwDWeReyKOWr6kZ3yKUayZ657t8Od
         OKC2xQWDykcwBeylpInWSK+altiqFZs9I90mCDudpYY7jKhFS6GegeGKsLniZbSz89gn
         6X5/Xw5k4giCFaxycUZnM4cnpGJh5ReptS3tBCv7RjOCEmqP5fXalDyhFTtbNePXMbJu
         NDkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724348092; x=1724952892;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uHFExF9dsha8y1AP0lkL+rBTFTZz7xaUBH3a3+1rngs=;
        b=MgMYKs+biOej2pwV9n5aoY18EA19r+LI0RTE5FQJBI98QnJ3qFqTWcWGiFg019/wnA
         hI4Lj7OwWbXvBQ3HXFf4LuNREvLEhJWDzLNBX1NsV/M4j63NF7i0UMxvbB+WPwT6yiLF
         KO1DvsWryvajgUC5eVhQJFs9RCOOeaMeh6TNCmguRfH5MaYReCuN1wuOJCCIMiuedXaw
         FQvyEnKRvczRzOy9eRu45ZJNEqMOqIf52PhrCFhHDvZO+yi7iZzOVME7xe4CRiGAyQhx
         YOhkdDIXrqgHD9Ej6R97uJelgFULwxzkEd/jAH+b25BF/2RtuzynweWuEnO+kX+9wE8M
         kc8g==
X-Forwarded-Encrypted: i=1; AJvYcCWi0yxzD2PLK+4qFHdvbs5c2WPQxtgU38+mIWs0uwYCvXyfAQJ3QkJhbAKWFSncS9ewahp8WASRf2Q=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9GLK/LW2lmPzhmeMXhSr0wLSUvpJzihSJT3qH8mDR+VZ6Davk
	Ar6LvbTMFcNyREGv7f6KBPIMPjXiNoVWy4w3p1JUO3b8GPr9ny2nIVsIEQZOIRYVvHXzuc9mE3R
	qT6xPWU9yeRir4eEOWaPgp8xU8CAXw44zT6vh
X-Google-Smtp-Source: AGHT+IEpYmAki85EteayvrdP6N/Lb3bnZFlcJIDGgvYDE3Iiq2CpD8Ht4r8lm8RHOnrOH+fXsb+tEBE9rSU3aFhi11c=
X-Received: by 2002:a05:6214:3102:b0:6b5:e7e5:e62d with SMTP id
 6a1803df08f44-6c156842ecfmr80924696d6.43.1724348092333; Thu, 22 Aug 2024
 10:34:52 -0700 (PDT)
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
 <CAJgzZooftn7zPoSa8_P+OuQ2rH9ZXnsFnrZXcHA8oxXq7q_2-w@mail.gmail.com> <zhim7duq7za34iw4zhircvsp2zx7fm7cw7ic2t476ncar2hubo@4ikcz6zekspp>
In-Reply-To: <zhim7duq7za34iw4zhircvsp2zx7fm7cw7ic2t476ncar2hubo@4ikcz6zekspp>
From: enh <enh@google.com>
Date: Thu, 22 Aug 2024 13:34:41 -0400
Message-ID: <CAJgzZooJuS92W5bbr_jFu_TYNJ-TwkpmMnv=3_FTcv-mxg2xnQ@mail.gmail.com>
Subject: Re: arch_prctl()
To: Alejandro Colomar <alx@kernel.org>
Cc: "H.J. Lu" <hjl.tools@gmail.com>, 
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>, libc-alpha <libc-alpha@sourceware.org>, 
	linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2024 at 12:57=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:
>
> Hi Elliott,
>
> On Thu, Aug 22, 2024 at 12:34:11PM GMT, enh wrote:
> > On Thu, Aug 22, 2024 at 12:27=E2=80=AFPM Alejandro Colomar <alx@kernel.=
org> wrote:
> > > I'd rather add a diagnostic for those who define it themselves now,
> > > than providing a sub-par prototype for eternity.  I guess the existin=
g
> > > number of users is small, and it doesn't break binaries, just
> > > compilation.
> >
> > yeah, afaict it's basically just "qemu-like things" and the occasional
> > debugging tool.
> >
> > > Those will probably just need to add an ifdef for the glibc version t=
hat
> > > added the prototype, so it's an easy fix.
> >
> > no, they'd just have to change their declaration to match whatever
> > glibc ships. (which is definitely more verbose if it's any kind of
> > union.)
>
> Redefinition of transparent unions is allowed?  I'm not sure; at least
> prior to C23.

huh. i did not know that. "works for me" on clang, anyway, and seems
like a good argument for the transparent union...

i took a more careful look at the code i can easily search, and i found:

1. extern int arch_prctl(int, unsigned long);
  the most common choice, presumably popularized by the kernel source
and the man page.
2. extern int arch_prctl(int, uintptr_t);
  much less common, and compatible with option 1 anyway.
3. extern int arch_prctl(int, unsigned long*);
  very rare, but used in compiler-rt for tsan (and at least a gcc
hwasan tests?).
4. extern int arch_prctl(int, unsigned long int);
  if you're not into the whole brevity thing.

so actually the transparent union is the only thing that's source
compatible with all the existing code [in the corpus i have easy
access to].

> > i don't have a strong opinion, other than "i want to make sure that
> > bionic and glibc have the _same_ declaration so that it's at least
> > possible for folks to fix their source to 'just work' everywhere"...
>
> +1
>
> > > But I tend to value more eternity than added diagnostics, and others =
may
> > > disagree with that, so whatever you decide is probably good, and I'll
> > > document it.  :)
> >
> > minimizing the need for changes on the man page is also a [minor]
> > argument for just going with the kernel declaration :-)
> >
> > plus it's demonstrably "good enough" for existing callers. it's not
> > like the union would make the api any less error-prone?
>
> The union removes the need for a cast.  The cast is error-prone, since
> it disables most compiler diagnostics.
>
> Cheers,
> Alex
>
> --
> <https://www.alejandro-colomar.es/>

