Return-Path: <linux-man+bounces-2370-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CE3A2DA27
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 02:25:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CF8D166340
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 01:25:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28D8D243386;
	Sun,  9 Feb 2025 01:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i6PNQLyD"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36AC819
	for <linux-man@vger.kernel.org>; Sun,  9 Feb 2025 01:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739064348; cv=none; b=XTX5kQ0N/L5g7JqTFsZjmniUuZQygWrWSp9mxmf4zYPzJj4O5nmZb6LVorvZ2YtDyab2uMdSANpwrypu5xiNYiBANl11FWzVEWeb/fbh0SJ0ObFZFdUbJnSJQ3PpaVuE8mFDhp2mxXqeizDTFE6xA0iMAXurDIEE89+jTHAq10g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739064348; c=relaxed/simple;
	bh=WfQ/8nTX5TDYDMH4GhUgWBERFEr1hlDLllWTuSs+kJI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QyvGVMDDTWpYP4qcPfJ1uOvmBaTSKZVx5qC9QdgLaXjUH1/VCoVo3nZFq7jmgsC9b2RYikqUhyHvZ0vypRWWmQy2vjpfFhnhIPExVWpte+hqnSoy5C6vA0HMMVuAfCv6OPfTrZbTLtvjC11jRqNohcGMCryEk+EPCnyfvaAu0fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i6PNQLyD; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30229d5b21cso29885791fa.1
        for <linux-man@vger.kernel.org>; Sat, 08 Feb 2025 17:25:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739064345; x=1739669145; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZMBmTl+6KkL8RRHvrPgesW1wxJUhGrAhT3lnGHkJ+Ug=;
        b=i6PNQLyDWll65LT5HdpGnlYgKVbEV0NWWQJzkYPY2cbTex1wiMfedJc+MkaZpf3gtC
         N07LxSKPKz5rJoc6lfGVgQsCjgYkMqzHpRZlZ3hTpOvhV7RfYThpkZweq3WM4WqY2jiy
         cI1XWiPgoXdbJ6gn9BsT9oc3WqWs8uDxJfFfy7ArbZGKumnRdUTvL/siPDWugPvbT/G8
         s9jmJ0WMtIj8su25LcQHj/CKGouivr7myjN8fUHWI2H7IVKL6onZRz6x5HK3agV84dDO
         /9fJgKitY9gmWpufIcr0KM0TTbxAyh5PoO26jBfEeStext/iD5c8hHJ7jWQaBushx/X5
         QpGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739064345; x=1739669145;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZMBmTl+6KkL8RRHvrPgesW1wxJUhGrAhT3lnGHkJ+Ug=;
        b=cjBCVw8Ohgjz9up5QU7+lAFUXeE9lPIIxDOHzBqVuUIKV8MHKRtcNEBo8+6zUWryd3
         rQ+2+FWirUYlpRpVDUEWsknjqs0usXPubQ0ck0vu0rfn4gSiOzq0Ptk+06X/VKUS72Ep
         HX3N2LBRNbwVJvssJ/CYGwUd3nRLtWCPiAsIbX3gp3fuQrz/0cHyWMTx3UpGTKgvNQ0z
         wsgAG5fxY3rhTl+Y7pPxZFWRENU9ZQ1pcrq6tVcGQOsAaDIRZZRqE7DrNKmo/VbN3Ag/
         RtK24OPDLw3BwRxhBul/Agvbmzzelfk86PDKU8u7rJcL9Z2n0qcFLFy5GLEJ9K6bZbsh
         9Dfg==
X-Gm-Message-State: AOJu0YxYO6Lo2cpQje+pp1ScnBRQkD4aQt8umYngvnaYUVdCP1hIBPpG
	NI5YbCHtMhY6lgNHI9Bm2fi2/xuqJ2COFvUFYfcLSMfBxKpeqOStJx1sJXxf7ojoIhCvx1ZS34+
	R9OR/Vj5sJ6hEaHNuG8ZUK6jbUhxpVA==
