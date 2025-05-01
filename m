Return-Path: <linux-man+bounces-2841-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9162CAA673F
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 01:08:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 781631890098
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 23:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 905B6265CCF;
	Thu,  1 May 2025 23:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="UdVOT7ci"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B82B257443
	for <linux-man@vger.kernel.org>; Thu,  1 May 2025 23:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746140646; cv=none; b=AxQSosOWBwKkBCfIWQ5sO8g5sQS+GiSgmXUgQZ4caDO3bF+ebUStUeWViE7/66I7QUDX2BGxx/UMWvY0faNBaPYmkJUgqn9V8Yk9GOJ3r8yuA4PZnzxaNHoEmNE5VWYB3uH71XLJeAzOmtQUYy5vDVdco+pAWnGYn5oSKNaATZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746140646; c=relaxed/simple;
	bh=pFMgcu0bhGr45GF+1KuvGeIEWd+s4tBjWzSwcqq8ato=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pcYJQ2xFkRBrsuakShAUqW4Yakn6kogDJpq0vNQvSSfxgde7Kj3JVmjJyoxqTYMGYdDDOzLB0mxFnt1RR7iNvcHnqb27oFq7ZvJgZOz0uDDCQkQwobIWUnyzusvxSYAkuzkLmN4mxRW1K+FVHTQWbVipAQYqVRlGNrfcirUvnqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=UdVOT7ci; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54d689c0741so1249e87.1
        for <linux-man@vger.kernel.org>; Thu, 01 May 2025 16:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746140643; x=1746745443; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=arPApI7hInEUpf9bA3wVp4jPaSmDGM4yssCw4EUnQ6c=;
        b=UdVOT7ciFjKfIS2LBwcdTDF3mMeFlkCa26X7XTT/vqvETKcJSgtnq4LjuALQuwb3gp
         cUDFX8RVG45pf8Bgs6eS7bVipVFxrijCW6/HgxxQHyfIR1iYzuyoc9Re32Zh/KMr9TAO
         MvA0KKOQQzscLJ4MYO8CG3ZEN4wcDZ+pFYSn1NHIAF1ErZgcWW8x2vY5uOpL3hWI1DbV
         ScJukrejEYOjPFDGKE4H/4pQsiBngoWI/oRt34IWvA9xYaaXTcNElaY9ltj49pMCja/C
         VdZJqjD2prmEOqWr3bp3fns4/WWomaK1S8uDt9OTdpnxQJrrbveXHsIwtUK/TeNrIPCk
         41yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746140643; x=1746745443;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=arPApI7hInEUpf9bA3wVp4jPaSmDGM4yssCw4EUnQ6c=;
        b=HqYEUOtkem2dUWmZWYnA2CPPWeRVIaonBKMj4xqE9hDkGaIeEhMUuZ/kAq5gT2QmEs
         PYcvMLMPWIUAuvgHIU/y4QUlewhG7YaDnMlnHekZdcgBf+8jSxZssaaWSRMSxQ5pOSyi
         WHWslxhxZu3fd8XcatGpHzqnh9vscyNhsO83a9X+LS20yykaU7LGNq/tRJEz4F2kvwN7
         xbay5RXOh2rwbB4Zzr0CfsdNQHTvLpqNB1HUGOmR+88ApPHJgRadeB4dKACjKMzBkPqT
         Rih5IrKhQEtbHLZbCAoWgRv9Ijl5PNdR8m7mm2f7bS6eM+odxjrDRzyv+BjRU0i9XpwS
         YRwQ==
X-Gm-Message-State: AOJu0YytX+quWutjp6f5iUmUvGM7klInjB2+1ESLoYvjcpF9uH8XckaH
	xk+H7WGJRV6NjjICTBEb4ifysPfI+RMtDjgq8thfZGjfsOPLHN4ECgW+igtqqx1qXvuwfMbg88k
	Q8/886v5Mtd3/Q8JRe4Nzi5bPdDt5hJ5qXd7qN6I81IJtNaKg5UTqIgs=
X-Gm-Gg: ASbGncv1NQDk2599Sv78U6NIC8YbpoY8iTy9/riDyvqWygj+/zyRcBYrApr2qGBQBLk
	QJs7MdSFJJsQ2xAwW2Zf13XkUrqOLKKwDWmKxjoGgURS8u1ZvrGAGAJw8gsVWuZIGVpgyFDgEV+
	dmpUMDuMjcb8idGEu2wU+hPg==
