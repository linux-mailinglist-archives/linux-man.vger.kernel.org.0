Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D942C44DDEF
	for <lists+linux-man@lfdr.de>; Thu, 11 Nov 2021 23:43:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229839AbhKKWp6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Nov 2021 17:45:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229652AbhKKWp6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Nov 2021 17:45:58 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83547C061766
        for <linux-man@vger.kernel.org>; Thu, 11 Nov 2021 14:43:08 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id v15so14927434ljc.0
        for <linux-man@vger.kernel.org>; Thu, 11 Nov 2021 14:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=bx13emblazo+xK5eYlM9BYlYSFmIrgfGU+YBqA5JnTw=;
        b=iccKJ7ZVzRLx0oedWDVEWlDi4fuLvxo2NMB/fQiddVcDMpdXhCjvCZCXNoZYuyuwxL
         gZHytQ2JlM75c0R2CdvsqsCl4PL0xMYYjiEvK6shBPTFncGZGEiKTdNd5k+7+DqYyg0R
         uzwvW3ponathYPshRgPHNRJJQFowJPY+26yYRAqO05ek9eRpYhlCkgGtgI5XHGQfBrOx
         cuc0opWN6xGUHmyshCKJR6HG5Zl/IAIJAbwlr3lK6iFyH6bykGw29cqEcMr6H264WXgG
         nRYgX0qep8NbeAD4U+618iro8vYMqhBe/24hh8R8Iom1vI3cW0ce+XGbD/WfgbopST+n
         UBeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=bx13emblazo+xK5eYlM9BYlYSFmIrgfGU+YBqA5JnTw=;
        b=f31QSkFxfoNwiiz+wczrmmO4tpzoaDvsw5ElM1pVPwJYWMuzfVvoF8mzK8gAKKzAp9
         3p9BrYXiI/+ZGzvDl9WkUgLag6TgKUGSuhoQDTV3cIC5RVHq5d/2dqxLNYVz9xrIxCam
         4A71foPDJMmvNwcHC6y/jwqT4YVrgf+tmzPIHay9TeM9z5W5xqMDAg8qXmLUx8LgxYbD
         x5QQn4bPLfYGrVbHR3K3iediqJHPPCDU6pIFziTfyzbt2TY/Q1DpLneBAbubykYZnn2x
         EPobMOyJk73IEOinDXdGy31yzl4Be95YIqV16Kk9uXURyCHImxI+VC6WRYtaOdnixRvu
         R9tA==
X-Gm-Message-State: AOAM5300lDwAUzj0RvqhW/vb8vD3sVZAJ7ml0SbB23OXnarkTbnBih5P
        zverMBumnM6AgDL29rKbiTqm3dhtgYjt7uYCud5zq6jnq9lqbAvh
X-Google-Smtp-Source: ABdhPJweegJWoqUGgBLmvLiL5bBfWSZvKqPjYYFocQ4xKmTvXIS1oVMWMnOpuN8YEL2slCyAvI91ym/7yRgK7ZJjNhM=
X-Received: by 2002:a05:651c:1043:: with SMTP id x3mr517382ljm.279.1636670586620;
 Thu, 11 Nov 2021 14:43:06 -0800 (PST)
MIME-Version: 1.0
References: <CAJgzZoqZ1yfFtP0Zbc+i5aGS1bn6VJu2dHaa9CJhJr2P7QfSiQ@mail.gmail.com>
 <874k8k8m5s.fsf@oldenburg.str.redhat.com> <9dcab95b-ec77-b82b-22cf-ce082af033fb@gmail.com>
In-Reply-To: <9dcab95b-ec77-b82b-22cf-ce082af033fb@gmail.com>
From:   enh <enh@google.com>
Date:   Thu, 11 Nov 2021 14:42:55 -0800
Message-ID: <CAJgzZoovvrPuvL43bbj39QvH3KLO7ZO800j76T=bea+iHrvqBQ@mail.gmail.com>
Subject: Re: [PATCH] pthread_atfork.3: wfix.
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

done; sorry, i didn't realize Signed-off-by was for the original author too=
!

Florian's comment made me read through the *whole* page now, so i've
fixed a few more places that seemed a bit confusing too. v2 inlined
here...

From 92f3e61c8d61045448e6e94b9fb59817a5e07748 Mon Sep 17 00:00:00 2001
From: Elliott Hughes <enh@google.com>
Date: Tue, 9 Nov 2021 14:20:32 -0800
Subject: [PATCH] pthread_atfork.3: wfix.