X-Gm-Gg: ASbGncvLlxMVJM42hSp55naGy6go1EMwYj2zqu74hVA8gLd/Ifqcul2Kz3T/dXcQg8T
	NoX1x+/xhOHg6yRCL5pF7db/L8GyHMNq9jSS6LKHzU3knEa02jVxFfqzLl7Z/KQ9xMVXSI8qC/s
	atROwuaFsKQ1C/5QSjW2G0iiaNbnE=
X-Google-Smtp-Source: AGHT+IGS1cIx9dlWm6EI1mNZgB/RAa2aG+c1qDK6NbaxQXB/7bWCAKTFJMtYYftJ/bRCIz5R/YmkUcMDBYXW3haPjXc=
X-Received: by 2002:a2e:9f4b:0:b0:308:e3ee:8773 with SMTP id
 38308e7fff4ca-308e3eea069mr7628341fa.17.1739064344458; Sat, 08 Feb 2025
 17:25:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <c6990f9c922bd8b842589c700efde8f7a00ab68b.1739046395.git.mark.hsj@gmail.com>
 <qrlytrdkrmaebyntohfmnczxjgzdoky3jxtilghgxe6ookw5qk@qfkxpzlu3bbf>
In-Reply-To: <qrlytrdkrmaebyntohfmnczxjgzdoky3jxtilghgxe6ookw5qk@qfkxpzlu3bbf>
From: Mark Harris <mark.hsj@gmail.com>
Date: Sat, 8 Feb 2025 17:25:33 -0800
X-Gm-Features: AWEUYZn3RXbc9Rfg2rJnMuyuZKA6d1LgZlsI2fgHI57Pne2BT2kUYPfjUc7sxIU
Message-ID: <CAMdZqKHLX0LeHNxKxW94LugHmrk52LrG3SOLG9ObzYzED+hwvg@mail.gmail.com>
Subject: Re: [PATCH] man/man3/timespec_get.3: Correct return value and clarify description
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 8, 2025 at 1:03=E2=80=AFPM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> Hi Mark,
>
> On Sat, Feb 08, 2025 at 12:41:42PM -0800, Mark Harris wrote:
> > - 0, not -1, is returned for an unsupported time base or error
> >   (C23 7.29.2.6, 7.29.2.7; POSIX.1-2024 line 74358).
>
> LGTM.  C23 7.19.2.6p4 says
>
>         If the timespec_get function is successful it returns the
>         nonzero value base; otherwise, it returns zero.
>
> > - Clarify that any supported value of base is always nonzero (i.e.,
> >   there is no overlap between the two return value cases that may
> >   require errno or some other source to disambiguate)
> >   (C23 7.29.2.6, 7.29.2.7; POSIX.1-2024 line 74357).
>
> LGTM.  The paragraph quoted above confirms this.
>
> > - Clarify that timespec_getres(NULL, base) is a valid call to check
> >   whether the specified time base is supported (C23 7.29.2.7).
>
> LGTM.
>
> > - Clarify that the resolution for a particular time base is constant
> >   for the lifetime of the process (i.e., there is no need to retrieve
> >   it repeatedly) (C23 7.29.2.7).
>
> LGTM.  C23 7.19.2.7p2 says
>
>         For each supported base, multiple calls to the timespec_getres
>         function during the same program execution shall have identical
>         results.
>
> > - Calls to these functions are not technically equivalent to any
> >   clock_* function call; at least the return value will be different.
>
> It would be interesting to clarify if they are equivalent except for the
> return value.

The clock_* functions also specify that errno is set to certain values
on error, but the timespec_* functions do not guarantee this.  So
instead I just state that the time and resolution are the same.

