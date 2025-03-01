Return-Path: <linux-man+bounces-2555-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE19A4ADFA
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 22:06:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C177B16FCCF
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 21:06:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B918B1BD01D;
	Sat,  1 Mar 2025 21:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j8gmRe60"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF05F179BC
	for <linux-man@vger.kernel.org>; Sat,  1 Mar 2025 21:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740863197; cv=none; b=cnZR81LuYlwU3hdi6l8l0Oaoy2aSGCBluQm5DcpkJv7wQsHnSZxsDy7Cvc09gZJE03STGHnP/mUQexPgllAOh5NOCcangqjOuCyJOK4J//NJWw0HOZ+PtMpqabFkvY1CbfHLuWZMmTXoMSVJuCDXt68GRanY7oJLXL1ERiuOeJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740863197; c=relaxed/simple;
	bh=8YK9jZoByiePZZXaXPkx5K625Gj3FoZ/I8t01PnuTyk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IugpuIouSslJiPUsp09z9NQ+iGalz8GLi9+TJ/BpRGaYyY1sBzSn8CKa8GqK7wpJ30l1sc6010/FdLJd1qTDAm8lZVXqKSoJiy7lgsKdXq1ourgp6JmPBBJmn9FLwZGbT6/Vbmr2ITbrulfLNfAEGFOtYgXfPLz5T6jyczkOpCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j8gmRe60; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-548878c6a5aso3595088e87.3
        for <linux-man@vger.kernel.org>; Sat, 01 Mar 2025 13:06:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740863194; x=1741467994; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Ws8fGchR+TV90qYHTKO0b86HUT+KsUG9KhMrHzHhAE=;
        b=j8gmRe60nlJ+b5+a8r+5UuVD8DCc0rirs7JBOy9GRew/hFDi8vzI7ITUWajIpQ2czF
         Ipcp12aFbub/wjlVEXKQ1LCZe6Li+I4sY7kX9mfEKwa1epmg1OKO0yNpPq7aahC3Y7Kz
         xqx3Epa+M31oXKKg1ELc/uJX/WSasemsJtei9PP25BQV95xcqHZXOmtOSQsV94DqMf6T
         yZeNKJgmyKadhBZMsGZfqQnIB6PY+hO2Nni79ZWV7z9Ftqz/9lVUWJtz5J8fxMwW/3VN
         yVlL1hQJ8+V+7S6NuYEt0E/3kSfQSuiVsK05lkoY6DhhBwRwqTe640W46AT0vnGo9v27
         HvbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740863194; x=1741467994;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Ws8fGchR+TV90qYHTKO0b86HUT+KsUG9KhMrHzHhAE=;
        b=O5N6Mh9wEdO3f498DqcWNK1ZxKwGSTKO4/opPOK0LaqAxMpxycNHqzwKJAK90PSbIN
         Uo2RAsu/pY2e0AnfJrb3B5Fo0gBXTBqbevQnm+44sbmADIfzYSbHse2Dsj4bC+OXGC6u
         oH6gGrLysHw2RzxWM8hXArqk7kNvamEeU9y+Wc4cgbMDkwPHPsRRtdOMgs5lz/RKbYsA
         ATTeQB3iDxfRdzdDhu2zHIwfinTGS+54fMdPilb6LNQQbaGVHEMCjFJF1PGkvR6fImXm
         +CW0EJqujSOdeh/T+nRvUGVSOegXR2TP1o1PLD4AZoi8u0CKJMUFAEOchjLBtFNgACxP
         f12Q==
X-Forwarded-Encrypted: i=1; AJvYcCUgTyfMvNT99Op28oE4Q9xu7Wy8stX/3YplYQUNfpVmarI9XrKrqZoRh8nzl7xISikGWAS7mUtZFpY=@vger.kernel.org
X-Gm-Message-State: AOJu0YywcPMRNprWnPykpo6lxyKfoIJIeiLC84LeIeRUgada1LnFoGve
	We0Y0F4TUPfuqmswF+EFLX9t+RKxw/Im2lHjJc4qfMbBCDW2KL4HZAVYi0t5x9US7SZ/85p39Li
	z5iK0+fYG89eRhYfm7sFJgmsHwvLBsiv37gA=
X-Gm-Gg: ASbGncuJ37M9zpOCcK3xtK8pDdlFI4l8LPJtujMgKwgvdjvEiOSFXWjQqS1azI2ZWlQ
	E/nrhm3UG8gVOl2CP0GL3GPdHohFtXUeD+tN4ceasr1iXGW18Q2fZWHcrMtGdoTW77Hz7ko7ogx
	Rg/41nGHh8CMgG4gWnpiva2LtMvQ==
