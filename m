Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 733DC29A7C0
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 10:25:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2509871AbgJ0JZj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 05:25:39 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:43799 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2408020AbgJ0JZj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 05:25:39 -0400
Received: by mail-oi1-f193.google.com with SMTP id x203so592498oia.10;
        Tue, 27 Oct 2020 02:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=MUm9nEX/D5FCwmjruPYOg/b121NV5PO1/2nYn3+TNl8=;
        b=o8IwAZ6QWUpOUpWZ448EylhR+H8oGS/N6Udu2QL9TZm+F8hYCH8+w0aPR33UiTglKm
         7zr0pmnHvvCSqyzYEkdI1SCjxTK7ysLxpQOdMyqrcxvfb1o7HIkH4IdBUegB1buW7vuy
         CT6H8Md8O5dPLnGHayEWjBrVGIFif7/neG5A2KtRNuPHZHi+94Wdp6lJNnN9jctQVoK1
         bD7kH48yFIEJima21GjidDn8OFP2eDN+YnS8SE51FLQnNXGowGO4qHw2O+mpyk6JTCRz
         AtW7su+ujN4C5sn3ss3ujaQ20S/xkb0eRGqGHWTt/1CPRk5BQBMF9rfwZX3oseGMV6yS
         2GYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=MUm9nEX/D5FCwmjruPYOg/b121NV5PO1/2nYn3+TNl8=;
        b=tS8MQAFXDL+3KMvMFn0fi9Hq9jir0sMCNzRSZCAi40HTxv9/V1vhykj+1uCrMVwhil
         QogehaaLLiVfpbp4CVv9pBgRDRgrgaXJkxFmpoLgRK4UTaTQ9C7XC5qeOdyeiu5S8tCt
         Z5THPbMBDUk4CU8hyExZBRV9Bd8Jz+B2xv7MeVv60aOHFzE3ec324UlWME+6Biegu8AO
         39ScWUSAdSp0XvdI5Npt5vRRD4tnlKtQJR9sjd0w2YRlvMAf9odE9gKvBgzz/0IpkfS/
         5tDLf8PUU3qu0+q47Wz93pJ95DCAgdoO2wvljuy37oeRkqmQxoIa/iwvdIZ8m4ZmxJdA
         9ZYA==
X-Gm-Message-State: AOAM532EgskBxLYfnhYbzqpMK3BMYvw3duchH3mUOv2WmGoTuq/NHiNe
        tLO5vHag06QVhyiaMwqt7FadpxHeuvWCg05ziKt6d440
X-Google-Smtp-Source: ABdhPJx7hn5WiQKe7vytiP9c23shmBGIsmkjZpn7/BT/ToDoVa6kJVIK2gEJx2TIZUxcfm4Nh5Doet9dZ8nMn8P+sf0=
X-Received: by 2002:aca:4c06:: with SMTP id z6mr307205oia.177.1603790737197;
 Tue, 27 Oct 2020 02:25:37 -0700 (PDT)
MIME-Version: 1.0
References: <18d1083d-efe5-f5f8-c531-d142c0e5c1a8@linux.intel.com>
 <ed6f63bd-5dcb-425d-60ee-311a68756bfe@gmail.com> <e3ff6ff2-8fa5-de27-3bc4-f578b6957de8@linux.intel.com>
In-Reply-To: <e3ff6ff2-8fa5-de27-3bc4-f578b6957de8@linux.intel.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 27 Oct 2020 10:25:26 +0100
Message-ID: <CAKgNAkirXKh6VocM7-gwvC1CoDgqV7NjpU5OSVvXJX9mwiNnBg@mail.gmail.com>
Subject: Re: [PATCH v1] perf_event_open.2: update the man page with
 CAP_PERFMON related information
To:     Alexey Budankov <alexey.budankov@linux.intel.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        James Morris <jmorris@namei.org>,
        Serge Hallyn <serge@hallyn.com>,
        Stephen Smalley <sds@tycho.nsa.gov>,
        Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Ingo Molnar <mingo@redhat.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Andi Kleen <ak@linux.intel.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alexei,

Would you be able to refresh this patch and resend please?

Thnks,

Michael

