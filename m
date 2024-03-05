Return-Path: <linux-man+bounces-537-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B3B87276B
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 20:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A57711C21C39
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 19:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B11AD24B29;
	Tue,  5 Mar 2024 19:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="FydKzNbg"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015E924215
	for <linux-man@vger.kernel.org>; Tue,  5 Mar 2024 19:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709666363; cv=none; b=o9CqznQYCxt8bwMG+LbROCRVxGf4RWisicohxlWIU1wsDEQ2bgRdoNb5lmff5HKBIIOEOgbqrwJhY3AmgHkpuxFH16CRYXOGN/76TaZgCR0K0YDmOaMf9L0ftC/3LsnCmHc6oDG2C5wqBzNcf2eveLctlIqar2Bc+0YWcy4wucc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709666363; c=relaxed/simple;
	bh=L1QDcYeO/0CTdgDGOuinweSQRLTxtEvm2ZvrwERZgbE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MSQsM1ymT3UVoL+TlNFVhRs+vTajpHIabfOO0Mlw0gHWR/hIwMWxusXtF80wPxzo86G9io0vPB4cFI3e4MmjN/UlD7W1xfGJWz5yDPV5Fm1A7rYUzO0DxJXcJzw91WfJf6GnT1yKofMyf33xaErm8pxJF+CHHe3E6MrKGbrSuTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=FydKzNbg; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6908b5037d5so3582846d6.3
        for <linux-man@vger.kernel.org>; Tue, 05 Mar 2024 11:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709666361; x=1710271161; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EAAqvAFHHyewirVH9t5LOMuoOXA83LmqptfAivq+1Hg=;
        b=FydKzNbgAmhpLNFKtp7z0OCIl8PXBmtcFEVFtHQGXWq5eClQokhuwn/lnvmj5Bpgrl
         tzCoUaDNPf91vdeWXvY/+ePmYZxLTM3/5BY6kaDQiA5g720PbB3eY/xMDcvN+cZUT2s9
         NQGKfFlmSmBFGYw/354BnOkgOPtaYiMGyGp65DtUDDQafdmfstY+7lq5ZW/9F9z0t4Z1
         5LYchcJnqrVYN0R6XolLKpzJFebA7xRtCrVaqmobI5MOiPfQ0H+Zq3/VatGgjcYB8epy
         5GYEms0bWR3MTrRbJgO3WFQkdELO/Z2Ja7Rey5YkQOsUFCbEMIsProJ8ZWWnIs4DhA9w
         IVJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709666361; x=1710271161;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EAAqvAFHHyewirVH9t5LOMuoOXA83LmqptfAivq+1Hg=;
        b=sow0+pGi3hLUfykFHkOQIsSgW57arZb6MRYnbI1wt5E07YEDb2j5tO+5Etc7ofLuZ8
         Wa2A5FQYBI7v9LMfLjNT+9hpRpk1g55Fl1Up//HRdu/Ubr7oP9XeSj2RpFjhmy58MblA
         hJyOLmrDchimZBM9LsHC9ypfF90nlk4FNU7obKNic0fyi2IQhA8CFTSNX10rY9OkKQi9
         Mjw/37PsjMNnhuh6lnYe2wF9B/eSSj68g7GsSwsWiGOwwWM2dE1LM27nAlXGTdzLYoWb
         0BmpfEPgasT2L1rppSvhm5pChsDswPBp81AoAC586uWjIjB40q+MSQLCV0QqmEFkN/VQ
         f5aw==
X-Forwarded-Encrypted: i=1; AJvYcCWQLzlMxunNmxY2+8BbE9xBLqsI/6sYdi9HMHjZvBmMxaXhp/t1OwJCizp5J+BIBuYrFHwmuu533RPZ6sMdguSo5qo7TVH10TOa
X-Gm-Message-State: AOJu0YxhFyR/Mhoy39tsIjru11X8j6IlT8LQFFS9ZjcSKy+s7lHdGbNQ
	SZYB82V8O2+93NS+ibZEc6Q/PR6AzX/I1Q7fiELLnfkgnTNwm9/eFz1ZseqlvUbWW7f4/mBE2jw
	7WRVneZV+xfC1huArAMVnVpRALtp/fZ7WTbwE
