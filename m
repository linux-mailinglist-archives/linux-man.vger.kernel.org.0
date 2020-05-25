Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1D0A1E0FFA
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2020 15:57:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2403899AbgEYN5U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 May 2020 09:57:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2403805AbgEYN5U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 May 2020 09:57:20 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A0B9C061A0E
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 06:57:20 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id d7so20567376eja.7
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 06:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=+QhVSQN4NvcBdsfQMFkYRgyWCHXE74rhTjGksclZEkE=;
        b=uCHnK1rkafjIRcRG3RstkeVNLK2kFoR0D6nvYD6ZydQdMzvRoqRjLD+6A22Swfey6P
         ZZfuhmMY5/uaVKLQIEyJNdCyd+nQIrKoI9BqfbLsqdPB0x7YInwz78nlaj6PfGHg1pAO
         mYS4QmF8sC2LUTc9//xgAm4GfjINytCeV1QWe4Y/W2ie1gaLtyH7LzZxdINUgj1IHxi1
         fFGioEsIjgKIAoVHcxYcOshPBLSz03uq7H3UYsPLBVbrpvgQBXZZQYcx66X+RT7vZXUO
         wYwe0O3NGOJbISeJANePeu0W8xPYEJ0BTlCZt9Za+aCsvGerBY0jBZufUQrbLXbPJJIW
         Cbug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=+QhVSQN4NvcBdsfQMFkYRgyWCHXE74rhTjGksclZEkE=;
        b=cC8Gf8nHLXJZhb+ttK2hBkNiGOLPnG8r+xDYyFA/x6FmR6YBaEXXY7ua7DtxKvIO+T
         7Rby/vSuTd9+E6sWQMCsNhtrHTzn9O4bjKhAgbW+gmJ2PywG0x5/Wemsy1XhGILdBDLt
         Hxd3zeugd+SPFRoY7OxeaYtA6sXMJDo30e61vWBM6tNxeUFYO/HGwVXPz1vJQ+VIBuvx
         M7tnLTzKdTPDMKSdNIX5Ex85CFzddp6U0Km5e1fKXawZDPCTW6bwqe066jWQ0kGSldCq
         BX+KkTdiUOoGSv9AZoLGs0fjYvZOuS1hsdQzbhQF8xOpqqnNd2eCj+J8TB9Iz7bWokuC
         6Z9w==
X-Gm-Message-State: AOAM533hmZS6thx0aj+PSXtM/glX0QDoQmyuf8DZ3O4bTQC12ApxYN+n
        5dINaKuxQLDtHkFI8D8j+LwDkD3rka4AnvslSuw=
X-Google-Smtp-Source: ABdhPJz28bCzHIRXjtLWRvNQxLXCtn5LKsQ1NS8IYMUfu0+JPj/i5CoDQV0jI7axUSxCI5ZiNoU1qo4FNANvyfo3n18=
X-Received: by 2002:a17:906:4049:: with SMTP id y9mr6214278ejj.357.1590415038778;
 Mon, 25 May 2020 06:57:18 -0700 (PDT)
MIME-Version: 1.0
References: <45693d06-c780-890f-8e5a-d22267722b29@deloquencia.de>
In-Reply-To: <45693d06-c780-890f-8e5a-d22267722b29@deloquencia.de>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 25 May 2020 15:57:07 +0200
Message-ID: <CAKgNAkhDwbBMx+2A06Y7nUnLB7vgZ42Bnh84TXaqh2dx8nKqgA@mail.gmail.com>
Subject: Re: [PATCH] iopl.2: Changing description of permissions set
 per-process to per-thread
To:     Thomas Piekarski <t.piekarski@deloquencia.de>
Cc:     linux-man <linux-man@vger.kernel.org>, victorm007@yahoo.com,
        Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Thomas Gleixner]

Thomas G,

