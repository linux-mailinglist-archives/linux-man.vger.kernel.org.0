Return-Path: <linux-man+bounces-5473-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uUxlIKY9/WkQZgAAu9opvQ
	(envelope-from <linux-man+bounces-5473-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 08 May 2026 03:34:30 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AC14F09AB
	for <lists+linux-man@lfdr.de>; Fri, 08 May 2026 03:34:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4B6DD300AD7B
	for <lists+linux-man@lfdr.de>; Fri,  8 May 2026 01:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2456F222590;
	Fri,  8 May 2026 01:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b="uos9uswN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298795478D
	for <linux-man@vger.kernel.org>; Fri,  8 May 2026 01:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778204062; cv=pass; b=eXG7O3pqv2t8QaYijHXb1buPSdRGwCKLWRn1HHbM1lFDX0/Dab8nm1JsMeT5UDmSysXNRKmlNu+8clAsK9Hb4SQ6rTKY6mJ+wAaEnZToFtcAvvi2BfW7tK/doLCsRDpWOfRNACWtbF6NtB7uivRsDDUKtttykHB7fsRdMoJjCIk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778204062; c=relaxed/simple;
	bh=qg6CrJDhrAiHlrwYKBBvL0igdtWuulwCsbnKfGDZ4Ck=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M2whvQc1m57akzvJxWCI6BcoxuFO/cmaojEt1ZVJqmVOK5X6g1ICf5kTlDghM6Xma9Fgt7Ow6az82LesrN5DfWZ4O5Vl78noj7WLzY+rOxTsEeEQcNcqoO+ci5c8BOqI3vpr1629skWi0H3f1CqfKN1rcCdz3KoN8kL8SJD1afA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu; spf=pass smtp.mailfrom=dartmouth.edu; dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b=uos9uswN; arc=pass smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dartmouth.edu
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-59dea72099eso1419025e87.0
        for <linux-man@vger.kernel.org>; Thu, 07 May 2026 18:34:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778204059; cv=none;
        d=google.com; s=arc-20240605;
        b=D6DzihH6EcwFa+wm0TuDpc/lBgsOtRSCl6TcsYKZhEjzSXvAVQpi7K2wMrroDn4cA6
         MNkvoqOeovY1XNlFy5v7fKDnr5pMbxtX6NFBsRuzPJnCgYy1YlofCGqeUtxYtTsQic4N
         S4LsAC1mo54o9huIfeqOsv9dnc3F35D2dsudg/n1ATGSJzZnybooALPsNe8efePyhGp/
         wLm8P0mT4uTFOWulGfixKKdugz0lmRPP7J3iFgj/iNpQwLg84IuqS/I5oadMFLoUJJbW
         uOc5xIrZw91EOEFBsoqWfnbugXthFXLQOgFy9KzaQ4+hmlztTHwNCqs9KZZFO0Uhsy9J
         X0LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=O7Xon0BUlOv6B4fu5nbahzvBWBZCSatSIUjBDJ3tIEw=;
        fh=ZRImQVTO8494kwRkGhc9RG4vsKaBWFuflGORgeFUoYU=;
        b=PrTTEWrL/oK8w2oGJbfq1nJyeBw6Mmk+507aWL0l5/cjiyO8v0rXjCx+Y8FzWcvr/J
         ryCHglandsS7XOe05t1fFinZ+Ey/ppubSdj0+k7dfmOfxyE8tSUXofByMQDHYqQSEQm/
         bMnqnodXxKaF3hFPN+Oqgdg0ZS74v0DrqVG0CG7INCzSVkvnuAF7tOrrVPY9GPrmrH6U
         11Xl+kUo1kGN5se5Lz3ZVX+Ezk/erUWfgJgDyHYEMF+Jfbk0LyKv8QVoJjokuLHJUNeD
         tvBduhShTqLCoQz3tLGC8XsIVY9Vx+5+knwZugOb367DIdI5C86ecDc5bm/MnPlgjoX6
         SwDQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dartmouth.edu; s=google1; t=1778204059; x=1778808859; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O7Xon0BUlOv6B4fu5nbahzvBWBZCSatSIUjBDJ3tIEw=;
        b=uos9uswNyMqHF7oaTeUcEhk5jLBr3tCkH5zVW7xYpaOtphC1wxWx2CMwm7F5qkyasv
         SytuQ7DG/EBfUXh/CZ7gBz7HzYe0XZJDpMJ1Go0E0vVoxC0LN8UhYbdKhy89p0OxLaQe
         KJY3zoIgArhBqyUV0rHszho7Wyup2gPkscSfOailiSbEyw8Oa9ERQ1NismEHAZi7nNT8
         4buUkOFua7hQ/irQ4IK0HAR5TA/Bp7J/H2YiPK+amYE7rUGJQLOkm/DvF7Tie8N5uYuR
         kQo+K5DV1sUtPEBLLkS9Pvl10eX6xSiokO3F3BgdU+1HtsdDbV4q0LeNEFRP3LtDVWn1
         Rf9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778204059; x=1778808859;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O7Xon0BUlOv6B4fu5nbahzvBWBZCSatSIUjBDJ3tIEw=;
        b=T8So74Tooa9MkcxNZ5YNvMsIJ44ploL0iurgJDeZlesv3JDVbLTq8I31RJXmvu11nO
         k4WJt6rU8aeXMQnytfd+uxjiq6SUPBBSkWKjEYQNmmAGRef5n4TdVq8pjI86jvV0YPlV
         oXcH2ZFT86rfa3BbD3miPuV3GEhmsrBCC0uyRnJwzfVmL+5nEJU3i+v7aqCgavfOjn4p
         DVSrYkq4bQR2zS2GC2yqdeaYgrOdlo+J1ma47qIvfSA+PkKASpK7AhPKxqsZ8DYsU30J
         47WR174r9jRPAL4kmMkXVBCLrC2wkGn0gzyHu1FwNbSsaypOIRZScQIzOksBpudjC5N5
         tvfw==
X-Forwarded-Encrypted: i=1; AFNElJ9YDliz4GbC9fTX0/olbpMDFqQfLnztgQrQLbSnTbHxrOZUajNGp2mw8Hz5Akay4Ty0IFBIxDb23TM=@vger.kernel.org
X-Gm-Message-State: AOJu0Yynn4vWEtIswspKPvNpFMQvBvf8R8plvutUFj9OMQfFxKd1h5fr
	Xo4oIAhuR37AS2XipsDGPoJyA+vtOJ46GIfDV0n2dUNOfXHgIwD9fKbWkclYLeKCxJbIFhV4gdw
	t2PqvEU73b/RcbJIlQRaxmIaUUDDh4y/1s69rhHLwXjRj75HLdMEccyM=
X-Gm-Gg: AeBDiev+2CxZMCx6w2fKG1wUJF889aBkEEuE4IyMJI4VHFK8kOKpzLk/mZB/ZQK7HQA
	37vD6zVZwyL5N2LFBFCiCENkmURiXc7aMTKrWHPSZ2z/Ar/HwI9IEHL0zADFTzx1v24J+x1aGo/
	OAy6JC+0NIfqs8HeiooluTtNA5a5u6WYJrmThh2S5Ej7P7RPT59R9+lUqAR6tLE+yB/3SZqKlvE
	cb0GyKh5Dnghe+b59fI/bLXvnyQKioCFBKL969oGJou1gI/wrn1jUBwf4j32eGJB5s/7hj4vr82
	O9RdvV4=
X-Received: by 2002:a05:6512:220e:b0:5a2:c0ab:b57f with SMTP id
 2adb3069b0e04-5a887ae03a6mr3150297e87.14.1778204059223; Thu, 07 May 2026
 18:34:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAKH6PiUk2L35i4i4TYkEP5VWH8DWodgRDLqUTSRQ27MB20HRhA@mail.gmail.com>
 <afzrREof611q7MIX@devuan> <27133.498.654796.822374@hergotha.csail.mit.edu>
In-Reply-To: <27133.498.654796.822374@hergotha.csail.mit.edu>
From: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Date: Thu, 7 May 2026 21:34:03 -0400
X-Gm-Features: AVHnY4JjC7hKQSmjNzcqW7raYLrXyTdVnWvZPeF715p_WxeyOfEf8dCuouRt7Lk
Message-ID: <CAKH6PiWALYokfQtUdmhWPXJpyTSHKFAruZPd1qjG9W71om7DPg@mail.gmail.com>
Subject: Re: mkstemp(3)
To: Garrett Wollman <wollman@bimajority.org>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man <linux-man@vger.kernel.org>, 
	kleink <kleink@netbsd.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 81AC14F09AB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[dartmouth.edu,none];
	R_DKIM_ALLOW(-0.20)[dartmouth.edu:s=google1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5473-lists,linux-man=lfdr.de];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[dartmouth.edu:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[douglas.mcilroy@dartmouth.edu,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Aha. For maximum safety, my default configuration for gcc is very
stringent and includes -std=3Dc2x, which apparently hides non-C-standard
parts of header files.

Posix System Interfaces Section 2.2 tells me that I should #define
_POSIX_C_SOURCE before #include <stdlib.h>. That fact is missing from
Linux's man 3 mkstemp.  Arguably the Posix description of mkstemp
should mention it, too.

Unfortunately, stdlib.h for gcc 13.3.0 does not check _POSIX_C_SOURCE,
so it looks like I may have a complaint about Gnu/Linux, too.

Doug


On Thu, May 7, 2026 at 5:19=E2=80=AFPM Garrett Wollman <wollman@bimajority.=
org> wrote:
>
> <<On Thu, 7 May 2026 22:23:01 +0200, Alejandro Colomar <alx@kernel.org> s=
aid:
>
> > Later, in POSIX.1-2001, it already appears in <stdlib.h>.  So, at some
> > point, people decided to move it there.  POSIX doesn't say anything
> > about the move, though.
>
> Note that 1003.1-2001 (XSH page 761) shades the synopsis as "XSI" --
> this is code for "mistakes inherited from XPG4 and included as a part
> of the unification of POSIX with the Single UNIX Specification".  As
> the definition of <stdlib.h> (XBD page 325) notes:
>
>         Some of the functionality described on this reference page
>         extends the ISO C standard.  Applications shall define the
>         appropriate feature test macro (see the System Interfaces
>         volume of IEEE Std 1003.1-2001, Section 2.2, The Compilation
>         Environment) to enable the visibility of these symbols
>         in this header.
>
> This is shaded "CX", meaning "extension to ISO C", but all of the
> noted extensions are shaded "XSI" except for posix_memalign ("ADV"),
> rand_r ("TSF"), setenv and unsetenv (both "CX").
>
> > So, the point where it was moved seems to have been XPG4v2 (which was
> > later repackaged as SUSv1).  I don't know why XPG4v2 decided to move th=
e
> > prototype from <unistd.h> to <stdlib.h>.  I've CCed kleink, in case it
> > knows (and remembers).
>
> The "XSI" declarations in 1003.1-2001 for <stdlib.h> are:
>
>         All symbols from <stddef.h>, <limits.h>, <math.h>, and
>         <sys/wait.h> (at the implementation's option).
>
>         The W* constants from <sys/wait.h> for use with wait3().
>
>         The functions a64l(), drand48(), ecvt(), erand48(), fcvt(),
>         gcvt(), getsubopt(), grantpt(), initstate(), jrand48(),
>         l64a(), lcong48(), lrand48(), mktemp() [marked "LEGACY"],
>         mkstemp(), mrand48(), nrand48(), posix_openpt(), ptsname(),
>         putenv(), random(), realpath(), seed48(), setkey(),
>         setstate(), srand48(), srandom(), and unlockpt().
>
> This is really quite a motley list: PRNGs, ASCII-numeric conversion
> routines, temporary files, environment variables, pseudo-TTYs, and the
> constants for wait3() but not the wait3() functon itself.
>
> The "XSI" option is unusual in POSIX in that its interfaces need not
> be declared unless the application has defined the appropriate
> _XOPEN_SOURCE macro.  (In real-world implementations, these interfaces
> are normally declared by default unless the application has requested
> a stricter namespace with _POSIX_C_SOURCE or similar.)
>
> POSIX also has a very weird attitude toward compatibility with
> previous (or future) revisions of itself; the standard says nothing
> about how an application written for C99 can be compiled on an
> 1003.1:2024 system -- as far as the current standard is concerned, the
> only compiler is C17.[1]  Many implementations, however (including the
> work I did for FreeBSD back in the early 2000s) attempt to support
> source and binary compatibility with multiple standards and with
> traditional (pre-standard) applications, to the extent feasible with
> preprocessor macros and the development tools available.
>
> -GAWollman
>
> [1] Why is 1003.1:2024 not aligned with C23?  Because the work on the
> 2024 standard started in 2018, and POSIX as currently specified both
> subsumes and defers to a specific ISO C standard; the Austin Group
> couldn't align to C23 until we knew officially what was going to be in
> it and that it was going to be fully approved and published *before*
> POSIX went into balloting with IEEE and ISO.  The next POSIX will be
> aligned with C23.