X-Google-Smtp-Source: AGHT+IF/nABH5D/E5jNVLqBxBdBWaPKxYVX2Oa8hQlpZ8SCGuPePYS2fjyPCdvyWaeWHljmSX23TV3O+6yHmMzAZ6Kg=
X-Received: by 2002:a19:8c4e:0:b0:543:e3c3:5a5e with SMTP id
 2adb3069b0e04-54ea711d9c7mr341448e87.4.1746140642442; Thu, 01 May 2025
 16:04:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250428020252.1569621-1-tweek@google.com> <noapvznvijxtvybcap6qso3r2wv54cvbwpqj4y3fxgh7gmzvah@tzposocmmuzp>
In-Reply-To: <noapvznvijxtvybcap6qso3r2wv54cvbwpqj4y3fxgh7gmzvah@tzposocmmuzp>
From: =?UTF-8?Q?Thi=C3=A9baud_Weksteen?= <tweek@google.com>
Date: Fri, 2 May 2025 09:03:43 +1000
X-Gm-Features: ATxdqUFCmpWmpFBNd43X_w6gzVIjR0ZOxpQdHR3lyXWuv8cxYhxY4rXE_zxjlUo
Message-ID: <CA+zpnLfzODK6q5ni89QiTnRid15FtHACvyjaoGfx3PcYGmuBuQ@mail.gmail.com>
Subject: Re: [PATCH v2] man/man2/memfd_secret.2: Update default state
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 2, 2025 at 7:21=E2=80=AFAM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> Hi
>
> On Mon, Apr 28, 2025 at 12:02:52PM +1000, Thi=C3=A9baud Weksteen wrote:
> > In commit b758fe6df50 ("mm/secretmem: make it on by default"),
> > memfd_secret was updated to be enabled by default.
> >
> > Signed-off-by: Thi=C3=A9baud Weksteen <tweek@google.com>
>
> Thanks!  I've applied the patch.  I've amended with some tweaks to line
> breaks to reduce the diff:


Great, thanks for the review!

>
>
>         diff --git c/man/man2/memfd_secret.2 w/man/man2/memfd_secret.2
>         index b3896b12d..30853d65b 100644
>         --- c/man/man2/memfd_secret.2
>         +++ w/man/man2/memfd_secret.2
>         @@ -140,9 +140,9 @@ .SH HISTORY
>          Before Linux 6.5,
>          .\" commit b758fe6df50daf68fef089d8f3c1cd49fc794ed2
>          .BR memfd_secret ()
>         -was disabled by default and only available if the system
>         -administrator turned it on using "secretmem.enable=3Dy" kernel
>         -parameter.
>         +was disabled by default and only available
>         +if the system administrator turned it on using
>         +"secretmem.enable=3Dy" kernel parameter.
>          .SH NOTES
>          The
>          .BR memfd_secret ()
>
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D84521911eab71ce5ff83365c75dfce846d12ce97>
>
>
> Have a lovely night!
> Alex
>
> > ---
> > Changes since v1:
> > - Move the paragraph to the HISTORY section.
> > - Drop reference to the performance concern.
> > - Follow semantic newlines rule.
> >  man/man2/memfd_secret.2 | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/man/man2/memfd_secret.2 b/man/man2/memfd_secret.2
> > index 322d67a41..b3896b12d 100644
> > --- a/man/man2/memfd_secret.2
> > +++ b/man/man2/memfd_secret.2
> > @@ -136,6 +136,13 @@ or has not been enabled on the kernel command-line=
 with
> >  Linux.
> >  .SH HISTORY
> >  Linux 5.14.
> > +.P
> > +Before Linux 6.5,
> > +.\" commit b758fe6df50daf68fef089d8f3c1cd49fc794ed2
> > +.BR memfd_secret ()
> > +was disabled by default and only available if the system
> > +administrator turned it on using "secretmem.enable=3Dy" kernel
> > +parameter.
> >  .SH NOTES
> >  The
> >  .BR memfd_secret ()
> > @@ -182,13 +189,6 @@ or spawn a new privileged user-space process to pe=
rform
> >  secrets exfiltration using
> >  .BR ptrace (2).
> >  .P
> > -The way
> > -.BR memfd_secret ()
> > -allocates and locks the memory may impact overall system performance,
> > -therefore the system call is disabled by default and only available
> > -if the system administrator turned it on using
> > -"secretmem.enable=3Dy" kernel parameter.
> > -.P
> >  To prevent potential data leaks of memory regions backed by
> >  .BR memfd_secret ()
> >  from a hybernation image,
> > --
> > 2.49.0.850.g28803427d3-goog
> >
>
> --
> <https://www.alejandro-colomar.es/>

