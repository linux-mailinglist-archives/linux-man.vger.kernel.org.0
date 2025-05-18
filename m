Return-Path: <linux-man+bounces-2974-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CA171ABB216
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 00:09:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DC696189458E
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 22:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B440D1CEADB;
	Sun, 18 May 2025 22:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CPbpMgtZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8F6EEAA
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 22:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747606164; cv=none; b=WKy67w41Zf5J8HqlO7Uu641mzXepfVQpxIczwFiv733qEcI/TF3ZhlcV8HnjLoAR0J3R4cEZlD5UR8WebaleBaownfT5Q9Ce3ENINRYz4k5bbvmYjSMMN6hwFEhgNhdBlUHHVJEkEbbAu7Ss5f+ipcEVqynkKW6e3AydZEgqKu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747606164; c=relaxed/simple;
	bh=59MYHlFaVRgl2iqW0NXZYMTky1Z/n9NF4Q6dfQD9L4s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MYKY4RLcJFCpfl2XgM3EJFuPXSVwuFY/JtmAfIGFYSaAE9IAYfnwqPkF4fjoZkzXW/r5I1U3THs9ZE9LcYcGmeDiaUEMojvIQku39SakaNRsogWnZYY3z1SxqLfKu2p/DFs/e5gVVJ0+eJkExCuJCfODzxKKV4+oOQzMtMZ0ssM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CPbpMgtZ; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-32805a565e6so34074211fa.1
        for <linux-man@vger.kernel.org>; Sun, 18 May 2025 15:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747606160; x=1748210960; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hNMrHMEplxCBjZ2aJKCIizuWLtfFNrrj8Mnnwt8wGXs=;
        b=CPbpMgtZ+bhQoQtf0FAcw/oEChIw/U407KPNnHwmNzoK/uk90USb5rw3oQIxvJDDNd
         YucsFkl6RJ5SHiZpNOwTv8zE6e07Q7fuzM3rDTz+e63bTHht/xauxml+39Qa5UUKO1NJ
         DWU6tKspk9yTTYOGm/SQwSn93nEiorFQWHrfokXKQ9xRLYMh/C3IWrwKs3lY7PxBcSko
         WNQe7ggX4pITKKE1sZd4nyYQNeXfo7hjT1N8bIsRjr/K6GgKGAEyHiqNWAj/Z9mBylIa
         BjjH/xmKUK3fT4br90a+wIMf/V5uFedxiwterU/dVyMMBeAmJ2X0AI4avNmCzHNtmAMq
         R7bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747606160; x=1748210960;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hNMrHMEplxCBjZ2aJKCIizuWLtfFNrrj8Mnnwt8wGXs=;
        b=pdJ30B8U0ZA93iLWNC63vsm+HG/rACSUMQ52Zrm0pBZ5FEldBpOQk98G6qL9Uuuf4N
         nuLdBd2UwukvLGb/N2lB8+wIkMa+j5hEWSHMI40DruDcNeZRYIbYzkfa3UGvK7CZM8v6
         chsb29JJG4DgvZrozX/1iNzc2JJk1qXB+Qdr5fHjt92sfNkgaD+EX7fF4y+MUjvAbGVL
         G/qq1dd261WlqXBJcUytVZs99SxJuKTg6rKfDkJUXxfUMmocdDlt8YeHzAGbIe4T0AF0
         UQ8KyxQyqFEjrpv7Kc6Uhi7BnXqy6jOmrnwNrPnxxmwQy/lVSSf/bgnydc+iu+ftjgGk
         D9DQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpf8G2Y83CeaCwUAy8wh1JoXEkny2Lth5O00oTnv2x+kPxvQa6CtozgDmi7rJVDcSAvI0t94OlQmY=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9bhFVp+rc+LWUmYOVWlpLXLhPYoOEFuWB8Ke6Y0s6GxmAwpzd
	pBN0Ggr9i6BDkkCv+JUjuV2pEICvGgwfnxFH5HI7441mLUz+9tRM08T/B0kpdkf21xM+gi9zoP4
	316UA3hO8/+bJ+5W+glnSNYz8Jo8bu9o=
