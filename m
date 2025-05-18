Return-Path: <linux-man+bounces-2972-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A54B8ABB1CC
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 23:52:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 461D03B475F
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 21:52:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2D932066F7;
	Sun, 18 May 2025 21:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SI2+rpjs"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5E63B2A0
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 21:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747605166; cv=none; b=aCeeqHgbf/NS7PioEIhFQ8120s2o4P30SqghKjWqEokpvAFP49wiwsIjy3xtFgZJ2gDcSPkRZV8OXK1bzp+YurJRAQJEb+sDIryj8WzHZxMKDIvd4H6KjoRzQ5YI8T2DGfENyy2DtYyCmKBO5qOVI7GYXMb4VO4W5SrLqXHRea0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747605166; c=relaxed/simple;
	bh=/IDsE5liKF2JthDAqH7h7KQ/FbIyrzr54c//pJxoClg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=avQRS43VCVk9gZbw2nWl1RQ1c/MKSUDBOMx9on31sztkOg3oszpQdBLwReW3omhKvCkPR1NsYAWKB25Lj3UeJyMIe+E0a9xTr7atKGHOONQNEa62F9DK3bbnIG4EHVPEPbfAFfMLK6QoTgMn5eufeSAgMZSVT6LfOOfLdwfl3W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SI2+rpjs; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-54b10594812so4377309e87.1
        for <linux-man@vger.kernel.org>; Sun, 18 May 2025 14:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747605163; x=1748209963; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JQohUtiRlzRHYmxlbjh+IjXolQb0a92YV8l9nusMi8A=;
        b=SI2+rpjsdBw1Y4MG3hI0Gpcw6epdD00gCNIqrf8gvWonGJ/u76EwU/nS55A9nRJ9yr
         Xvm/HBplj4ICqMRxFj8fnPCc1WcXxayZcLcSVkIoVKuwpnmIXTw7SHT6tgboAz7LZ1ab
         Mb+v2Wzt7yLaAwufS6DvSaNY8FNsF/VYpQGZRTM95VrJQc/i/YMV3U4d2YVpV7FdOgm2
         n4B5gWTKcChxH8t3GeNfMMXAACjYlxrVOpFXaj8VM9T2IewNghZad73GWhAITdeWTNZ8
         NdsHmRfGS1ySp5oBf6F6h3QG6F3epTD3rETP2Y3kp8SSoaBi3LGBcxVVMN6z1oAdJl/B
         MKlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747605163; x=1748209963;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JQohUtiRlzRHYmxlbjh+IjXolQb0a92YV8l9nusMi8A=;
        b=ZXrJRdyqKK943UMGZxWUtRouLgfdF8rZkZENEdfEFNrrq05ZjJZGCDnModeonqxZug
         LAxDA3Xibt2HLn1bicfcBhzdKWrgr1ZAZJHj4wPTErwGHJ+fK6c5Na8pbwg5N/MUmRxU
         8ze4VkaoAtQs0wG8GRVGCNaCB6vjxYrAGdv6u4BoH5hAkROXCpF1G1rj3oLjhNsXHpnp
         19jndVBYecukE/ZqFohg/gYy1FVKJOqkdlEBTsf6moTfvB7U1ZYZzQDEUDK0fttKsAOU
         K/gvDQ030mk6BJGkkxdRhvJPjMrWS2oNvggw2LfzQxUBjxOcVNvdE54xmfD54VE6ATEF
         LTzQ==
X-Gm-Message-State: AOJu0Yw4M7VrTTwHnywGRfM0xMb02q3ZrgWrEJE84fFfT8/OwWYbosJM
	to4mEIeMZz6ftUtFFAC2rbmyla61eCM52W8QiML71zqkrGT7TuVmobnNEvcoKtho8TspR4m9VvZ
	DCHzKdSo3MMcHZeoZOgEy2rtSeo1GszIcJPv6
X-Gm-Gg: ASbGncsrkn5L+5Cmft0JggsovRCeZNmNcoyD1mGSEQBLHs0MyBMkpfz15OqlpHkgNlq
	/pYZclIIyCESmWJPI36Bt//RCQraBUMUDna6NZQxvsbXjl4uJMFAPEwi2sVbc3bXqH+WDsyFZj5
	J+PXRiemfoVAKrQyP+bROtxx1ZZyQ08lpQs4IQgiACRBed8uJNV+jfQOGYBjDs4BE=