>
> > - The ERRORS section is removed, because it states only what is true
> >   for every function that does not state otherwise (i.e., errno might
> >   be affected by underlying system calls).
>
> LGTM.
>
> > Signed-off-by: Mark Harris <mark.hsj@gmail.com>
>
> Please add appropriate tags:
>
>         Fixes: 7bda5119fe5e (2024-09-08; "timespec_get.3, timespec_getres=
.3: Add page and link page")
>         Cc: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
>
> > ---
> >  man/man3/timespec_get.3 | 62 ++++++++++++++++++++++++-----------------
> >  1 file changed, 36 insertions(+), 26 deletions(-)
> >
> > diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
> > index 8c8d45d33..7993e138a 100644
> > --- a/man/man3/timespec_get.3
> > +++ b/man/man3/timespec_get.3
> > @@ -18,37 +18,47 @@ .SH SYNOPSIS
> >  .BI "int timespec_getres(struct timespec *" tp ", int " base );
> >  .fi
> >  .SH DESCRIPTION
> > -.I timespec_get(tp, TIME_UTC)
> > -is defined as
> > -.IR "clock_gettime(CLOCK_REALTIME, tp)" .
> > +The
> > +.BR timespec_get ()
> > +function stores the current time, based on the specified time base, in=
 the
> > +.I struct timespec
>
> I would say
>
>         .BR timespec (3type)
>         structure

Ok.

>
> We usually say XXX structure in the manual pages, instead of struct XXX.
> Just for consistency, I'd follow that.
>
> > +pointed to by
> > +.IR res .
> >  .P
> > -.I timespec_getres(res, TIME_UTC)
> > -is equivalent to
> > -.IR "clock_getres(CLOCK_REALTIME, res)" .
> > +The
> > +.BR timespec_getres ()
> > +function stores the resolution of times retrieved by
> > +.BR timespec_get ()
> > +with the specified time base in the
> > +.I struct timespec
> > +pointed to by
> > +.IR tp ,
> > +if
> > +.I tp
> > +is non-NULL.
> > +For a particular time base,
> > +the resolution is constant for the lifetime of the calling process.
>
> LGTM.
>
> >  .P
> >  .B TIME_UTC
> > -is universally guaranteed to be a valid
> > -.IR base ,
> > -and is the only one supported under Linux.
> > -Some other systems support different time bases.
> > +is always a supported time base,
> > +and is the only time base supported on Linux.
> > +The time and resolution in this time base is the same as that retrieve=
d by
>
> Maybe s/is/are/ and s/that/those/?

Ok.

>
> > +.I clock_gettime(CLOCK_REALTIME, res)
> > +and
> > +.IR "clock_getres(CLOCK_REALTIME, tp)" ,
>
> I'd use a non-breaking space:
>
>         .I clock_gettime(CLOCK_REALTIME,\~res)
>         and
>         .IR clock_getres(CLOCK_REALTIME,\~tp) ,

Ok.

>
> > +respectively.
> > +Other systems may support additional time bases.
>
> LGTM.
>
> >  .SH RETURN VALUE
> > -On success,
> > +.BR timespec_get ()
> > +returns the nonzero value
>
> I think I'd remove "value".  What do you think?

Ok, if you think that is sufficiently clear I will remove "value" and
s/represents/is/ (below).

>
> > +.I base
> > +if it represents a supported time base
> > +and the current time was successfully retrieved, or 0 otherwise.
>
> D'oh.  Someone designed another non-standard return value.  <facepalm/>

I agree that the return value is unusual, but of the dozens of
interfaces to get high resolution time we have finally stumbled onto
one that Linux, BSD, macOS, and Windows could all agree to support (at
least for TIME_UTC), and the unusual return value is less ugly than a
bunch of #ifdefs.


 - Mark

>
>
> Have a lovely night!
> Alex
>
> > +.P
> > +.BR timespec_getres ()
> > +returns the nonzero value
> >  .I base
> > -is returned.
> > -On error,
> > -\-1 is returned.
> > -.SH ERRORS
> > -Some C libraries
> > -.I may
> > -set
> > -.I errno
> > -to the same value as would be set by
> > -.BR clock_gettime (2)
> > -or
> > -.BR clock_getres (2).
> > -Neither C nor POSIX specify this,
> > -but they don't really indicate it shouldn't happen, either.
> > -Don't rely on this.
> > +if it represents a supported time base, or 0 otherwise.
> >  .SH ATTRIBUTES
> >  For an explanation of the terms used in this section, see
> >  .BR attributes (7).
> > --
> > 2.48.0
> >
>
> --
> <https://www.alejandro-colomar.es/>