Clarify that the pthread_atfork() callback list is a global, not
per-thread.

The use of "this thread" implied to some readers that pthread_atfork()
maintained per-thread lists of callbacks. Given that the next sentence
already explains that the callbacks are run in the context of the thread
that calls fork(), I actually think it would be fine not to mention
threads at all in the earlier sentence, but for now I've gone with what
I think was intended to be written.

This patch also attempts to clarify other references to "thread",
and fixes a trivial typo "form" instead of "fork".

Signed-off-by: Elliott Hughes <enh@google.com>
---
 man3/pthread_atfork.3 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man3/pthread_atfork.3 b/man3/pthread_atfork.3
index b727cb48e..12a1492b6 100644
--- a/man3/pthread_atfork.3
+++ b/man3/pthread_atfork.3
@@ -39,14 +39,14 @@ The
 .BR pthread_atfork ()
 function registers fork handlers that are to be executed when
 .BR fork (2)
-is called by this thread.
+is called by any thread in a process.
 The handlers are executed in the context of the thread that calls
 .BR fork (2).
 .PP
 Three kinds of handler can be registered:
 .IP * 3
 .IR prepare
-specifies a handler that is executed before
+specifies a handler that is executed in the parent process before
 .BR fork (2)
 processing starts.
 .IP *
@@ -70,8 +70,8 @@ On success,
 returns zero.
 On error, it returns an error number.
 .BR pthread_atfork ()
-may be called multiple times by a thread,
-to register multiple handlers for each phase.
+may be called multiple times by a process
+to register additional handlers.
 The handlers for each phase are called in a specified order: the
 .I prepare
 handlers are called in reverse order of registration; the
@@ -82,7 +82,7 @@ handlers are called in the order of registration.
 .SH ERRORS
 .TP
 .B ENOMEM
-Could not allocate memory to record the form handler entry.
+Could not allocate memory to record the fork handler list entry.
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008.
 .SH NOTES
@@ -92,7 +92,7 @@ is called in a multithreaded process,
 only the calling thread is duplicated in the child process.
 The original intention of
 .BR pthread_atfork ()
-was to allow the calling thread to be returned to a consistent state.
+was to allow the child process to be returned to a consistent state.
 For example, at the time of the call to
 .BR fork (2),
 other threads may have locked mutexes that are visible in the
--=20
2.34.0.rc1.387.gb447b232ab-goog



On Thu, Nov 11, 2021 at 1:49 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi,
>
> On 11/9/21 23:27, enh wrote:
>  > Clarify that the pthread_atfork() callback list is a global, not
>  > per-thread.
>  >
>  > The use of "this thread" implied to some readers that pthread_atfork()
>  > maintained per-thread lists of callbacks. Given that the next sentence
>  > already explains that the callbacks are run in the context of the thre=
ad
>  > that calls fork(), I actually think it would be fine not to mention
>  > threads at all in the earlier sentence, but for now I've gone with wha=
t
>  > I think was intended to be written.
>  > ---
>  >   man3/pthread_atfork.3 | 2 +-
>  >   1 file changed, 1 insertion(+), 1 deletion(-)
>
> Could you please sign your patch?
>
> <https://www.kernel.org/doc/html/latest/process/submitting-patches.html#d=
eveloper-s-certificate-of-origin-1-1>
>
> On 11/10/21 09:11, Florian Weimer wrote:
> >> diff --git a/man3/pthread_atfork.3 b/man3/pthread_atfork.3
> >> index b727cb48e..3e61e797f 100644
> >> --- a/man3/pthread_atfork.3
> >> +++ b/man3/pthread_atfork.3
> >> @@ -39,7 +39,7 @@ The
> >>   .BR pthread_atfork ()
> >>   function registers fork handlers that are to be executed when
> >>   .BR fork (2)
> >> -is called by this thread.
> >> +is called by any thread in a process.
> >>   The handlers are executed in the context of the thread that calls
> >>   .BR fork (2).
> >>   .PP
> >
> > There's another confusing =E2=80=9Cthread=E2=80=9D reference further be=
low:
> > =E2=80=9Cpthread_atfork() may be called multiple times by a thread, to =
register
> > multiple handlers for each phase.=E2=80=9D  I think that should be repl=
aced by
> > =E2=80=9Cprocess=E2=80=9D for clarity.
>
> Also, if you could also fix that line reported by Florian in the same
> patch, it would be great.
>
> Thanks!
>
> Alex
>
> --
> Alejandro Colomar
> Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/
