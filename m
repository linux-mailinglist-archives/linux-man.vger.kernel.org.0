Return-Path: <linux-man+bounces-1649-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B630795B7E9
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 16:05:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 06B201C23113
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 14:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35CE21CB121;
	Thu, 22 Aug 2024 14:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jLTfA/AG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941D219DFA2
	for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 14:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724335534; cv=none; b=NA9731IbH8fqODG06/KjeGYAOp3/zHYAmjB2ovA0Ws4da16IH8AfaWRlXR0LPYhisgowAUr9cxxRdCGwHsBtTbdheKTpqAN/bQMVR9itpIHtIXpTev3vWunZtZeLkregPp+Wb7RRlELsOjZpClqKawDzCqTNm3ai0O7gUn7LpZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724335534; c=relaxed/simple;
	bh=+Q1mXNsotep64Yg0t4/OSuEjeQAB9Syntg8F25h1P4k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D+sO3EgWvA9aOX+zcvcwh8/p7FkQv9KegO33YMqvXsC23h1j9WmH7cPgdDhwubx5CPyu1dCYwVF6b3+esSZfRAoY1AXH/4i4s5SqT35ZZ77Tn6CxBPTWyelkXwmVoOn2leKRfuUizgr9z8+dET3yiKVXfp0AMz6Ww5f2sNxNQrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jLTfA/AG; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-68518bc1407so9450577b3.2
        for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 07:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724335531; x=1724940331; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VPu6RjEY/xxhiQQ0CPNP/anxZJOWTwLADPCFYcoN2Ro=;
        b=jLTfA/AGbt2iHfGrqpkCpodQfFTiykrckxWUn4Ya92b2AVnAR6GOxnM3SXZnhlT5sh
         geOT0zZdVgMZN+0cZJ7zVr6ChJm0AUIU7bdw/R9FaQf3RHzjtQ3vYzMAB+tit1FaagaO
         5og7KqpIstAtSj1cK9LZRmaunG/TNWd65X7FQ7qebi7dtE44pxVkieRMZVgheMxZer99
         GhcDHYj0esFv3BvxY3RnWXLTOEI/MQXgtL84CH3i6iZskiIbewLcL+1Zt2OJNR9JNVxM
         7U0HoVsPHFNHtClY25KpVTS3d9+t2nzvOmaE79Ok6EVocGVmFARJuRQ9t7eXrr2+Nkqr
         cBGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724335531; x=1724940331;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VPu6RjEY/xxhiQQ0CPNP/anxZJOWTwLADPCFYcoN2Ro=;
        b=F1RZ7yXIy6ry+eKQ4uBpg6HiIN+fUj4TlQgx07Ih/aZvUh2zWNML/CrzVg0OUb8QQH
         WQxGTRsQFyKFPA512JpPsXBD6G5uRUFCiLAbsdZDQObltDVEbL1PW6YSxUV0/14/WTyg
         ly57TOWl4eghi6vzDENgH9yOdGvjHoPvrIjrH+yk7/nZipLBuNO6db2l8goJscCi5Mer
         KEHOh8mPsoff6u1LV21PD1BNwm08nznrvGzSndYXyhEOiqMhx9HNRN5rkn92mdWtaxrB
         I8bjlRjB3luKtkvKCxcsgHnD8dJfqrUI5p/fE1S5H3u98bHFbktP/0E+HAM6PfdUTy6i
         9uXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrKeJ/mVRar9/H/c+CKF0gziUVGY7pD6BfgZ3eOdz+R9pIE1jQqCs8nMpr+C+EkojmiCGsrtqh8GA=@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl3Oic86PJjkd7WPjZJW2CgxH8pAUwZ+swDKehD0gyRy4iKUz/
	W6Oc3VQRToyrcMUrHjy0tie79QYVDkSOuHit+PWWYa3QvXEKT4TRmhQH4MeHv4bXew16T5c7oHr
	3rT7FLiXVmWojT8Nz8nbD0tfKSe0LVpjJ
