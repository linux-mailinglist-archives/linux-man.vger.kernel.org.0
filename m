Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7AA1929C024
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 18:12:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1816997AbgJ0RLs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 13:11:48 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:34766 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1786275AbgJ0RLr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 13:11:47 -0400
Received: by mail-ot1-f65.google.com with SMTP id k3so1801865otp.1;
        Tue, 27 Oct 2020 10:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=ygOSwavUaW0pTppOkzJdX4ZJ3BQzpI7ADGPvlL65ezw=;
        b=NcqL/NTTGMcAVl6cdeNrDhTloOeu4INI0fdbVDvhQCUVc8Oc0l/1beXwIpojf3Jv7p
         QhTGOVLfi9cGnfBlRHpIR1GgWTIwzBmSTWNP28UVAqInvwQuzzakHv7dCoNzY2acBBBh
         f51sC0PyRNUY3xf7vv9NSLJqnrU7UqfZJFn7C3S0mIk50YzQiNixRk10iuH8kvfZlJPK
         wZdiQ5HnYkK+biZW4WEHIbYwH4fNI18aA7EGhHEv3HQbkqyfGXceZquB0Rtt7xYBXzfz
         TW+uRxEqP2dsJmMLIFEetnRdS1AWecI4AvWDpP4wmIsrxKowEfYkwkmNc3wGJ8OqXiyQ
         T7KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=ygOSwavUaW0pTppOkzJdX4ZJ3BQzpI7ADGPvlL65ezw=;
        b=EV01cMnt/EgNnARpqxCnSgOWegrT+wfP7bF8G/zHZu4JCsSddXAHnTKRgh6dRERVaJ
         HqCkoNvyym0d/XkSQRZEaplhdebXtKE0HjsUbdK9FMoOujhXELivocTjGcY0RheEUIWF
         UDqDlzN1qgvboK0ZVqXbhzzBw8/pjMSn1zrqOIa1cYGCSejzakA5bUNrX9Oc4T0Regu/
         cd5jvfmkBufRAV/UvaO28rYxb6h5QmPEfG61lSFvhTqFzwBAHrNwLkfOf5wk9W/SXFG0
         6gqL+nq/TbgvSGJMdEsVJQeHnSIWUiyqChIRANyOa5yULqqLaV6JqPwO3xoTYS2VCqnf
         n1zg==
X-Gm-Message-State: AOAM533mME9EzRtk5hatjHUuSM4leGP809W7gSO3rgnHy4QBwuGm1IWw
        UgDTgoJTVaDPPT/tfmpwmrIdbT663TJXbznPPrM=
X-Google-Smtp-Source: ABdhPJw1xfYN3u/CwlkLE0tSJR2WbcKrlmKIdROkuyQllxZDTQ3kmX/ZEVBUSPTaI7XYhgZkgKn/jGBAgDBoC6W0Wa4=
X-Received: by 2002:a9d:12d3:: with SMTP id g77mr1782884otg.323.1603818706173;
 Tue, 27 Oct 2020 10:11:46 -0700 (PDT)
MIME-Version: 1.0
References: <33c10554-c0ee-9e46-2946-67a9deac6752@linux.intel.com>
 <190971ba-31f1-ca41-60a9-38989fe82a64@gmail.com> <bd17b7fa-288d-2023-a068-41e5d1327e65@linux.intel.com>
In-Reply-To: <bd17b7fa-288d-2023-a068-41e5d1327e65@linux.intel.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 27 Oct 2020 18:11:34 +0100
Message-ID: <CAKgNAkhSXG88D6qHYzXskOL0XDDatQT3sX0L-AnUwz9fqa8pNg@mail.gmail.com>
Subject: Re: [PATCH v2] perf_event_open.2: update the man page with
 CAP_PERFMON related information
To:     Alexey Budankov <alexey.budankov@linux.intel.com>
Cc:     Arnaldo Carvalho de Melo <acme@kernel.org>,
        Jiri Olsa <jolsa@redhat.com>,
        Namhyung Kim <namhyung@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Ingo Molnar <mingo@redhat.com>,
        Andi Kleen <ak@linux.intel.com>,
        linux-man <linux-man@vger.kernel.org>,
        "linux-security-module@vger.kernel.org" 
        <linux-security-module@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, 27 Oct 2020 at 18:10, Alexey Budankov
<alexey.budankov@linux.intel.com> wrote:
>
>
> On 27.10.2020 19:57, Michael Kerrisk (man-pages) wrote:
> > Hello Alexey,
> >
> > On 10/27/20 5:48 PM, Alexey Budankov wrote:
> >>
> >> Extend perf_event_open 2 man page with the information about
> >> CAP_PERFMON capability designed to secure performance monitoring
> >> and observability operation in a system according to the principle
> >> of least privilege [1] (POSIX IEEE 1003.1e, 2.2.2.39).
> >>
> >> [1] https://sites.google.com/site/fullycapable/, posix_1003.1e-990310.pdf
> >>
> >> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> >
> > Thanks for this. I've applied. I have a few questions/comments below.
> >
> >> ---
> >>  man2/perf_event_open.2 | 32 ++++++++++++++++++++++++++++++--
> >>  1 file changed, 30 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> >> index 4827a359d..9810bc554 100644
> >> --- a/man2/perf_event_open.2
> >> +++ b/man2/perf_event_open.2
> >> @@ -97,6 +97,8 @@ when running on the specified CPU.
> >>  .BR "pid == \-1" " and " "cpu >= 0"
> >>  This measures all processes/threads on the specified CPU.
> >>  This requires
> >> +.B CAP_PERFMON
> >> +(since Linux 5.8) or
> >>  .B CAP_SYS_ADMIN
> >>  capability or a
> >>  .I /proc/sys/kernel/perf_event_paranoid
> >> @@ -108,9 +110,11 @@ This setting is invalid and will return an error.
> >>  When
> >>  .I pid
> >>  is greater than zero, permission to perform this system call
> >> -is governed by a ptrace access mode
> >> +is governed by
> >> +.B CAP_PERFMON
> >> +(since Linux 5.9) and a ptrace access mode
> >
> > I want to check: did you really mean 5.9 here? (Everywhere else,
> > 5.8 is mentioned, but perhaps this change came in the next kernel
> > version.)
>
> Yes, it is not a typo. This thing was merged into v5.9.
>
> Thanks,
> Alexei

Thanks, Alexei!



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
