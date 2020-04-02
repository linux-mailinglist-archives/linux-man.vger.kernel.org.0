Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F0F8D19C1E6
	for <lists+linux-man@lfdr.de>; Thu,  2 Apr 2020 15:16:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387985AbgDBNQJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Apr 2020 09:16:09 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:35024 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387928AbgDBNQI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Apr 2020 09:16:08 -0400
Received: by mail-wr1-f68.google.com with SMTP id g3so1854042wrx.2;
        Thu, 02 Apr 2020 06:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6XZpPMO0fga4uHdtN9Kz4GF1Y5EWNBvBKbdPMO/0tFE=;
        b=QLBFgB0eu1uzpatoPEP026WBTpW8JD0PTZAqJ2ZMLp3//QCRcDaDOO3+jVGU1qHOYR
         saQ85AzZuizuTXaqfKqAMPjpey27RGz+rUJ6Rqd2+H1lTM12DJXwh2Ll3MlbutHUkYDz
         FCtZ+dBQkrQgGeJKU6vG+ktNvCvdBIxk2wdDA/KYVQNBAdvbriAeSO+Q3Dljw6bJhG2s
         fNuvTnwfpta7hynnhjj3ZriSf2JdoUYytJt8S5kclr2xfp//sJcUkyFTAxyUzdA1Hh+C
         0FOMu9Tf+GJVkUEU9xODpK7cRenQbye/R3iydgsOBFA/ebawZ5+UEF2K1SsASuDdL3th
         cKQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6XZpPMO0fga4uHdtN9Kz4GF1Y5EWNBvBKbdPMO/0tFE=;
        b=KBvMtWMw73WeVI2t5Tyx+rk89fXF3IT9I8mJxJJakViHQurdMPxd7HkicXByX43JNj
         HYmPHz2ny71VQgzpVRaEOwXuZ7SetsoX8385mkYNCZXzzpX6Lmq4HjFArBQgv0XXyMyN
         p9Mw2+Vujgmqa7ZbdEn84gQ7LgbN1HOcVO0wCU4RRVMHNAKQqhCJv76vH3uSliIesqL4
         reHrWHpAOkoezHLV7pbxX82xsQUvQKw3jAdXaH97OEneuZkx+Sl0w3mWKlul51Ol90h+
         PydtaLo7x1Aba+iyvkTj3Iqt3gN9JYMbLhKGnxW5uRGlZIBZhrvVVwsOU3ZbEmAzhES8
         JP/A==
X-Gm-Message-State: AGi0PuZ80AoJETKr3ZTlc9oVhT0RIq/+19wkFNJGjt++uCDZwF7oE+OO
        4+ez7W1suROWVHXWeBq2zUqzccEA
X-Google-Smtp-Source: APiQypKSmoqsoknQKI6beQv2PSskL7tkDz+odr6+Bd/Z0midmEAlb4UpXy4QpucEkeaJOwuq1AGDqw==
X-Received: by 2002:adf:9782:: with SMTP id s2mr3578116wrb.67.1585833366176;
        Thu, 02 Apr 2020 06:16:06 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id f12sm6939597wmh.4.2020.04.02.06.16.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 06:16:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>, arul.jeniston@gmail.com,
        "devi R.K" <devi.feb27@gmail.com>,
        Marc Lehmann <debian-reportbug@plan9.de>,
        John Stultz <john.stultz@linaro.org>,
        Andrei Vagin <avagin@gmail.com>,
        Cyrill Gorcunov <gorcunov@gmail.com>
Subject: Re: timer_settime() and ECANCELED
To:     Thomas Gleixner <tglx@linutronix.de>
References: <87pncrf6gd.fsf@nanos.tec.linutronix.de>
 <4c557b44-4e4e-a689-a17b-f95e6c5ee4b0@gmail.com>
 <87mu7unugh.fsf@nanos.tec.linutronix.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8ae32d2f-e4a8-240f-c7bd-580c26bba2d0@gmail.com>
