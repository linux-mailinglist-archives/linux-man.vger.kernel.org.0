Return-Path: <linux-man+bounces-2547-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C1FA4AAD9
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 12:59:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FA3A189405C
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 12:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D54C1A5B97;
	Sat,  1 Mar 2025 11:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L77chrCo"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A79E923F383
	for <linux-man@vger.kernel.org>; Sat,  1 Mar 2025 11:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740830390; cv=none; b=ikKJR3T9zInioR514PHotJYuSN8BAoYKbELQ80FK3aJEWMiNPZT1VoG8eC9jvRJxC/2mYlynnpX2Evkh+CRi1ISutMVePopkIMRimCz/wKke96PY/wYVpBTCQsBTP2yzOFzFrIHIoHK3B/hOt0zd6pK+w2TUtzG8YtmH7ENCAdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740830390; c=relaxed/simple;
	bh=dgwEtSi5EaK9b7Cc3qgu74AfXnnxEnSNXmjv6JbxNFo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sWJk9/7T+2dHxO1hjAC93/z5mXSinZWBLPLCGhwq++vAqtIj7AMuWTE8haE0g736KaOHc9v/vG63DsT+QOm78xO8FZ0cdWex0uhOGaP3pqZAnK7/Le6MU83zdL2mTY1U5HpKpvDqGhC1TJfizlkGNPrRrYM9/MJxgpNBpEAYOa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L77chrCo; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5462ea9691cso3317406e87.2
        for <linux-man@vger.kernel.org>; Sat, 01 Mar 2025 03:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740830387; x=1741435187; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BoJoqrD/ElsKtdOBs7B8P7cRflxmPETuFtg++WJbd6E=;
        b=L77chrCoJ7uJfUR2UtySJkSzdpA/hfOBycWsoDOsvG340I2ylZvpxwlEicPyncQNTi
         B7uxjtxdi1+Y0jcwiczOpV8QYyURsDKqLsu9lMItQIvSDm3nc/0+wdDcbDQy1SKrS9pa
         DGvht2ESEUDx/Czw862+EYoX1l5+VwC0ptP3vPw0Euay7so6JXW3lNSjkfxeZzMW2jPD
         JGd4YWgsjKZI6XePsYmdoXKZEKJ8afVNDoHX63wErpsc43qo2nc9c4ILk8KFNZpKQ+vh
         iE9YTvGsAneJDQODBH3H6JNRzQSxVLXWRNGozw3v2QNR0bw4zKaQZN2egE1uai5rPorY
         uJ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740830387; x=1741435187;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BoJoqrD/ElsKtdOBs7B8P7cRflxmPETuFtg++WJbd6E=;
        b=LoPR/GaBFdSF88DG7lcsV1g07uiQ/qUucmu9lJn/oc0jdFYykMgwy1vGnQtmav+9PY
         ngNfB+H7DCA3II1TfsjPdQ+aVqsnSQWeRUD2Aa2T6MNld4ZAiMyngX0O3iKYgR91FIMR
         cuPH3R1ec9CpGY89b1JZb9UgmotDtIN8Ou5qNaxwlBmj8A7ss1EfYm6/SwY5RM5q8NPf
         dJmZk0EEFrZrxSOsK597TaANWRo3hs4ebybWTYuLSby9mpsEJWINSEzEetcI+AISPIMK
         P+rV7fVy1ozoPllJvu8CwknGSW2tgwy3zWAKG73KBn1s43Dq3A3HyQgUzFDm6Rhvj6VU
         9oaA==
X-Forwarded-Encrypted: i=1; AJvYcCUVt3BUoU92/9Tp8rLT+4NhEfw//qr+vsECM40R3lVX6STloqfiPBmGdpTv611XXZr8j/XLH1XcaXc=@vger.kernel.org
X-Gm-Message-State: AOJu0YyI9RGvyHT2CVmU1NI5x2QOdbvp93auUuz+Wp/6MdmXo+YSdeWc
	z8NFcvzTpk89I2HGf5CrgXVEjSifsiGAQwtV75a+mZeBp63VAXRAHQwFZ8mXoY/3oZRyuUfQJqx
	p3onxnpNX8ajyYxvJ45oawTkOLtIklfkkNDw=
X-Gm-Gg: ASbGncvWbv9UrxfLz7lQeF20vw4/pVtvxBpE1aRJn006Z1arHIHJoKZDLrQbxyLMIQ4
	tt3051Wz8Bfun1dQ3egsh2A+LDH6/mgGpsz03ACcvVhWapbfhk8FL/yeebqAhuzVePTnXWm6OJq
	5ZtGePKqOI7Iw+hzU0lbfCyODc+A==
