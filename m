Return-Path: <linux-man+bounces-4216-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4D2C194FE
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 10:10:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ECBDF4070E9
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 09:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8C962DF6F8;
	Wed, 29 Oct 2025 09:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h1RUxSyM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DBE1A3164
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 09:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761728463; cv=none; b=KLoDpO4aDvzoNtK2e0Cq7KD8hgzCD+0jn/+2ihm8e/ugeVqAzRMdGLuZEgOl4/+XW2EkXJu6JZtt2tFsV43TC51udVlFKOu2uZnJ1uvSNvjHT/zBaQC9oaiq48TLzS6/2jdH89SRJSew/u4NxmNjsXuvvpL0v1WYNlrtDK0zmw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761728463; c=relaxed/simple;
	bh=jQhuuAvoKgkk6vfmb3VFERiNTx6StUXHjNHCAWBJip4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hzbnD7Gs1aRY3vbEdPoTFD0C75hBbXlpxdb+m9PZ6URS2TyYoaKGHUBv2uxOMKi6PMI6QUei5GEiaJWeoObgQGSkb/IOEuuzeAEa9Ys8WU0/9LeYdm+cXts1GgQjh5a4Q/Qq4YeM3ellU1zJSV2QiQBpnt6j4Kh67lN0hxafXK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h1RUxSyM; arc=none smtp.client-ip=209.85.215.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f196.google.com with SMTP id 41be03b00d2f7-b8aa14e5ed9so488853a12.0
        for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 02:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761728461; x=1762333261; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IUwDe+S5e4Vj4jBiFCqPV2Mo5aWLB9NDL+lhcB1gW2E=;
        b=h1RUxSyMayik310C3Re+CfagmQKHbNR3CDnvrulhZ2c29pGx/v1riybjNKuUaUXYxk
         GpGRDgwyFyDWNUXXzfJk+hNsOQ0vARQ7Bdi5Sujig2rpWMzAatwVzjg8K97ce7r3+Rof
         W4o9r1Vx1Ldbt02bELgxQ5mL4fvHo941lfsGID9Y/dmuulr0WLavqRjHz4oM+e0YVtQE
         C16x6Niny18jpTVy4U2soffozT+YJcVJ5eOlfDmSmv8JV9KxbsF3UicUQLzR+xfo9L0d
         TiWGqRION/7Zi4WCLq8zC0K2D5bsKj4jnzsBpJi4+rKxx97VbZPDgk7dpVT8Ku5Vnb1c
         1XJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761728461; x=1762333261;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IUwDe+S5e4Vj4jBiFCqPV2Mo5aWLB9NDL+lhcB1gW2E=;
        b=U/LLmylcftjYJ4j30PcpuZoCxUK0QFv70iNqc2zYd2jJLDPKvjSkIpYXiU++u2nFQ4
         nOKICTYWdu0VWvhkQtD6fhyoiPLo2yarxFq5+zjssODGcMeNUmPL338xI9pooTt5Dk9K
         gFgQzYtdTB1ZsrD44yMmgWdQoI60ILAJCRK/U3G4GC7sfNc64zv4+BijTwJCC7ZqFNGo
         7ixhRoA7HV7PjEG16YgQSPhNxjFkYLOqzKM7XsAxGPXcP5QEmnokTmrX467ENfe+gAha
         DQ3KWViLsDvJZztyQpl64IO5KbxfrDsQ2vqQj3rSmSyTITlz/zDoZzdR1DxDxOk7+S6x
         aWig==
X-Gm-Message-State: AOJu0YzSF60OrzYw1SYIvLFl7YjGUReCQVK+PaMo9v8VQJF2vQYHKWqe
	kVp/umOyOeewx3po6tCfeRu28SLgEpSZKqGZO198LJFa0Hehqi/vwEehofa8SQ4z6p4DC7WJRMm
	IlyOGyIEs8MLW7ILoFrSlZ0pxpJ2JKSP1YFSSZoo=
X-Gm-Gg: ASbGncvzuMXDv7XpKbnhFEP5UXRg2AMAsgsZsZPhNDq3zbbrhWfEyTzTJEs1dhuYwk0
	9hLsZEDT2MIq6Yx7NAmE3M8ErH2c5F6NXhGOe3PS8wxQ7v6Wug8x8tWKrKYQHI8uZWhGknqVu/6
	lL3/kDwjsE19TxaFxSeeOYx3jdK9j7BbrwjpVJqRsSKM/4YYFT6aBxKwmtr19Gn5s/E/Bkwo2Nm
	fPTGcxMz3mwc0oOlU233LMc/8DoR9gYQTA0qNXBEgpbckNmBSrUhBrrnnb6Hbo=
