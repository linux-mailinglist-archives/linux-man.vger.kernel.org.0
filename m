Return-Path: <linux-man+bounces-2125-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C0A9E6784
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 07:58:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 536402858FE
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 06:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2220C1DB94F;
	Fri,  6 Dec 2024 06:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ZTRI/pkS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701E91D63F0
	for <linux-man@vger.kernel.org>; Fri,  6 Dec 2024 06:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733468276; cv=none; b=HQXa2FN8/ySqh3fLVY92Donnr1tlUfqw7F03WvbwcLTlcUYZi1xPrKNBor9FbKn0LYIV5zDTdsySfkmTiw76oCoV9YGpsVqGcFGtz6YI7Y6fuK5tU3ZtiqGEK+rzwx7Oobl8t0nA1yoLG/kBlG/O3TD+P20oqLc8OwjM7C4CZqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733468276; c=relaxed/simple;
	bh=Ml2u+yVjoKTlQZXON90bg2tWZM0ru/zbMfdxaupN6/A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UvRvZEwWM5VXmc7a9AsGAqDfXYBBtgExozoXO4ja7jSwJA4jM4uPehGKp0HBLLh8FvdvtvR27c0fzLBlmOuwMdH1Dj8ggKin1nQVGQOw/iNOQVyYTjt4es71B0WG97oxq9dtYlLmPVdf0g0zg2Zo7DTJJCVJXBVWb2dkl8czoqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ZTRI/pkS; arc=none smtp.client-ip=209.85.166.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-3a814c54742so59485ab.1
        for <linux-man@vger.kernel.org>; Thu, 05 Dec 2024 22:57:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733468273; x=1734073073; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dXMn6I7hWYWL/P+acu3qGdtYaDPspLPyZia6cGFakoA=;
        b=ZTRI/pkSRHhKyMm5ikT8frpGrbmyCjI0/zKgBD85Etr+zM5KONU9UZsKwsuzORFV8/
         6aXp+Vc0yqz4lj9PH85xqN29UYjZnYEzCRzOngb3nZMX0xjruL0U0VBWYF0hbN9IZe5b
         wxHHwWJzOpGLzH5IluQxT9ZYpccY3PR3ThFMhQtpmI8gNYoPi4w7glCV47r7dbpMDLab
         fI8J99wBKtHpSrxl9Z9x0vt1vCdRiL5GbIgTbGaHK4kU10xV1RfrjDferzn9eKtz+PAy
         gkMZr+wifPnNh/WDThd9aKHuE5WklPvMxl9lkQWIkJhardLWaqUE0sM9vD2B4RUbbBla
         It1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733468273; x=1734073073;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dXMn6I7hWYWL/P+acu3qGdtYaDPspLPyZia6cGFakoA=;
        b=OVSO9ztoiOWm5HOXJ+ggBrsk28e5cpWm+9swGe8KSFPo7TxtqN+TMMi61PQ5I53cPH
         C8Q2t6kXntGg1OO84GLQHn3UIGi9CItBTHY8TDEHqvv8kCDYrD7RmNVVAR9E8sFqKZ5L
         TRsk1cNraSghVhnWyf4T3lDdE/PLZ21sHhyQcB25XgIsBg9tD2mdaQxEhUAZC4j/McJY
         GxVGgoMugH4CZqwnU2Nr7MpNF8jmMEIx/7hK8i5alDSocC57AAsJ8FyBeOOrrRqfPnMJ
         LTLjUrHkMdU59QYybPTtmo871/J8T/f3Cz8T9U1ygjWDZ0mhD8GRBmSiAptZcjM2/0Vv
         5Ogw==
X-Forwarded-Encrypted: i=1; AJvYcCUudd0PA3i6NT+qYSgBvivXuAk0PTlnFUH0H0C0y+MtQMati2rzeyn2UXgAHWRsp+dShH3xTFjENKw=@vger.kernel.org
X-Gm-Message-State: AOJu0YwfioVCZv0Pj/NwHbcr2TuH9y0XNbY6AThcR1hczvKNRX9TGU+V
	4stVlEcnM6LrGHBCUtV3Bcg+jw2/bDjwEqxkzxeJUKJu6viy2y6t+X8UYHU3PSxjqI9QJCeZ0Av
	1HwJUKH/AFc2zLLJRZzgPoqowc1mw90XcmR3b
