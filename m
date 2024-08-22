Return-Path: <linux-man+bounces-1650-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F2295BBB7
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 18:22:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF416B2D297
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 16:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89A7C29CE8;
	Thu, 22 Aug 2024 16:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="I5mFp0Lo"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36701487F9
	for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 16:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724343520; cv=none; b=OeGNOYzgJk/YuDKD0jg2nOkiY3zOQTmeRs6XU421vNwVUCmuHjgofMq3ddpM7RWYoPIjqGDiq46oSOOorZGIML5J7CgYMIN3vtaGZFvujCY7syeOZ+3gV8RI1dm9eKP6GQTzMbbg0PZrrYkIO5mgOcGbcnXXpcXrLd05Y1Tw3hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724343520; c=relaxed/simple;
	bh=pMJGMQcj2cMGBlX03TrS/s18h5ECJNNmWdf5SFCbuiw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jr2mIDEJXY3d7qLOu3SUCcjMhB7Gi8lOmuN/2SZcR0VRc6QiHYQsxJUu/TgzSQfHCn0jXxmUmfVqyIStmE0Rk4eLqk0/V0fDboSDVreCZqzDCh6nERDkqMls4Fshk9wRzyeNHIUBbDVZHgVuduFfflN/5jV2ilD9QPZkur1dowo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=I5mFp0Lo; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6bf7b48d2feso5124066d6.0
        for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 09:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1724343517; x=1724948317; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cstznnzKE+RaHWHGA7z18NN8yc+D+3ySy2Yt+YhSYdg=;
        b=I5mFp0LoCvO9E4yDiw9H6kDx/GV7O8xAQQA1S9r0cuMzugiHzO+0cbLTdyc7y8ptG6
         3dnKkjUd1U3PaxRM3yTqH5P6aq58x5C/C9K0hCuPPiilm5oiLBZKfC2wmWgJ1wk/2w/X
         Ha1lnbuXSVwZ24WBrIFk+rfS+SYKgcAAAOEw647wypeXdxrbbC6aweuWFee1dFziuTju
         Id/lU2oZzPu5ju11nOD8OXlT37g1QdOkVvBQG5YmuvvVGxcarMEdZaYT/mS+hsYsDCrr
         oyN3LbGKj+zJjgnUoZIlk7ee3UkkolUoyBmIxy/1mxxQvXCAJYBYhBlDZYvDeVU/VAfY
         JIeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724343517; x=1724948317;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cstznnzKE+RaHWHGA7z18NN8yc+D+3ySy2Yt+YhSYdg=;
        b=npAe2H4iQBgf35ILf8eMR+jgHcDJvJzqo28D0aY552BNvow3mtEfmxfbOJ/hX6uie5
         q/T8D61+hwwb8INzkKUhW6AiCeET/HT7h4OQT9sax3/bA44nYvKYLILN0P79pRp4t+xn
         edAjfUNHodutkSYfDiCX+uhC1ysjswLHSjyL5t5+J0P25krYTXUtRkdaWH60jR0UbsRT
         s/DdogwnNuL8guIDQ7vaB5Vw4o8v0+xOTfL9eiPKpQuaySefZosBbNF5ZpFhbV4d/W7M
         rsp6F7Zy/eI894WbnI6a6W91WewY83VxiCzdIUyjnLIuzFKwxlmoqJwYTQ9B5OY7KbTc
         t4Rg==
X-Forwarded-Encrypted: i=1; AJvYcCXkVGlOYMaBS6khhkaVcDTD8mop1PD9OWKW4jjBeZDlmFm5bpgXeG9lsBNXSQq1XIvdDqIe5UTkTWo=@vger.kernel.org
X-Gm-Message-State: AOJu0YyNwmNK8nXhcYVe75zq8XNgpGHQUNM6DMMVszQKA1eW3ibrPAa3
	V4ZhOoXArMuU3HsCjgZ2//YIXAEI4ogNRO1VTWviZFgnPmlx7/8RHpfshCmFKZc4LQkkO5RgLbW
	GggdWpvPOCLk8fEWPQiq5PMq/BnvEaMwBOEK1