On Mon, 24 Aug 2020 at 22:17, Alexey Budankov
<alexey.budankov@linux.intel.com> wrote:
>
> Hi Michael,
>
> On 23.08.2020 20:28, Michael Kerrisk (man-pages) wrote:
> > Hello Alexey,
> >
> > Could you look at the question below and update the patch.
> >
> > On 2/17/20 9:18 AM, Alexey Budankov wrote:
> >>
> >> Extend perf_event_open 2 man page with the information about
> >> CAP_PERFMON capability designed to secure performance monitoring
> >> and observability operation in a system according to the principle
> >> of least privilege [1] (POSIX IEEE 1003.1e, 2.2.2.39).
> >>
> >> [1] https://sites.google.com/site/fullycapable/, posix_1003.1e-990310.pdf
> >>
> >> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> >> ---
> >>   man2/perf_event_open.2 | 27 +++++++++++++++++++++++++++
> >>   1 file changed, 27 insertions(+)
> >>
> >> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> >> index 89d267c02..e9aab2ca1 100644
> >> --- a/man2/perf_event_open.2
> >> +++ b/man2/perf_event_open.2
> >> @@ -98,6 +98,8 @@ when running on the specified CPU.
> >>   .BR "pid == \-1" " and " "cpu >= 0"
> >>   This measures all processes/threads on the specified CPU.
> >>   This requires
> >> +.B CAP_PERFMON
> >> +or
> >>   .B CAP_SYS_ADMIN
> >>   capability or a
> >>   .I /proc/sys/kernel/perf_event_paranoid
> >> @@ -2920,6 +2922,8 @@ to hold the result.
> >>   This allows attaching a Berkeley Packet Filter (BPF)
> >>   program to an existing kprobe tracepoint event.
> >>   You need
> >> +.B CAP_PERFMON
> >> +or
> >>   .B CAP_SYS_ADMIN
> >>   privileges to use this ioctl.
> >>   .IP
> >> @@ -2962,6 +2966,8 @@ have multiple events attached to a tracepoint.
> >>   Querying this value on one tracepoint event returns the id
> >>   of all BPF programs in all events attached to the tracepoint.
> >>   You need
> >> +.B CAP_PERFMON
> >> +or
> >>   .B CAP_SYS_ADMIN
> >>   privileges to use this ioctl.
> >>   .IP
> >> @@ -3170,6 +3176,8 @@ it was expecting.
> >>   .TP
> >>   .B EACCES
> >>   Returned when the requested event requires
> >> +.B CAP_PERFMON
> >> +or
> >>   .B CAP_SYS_ADMIN
> >>   permissions (or a more permissive perf_event paranoid setting).
> >>   Some common cases where an unprivileged process
> >> @@ -3291,6 +3299,8 @@ setting is specified.
> >>   It can also happen, as with
> >>   .BR EACCES ,
> >>   when the requested event requires
> >> +.B CAP_PERFMON
> >> +or
> >>   .B CAP_SYS_ADMIN
> >>   permissions (or a more permissive perf_event paranoid setting).
> >>   This includes setting a breakpoint on a kernel address,
> >> @@ -3321,6 +3331,23 @@ The official way of knowing if
> >>   support is enabled is checking
> >>   for the existence of the file
> >>   .IR /proc/sys/kernel/perf_event_paranoid .
> >> +.PP
> >> +.B CAP_PERFMON
> >> +capability (since Linux X.Y) provides secure approach to
> >
> > What's the version?
>
> It's since Linux 5.8 .
>
> >
> >> +performance monitoring and observability operations in a system
> >> +according to the principal of least privilege (POSIX IEEE 1003.1e).
> >> +Accessing system performance monitoring and observability operations
> >> +using
> >> +.B CAP_PERFMON
> >> +capability singly, without the rest of
> >> +.B CAP_SYS_ADMIN
> >> +credentials, excludes chances to misuse the credentials and makes
> >
> > I think that wording like "using CAP_PERFMON rather than the much
> > more powerful CAP_SYS_ADMIN..."
>
> Sounds good to me like this, or similar:
>
> "Accessing system performance monitoring and observability operations
>  using CAP_PERFMON rather than the much more powerful CAP_SYS_ADMIN
>  excludes chances to misuse credentials and makes operations more
>  secure."
>
> >
> >> +the operations more secure.
> >> +.B CAP_SYS_ADMIN
> >> +usage for secure system performance monitoring and observability
> >> +is discouraged with respect to
> >> +.B CAP_PERFMON
> >> +capability.
> >>   .SH BUGS
> >>   The
> >>   .B F_SETOWN_EX
> >
> > Thanks,
> >
> > Michael
> >
>
> Thanks,
> Alexei
>
> P.S.
> I am on vacations till 08/31.
> Please expect delay in response.
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