X-Gm-Gg: ASbGncvK1FEppIlQk2140dy8hKZ7f2tXX9DjC4f0xnWsnLaiH5uewtbMA4TVqUBIJ2v
	g6M+btSqmlSMAT70IsHaPaEZMJIJ2et/7
X-Google-Smtp-Source: AGHT+IEBWqfpt2e3wk/xban2B7L/9zraBXwb7yATu2Omq+k/NWHoAq5u+yXwLqSrM+NLSj6sWl4Oz9m1Zct4nWMyugU=
X-Received: by 2002:a05:6e02:3a0d:b0:3a7:a5d2:c641 with SMTP id
 e9e14a558f8ab-3a812c5bd0bmr2398645ab.14.1733468273429; Thu, 05 Dec 2024
 22:57:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241101191156.1272730-1-irogers@google.com> <20241101191156.1272730-2-irogers@google.com>
 <20241102101720.cwp7lcidqbzkrub6@illithid>
In-Reply-To: <20241102101720.cwp7lcidqbzkrub6@illithid>
From: Ian Rogers <irogers@google.com>
Date: Thu, 5 Dec 2024 22:57:42 -0800
Message-ID: <CAP-5=fX5Gw71CuQgqJuuWkFBUAyz2+SObWvGnEHpz1BgHh7tsg@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] proc_pid_fdinfo.5: Make pid clearer in the name
 and 1st paragraph
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 2, 2024 at 3:17=E2=80=AFAM G. Branden Robinson
<g.branden.robinson@gmail.com> wrote:
>
> Hi Ian,
>
> At 2024-11-01T12:11:54-0700, Ian Rogers wrote:
> > diff --git a/man/man5/proc_pid_fdinfo.5 b/man/man5/proc_pid_fdinfo.5
> > index 87e6dbe56..935b54b4c 100644
> > --- a/man/man5/proc_pid_fdinfo.5
> > +++ b/man/man5/proc_pid_fdinfo.5
> [...]
> > -this is a subdirectory containing one entry for each file which the
> > -process has open, named by its file descriptor.
> > +this subdirectory contains one entry for each file that process
> > +.IR pid
> > +has open, named by its file descriptor.
>
> `IR` is better used with two or more arguments.
>
> As of groff 1.23 (July 2023), the man(7) package will warn you about
> problem like this if you ask it to.
>
> $ nroff -man -rCHECKSTYLE=3D1 /tmp/proc_pid_fdinfo_mini.5
> an.tmac:/tmp/proc_pid_fdinfo_mini.5:7: style: .IR expects at least 2 argu=
ments, got 1
> proc_pid_fdinfo_mini(5)       File Formats Manual      proc_pid_fdinfo_mi=
ni(5)
>
> Name
>        /proc/pid/fdinfo - information about file descriptors
>
> Description
>        Text text text text.  One pid to rule them all and in the darkness=
 bind
>        them.
>
> example                           2024=E2=80=9011=E2=80=9002           pr=
oc_pid_fdinfo_mini(5)
>
> I think Alex has a make(1) target that assists with running groff this
> way.
>
> groff_man(7):
>    Font style macros
>      ... It is often necessary to set
>      text in different styles without intervening space.  The macros
>      .BI, .BR, .IB, .IR, .RB, and .RI, where =E2=80=9CB=E2=80=9D, =E2=80=
=9CI=E2=80=9D, and =E2=80=9CR=E2=80=9D
>      indicate bold, italic, and roman, respectively, set their odd=E2=80=
=90
>      and even=E2=80=90numbered arguments in alternating styles, with no s=
pace
>      separating them.
>
> One reason to pay close attention to this point is that
>
> .IR foo bar
>
> formats as "foobar" (with "foo" in italics), whereas
>
> .I foo bar
>
> formats as "foo bar", with both words in italics.
>
> The different handling of the space is a common manifestation of error.

Thanks Branden, I think I'm taking away use ".I pid" rather than ".IR
pid" as the pattern of using ".I <name>" is used already in the file
and groff/nroff weird stuff, who knows. I'll change this for v5.

Ian