X-Gm-Gg: ASbGnctceD1oQbyUSQW/0vPM8dyBk+KoRj2AAhorzx9trqsqmE9VlwLw+X/dezUR6BJ
	rdUpBC8+YVVD5Xv8yIkQStxGXW3dfJNmT7uU4KlXrsRgs2A80bZGATHBQzf0hFnXewcsAuCQLA/
	/o0jOyclO9447wSv9fU2kNrZmnbFCLt6zux2j+kAZc6O/ksQDOHtoArSoj2f3/wBg=
X-Google-Smtp-Source: AGHT+IE392RxsDndPpXf0ljQhwvtwTmAgTd+OzPnp4NYNprdA2l1a7Jeea200nue0mpQHjWx/RMTM1rfd8Z3/pCPaxY=
X-Received: by 2002:a05:651c:30c6:b0:30b:a100:7fec with SMTP id
 38308e7fff4ca-3280842c99cmr29992051fa.12.1747606159824; Sun, 18 May 2025
 15:09:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <zagbrxifsyor6bxzkqi7b66ixw3q67vez2nng7aqjpykkohph3@plmaq4pfz3yf>
 <87plg5hnb4.fsf@gmail.com> <CAMdZqKFyc=cNh-aQVLZ6ovEZurzqSREhY1gx8L0m27f2uS=smw@mail.gmail.com>
 <6ipmw5huiygdt3yhcsahlufnsnm7xfifxlrmlqj5fpjtzi7fvl@bq4ikhcvyqde>
In-Reply-To: <6ipmw5huiygdt3yhcsahlufnsnm7xfifxlrmlqj5fpjtzi7fvl@bq4ikhcvyqde>
From: Mark Harris <mark.hsj@gmail.com>
Date: Sun, 18 May 2025 15:09:07 -0700
X-Gm-Features: AX0GCFvuqAKWyqt1-YOPU3t7c3-eGDNNRjJbRDTt6RzkRoY5BIUMOb2nFDzI95Y
Message-ID: <CAMdZqKEgXzBKQ6hgHC0Qip1a+h4BthVJ2W_78-TdnnUzbzQO2g@mail.gmail.com>
Subject: Re: POSIX.1-2024 requires 64-bit time_t
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org, 
	libc-alpha@sourceware.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, May 18, 2025 at 3:06=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Mark,
>
> On Sun, May 18, 2025 at 02:52:30PM -0700, Mark Harris wrote:
> > For glibc, all 64-bit platforms, and the most recently added 32-bit
> > platforms (arc, riscv32, or1k), use 64-bit time_t.  All older but
> > still-supported 32-bit platforms (arm, csky, hppa, m68k, microblaze,
> > mips, powerpc, s390, sh, sparc, x86) currently use 32-bit time_t by
> > default but can use 64-bit time_t with -D_TIME_BITS=3D64.  For musl, al=
l
> > platforms use 64-bit time_t.
>
> Thanks!
>
> > POSIX.1-2024 requires that an implementation offer a conforming
> > environment that supports 64-bit time_t, but it is also free to offer
> > other non-conforming environments that use 32-bit time_t.
>
> Are you sure?  That's not what I read from the standard.
>
> POSIX.1-2024 says something like that for other types; for example:
>
>         The implementation shall support one or more programming
>         environments in which the widths of blksize_t, pid_t, size_t,
>         ssize_t, and suseconds_t are no greater than the width of type
>         long.
>
> But for time_t it is very strict:
>
>         time_t shall be an integer type with a width (see <stdint.h>) of
>         at least 64 bits.
>
> It doesn't seem to support such alternate environments for time_t.  Of
> course, an implementation is free to not conform, but then it's a non-
> conforming implementation.
>
>
> Have a lovely night!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>

https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/unistd.h.html

"Implementations may support multiple programming environments with
some of them conforming to this standard and some not conforming. The
_POSIX_Vn_ILP* and _POSIX_Vn_LP* constants, and corresponding
sysconf() and getconf calls, only indicate whether each programming
environment is supported; they do not indicate anything about
conformance of the environments that are supported. For example, an
implementation may support the ILP32_OFF32 environment for legacy
reasons with a 32-bit time_t, whereas in a conforming environment
time_t is required to have a width of at least 64 bits. Application
writers should consult an implementation's POSIX Conformance Document
for information about the conformance of each supported programming
environment."

 - Mark