X-Google-Smtp-Source: AGHT+IE4dCc4OoCxBBesqotbrCK86vBO1LOCzu1Y9/dfzPqnqOapMVtRcgjTMMaq3Z3PGObPZfIMyiUzXAen+IOkITo=
X-Received: by 2002:a05:6512:158f:b0:546:2ea9:6666 with SMTP id
 2adb3069b0e04-5494c37d8b1mr2694954e87.34.1740830386402; Sat, 01 Mar 2025
 03:59:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re>
 <mvkhetitsgpcyces7ctq6vvkp5ma2jni7j2ybl6sdrmyme2dxh@qhuw576ud7v6> <05F97E03-03EF-4B21-88B3-7F94018CCF6F@everwhe.re>
In-Reply-To: <05F97E03-03EF-4B21-88B3-7F94018CCF6F@everwhe.re>
From: Jonathan Wakely <jwakely.gcc@gmail.com>
Date: Sat, 1 Mar 2025 11:59:35 +0000
X-Gm-Features: AQ5f1JoZkukgdtDvWvMgOnNxcpNaWgbIqdP51YG3K-gVDGOChARL6OBiPCPvNLU
Message-ID: <CAH6eHdSoRGJ-g8yLymvNH6NKrNFgTFryshBunHgexxiep6NiUA@mail.gmail.com>
Subject: Re: Incorrect const in futex(2) example code
To: rahl <rahl@everwhe.re>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org, gcc-help@gcc.gnu.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 1 Mar 2025 at 11:36, rahl <rahl@everwhe.re> wrote:
>
> On 28 February 2025 20:57:50 UTC, Alejandro Colomar <alx@kernel.org> wrot=
e:
> >On Fri, Feb 28, 2025 at 10:13:04AM +0000, rahl wrote:
> >> I noticed that 'const' is used for both 'one' and 'zero' variables in
> >> the Examples section demo code of manpage 'futex(2)'.
> >>
> >> The variables are both used in calls to
> >> 'atomic_compare_exchange_strong()' where the 'const' is discarded as
> >> it may write to the 'expected' parameter during a "failure" case.
> >
> >I don't understand what that function is.  It doesn't have a manual
> >page, and it's neither in /usr/include.  It doesn't appear in the GCC
> >manual either.  And it's not described in ISO C.
> >
> >What is that function?
> >
> >I'd like to understand what we're calling to be able to understand how
> >the calling code is wrong.
>
> atomic_compare_exchange_XXX() are defined in stdatomic.h and were introdu=
ced in C11 (ISO/IEC 9899:2011 I believe).
>
> The main online documentation for these that I'm currently aware of is at=
 cppreference.
> <https://en.cppreference.com/w/c/atomic/atomic_compare_exchange>
>
> >BTW, there seem to be other important bugs in that example program,
> >which I don't understand either.  Would you mind having a look at those
> >(I'm assuming that you seem familiar with these atomic APIs)?  See:
>
> You're right, there are more bugs. I'm however not so familiar with these=
 functions, but I do have some help.
>
> The errors in question relate to a missing _Atomic qualifier for several =
variables and function parameters.

The futex.2 examples used to use the non-standard
__sync_bool_compare_and_swap, which was correct. It was changed to use
atomic_compare_exchange_strong by:

commit 915c4ba36f9f71db88e7e7913b845d046996f485
Author: Benjamin Peterson <benjamin@python.org>
Date:   Tue Nov 13 22:53:41 2018 -0800

   futex.2: Make the example use C11 atomics rather than GCC builtins

That change was wrong and broke the examples, because C11 atomics are
only usable on _Atomic variables. __sync_bool_compare_and_swap and
__atomic_compare_exchange are usable with plain non-_Atomic types.


> The documentation linked above should clarify this as well.
>
> It turns out these calls could be replaced with a compiler built-in (__at=
omic_compare_exchange_n) both for clang and gcc, which wouldn't have the ab=
ove problem, and would also allow for the removal of 'stdatomic.h'. However=
, this didn't feel too in keeping with manpage example code.
>
> The gcc docs are here:
> <https://gcc.gnu.org/onlinedocs/gcc/_005f_005fatomic-Builtins.html>
>
> >> Attached is the trivial patch to remove the offending qualifiers.
> >
> >Please provide a complete patch, with a commit message.  See the files
> >under <CONTRIBUTING.d/>.
>
> Rather than submit a separate email, I have attached a file containing th=
e full output from git-format-patch, with the message being in what I belie=
ve is the expected format - having read that an attachment is also an accep=
table approach, albeit perhaps not in email form.
> If for some reason you feel it should be submitted as a separate email I =
can do so.
> This way seemed more prudent for now as this is my first such patch and I=
'd like to get it right before having multiple threads in the ML.
>
> Let me know if there are any further issues.
> Cheers,
>
> rahl