X-Google-Smtp-Source: AGHT+IG1NFv+dliYEahztsyw7oSepA5YirYCvqeKzeo76jhBWT8QupxS+a4d1uCHAIY6fGDL1dwEzJsid7YaDalVLCg=
X-Received: by 2002:a05:690c:4dc1:b0:6b4:ace4:31a6 with SMTP id
 00721157ae682-6c3d29dcce5mr18091617b3.20.1724335531532; Thu, 22 Aug 2024
 07:05:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZoq7rTQ5mQm9JzSkeGJ8fqu1aDw0BfQnUqs4F24YuxV0Wg@mail.gmail.com>
 <937dcbd1-69c3-48ba-ada1-6b25e5381672@linaro.org> <CAJgzZoq+PgP71mP3XBnJsiD_wr58Z-7mAix7NxBWV2K_=0cxKA@mail.gmail.com>
 <CAJgzZorYAxxxa0+RFz706ip1J97hz0oDz32et_FONMu-bLpeKQ@mail.gmail.com>
 <138cac72-3ec9-42c0-9c1d-982aae975fc3@linaro.org> <xryntaw4ltavijpf7ejf4v7uhvwfp2lytgfzeablezxlvex4ky@yfkfhw7jtzch>
 <a580c3e7-2489-445d-8ea0-cbac245092a7@linaro.org>
In-Reply-To: <a580c3e7-2489-445d-8ea0-cbac245092a7@linaro.org>
From: "H.J. Lu" <hjl.tools@gmail.com>
Date: Thu, 22 Aug 2024 07:04:55 -0700
Message-ID: <CAMe9rOpSYOG-J1H+pLWHp5aNtSFuoHo=ZFS5H17jhK2obZtddQ@mail.gmail.com>
Subject: Re: arch_prctl()
To: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: Alejandro Colomar <alx@kernel.org>, enh <enh@google.com>, 
	libc-alpha <libc-alpha@sourceware.org>, linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2024 at 5:21=E2=80=AFAM Adhemerval Zanella Netto
<adhemerval.zanella@linaro.org> wrote:
>
>
>
> On 21/08/24 16:41, Alejandro Colomar wrote:
> > Hi Adhemerval, Elliott,
> >
> > On Wed, Aug 21, 2024 at 03:19:02PM GMT, Adhemerval Zanella Netto wrote:
> >> I would use either the kernel interface:
> >>
> >> arch/x86/kernel/process_64.c
> >> 961 SYSCALL_DEFINE2(arch_prctl, int, option, unsigned long, arg2)
> >>
> >> Where is seems to what most caller do, or maybe something like:
> >>
> >> union __arch_prctl_arg
> >> {
> >>   unsigned long addr;
> >>   unsigned long *vaddr;
> >> };
> >>
> >> int arch_prctl (int option, union __arch_prctl_arg *arg);
> >
> > Or you could use a transparent union:
> >
> >       $ cat arch_prctl.c
> >       union __attribute__((__transparent_union__)) __arch_prctl_arg {
> >               unsigned long  set;
> >               unsigned long  *get;
> >       };
> >
> >       int my_arch_prctl(int op, union __arch_prctl_arg arg2);
> >
> >       int
> >       main(void)
> >       {
> >               unsigned long  u =3D 0;
> >
> >               my_arch_prctl(1, u);
> >               my_arch_prctl(1, &u);
> >       }
> >       $ gcc -Wall -Wextra -S arch_prctl.c
> >       $
>
> Although we do use __transparent_union__ we have to still handle very old
> compilers:

We can hide the prototype for the older compilers.  Softwares need to
deal with the missing prototype anyway.

> socket/sys/socket.h
>
>  51 /* This is the type we use for generic socket address arguments.
>  52
>  53    With GCC 2.7 and later, the funky union causes redeclarations or
>  54    uses with any of the listed types to be allowed without complaint.
>  55    G++ 2.7 does not support transparent unions so there we want the
>  56    old-style declaration, too.  */
>  57 #if defined __cplusplus || !__GNUC_PREREQ (2, 7) || !defined __USE_GN=
U
>
> I guess this is not really required anymore.
>
> >
> >> And for constants, it would require a x86_64 specific sys/prctl.h head=
er
> >> with either the has_include tricks to include the kernel one or to jus=
t
> >> copy the kernel one (along with possible a test to check the sync with
> >> kernel definitions).
> >
> > I think including would be simpler, if it's possible.
> >
> > I've seen some problems arise from copying kernel stuff in glibc
> > headers, such as being unable to include both a some kernel and some
> > glibc headers in the same program due to redefinitions.
> >
> >
> > Have a lovely night!
> > Alex
> >
> >



--=20
H.J.