X-Google-Smtp-Source: AGHT+IGrs/5EirN1n6GkJ9N6tVohEpO0f02s4lcVD/43sZIn6kpWP7xdjVnfBjiCzHOkjGdlQhpCBq/nQ1/IkHKCRJA=
X-Received: by 2002:a05:6214:3c9e:b0:6bf:7927:3a9f with SMTP id
 6a1803df08f44-6c155e01548mr62399936d6.46.1724343517398; Thu, 22 Aug 2024
 09:18:37 -0700 (PDT)
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
 <a580c3e7-2489-445d-8ea0-cbac245092a7@linaro.org> <CAMe9rOpSYOG-J1H+pLWHp5aNtSFuoHo=ZFS5H17jhK2obZtddQ@mail.gmail.com>
In-Reply-To: <CAMe9rOpSYOG-J1H+pLWHp5aNtSFuoHo=ZFS5H17jhK2obZtddQ@mail.gmail.com>
From: enh <enh@google.com>
Date: Thu, 22 Aug 2024 12:18:21 -0400
Message-ID: <CAJgzZorgr+vHuQgQyMkMZPwWjDpr=b1ibkv4U0B2V9Lh=K_dag@mail.gmail.com>
Subject: Re: arch_prctl()
To: "H.J. Lu" <hjl.tools@gmail.com>
Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>, Alejandro Colomar <alx@kernel.org>, 
	libc-alpha <libc-alpha@sourceware.org>, linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2024 at 10:05=E2=80=AFAM H.J. Lu <hjl.tools@gmail.com> wrot=
e:
>
> On Thu, Aug 22, 2024 at 5:21=E2=80=AFAM Adhemerval Zanella Netto
> <adhemerval.zanella@linaro.org> wrote:
> >
> >
> >
> > On 21/08/24 16:41, Alejandro Colomar wrote:
> > > Hi Adhemerval, Elliott,
> > >
> > > On Wed, Aug 21, 2024 at 03:19:02PM GMT, Adhemerval Zanella Netto wrot=
e:
> > >> I would use either the kernel interface:
> > >>
> > >> arch/x86/kernel/process_64.c
> > >> 961 SYSCALL_DEFINE2(arch_prctl, int, option, unsigned long, arg2)
> > >>
> > >> Where is seems to what most caller do, or maybe something like:
> > >>
> > >> union __arch_prctl_arg
> > >> {
> > >>   unsigned long addr;
> > >>   unsigned long *vaddr;
> > >> };
> > >>
> > >> int arch_prctl (int option, union __arch_prctl_arg *arg);
> > >
> > > Or you could use a transparent union:
> > >
> > >       $ cat arch_prctl.c
> > >       union __attribute__((__transparent_union__)) __arch_prctl_arg {
> > >               unsigned long  set;
> > >               unsigned long  *get;
> > >       };
> > >
> > >       int my_arch_prctl(int op, union __arch_prctl_arg arg2);
> > >
> > >       int
> > >       main(void)
> > >       {
> > >               unsigned long  u =3D 0;
> > >
> > >               my_arch_prctl(1, u);
> > >               my_arch_prctl(1, &u);
> > >       }
> > >       $ gcc -Wall -Wextra -S arch_prctl.c
> > >       $
> >
> > Although we do use __transparent_union__ we have to still handle very o=
ld
> > compilers:
>
> We can hide the prototype for the older compilers.  Softwares need to
> deal with the missing prototype anyway.

(avoiding source incompatibility via mismatching declarations is
perhaps a reason to just go with the kernel signature, since that's
what the folks i've seen `extern` this function themselves seem to
use...)

> > socket/sys/socket.h
> >
> >  51 /* This is the type we use for generic socket address arguments.
> >  52
> >  53    With GCC 2.7 and later, the funky union causes redeclarations or
> >  54    uses with any of the listed types to be allowed without complain=
t.
> >  55    G++ 2.7 does not support transparent unions so there we want the
> >  56    old-style declaration, too.  */
> >  57 #if defined __cplusplus || !__GNUC_PREREQ (2, 7) || !defined __USE_=
GNU
> >
> > I guess this is not really required anymore.
> >
> > >
> > >> And for constants, it would require a x86_64 specific sys/prctl.h he=
ader
> > >> with either the has_include tricks to include the kernel one or to j=
ust
> > >> copy the kernel one (along with possible a test to check the sync wi=
th
> > >> kernel definitions).
> > >
> > > I think including would be simpler, if it's possible.
> > >
> > > I've seen some problems arise from copying kernel stuff in glibc
> > > headers, such as being unable to include both a some kernel and some
> > > glibc headers in the same program due to redefinitions.
> > >
> > >
> > > Have a lovely night!
> > > Alex
> > >
> > >
>
>
>
> --
> H.J.

