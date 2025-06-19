Return-Path: <linux-man+bounces-3165-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB67AE00F3
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 11:03:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 259BF19E51F8
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 09:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC6A027F73A;
	Thu, 19 Jun 2025 08:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M1+NyNOO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58F4280302
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 08:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750323537; cv=none; b=BbMvuK2yBL/Si8PF9Lxyg29VDssOontizE3J8+iUEzsJMUWMY2967Zutf94WnnLPXdCQocc9g3hrlVgwbkGibXVySpIdUx1fTsdR+dfNddnT9pdlSd400DpUNAaBObLX/QjdK2RulUBLbubarsOYKH2EoPXYk6Yx46SAijmxYZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750323537; c=relaxed/simple;
	bh=tBCD8OZ4z/6+TR/XbuZLC9si8Nq1yHEXwXXvww8SFDo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IZtNoZSf4znohWT5WZvQ7oJWq2SroAnn5xQbOM62000T1L/E1WNjuNMdWElyaiXJ8zjKVKxw+b3S3u1q5dSdwNcixo+YNCHawwZZPmwJANfT44KAJUPJYDx8O/EUHlKTn4XsLQoX5BSiCzmC5/2ypReacbnk9mv3GiecCxV+SHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M1+NyNOO; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-adeaa4f3d07so104146466b.0
        for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 01:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750323534; x=1750928334; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7d2c7g2I284+okiVrbREFT1HrHr0uD139JpKriigFFo=;
        b=M1+NyNOOJQ6BsRLf8eXwmX0tRfGBTKTpfug+G7aCitrdsvpnE6KOkqmawX4+4c35IQ
         c5i9LuKzBakRK0uDcUfsaHAOzGXDwYCoLS7WfEs/zn1AJe1gO7W5Na5boySxsTvyBflW
         +AcAC2NFC+cpADGu1a2MKrsim8jh3/9PVEiPmEQi6bbJMfDvfI0ehqGeS+Nvnf2ZUsB7
         JrmYdm299O8zGFYxzMWEP5NZdU1XCIzGhbpuXHGPyfF8id7ewD9HghhJwfTegEcHtE80
         Kb+2zhnBxI9wl9j/PXcLFGhfdxzPzy3cjn5b/b0Q+1zhU+HbwzEjKpn35NwAn2Ee9n8L
         hg/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750323534; x=1750928334;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7d2c7g2I284+okiVrbREFT1HrHr0uD139JpKriigFFo=;
        b=YebWWH6X5+MQ4V5NWITsnUroju89k6UPPVx6avLILwIGG42DIbnvkoWAr7PbdBRwmw
         iVWwLQmyv/Bfv4cflQMbTNQNjGal0DG9cyHWrgsItNgbvp04+FiUQ1J5It7VFmJkQ/xe
         HzcB7CTD0DgLbB4rB9yh8+xnTr4IAm+Uxt2iXeUC67zFPM64tIFJXVFyI38KckDk/u2F
         TKyBnNhtyDIqU2qhXDRTnL02R+2Az2iHMy2xtd8Iw470sDz68WtWR1fZDqpFwIyoJXEp
         1cUFE1pHG+S4udH5r8ZtMfHkMzTIgA2cuZp/RoaTEsZj8ubGxqrRba8t7iPy6ceS8mhT
         k5/A==
X-Gm-Message-State: AOJu0Yw+vd5BFA96IeHLfO19zYuLjNuto4f6v0AYeL7za+1FIijD6JeS
	I3cYpBr6mffsxyufsHVDYcuui7zxLjr0kDd5NrNFWPiB2/9aSPFPTG81eOoFy6Gy3Yr0Rerf02q
	JNqDiJIUwvrEvt1KfjDHSXI+k6uCkLqb5OcYxCzw=
X-Gm-Gg: ASbGncvF1woiKmWeVL8jF6Uirn5scReFD/DzjSpt5LkOc+i24SwMf4Jod/fDGpnBiZZ
	gEo4R3Q51VtUAw99+seiVrektM7tmLjxS6c1UA54/xabrRjB2yUw9OY//yjndzJYk5dwLnqeqiN
	M1ePm1lI/BNSjVmFrvN+fJQI7PaWAeJoyqQT375V05IWHTFT2km33U7Xy0/1o=
X-Google-Smtp-Source: AGHT+IGfztte2HqGfz/Ks2ybkWFGT15yeglSW4lcYfRvt968G6ShIRrzFc3tumvD+WciEXW4o5r77URcNwkg7doWWWY=
X-Received: by 2002:a17:906:9fcb:b0:ad8:9e5b:9217 with SMTP id
 a640c23a62f3a-adfad60cb3bmr2102044966b.45.1750323533753; Thu, 19 Jun 2025
 01:58:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250611141350.1829-1-technoboy85@gmail.com> <wb5evdrlgzsdlkm2kloclljwtwfxdsg24ioctnoduqej3ryero@5rvgose3mdis>
