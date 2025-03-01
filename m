Return-Path: <linux-man+bounces-2549-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7CEA4AC7A
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 16:09:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2A643B579A
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 15:08:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E2F41DE3C5;
	Sat,  1 Mar 2025 15:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X6UnJpAM"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88E8322F19
	for <linux-man@vger.kernel.org>; Sat,  1 Mar 2025 15:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740841746; cv=none; b=VUvPijCZiJbW9b9YUIk9N+hAViQAEy3HXTtqcqqBKgF1Czp8gvwlbzy+rqfGWMu64bvygd5uVJiSRz0y2CD713FVO7yHdfoQkmywdqH9SAUPCXTw6ffj3vzRkkzxs9WqJ15T3tQ+u0TL/34Xrfg0ostc5TZkZJMTLTH/4a9vVkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740841746; c=relaxed/simple;
	bh=RntLcNp4QHsKD6Mb9dHaldXk3vKuqXYhK9WHpQ4CUG4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AEe0ymSBDc0TB5eTEDozglj+lL/cOlTgSYzGingVHocjE+TjrPMSImNslEpyVXjdHGd2ibWPqtZG1Bs6nhP80vUd12iKQxbICEZOPzk/jOnUjEp9fcQV4eXpce+neeyWZ1cF237UY6JG5nA73MvggyfLaNeP3IPmqiXno9O8YAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X6UnJpAM; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-30b99c6cd35so13621681fa.0
        for <linux-man@vger.kernel.org>; Sat, 01 Mar 2025 07:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740841742; x=1741446542; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RsVOfrFVNJguBLu/Tm1ofNARNbPKktibofU2nIB9AL4=;
        b=X6UnJpAMqPuEAY5K+lFp0Df5COaPwYfkW9Z6H2FeJa9NsG1lVv7rrGjkle6Zjr5sbK
         IUlIE/J8IbGyy0CVmwYpm9wql76NWO7bYEngLlqr+ezpE/EPczsNWhyXoJfa8Gr2Czsa
         tU4rNqz2tHBIrK1aNBf8RzzEd+ZSGp/uecjpRoOwtaaAfAfysd+sMMQ+3OiGFxIy0vqW
         xoipYCzH2IS7MwB73e4XPSzEFwydEC/KAevXs4j3ec4uVBMNJFPQZyuEUSXOPbl/+aWy
         DEm361FJdgUQTGVwSNXQ4QBDyy6+6Poi1JPDCylNypghGEP1CSmRQyU+z1aUwr/6+T4s
         CZ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740841742; x=1741446542;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RsVOfrFVNJguBLu/Tm1ofNARNbPKktibofU2nIB9AL4=;
        b=oO0NdrdLceZUQ0fX1niFZcWgSYbp2BZihllFfkHqxqdBlBGLScOLtF8bWIBItfBJ5R
         okYb2TPasEA5J8pwRo67wl97vv5dpPTSwIaESt+bDUhPJvHYr3flMZyzP0JFG7wqZBdo
         pd/9Atp04LX82BkHnkBE59VEGzgZJsrBz3m2Cdsl+EvH55W+mmp3jYamAdgKF89dP3AY
         xyTtSfgD7KdzLu3XaU4DDIuBDlB+bheykb3MfMsbIdFnVTQfgwx5vYiOcoGjjmn0iAJC
         A+ahfRTx7yP56AGxIC9a7DEOtxpTS0YN2IFS+nyZ5/8Nx8hOlCyd9RW1CeLXoxm5BmVs
         ItUw==
X-Forwarded-Encrypted: i=1; AJvYcCVH19SZW+scnLumkyhk6hyK5h5f/HjdZT2bbB4tCBbUTF/eiDIr737KLB+umc+oAPLYsKq2pChErgo=@vger.kernel.org
X-Gm-Message-State: AOJu0YzygmuVNTPCyCCogGbZW6/foS1cA2xaA9sp7cvGd9lzpPWWYmLa
	Rp2hLlg6AKnaXhX8NUY8qjeW4um83aOVqGbdlbjRxACDL6XAGOc9nnR9VNr+fzfpapEwtomrk3U
	qmyeATkh+fJAqQcSUYwzTZcDYgmw=
X-Gm-Gg: ASbGnctwxUTPP/Xj4wORiqh7rRa+T31K0yZFJZnFRYjZHV34dIcT7P/cD1GBvc2Tn9K
	ZrzaorMgpdneSnXutdJ0yA9/ZuZJDTngJq7UdVjcIvkYTO6DjnuW+roeFWn3bMW7YhJR6Tsbb+L
	2Ybkt7hv/dYKl+CcbpHxCEaQbMzw==
X-Google-Smtp-Source: AGHT+IGqQJVYSAD+qv+P0l3eZPJyL+94sLPBNQ2AumH1GVDKNFIReRzbCOgYUyQX4cpWSONxmS1pKWEB2+TehuX/bZ0=
X-Received: by 2002:a05:6512:3b11:b0:545:2e5d:f3f3 with SMTP id
 2adb3069b0e04-5494c36eeecmr2444322e87.46.1740841742243; Sat, 01 Mar 2025
 07:09:02 -0800 (PST)
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
Date: Sat, 1 Mar 2025 15:08:50 +0000
X-Gm-Features: AQ5f1Jqm3kp1WwEDHrXwJQ8Iu5c57kh5mA7ISqwvx3wMUogBzD5hmDgSW_Twmc8
Message-ID: <CAH6eHdRT4mUPyE-SDSBUbEY0WAuQX8b5VK=sVXN+=tNdSPsahQ@mail.gmail.com>
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
> The documentation linked above should clarify this as well.
>
> It turns out these calls could be replaced with a compiler built-in (__at=
omic_compare_exchange_n) both for clang and gcc, which wouldn't have the ab=
ove problem, and would also allow for the removal of 'stdatomic.h'. However=
, this didn't feel too in keeping with manpage example code.

Well the example already relies on Linux-specific details of
syscall(2) and futex(2), and only GCC-compatible compilers are really
usable on Linux. So the GCC extensions could probably be assumed to
exist.

If you were writing pure C11 code intended to be portable, you
wouldn't be using SYS_futex anyway.

> The gcc docs are here:
> <https://gcc.gnu.org/onlinedocs/gcc/_005f_005fatomic-Builtins.html>

The patch assumes that you can pass _Atomic int* to the futex syscall,
but I'm not sure if that's correct. The syscall expects an int.

The C standard says "NOTE The representation of atomic integer types
need not have the same size as their corresponding regular types."

With GCC and Clang, _Atomic uint32_t does have the same representation
as unsigned, so it should work. I'm not an expert here though.

