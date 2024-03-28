Return-Path: <linux-man+bounces-703-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C515688F37C
	for <lists+linux-man@lfdr.de>; Thu, 28 Mar 2024 01:20:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 648281F2B72C
	for <lists+linux-man@lfdr.de>; Thu, 28 Mar 2024 00:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 617B679ED;
	Thu, 28 Mar 2024 00:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="c4Mf7l41"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98B1063B9
	for <linux-man@vger.kernel.org>; Thu, 28 Mar 2024 00:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711585239; cv=none; b=eeFc78P1ejEj0nmYb5pumSBMs3Kiag2fEJlp7YNbR4UgCwG4AGMMENHkiZJ3KKE23oEqNnbT/Xhj8tWb7Vt23gPLRQQ93MaiK2CPQP189hDdrNMqwnttg64l3ZqWWhs94TOGK9PMJcuaqPvLoMI2yaGSwTs2HSrrDZxltSUhxio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711585239; c=relaxed/simple;
	bh=1kBMtYZZcP+6wc/QQ0LTEob/gWBBZ9zPoKHghFa0bZg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SUn+27ZuwGg3Wk1JomwT4IstCpZ9fh1mexiq51vljJPAXmb0Jx7Ye49OCUUpwzxLCb8mpZnOfVdKU5zsphxOyU14xrDhAJ+lOCrV0CYNOicfGx+fH0Qjm2m3iZiPTRnthKhX49AI3EVvNbEflFiLTUUnvY9QQDvzaAiQB4Qd60Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=c4Mf7l41; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6963c0c507eso4604526d6.1
        for <linux-man@vger.kernel.org>; Wed, 27 Mar 2024 17:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1711585236; x=1712190036; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L8JC9r4SOf4bAVipU9tiqe/wGg8x3OVdTL4VXlFbh4w=;
        b=c4Mf7l41PBo3psG6qViK4myoVtDx7f8FEXk48CvPcenbTVU/Q4jKK0sgDX424tdaQA
         FAujcQtaU1N4m16zJLgQwWPPgoWf6tUhpv6JqKNhxEjyp5kRmHeh07FgtZ4RS76QTvey
         ZfgvqxPfoWGFXnEAt0p+lcEi5nAIwGGZXCtWOaumdeCQA5GeguT5KX3BduX6SlWV6RDm
         Brl+cVPsbrVH4LPIeQqBdR7smD6XzdSYNljzhtoDRt7GLDZI9VZSqyQYwSHeaDNjkYms
         Nk1MBu7YYSCXWpdx2e36AK6q0lwaXvf8jqo85IgrmntllGyRpiOSSClbWe0W8s+qKAuQ
         8LKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711585236; x=1712190036;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L8JC9r4SOf4bAVipU9tiqe/wGg8x3OVdTL4VXlFbh4w=;
        b=sBuzFVhmZ+WA32iRDHdltGu/EzA5NBigWvF9ADCS0rpI+0SQBgPTcKrwOUH07SdTgn
         lMtcVzEGhpY3wbB+6l+qEJFQgRoPCVyhsO5CoC0ry8FBBodymeMhpofvURpxDBcQylWm
         w7Z/L2nVFEIYq9Y+UNgryLqq6pZB204UIViVyIde2GNnNGZzENtShdRwX310viGQkQ9H
         V22oqxwEKAP/0nCA7U6lVIYw0GMAG+J62oRJiBECJKVssafQvEVOqm1fSJmIh9rlBiqv
         JVbAKFWpBZ57dRrIpoPzoJhSeB0nsjzX1+dyn+9L09AKM/CZjjkikg3u3flJ67rumsui
         SUaQ==
X-Gm-Message-State: AOJu0YztczoOXP+Dbbp9elhIT0dBxKrV3xG7J0hEhko4K+PsWVnvpFU+
	egvO/91bG7leeMX6/qCxOyCKV3+8xwdJkFkNbjC4pIDOJmlsinJMvEaXtz7a1efVD9oTVMBbhhj
	mg0/5DB7cMUDBl2ShwS0AT0q2v39N4xYeoy7d