In-Reply-To: <wb5evdrlgzsdlkm2kloclljwtwfxdsg24ioctnoduqej3ryero@5rvgose3mdis>
From: Matteo Croce <technoboy85@gmail.com>
Date: Thu, 19 Jun 2025 09:58:16 +0100
X-Gm-Features: Ac12FXwMpkkAIyyRw7XOxnTlBjIx3B3xX8tPMrGLZzNXhgwJsM9TSPI2uIzyHyA
Message-ID: <CAFnufp3c9k6D_kD7D5j_c9-4yf+a-jMYxDm38xa-W5E=jcwiNg@mail.gmail.com>
Subject: Re: [PATCH v4] man/man2/cachestat.2: add a man page for cachestat()
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Nhat Pham <nphamcs@gmail.com>, 
	Johannes Weiner <hannes@cmpxchg.org>, Matteo Croce <teknoraver@meta.com>
Content-Type: text/plain; charset="UTF-8"

Il giorno gio 19 giu 2025 alle ore 02:16 Alejandro Colomar
<alx@kernel.org> ha scritto:
>
> Hi Matteo,
>
> On Wed, Jun 11, 2025 at 04:13:50PM +0200, Matteo Croce wrote:
> > From: Matteo Croce <teknoraver@meta.com>
> >
> > Add a missing man page for cachestat().
> > The text was converted from the commit message:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cf264e1329fb0307e044f7675849f9f38b44c11a
> >
> > Signed-off-by: Nhat Pham <nphamcs@gmail.com>
> > Signed-off-by: Matteo Croce <teknoraver@meta.com>
>
> Thanks!  I've applied the patch with a few amendments.  I've tweaked the
> commit message too.  See below.
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=797d642cc47ff6f1b9199e5e1d28c528409e0c14>
>

Got it, it's even better now. Thanks!

> > ---
> >  man/man2/cachestat.2 | 111 +++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 111 insertions(+)
> >  create mode 100644 man/man2/cachestat.2
> >
> > diff --git a/man/man2/cachestat.2 b/man/man2/cachestat.2
> > new file mode 100644
> > index 000000000..084d5cd04
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
>
> I've wrapped the structures in EX/EE, as is done in other pages.
>
> I've also moved them after the function prototype, to have the function
> stand out more.
>
> > +.P
> > +.BI "int cachestat(unsigned int " fd ", struct cachestat_range *" cstat_range ","
> > +.BI "              struct cachestat *" cstat ", unsigned int " flags ");"
> > +.fi
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
> > +.RI [ .off ,\~ .off+.len ].
> > +If
> > +.IR len\~==\~0 ,
> > +the range is from
> > +.I .off
> > +to the end of the file.
> > +.P
> > +The
> > +.I flags
> > +argument is reserved for future use and must be set to
> > +.BR 0 .
> > +.
>
> I've removed the line above, since it doesn't do anything.
>
> > +.P
> > +Currently,
> > +.B hugetlbfs
> > +files are not supported.
> > +.SH RETURN VALUE
> > +On success,
> > +.B cachestat()
> > +returns 0.
> > +On error, \-1 is returned,
> > +and
> > +.I errno
> > +is set appropriately.
>
> I've changed this sentence to be consistent with all other pages, which
> say "is set to indicate the error".
>
>
> Have a lovely day!
> Alex
>
> > +.SH ERRORS
> > +.TP
> > +.B EFAULT
> > +.I cstat
> > +or
> > +.I cstat_range
> > +point to an invalid address.
> > +.TP
> > +.B EINVAL
> > +Invalid
> > +.I flags
> > +value.
> > +.TP
> > +.B EBADF
> > +Invalid file descriptor.
> > +.TP
> > +.B EOPNOTSUPP
> > +The file descriptor refers to a
> > +.B hugetlbfs
> > +file, which is unsupported.
> > +.SH STANDARDS
> > +Linux.
> > +.SH HISTORY
> > +Linux 6.5.
> > +.SH CAVEATS
> > +Note that the status of a page may change after
> > +.B cachestat()
> > +retrieves it but before the values are returned to the application;
> > +thus, the values may be slightly outdated.
> > --
> > 2.49.0
> >
> >
>
> --
> <https://www.alejandro-colomar.es/>



-- 
Matteo Croce

perl -e 'for($t=0;;$t++){print chr($t*($t>>8|$t>>13)&255)}' |aplay