X-Google-Smtp-Source: AGHT+IE55Lvo0j+bhOn2dkZnmpyRm1ONBF1v38LxXpEpsc3lm2fCihE1NllScPhHzDAUVlUPxFIByPsTwZx/0fMCpp0=
X-Received: by 2002:a05:651c:4181:b0:30d:62a6:4431 with SMTP id
 38308e7fff4ca-328076fd2c3mr29059191fa.9.1747605162564; Sun, 18 May 2025
 14:52:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <zagbrxifsyor6bxzkqi7b66ixw3q67vez2nng7aqjpykkohph3@plmaq4pfz3yf> <87plg5hnb4.fsf@gmail.com>
In-Reply-To: <87plg5hnb4.fsf@gmail.com>
From: Mark Harris <mark.hsj@gmail.com>
Date: Sun, 18 May 2025 14:52:30 -0700
X-Gm-Features: AX0GCFvSPv-wPRt5MJQXj8rQkrCwzNrkcTkEXTp4EnuMUtB6g516_GUkW5EbIFs
Message-ID: <CAMdZqKFyc=cNh-aQVLZ6ovEZurzqSREhY1gx8L0m27f2uS=smw@mail.gmail.com>
Subject: Re: POSIX.1-2024 requires 64-bit time_t
To: Collin Funk <collin.funk1@gmail.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, May 18, 2025 at 9:54=E2=80=AFAM Collin Funk <collin.funk1@gmail.com=
> wrote:
>
> Hi Alejandro,
>
> Alejandro Colomar <alx@kernel.org> writes:
>
> > POSIX.1-2024 seems to require a 64-bit (or wider) time_t.  I don't know
> > how's the state of things as of now in glibc, so would you mind checkin=
g
> > the time_t(3type) manual page and letting me know if anything needs to
> > be updated or moved to history?
> >
> > At first glancce, I see
> >
> > DESCRIPTION
> >        time_t Used for time in seconds.  According to POSIX,
> >               it is an integer type.
> >
> > where I'll have to append "of at least 64 bits".  Then, there's
> >
> > NOTES
> >        On some architectures, the width  of  time_t  can  be
> >        controlled  with  the  feature test macro _TIME_BITS.
> >        See feature_test_macros(7).
> >
> > Which sounds redundant with the new requirements.  That sounds like it'=
s
> > for architectures that are non-conforming only, right?  In the
> > conforming ones, it wouldn't make sense.  So, we'll need to clarify
> > which architectures are conforming and which are not.  Please let me
> > know.
>
> I documented this in glibc in commit
> 363bbdbd2aeaae1e00f3872f2ba19a4a3c17bdf1:
>
>     manual: Mention POSIX-1.2024 requires time_t to be 64 bit or wider.
>
>     * manual/time.texi (Time Types): Mention POSIX-1.2024 requires 64 bit
>     time_t.
>
>     Signed-off-by: Collin Funk <collin.funk1@gmail.com>
>     Reviewed-by: Adhemerval Zanella  <adhemerval.zanella@linaro.org>
>
> But as you mention and as documented in the manual, some older platforms
> default to 32-bits unless _TIME_BITS is set to 64:
>
>     Currently the @code{time_t} type is 64 bits wide on all platforms
>     supported by @theglibc{}, except that it is 32 bits wide on a few
>     older platforms unless you define @code{_TIME_BITS} to 64.
>
> I'll have to investigate the full list of architectures which that is
> the case.
>
> Collin
>

For glibc, all 64-bit platforms, and the most recently added 32-bit
platforms (arc, riscv32, or1k), use 64-bit time_t.  All older but
still-supported 32-bit platforms (arm, csky, hppa, m68k, microblaze,
mips, powerpc, s390, sh, sparc, x86) currently use 32-bit time_t by
default but can use 64-bit time_t with -D_TIME_BITS=3D64.  For musl, all
platforms use 64-bit time_t.

POSIX.1-2024 requires that an implementation offer a conforming
environment that supports 64-bit time_t, but it is also free to offer
other non-conforming environments that use 32-bit time_t.

 - Mark