I expect that the small change at Thomas P proposes in this patch is
correct (i.e., iopl(2) operates per-thread, not per-process). I
remember that you touch the relevant kernel source file often. Perhaps
you are able to give a quick Ack?

Thanks,

Michael


On Sun, 24 May 2020 at 15:22, Thomas Piekarski
<t.piekarski@deloquencia.de> wrote:
>
> iopl is setting permissions for port-mapped I/O not per-process but only
> for threads and its children.
>
> See https://bugzilla.kernel.org/show_bug.cgi?id=205317
>
> Reported-by: victorm007@yahoo.com
> Signed-off-by: Thomas Piekarski <t.piekarski@deloquencia.de>
>
>
> ---
>
>
> 1. Test case if permissions are granted per-process or per-thread
>
> I took the opportunity to dig into PMIO and granting permissions with
> iopl and ioperm.
>
> Wrote the following code in which two threads are created and try to
> read some data with inb(). First thread (read_from_sleepy_child) is
> created before permissions are granted (but is delayed) and the second
> one (read_from_child) after that.
>
> If those permissions would be granted on process level should the first
> thread not succeed?
>
> I hope I did not make any mistake, applied threading well and can solve
> this issue as well as support the discussion at LKML.
>
> 2. Test Code
>
> #include <pthread.h>
> #include <stdio.h>
> #include <sys/io.h>
> #include <unistd.h>
>
> #define PORT 0x378 // lp0
>
> void *read_from_sleepy_child()
> {
>    sleep(3);
>
>    // The inb() will fail due to missing permissions and it'll segfault
>    // although permissions are acquired before threads are joined.
>    // When permissions are set per process this should work.
>    printf("Read anything from (sleepy) child thread (%x).\n", inb(PORT));
>
>    return NULL;
> }
>
> void *read_from_child()
> {
>    // The inb() will succeed due to permissions are inherited to
>    // childs after they got acquired with either iopl or ioperm
>    printf("Read anything from child thread (%x).\n", inb(PORT));
>
>    return NULL;
> }
>
> int main()
> {
>    pthread_t delayed_thread, thread;
>
>    pthread_create(&delayed_thread, NULL, read_from_sleepy_child, NULL);
>
>    iopl(3);
>    // ioperm(0, 0xFFFF, 1); // the same segfault
>
>    // The inb() will succeed due to being the main, default thread
>    // where permissions got acquired in first place
>    printf("Read anything from main thread (%x).\n", inb(PORT));
>
>    pthread_create(&thread, NULL, read_from_child, NULL);
>    pthread_join(delayed_thread, NULL);
>    pthread_join(thread, NULL);
>
>    return 0;
> }
>
>
> 3. Patch
>
>   man2/iopl.2 | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/man2/iopl.2 b/man2/iopl.2
> index e5b216a14..329095808 100644
> --- a/man2/iopl.2
> +++ b/man2/iopl.2
> @@ -39,7 +39,7 @@ iopl \- change I/O privilege level
>   .BI "int iopl(int " level );
>   .SH DESCRIPTION
>   .BR iopl ()
> -changes the I/O privilege level of the calling process,
> +changes the I/O privilege level of the calling thread,
>   as specified by the two least significant bits in
>   .IR level .
>   .PP
> @@ -50,7 +50,7 @@ Since these X servers require access to all 65536 I/O
> ports, the
>   call is not sufficient.
>   .PP
>   In addition to granting unrestricted I/O port access, running at a higher
> -I/O privilege level also allows the process to disable interrupts.
> +I/O privilege level also allows the thread to disable interrupts.
>   This will probably crash the system, and is not recommended.
>   .PP
>   Permissions are not inherited by the child process created by
> @@ -79,7 +79,7 @@ is greater than 3.
>   This call is unimplemented.
>   .TP
>   .B EPERM
> -The calling process has insufficient privilege to call
> +The calling thread has insufficient privilege to call
>   .BR iopl ();
>   the
>   .B CAP_SYS_RAWIO
> --
> 2.20.1



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