X-Google-Smtp-Source: AGHT+IEyxx6Sq0hZGAlRLWTS97VWoSc6zGwQOtw6uII/95srKVXzkTRekQWkkYiSNvyQhYLdOZ2fy+pcsXJIBO+Xl8I=
X-Received: by 2002:a17:903:2f85:b0:264:ee2:c3f5 with SMTP id
 d9443c01a7336-294dee29c4cmr23574625ad.19.1761728460916; Wed, 29 Oct 2025
 02:01:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <b959eedd02cbc0066e4375c9e1ca2855b6daeeca.1745176438.git.devhoodit@gmail.com>
 <e2wxznnsnew5vrlhbvvpc5gbjlfd5nimnlwhsgnh6qanyjhpjo@2hxdsmag3rsk>
In-Reply-To: <e2wxznnsnew5vrlhbvvpc5gbjlfd5nimnlwhsgnh6qanyjhpjo@2hxdsmag3rsk>
From: hoodit dev <devhoodit@gmail.com>
Date: Wed, 29 Oct 2025 18:00:50 +0900
X-Gm-Features: AWmQ_bl9f3gHaYptHoYabHsvKO58o6lKLlx8-0mWznmYNGurQ_CmfsV001sLwHc
Message-ID: <CAFvyz33t9gYOi2HtNFNC_YAPS-_0QHiqJQwatc7YsGppstiZ7A@mail.gmail.com>
Subject: Re: [PATCH] man/man2/clone.2: Document CLONE_NEWPID and CLONE_NEWUSER flag
To: Alejandro Colomar <alx@kernel.org>, "Carlos O'Donell" <carlos@redhat.com>
Cc: linux-man@vger.kernel.org, linux-api@vger.kernel.org, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Alejandro Colomar and Carlos

Just a friendly ping to check if you had a chance to review this patch.

Thanks

2025=EB=85=84 5=EC=9B=94 2=EC=9D=BC (=EA=B8=88) =EC=98=A4=EC=A0=84 6:30, Al=
ejandro Colomar <alx@kernel.org>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:
>
> Hi Carlos,
>
> On Mon, Apr 21, 2025 at 04:16:03AM +0900, devhoodit wrote:
> > CLONE_NEWPID and CLONE_PARENT can be used together, but not CLONE_THREA=
D.  Similarly, CLONE_NEWUSER and CLONE_PARENT can be used together, but not=
 CLONE_THREAD.
> > This was discussed here: <https://lore.kernel.org/linux-man/06febfb3-e2=
e2-4363-bc34-83a07692144f@redhat.com/T/>
> > Relevant code: <https://github.com/torvalds/linux/blob/219d54332a09e8d8=
741c1e1982f5eae56099de85/kernel/fork.c#L1815>
> >
> > Cc: Carlos O'Donell <carlos@redhat.com>
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Signed-off-by: devhoodit <devhoodit@gmail.com>
>
> Could you please review this patch?
>
>
> Have a lovely night!
> Alex
>
> > ---
> >  man/man2/clone.2 | 9 +++------
> >  1 file changed, 3 insertions(+), 6 deletions(-)
> >
> > diff --git a/man/man2/clone.2 b/man/man2/clone.2
> > index 1b74e4c92..b9561125a 100644
> > --- a/man/man2/clone.2
> > +++ b/man/man2/clone.2
> > @@ -776,9 +776,7 @@ .SS The flags mask
> >  no privileges are needed to create a user namespace.
> >  .IP
> >  This flag can't be specified in conjunction with
> > -.B CLONE_THREAD
> > -or
> > -.BR CLONE_PARENT .
> > +.BR CLONE_THREAD .
> >  For security reasons,
> >  .\" commit e66eded8309ebf679d3d3c1f5820d1f2ca332c71
> >  .\" https://lwn.net/Articles/543273/
> > @@ -1319,11 +1317,10 @@ .SH ERRORS
> >  mask.
> >  .TP
> >  .B EINVAL
> > +Both
> >  .B CLONE_NEWPID
> > -and one (or both) of
> > +and
> >  .B CLONE_THREAD
> > -or
> > -.B CLONE_PARENT
> >  were specified in the
> >  .I flags
> >  mask.
> > --
> > 2.49.0
> >
>
> --
> <https://www.alejandro-colomar.es/>