Date:   Thu, 2 Apr 2020 15:16:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <87mu7unugh.fsf@nanos.tec.linutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/2/20 10:49 AM, Thomas Gleixner wrote:
> Michael,
> 
> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
>> On 4/1/20 7:42 PM, Thomas Gleixner wrote:
>>> (b): Arming the timer in that case is indeed very questionable, but it
>>>      could be argued that because the clock was set event happened with
>>>      the old expiry value that the new expiry value is not affected.
>>>      
>>>      I'd be happy to change that and not arm the timer in the case of a
>>>      pending cancel, but I fear that some user space already depends on
>>>      that behaviour.
>>
>> Yes, that's the risk, of course. So, shall we just document all 
>> this in the manual page?
> 
> I think so.
> 
> Thanks,

Okay. How is the following?

NOTES
       Suppose  the  following scenario for CLOCK_REALTIME or CLOCK_REAL‐
       TIME_ALARM timer that was created with timerfd_create():

       (a) The  timer  has  been  started  (timerfd_settime())  with  the
           TFD_TIMER_ABSTIME and TFD_TIMER_CANCEL_ON_SET flags;

       (b) A discontinuous change (e.g.  settimeofday(2)) is subsequently
           made to the CLOCK_REALTIME clock; and

       (c) the caller once more  calls  timerfd_settime()  to  rearm  the
           timer (without first doing a read(2) on the file descriptor).

       In this case the following occurs:

       · The  timerfd_settime()  returns  -1 with errno set to ECANCELED.
         (This enables the caller to know that  the  previous  timer  was
         affected by a discontinuous change to the clock.)

       · The  timer is successfully rearmed with the settings provided in
         the second timerfd_settime() call.  (This was probably an imple‐
         mentation  accident,  but  won't be fixed now, in case there are
         applications that depend on this behaviour.)

Thanks,

Michael

diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
index ec137fbfe..98225dcad 100644
--- a/man2/timerfd_create.2
+++ b/man2/timerfd_create.2
@@ -477,6 +477,9 @@ is not a valid timerfd file descriptor.
 .BR timerfd_settime ()
 can also fail with the following errors:
 .TP
+.B ECANCELED
+See NOTES.
+.TP
 .B EINVAL
 .I new_value
 is not properly initialized (one of the
@@ -493,6 +496,52 @@ These system calls are available on Linux since kernel 2.6.
25.
 Library support is provided by glibc since version 2.8.
 .SH CONFORMING TO
 These system calls are Linux-specific.
+.SH NOTES
+Suppose the following scenario for
+.BR CLOCK_REALTIME
+or
+.BR CLOCK_REALTIME_ALARM
+timer that was created with
+.BR timerfd_create ():
+.IP (a) 4
+The timer has been started
+.RB ( timerfd_settime ())
+with the
+.BR TFD_TIMER_ABSTIME
+and
+.BR TFD_TIMER_CANCEL_ON_SET
+flags;
+.IP (b)
+A discontinuous change (e.g.
+.BR settimeofday (2))
+is subsequently made to the
+.BR CLOCK_REALTIME
+clock; and
+.IP (c)
+the caller once more calls
+.BR timerfd_settime ()
+to rearm the timer (without first doing a
+.BR read (2)
+on the file descriptor).
+.PP
+In this case the following occurs:
+.IP \(bu 2
+The
+.BR timerfd_settime ()
+returns \-1 with
+.I errno
+set to
+.BR ECANCELED .
+(This enables the caller to know that the previous timer was affected
+by a discontinuous change to the clock.)
+.IP \(bu
+The timer
+.I "is successfully rearmed"
+with the settings provided in the second
+.BR timerfd_settime ()
+call.
+(This was probably an implementation accident, but won't be fixed now,
+in case there are applications that depend on this behaviour.)
 .SH BUGS
 Currently,
 .\" 2.6.29


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
