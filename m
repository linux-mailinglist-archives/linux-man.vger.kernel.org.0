Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D55F919A826
	for <lists+linux-man@lfdr.de>; Wed,  1 Apr 2020 11:01:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731862AbgDAJBd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Apr 2020 05:01:33 -0400
Received: from mail-ed1-f68.google.com ([209.85.208.68]:35185 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726536AbgDAJBd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Apr 2020 05:01:33 -0400
Received: by mail-ed1-f68.google.com with SMTP id a20so28789687edj.2;
        Wed, 01 Apr 2020 02:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc;
        bh=0ZpcvDTrSmToDbb4KEJgpOdCoxrV07IC1NN5/TzAss0=;
        b=IwXFG2HOz0HfAnh6rR3Sg8DWWGoeKVosrB7zKibgAga1WETrMnH38v1TK8sN0JfFj2
         mhqVoQOA1IxnErsczXSRtA4vY4LAYCq9FvksQknNRt2BebpyGiFWC878szaaYunWUDB+
         QqZFgc/i42bJ+1RdaHLlCa3CLgv/sAhbia31bjMEFgWExcpLpEhh5nuSqLLVEbieonqd
         /Urkf86lAbEyoCxvaYMpKOtBKSZZAYSe9E5Qzzp3u0+jrK+Zbs1elLFP6LsHdbbJ1s10
         8ckskPuWsVwYYl/AiPRd7UGyY8n+sSNWvKLMzbBwH526fgdZUuDqOjCvQn1PirJCl8+2
         qX0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:cc;
        bh=0ZpcvDTrSmToDbb4KEJgpOdCoxrV07IC1NN5/TzAss0=;
        b=HgGi7B8luzDk9rrwDwbC4eCfr3z9WU5qcijb6lzAUBrm6TzsuCJ+ehYpujrW9M3w7X
         C4tfA8VTf9mAtuQUvdtaIQzFK5AaGoCt7b9A/iDPZeHNov6/60Wf2gGxseIPFYMhDXdT
         lZR3NRyQOyCM2dr0vdZ5cwkgquq0Wzxx2RqaJEHj96lNrDQ9zGAvOhrSkwKW17WKPcJ9
         RhyVU8HPV9BQ+RsKT/Ugnb1diaG6cypolLa4Fp0mWRXiI97c+2mfEU2IJRB1D61W+YYB
         wspX+BJ5YGJsJJLOJj2h/feE+6zK5WuoqWh/b8duygPr/wSENUYFh86uJ3sGwBIxtz7t
         d6Qw==
X-Gm-Message-State: ANhLgQ1s/uvD9FlFaN178+zqZN2lf1X6XLZiXBfaLJKS1eMvtpiRlmy4
        vebDtvHEHi8HplsmVuTqWvQfC04IQvucgbbTtRU=
X-Google-Smtp-Source: ADFU+vtbxOj12CUkkoNDgz8Z6aosAdlApbXhx5UBddAjZbmbyXHn/jmQ6wcMgwU6eU6X/RT4h/iiiBvq49trbwg1LcM=
X-Received: by 2002:a05:6402:504:: with SMTP id m4mr20336048edv.367.1585731690126;
 Wed, 01 Apr 2020 02:01:30 -0700 (PDT)
MIME-Version: 1.0
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 1 Apr 2020 11:01:18 +0200
Message-ID: <CAKgNAkgiZna0yQzkdZQ92CJzjBcxX6eEu1cg24Oeu2pXRcSv8A@mail.gmail.com>
Subject: timer_settime() and ECANCELED
To:     Thomas Gleixner <tglx@linutronix.de>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>, arul.jeniston@gmail.com,
        "devi R.K" <devi.feb27@gmail.com>,
        Marc Lehmann <debian-reportbug@plan9.de>,
        John Stultz <john.stultz@linaro.org>,
        Andrei Vagin <avagin@gmail.com>,
        Cyrill Gorcunov <gorcunov@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Thomas, et al,

Following on from our discussion of read() on a timerfd [1], I
happened to remember a Debian bug report [2] that points out that
timer_settime() can fail with the error ECANCELED, which is both
surprising and odd (because despite the error, the timer does get
updated).

The relevant kernel code (I think, from your commit [3]) seems to be
the following in timerfd_setup():

        if (texp != 0) {
                if (flags & TFD_TIMER_ABSTIME)
                        texp = timens_ktime_to_host(clockid, texp);
                if (isalarm(ctx)) {
                        if (flags & TFD_TIMER_ABSTIME)
                                alarm_start(&ctx->t.alarm, texp);
                        else
                                alarm_start_relative(&ctx->t.alarm, texp);
                } else {
                        hrtimer_start(&ctx->t.tmr, texp, htmode);
                }

                if (timerfd_canceled(ctx))
                        return -ECANCELED;
        }

Using a small test program [4] shows the behavior. The program loops,
repeatedly calling timerfd_settime() (with a delay of a few seconds
before each call). In another terminal window, enter the following
command a few times:

    $ sudo date -s "5 seconds"       # Add 5 secs to wall-clock time

I see behavior as follows (the /sudo date -s "5 seconds"/ command was
executed before loop iterations 0, 2, and 4):

[[
$ ./timerfd_settime_ECANCELED
0
Current time is 1585729978 secs, 868510078 nsecs
Timer value is now 0 secs, 0 nsecs
timerfd_settime() succeeded
Timer value is now 9 secs, 999991977 nsecs

1
Current time is 1585729982 secs, 716339545 nsecs
Timer value is now 6 secs, 152167990 nsecs
timerfd_settime() succeeded
Timer value is now 9 secs, 999992940 nsecs

2
Current time is 1585729991 secs, 567377831 nsecs
Timer value is now 1 secs, 148959376 nsecs
timerfd_settime: Operation canceled
Timer value is now 9 secs, 999976294 nsecs

3
Current time is 1585729995 secs, 405385503 nsecs
Timer value is now 6 secs, 161989917 nsecs
timerfd_settime() succeeded
Timer value is now 9 secs, 999993317 nsecs

4
Current time is 1585730004 secs, 225036165 nsecs
Timer value is now 1 secs, 180346909 nsecs
timerfd_settime: Operation canceled
Timer value is now 9 secs, 999984345 nsecs
]]

I note from the above.

(1) If the wall-clock is changed before the first timerfd_settime()
call, the call succeeds. This is of course expected.
(2) If the wall-clock is changed after a timerfd_settime() call, then
the next timerfd_settime() call fails with ECANCELED.
(3) Even if the timerfd_settime() call fails, the timer is still updated(!).

Some questions:
(a) What is the rationale for timerfd_settime() failing with ECANCELED
in this case? (Currently, the manual page says nothing about this.)
(b) It seems at the least surprising, but more likely a bug, that
timerfd_settime() fails with ECANCELED while at the same time
successfully updating the timer value.

Your thoughts?

Thanks,

Michael

[1] https://lore.kernel.org/lkml/3cbd0919-c82a-cb21-c10f-0498433ba5d1@gmail.com/

[2] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=947091

[3]
commit 99ee5315dac6211e972fa3f23bcc9a0343ff58c4
Author: Thomas Gleixner <tglx@linutronix.de>
Date:   Wed Apr 27 14:16:42 2011 +0200

    timerfd: Allow timers to be cancelled when clock was set

[4]
/* timerfd_settime_ECANCELED.c */
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <inttypes.h>
#include <sys/timerfd.h>

#define errExit(msg) do { perror(msg); exit(EXIT_FAILURE); } while (0)

int
main(int argc, char *argv[])
{
    struct itimerspec ts, gts;
    struct timespec start;

    int tfd = timerfd_create(CLOCK_REALTIME, 0);
    if (tfd == -1)
        errExit("timerfd_create");

    ts.it_interval.tv_sec = 0;
    ts.it_interval.tv_nsec = 10;

    int flags = TFD_TIMER_ABSTIME | TFD_TIMER_CANCEL_ON_SET;

    for (long j ; ; j++) {

        /* Inject a delay into each loop, by calling getppid()
           many times */

        for (int k = 0; k < 10000000; k++)
            getppid();

        if (j % 1 == 0)
            printf("%ld\n", j);

        /* Display the current wall-clock time */

        if (clock_gettime(CLOCK_REALTIME, &start) == -1)
            errExit("clock_gettime");
        printf("Current time is %ld secs, %ld nsecs\n",
                start.tv_sec, start.tv_nsec);

        /* Before resetting the timer, retrieve its current value
           so that after the timerfd_settime() call, we can see
           whether the the value has changed */

        if (timerfd_gettime(tfd, &gts) == -1)
            perror("timerfd_gettime");
        printf("Timer value is now %ld secs, %ld nsecs\n",
            gts.it_value.tv_sec, gts.it_value.tv_nsec);

        /* Reset the timer to now + 10 secs */

        ts.it_value.tv_sec = start.tv_sec + 10;
        ts.it_value.tv_nsec = start.tv_nsec;
        if (timerfd_settime(tfd, flags, &ts, NULL) == -1)
            perror("timerfd_settime");
        else
            printf("timerfd_settime() succeeded\n");

        /* Display the timer value once again */

        if (timerfd_gettime(tfd, &gts) == -1)
            perror("timerfd_gettime");
        printf("Timer value is now %ld secs, %ld nsecs\n",
            gts.it_value.tv_sec, gts.it_value.tv_nsec);

        printf("\n");
    }
}
