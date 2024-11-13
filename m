Return-Path: <linux-man+bounces-1912-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 978DD9C7D94
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 22:22:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ECCD2B2D9A8
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 21:19:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D01F1C9DC9;
	Wed, 13 Nov 2024 21:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="AIVLkKH9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A59E618B48F
	for <linux-man@vger.kernel.org>; Wed, 13 Nov 2024 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731532716; cv=none; b=dqz6hERIH/d99oE0Vmm4l0TixqjnGesalj8k4+vJcQqTzcH/fiDhNT8A84UK4geivk1WSN1FL1S7j5kKJ4DRt2sURR54rfFx5Ir6g0OW/XMbMHbltiQ+VCiCjAfcTP8rkEIJyDrD4/SnZfAFlXXlX3pRZHAivObMuvMufV8GvWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731532716; c=relaxed/simple;
	bh=cPNZW5iyIIPMdkURtULAzs721p98lmkZkxD0N8z1Lr4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q6ZTv6QEqwMuMmMj+AFdkdhMmgzUgqaOlsablzt4//aAIF5F91vPCHaMQK7wOjQDd1nWcWy/qtBEXGFSwY6RUOO0rrTRK0lE7kzoyKmNgXqUVo6BqwuBHXVKysSI7M5jZ5uQ/50Ywr79DgOwRqOS7UHdXvUflfg4fetHYz/St54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=AIVLkKH9; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-20c87b0332cso26045ad.1
        for <linux-man@vger.kernel.org>; Wed, 13 Nov 2024 13:18:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1731532714; x=1732137514; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KGmdSmQIizG9rz8y88XrZkgkoXYDt49vGvd7rgb6RPk=;
        b=AIVLkKH9SxL7sNVSP5HJLQFof6cUo1H1Ad+cf+awyG/n0UK4bmtEFNqiIKgCRbomJC
         gLQMzZeIMCTmCgjjlrRMyFG91/nmgVJdcDhS6nb+WDRllzUlxPCz2KY+pcvmiauAdYjt
         WbkYWe633wJKJcxBwgQjOBKG9nt5WALBaSzIyHvLSRENZr6EQyEVM+Rh+BX8XwYWdmMW
         7VtR0jynq1TnAYv0mAkS9g5djP6sJIcp2J0oG55Lld12vtkUSjlPAYOYn6DTHrmkWyFR
         t4CEcRjRuCSR354vep0Y1x71W0a+YJiECZS1z1yjbNvesq+G53noz5rmZo+eWrakon0R
         EV5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731532714; x=1732137514;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KGmdSmQIizG9rz8y88XrZkgkoXYDt49vGvd7rgb6RPk=;
        b=uzBr0lGJG192wjugVYWuKuZ8++jF3p55eBipUDevPgoR7yCB3meee/KH9S55okx1Hc
         CyJNt7YXQww5XsYD86UekJJEMUycYK34ni0BWkGGTy+djY5T2R1CEGmFGtTyA7CHIRia
         RZJeVJ2d7wh3sBp9uZS+piwIciEqYdXWxofmeygUol+71K9Lmb6F8ZnYjn8WbY6EYTxF
         4HO2aNOHzEowPQ7B0LGVRxZghpoy4RhkfJDC/N51DjPJKeZV6C/QDnud4B3byQVP9mYa
         rjvn/Vll9uylY4v7ssRaGRndkKQxDqfHJ6O5iWfCyL8ZY4Pt5fn1/3Mhyclcgodxl0ro
         Wq6w==
X-Forwarded-Encrypted: i=1; AJvYcCUBMpUrWSGWM7jR5ux3rl+VueV/bOdHFrPoM2F/2vix89SDCeTyr3LGGENCCT1h8Ilb5URWEWL36so=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo5laXYfUErPIfuy9NQA6sbN4AWlB6uKv8NL+R2x6Sw9UoD+Fm
	3NKxFWNzzc2/iZ0SVTaDb13qUtxjA1MoPiqJ9oulIQsnOHrmMdoZZa85+h3aC+0pl52Yi7M2aAv
	G+RJSnFn5WQJE0QtXjZNWDGs33WOB30ZSUzF04kUrbHnjJ0+Ox3en
X-Gm-Gg: ASbGncsEEVIpMcjZuk1A7E8O15pFwSmQJYtXblo5cdBAG0vZku3GxNyJHM/M9sOZ+y2
	kifmc8uJFdrV9KhF+oiHJjr4KpHh+hEc0wrRfU1lsPeH6Q6U58nKQF4BGY1o=
X-Google-Smtp-Source: AGHT+IEsKqdReaj7Y3yQ9ewwDw1mq5/VvvnW7JHTktC3NTWKN0yGa8TpKBlcAAXx0ssjE8FO3xaY0HDSIGUT/ucqBQ0=
X-Received: by 2002:a17:903:1c9:b0:206:b7b2:4876 with SMTP id
 d9443c01a7336-211c1981ceamr673175ad.20.1731532713772; Wed, 13 Nov 2024
 13:18:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241113031654.3964740-1-yuanchu@google.com> <xuzxyv26ncwokfb32j4kajaqsnzo2o776encbvb4kli3jtyaxo@2duy42n7boga>
In-Reply-To: <xuzxyv26ncwokfb32j4kajaqsnzo2o776encbvb4kli3jtyaxo@2duy42n7boga>
From: Yuanchu Xie <yuanchu@google.com>
Date: Wed, 13 Nov 2024 13:18:17 -0800
Message-ID: <CAJj2-QG5anHo2ffe+QXjN5d_5OTE7r1gcxVcZkMaDN7eRceHGA@mail.gmail.com>
Subject: Re: [PATCH v4] posix_fadvise.2: NOREUSE now supported.
To: Alejandro Colomar <alx@kernel.org>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Yu Zhao <yuzhao@google.com>, linux-man@vger.kernel.org, 
	"T.J. Alumbaugh" <talumbau@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 13, 2024 at 3:42=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
...
> > diff --git a/man/man2/posix_fadvise.2 b/man/man2/posix_fadvise.2
> > index ed40b0c0d..11452699e 100644
> > --- a/man/man2/posix_fadvise.2
> > +++ b/man/man2/posix_fadvise.2
> > @@ -62,9 +62,15 @@ The specified data will be accessed in random order.
> >  .B POSIX_FADV_NOREUSE
> >  The specified data will be accessed only once.
> >  .IP
> > -Before Linux 2.6.18, \fBPOSIX_FADV_NOREUSE\fP had the
> > -same semantics as \fBPOSIX_FADV_WILLNEED\fP.
> > +Before Linux 2.6.18,
> > +.B POSIX_FADV_NOREUSE
> > +had the same semantics as
> > +.B POSIX_FADV_WILLNEED.
>
> Please don't reformat text that you don't change at all.  Patches should
> be minimal.
I figured I'd touched the paragraph and should get it all into the
same format.  No problem, I can keep the .B conversion to a minimum.

Thanks for the review! I'll send out an update soon.