X-Google-Smtp-Source: AGHT+IH3fbroEJzEJnJnFTunA+9Wq0sB9ANazOZ2WVuF1HLfy7+7kRXoSrInDSZyrdS5fIvcEVFZmffF//vAMtltLfA=
X-Received: by 2002:ac2:4c55:0:b0:545:2c2c:5802 with SMTP id
 2adb3069b0e04-5494c38bd8cmr4097358e87.48.1740863193588; Sat, 01 Mar 2025
 13:06:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re>
 <mvkhetitsgpcyces7ctq6vvkp5ma2jni7j2ybl6sdrmyme2dxh@qhuw576ud7v6>
 <05F97E03-03EF-4B21-88B3-7F94018CCF6F@everwhe.re> <CAH6eHdRT4mUPyE-SDSBUbEY0WAuQX8b5VK=sVXN+=tNdSPsahQ@mail.gmail.com>
 <cjjkh27rfpgq24b3e5k7o2gk6dbnnqyn2g5fhdoonr464tgbbs@exq64el5yph5>
In-Reply-To: <cjjkh27rfpgq24b3e5k7o2gk6dbnnqyn2g5fhdoonr464tgbbs@exq64el5yph5>
From: Jonathan Wakely <jwakely.gcc@gmail.com>
Date: Sat, 1 Mar 2025 21:06:22 +0000
X-Gm-Features: AQ5f1JqEG5lqW6-D3ntTAN-jqwYcm3OnhFnQ5b7-O1MNMqxRgIqSekHWHN_3Jv0
Message-ID: <CAH6eHdQRwcDTQXKo5JvYwy5-nD4GpNsaxjD1Zbfr6Ui16D_gqw@mail.gmail.com>
Subject: Re: Incorrect const in futex(2) example code
To: Alejandro Colomar <alx@kernel.org>
Cc: rahl <rahl@everwhe.re>, linux-man@vger.kernel.org, gcc-help@gcc.gnu.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 1 Mar 2025 at 15:17, Alejandro Colomar <alx@kernel.org> wrote:
>
> Hi Jonathan, rahl,
>
> On Sat, Mar 01, 2025 at 03:08:50PM +0000, Jonathan Wakely wrote:
> > > >BTW, there seem to be other important bugs in that example program,
> > > >which I don't understand either.  Would you mind having a look at th=
ose
> > > >(I'm assuming that you seem familiar with these atomic APIs)?  See:
> > >
> > > You're right, there are more bugs. I'm however not so familiar with t=
hese functions, but I do have some help.
> > >
> > > The errors in question relate to a missing _Atomic qualifier for seve=
ral variables and function parameters.
> > > The documentation linked above should clarify this as well.
> > >
> > > It turns out these calls could be replaced with a compiler built-in (=
__atomic_compare_exchange_n) both for clang and gcc, which wouldn't have th=
e above problem, and would also allow for the removal of 'stdatomic.h'. How=
ever, this didn't feel too in keeping with manpage example code.
> >
> > Well the example already relies on Linux-specific details of
> > syscall(2) and futex(2), and only GCC-compatible compilers are really
> > usable on Linux. So the GCC extensions could probably be assumed to
> > exist.
> >
> > If you were writing pure C11 code intended to be portable, you
> > wouldn't be using SYS_futex anyway.
>
> *Iff* C11 atomics were something we understand, maybe even just having
> a working example that uses it would be worth it, even if Linux-only
> stuff can do the same.

I understand the C11 atomics fine, I don't understand how they
interact with syscall(2).

>
> However...
>
> > > The gcc docs are here:
> > > <https://gcc.gnu.org/onlinedocs/gcc/_005f_005fatomic-Builtins.html>
> >
> > The patch assumes that you can pass _Atomic int* to the futex syscall,
> > but I'm not sure if that's correct. The syscall expects an int.
>
> Hmmm.
>
> >
> > The C standard says "NOTE The representation of atomic integer types
> > need not have the same size as their corresponding regular types."
> >
> > With GCC and Clang, _Atomic uint32_t does have the same representation
> > as unsigned, so it should work. I'm not an expert here though.
>
> Considering that the example has been broken for a long time, and I've
> asked for help in the glibc-help@ mailing list and nobody answered, and
> you don't feel comfortable with it either, the best course of action is
> to revert that commit.

The __sync_xxx built-ins are documented as legacy and not to be used
in new code:
https://gcc.gnu.org/onlinedocs/gcc/_005f_005fsync-Builtins.html
So while reverting it seems better than having broken examples, it
would be better to not use the legacy APIs.