X-Google-Smtp-Source: AGHT+IHWn3jXLb5Cvb74XQ8yzSA4Jj8X+MYh6hBffbpdWJWqIfWivCcOs50eHTGjjD++IvLEKT2KjmHHq2V19saOFGM=
X-Received: by 2002:a0c:e40a:0:b0:68f:5fe3:a90e with SMTP id
 o10-20020a0ce40a000000b0068f5fe3a90emr1543527qvl.29.1711585236219; Wed, 27
 Mar 2024 17:20:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZooCY7EV5LZSom08k0wVB2SW3KAk-HL9VMsioxivQB=MeQ@mail.gmail.com>
 <ZgNYTXW4qHm7fBxi@debian>
In-Reply-To: <ZgNYTXW4qHm7fBxi@debian>
From: enh <enh@google.com>
Date: Wed, 27 Mar 2024 17:20:18 -0700
Message-ID: <CAJgzZoqO_pdy_=+D0AHYhikXMDbTKKn94EttuUeE5EHjxct5vQ@mail.gmail.com>
Subject: Re: getpagesize.2
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 26, 2024 at 4:20=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Elliott!
>
> On Tue, Mar 26, 2024 at 03:27:27PM -0700, enh wrote:
> > i'm not sure a lot of the text in getpagesize.2 is very helpful? for
> > example:
> >
> >        Portable applications should employ sysconf(_SC_PAGESIZE) instea=
d
> >        of getpagesize():
> >
> >            #include <unistd.h>
> >            long sz =3D sysconf(_SC_PAGESIZE);
> >
> >        (Most systems allow the synonym _SC_PAGE_SIZE for _SC_PAGESIZE.)
> >
> > is this a good recommendation _unless_ you've found yourself on a syste=
m
> > that doesn't have getpagesize()? on Android i'm advising getpagesize()
> > because it's (a) attribute const and (b) inherently cheaper than syscon=
f().
> > (though obviously, "if it really matters, stick it in a static".)
> >
> > afaict the only motivation for the "portable applications" advice is th=
at
> > HP-UX removed getpagesize() at some point? but given that HP-UX has bee=
n
> > kept "alive" in an artificial coma since 2007... does anyone writing co=
de
> > in 2024 need to worry about that enough for this to be good advice?
>
> I hope not.  It's dead, AFAIC.
>
> > getpagesize() is available on Android, *BSD, iOS/macOS, glibc/musl, and
> > even mingw!
> >
> >        Whether getpagesize() is present as a Linux system call depends
> >        on the architecture.  If it is, it returns the kernel symbol
> >        PAGE_SIZE, whose value depends on the architecture and machine
> >        model.  Generally, one uses binaries that are dependent on the
> >        architecture but not on the machine model, in order to have a
> >        single binary distribution per architecture.  This means that a
> >        user program should not find PAGE_SIZE at compile time from a
> >        header file, but use an actual system call, at least for those
> >        architectures (like sun4) where this dependency exists.
> >
> > should this just say alpha, sparc32, and sparc64 instead of being vague=
? (i
>
> Yep, I'd appreciate that, after the current text (not replacing it).
>
> > suspect anyone who doesn't default to searching the kernel source would
> > turn to the man pages to answer the "which architectures?" question :-)
> > though i'm not sure why anyone who doesn't read the kernel source would
> > care whether getpagesize() should really be in man2 or man3...)
> >
> >        glibc 2.0 fails because its getpagesize() returns a statically
> >        derived value, and does not use a system call.  Things are OK in
> >        glibc 2.1.
> >
> > 1997 called, and wondered whether we're helping anyone by documenting a=
 bug
> > that's been fixed longer than several folks on my team have been alive?=
 :-)
>
> Agree.
>
> Do you intend to send patches?  Otherwise, let me know, and I'll prepare
> something.

i can do, but it also sounds like enough of a bikeshed that i imagine
you'd only want to rewrite it again anyway :-)

(i was actually surprised how many references to glibc 2.0 there are
in various man pages, and even more amused by references to "ancient
versions of glibc" being defined as "before glibc 2.0", as  if 1997
isn't ancient :-) )

> Have a lovely night!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.