X-Google-Smtp-Source: AGHT+IEvXbeKxeBkcaDmQxNovC1SysFbTsz3ZRA3V3L0kL2N4BNKF5/5LG9CmXVhaBGJEZHJSz2tArjgZR1DVYPt/ao=
X-Received: by 2002:a0c:e904:0:b0:690:3081:a69d with SMTP id
 a4-20020a0ce904000000b006903081a69dmr3002407qvo.37.1709666360864; Tue, 05 Mar
 2024 11:19:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <ZUIlirG-ypudgpbK@debian> <20240303121454.16994-2-alx@kernel.org> <ZedgnagXMV5aTcsM@debian>
In-Reply-To: <ZedgnagXMV5aTcsM@debian>
From: enh <enh@google.com>
Date: Tue, 5 Mar 2024 11:19:09 -0800
Message-ID: <CAJgzZoofRZxmOnaQyi_+e1eZnZvKp_iz5j294Bp-H+GwJhSA=g@mail.gmail.com>
Subject: Re: [PATCH 1/2] man*/: epoll_*(), fcntl(), flock(), ioctl(),
 msgctl(), *prctl(), ptrace(), quotactl(), reboot(), semctl(), shmctl(),
 lockf(): Consistently use 'op' and 'operation'
To: Alejandro Colomar <alx@kernel.org>
Cc: Stefan Puiu <stefan.puiu@gmail.com>, Bruno Haible <bruno@clisp.org>, linux-man@vger.kernel.org, 
	GNU C Library <libc-alpha@sourceware.org>, linux-api@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 5, 2024 at 10:12=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> On Sun, Mar 03, 2024 at 01:15:09PM +0100, Alejandro Colomar wrote:
> > Reported-by: Bruno Haible <bruno@clisp.org>
> > Cc: Elliott Hughes <enh@google.com>
> > Cc: Stefan Puiu <stefan.puiu@gmail.com>
> > Signed-off-by: Alejandro Colomar <alx@kernel.org>
> > ---
> >  man2/arch_prctl.2          | 12 +++---
> >  man2/epoll_wait.2          |  4 +-
> >  man2/fcntl.2               | 70 +++++++++++++++----------------
> >  man2/flock.2               |  6 +--
> >  man2/ioctl.2               | 30 +++++++-------
> >  man2/ioctl_console.2       |  8 ++--
> >  man2/ioctl_fideduperange.2 |  2 +-
> >  man2/ioctl_getfsmap.2      |  6 +--
> >  man2/ioctl_ns.2            |  2 +-
> >  man2/ioctl_tty.2           | 10 ++---
> >  man2/ioctl_userfaultfd.2   | 10 ++---
> >  man2/msgctl.2              | 16 ++++----
> >  man2/prctl.2               | 84 +++++++++++++++++++-------------------
> >  man2/ptrace.2              | 60 +++++++++++++--------------
> >  man2/quotactl.2            | 34 +++++++--------
> >  man2/reboot.2              | 19 +++++----
> >  man2/semctl.2              | 22 +++++-----
> >  man2/shmctl.2              | 20 +++++----
> >  man3/lockf.3               | 11 ++---
> >  19 files changed, 217 insertions(+), 209 deletions(-)
> >
> > diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
> > index bbb85866c..680d36395 100644
> > --- a/man2/arch_prctl.2
> > +++ b/man2/arch_prctl.2
> > @@ -14,8 +14,8 @@ .SH SYNOPSIS
> >  .BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " const=
ants */"
> >  .B #include <unistd.h>
> >  .P
> > -.BI "int syscall(SYS_arch_prctl, int " code ", unsigned long " addr );
> > -.BI "int syscall(SYS_arch_prctl, int " code ", unsigned long *" addr )=
;
> > +.BI "int syscall(SYS_arch_prctl, int " op ", unsigned long " addr );
> > +.BI "int syscall(SYS_arch_prctl, int " op ", unsigned long *" addr );
>
> [...]
>
> Hi Elliott!
>
> This is already in master.  Feel free to do a similar thing in bionic.
> ;)

already did :-)
https://android-review.googlesource.com/c/platform/bionic/+/2987969

> Have a lovely day!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.

