Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 676522CC842
	for <lists+linux-man@lfdr.de>; Wed,  2 Dec 2020 21:49:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730838AbgLBUsO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Dec 2020 15:48:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729335AbgLBUsO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 2 Dec 2020 15:48:14 -0500
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93592C0613D6
        for <linux-man@vger.kernel.org>; Wed,  2 Dec 2020 12:47:33 -0800 (PST)
Received: by mail-ed1-x544.google.com with SMTP id k4so5543626edl.0
        for <linux-man@vger.kernel.org>; Wed, 02 Dec 2020 12:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=D0uhy1PrBrwqmBJTd+klIHrva83Cz0D0bh6ScbIFfqk=;
        b=p1ZH4BwFYYzyY2dChiod2ccm3BcT7VFz4bsoD66c0T0jGXhalglynXv1HM7QT3Nq0U
         Y5QZdtc76zIyC+BOTIAuSbxR2gFPGw3giWJnRPnCsGJILx+kqtqmH/Ku5JcQlqqDL6oC
         ao27SXBC30nWDcbRTmiIbf5G1gQrIcKkRPEexjCC/PzaSe+tePGdOdOMYYn9HszXyefl
         BBWI0p+xVeDtPJdb7Q3w6ujf5LGn7NXVc9UiPMFLUuNZHUWvRP6MifgO4LKdIS51ugwj
         4x97Z2FPIdp1FoWTcUTi358iGYJlkdc3ftfYlh6qpy3yU5RZ6/KuwofZvHQI8uyjlHVl
         XoKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=D0uhy1PrBrwqmBJTd+klIHrva83Cz0D0bh6ScbIFfqk=;
        b=fTy1X1VUdBQ/YF1ZFx6Mud3l1vdThtueItg4+xLVn0Lp3SJxo28zOtTGu+KEI56j4b
         ZkhWsNdhjwpoY9uehXGTGMEh49zIQxi64D3qq7IhEaNJfsrS0JrHL3MUIJx0fqVC6fqQ
         ozs4GqeYVhyYOKGiOJT6gnaISyIeb1U4/HWfD4pOkKY/XgiumdVzsGGOoI9FVaDBEgE0
         W8FEsZXz/A3FfkC+fI9RG0O7T6gEuGqe3Ha2/KXhhpG5eQN1hcgUs6FJeqQ0QYZyocdm
         U8XlKGfw+EwH7Mk5w8EBd0Z64UgL2NtcPJcFYbDO6uWohCJDLuJk+rS1WrJi2ru9fvKX
         Fnqw==
X-Gm-Message-State: AOAM533M9tQ49vH8afA7Mq45ZpPwWEkCte2Olm2gjbXviE+P3d0ttMXA
        No7C1+ViFabT/6L40tySvHs=
X-Google-Smtp-Source: ABdhPJyKnM301kf9bqB/9SQNQziA1ckLfzn+9N7QOUz6UpQI2Y20OXH5pA7YMWWj3NljM6t8sEm38A==
X-Received: by 2002:a50:9991:: with SMTP id m17mr1790350edb.48.1606942052020;
        Wed, 02 Dec 2020 12:47:32 -0800 (PST)
Received: from ?IPv6:2001:a61:3aad:c501:15d9:d9fb:bc21:cb92? ([2001:a61:3aad:c501:15d9:d9fb:bc21:cb92])
        by smtp.gmail.com with ESMTPSA id op5sm643824ejb.43.2020.12.02.12.47.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 12:47:31 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "bert@hubertnet.nl" <bert@hubertnet.nl>
Subject: Re: [patch] futex.7: Semantics section: Race condition in locking
 semantics description
To:     "Sudvarg, Marion" <msudvarg@wustl.edu>
References: <DM5PR02MB3687609B599F7773193DE31AC4F30@DM5PR02MB3687.namprd02.prod.outlook.com>
 <DM5PR02MB3687FF95271C8512DE9BA075C4F30@DM5PR02MB3687.namprd02.prod.outlook.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <92c5a4e1-2fb7-03f2-2f7a-ef9b844da5c8@gmail.com>
Date:   Wed, 2 Dec 2020 21:47:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <DM5PR02MB3687FF95271C8512DE9BA075C4F30@DM5PR02MB3687.namprd02.prod.outlook.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Marion.

On 12/2/20 7:07 PM, Sudvarg, Marion wrote:
> Hello Michael,
> 
> I apologize if you're receiving this email a second time. I
> accidentally kept HTML formatting enabled the first time I sent it,
> causing it to be rejected as spam.
> 
> I am teaching the Operating Systems Organization course at Washington
> University in St. Louis, and to supplement a series of lectures on
> locking and synchronization, I assigned students to read the futex(7)
> manual page. One student, Alex Baker <mailto:alexbaker@wustl.edu>,
> pointed out a race condition in the description of how to "down" a
> futex, i.e. wait for or acquire a lock, under the Semantics section.
> Say we have two threads, T0 and T1, which execute as follows:
> 
> 1. T0 acquires the lock, decrements the futex to 0
> 2. T1 switches in, attempts to acquire the lock, decrements the futex
> to -1
> 3. T0 switches in, completes its critical section
> 4. T0 unlocks the lock, increments the futex to 0
> 5. Because the futex is 0, T0 assumes threads are waiting on the
> futex, but no threads have yet called FUTEX_WAIT
> 6. T0 sets the futex to 1
> 7. T0 uses the FUTEX_WAKE operation
> 8. T1 switches in, and believing it should still wait for the futex,
> it sets the futex to -1
> 9. T1 now uses the FUTEX_WAIT operation
> 
> Because, in step 8, T1 has set the futex to -1, its call to
> FUTEX_WAIT in 9 will succeed, as the futex holds the expected value
> in the call (-1). But since T0 has already completed its execution
> and has called FUTEX_WAKE, T1 may never be woken.
> 
> The fwait and fpost (i.e. lock and release, or down and up) functions
> in the Examples section on the futex(2) page seem to be race free,
> but use atomic compare exchange functions, instead of the atomic
> increment and decrement semantics described in futex(7).
> 
> I've attached a patch for the futex(7) man page, which modifies the
> Semantics section to describe a correct, race-free use of a futex for
> lock acquisition using atomic increment and decrement operations.
> I've also added a code sample to help illustrate this. I hope the
> addition of the code sample does not, in your opinion, add
> unnecessary length to this manual page, given that the futex(2) page
> is already so thorough.
> 
> I have copied Bert Hubert, whom I believe to be the original author
> of the futex(7) man page.

I have a question: what Linux distro are you using/did you make
this patch from? The code example that your patch is using is _not_
in the upstream page that is part of man-pages.

Regarding your comments on the race above, I find the text of
the manual page a bit unclear, so I'm not sure what kind of
fix should be made. Maybe we are lucky and Bert has a long memory
and replies to this thread.

Thanks,

Michael
 
=====

diff --git a/man7/futex.7 b/man7/futex.7
index 22f610646..f59725b61 100644
--- a/man7/futex.7
+++ b/man7/futex.7
@@ -72,19 +72,11 @@ operation.
 Waiting on a futex, to "down" it, is the reverse operation.
 Atomically decrement the counter and check if it changed to 0,
 in which case the operation is done and the futex was uncontended.
-In all other circumstances, the process should
-request that the kernel wait for another process to up the futex.
+In all other circumstances, the process should set the counter to \-1
+and request that the kernel wait for another process to up the futex.
 This is done using the
 .B FUTEX_WAIT
-operation,
-which is provided the return value of the atomic decrement operation.
-In the event that another process has modified the value of the futex
-between the atomic decrement and the
-.B FUTEX_WAIT
-operation, this guarantees that the
-.B FUTEX_WAIT
-fails, and the process may try again to "down" the futex.
-.SS 
+operation.
 .PP
 The
 .BR futex (2)
@@ -113,166 +105,6 @@ below.
 This man page illustrates the most common use of the
 .BR futex (2)
 primitives; it is by no means the only one.
-.SH EXAMPLES
-The program below demonstrates the use of futexes in a program where
-threads use a futex to synchronize access to a critical section,
-which increments a global integer variable
-.IR nloops
-(a command-line argument that defaults to 100000 if omitted)
-times.
-After the parallel section,
-the program prints the value of the global variable.
-Upon running this program we see output such as the following:
-.PP
-.in +4n
-.EX
-$ \fB./futex_demo\fP
-Ran with 2 threads
-Each thread incremented global_int 1000000 times
-Final value of global_int: 2000000
-.EE
-.in
-.SS Program source
-\&
-.EX
-/* futex_demo.c
-
-    Usage: futex_demo [nloops]
-                    (Default: 100000)
-
-    Demonstrate the use of futexes in a program where multiple threads
-    use a futex to synchronize access to a global integer variable, which
-    is initialized to 0. The two threads each increment the variable
-    \(aqnloops\(aq times, and employ a synchronization protocol that
-    ensures only one thread can access the global variable at a time.
-
-    We use OpenMP for thread parallelism;
-    therefore, this program must be compiled with the \-fopenmp flag,
-    e.g.:
-
-    gcc futex_demo.c \-o futex_demo \-fopenmp
-
-#define _GNU_SOURCE
-#include <stdio.h>
-#include <errno.h>
-#include <stdatomic.h>
-#include <stdint.h>
-#include <stdlib.h>
-#include <unistd.h>
-#include <sys/syscall.h>
-#include <linux/futex.h>
-#include <omp.h>
-
-#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
-                        } while (0)
-
-#define NUM_THREADS 2
-#define LOCKED 0
-#define UNLOCKED 1
-
-static int global_int = 0;
-static uint32_t lock = UNLOCKED;
-
-static int
-futex(uint32_t *uaddr, int futex_op, uint32_t val,
-      const struct timespec *timeout, uint32_t *uaddr2, uint32_t val3)
-{
-    return syscall(SYS_futex, uaddr, futex_op, val,
-                   timeout, uaddr2, val3);
-}
-
-/*  Increments the global integer variable nloops times.
-    Without locking, a race condition may occur. */
-
-static void
-critical_section(int nloops)
-{
-    for (int i = 0; i < nloops; i++) {
-        global_int++;
-    }
-}
-
-
-/*  Attempt to lock the futex pointed to by \(aqfutexp\(aq:
-    The futex value is decremented by 1.
-    If the futex value is now LOCKED,
-    the lock was successfully acquired.
-    Otherwise, wait for the lock to be released. */
-
-static void
-flock(uint32_t * futexp)
-{
-    int s;
-    int futex_val;
-
-    /* Attempt to acquire the lock */
-    while ( (futex_val = __atomic_sub_fetch(futexp, 1, __ATOMIC_ACQ_REL)) < LOCKED ) {
-
-        /* If the lock is not available, wait */
-
-        s = futex(futexp, FUTEX_WAIT, futex_val, NULL, NULL, 0);
-        if (s == \-1 && errno != EAGAIN)
-            errExit("futex\-FUTEX_WAIT");
-    }
-}
-
-/*  Unlock the futex pointed to by \(aqfutexp\(aq:
-    The futex value is incremented by 1.
-    
-    If the futex value is now UNLOCKED,
-    no threads are waiting for the lock.
-    Otherwise, another thread is waiting,
-    so set the value to UNLOCKED and wake. */
-
-static void
-funlock(uint32_t * futexp)
-{
-    int s;
-
-    /* Are any threads waiting for the lock? */
-    if (__atomic_add_fetch(futexp, 1, __ATOMIC_ACQ_REL) != UNLOCKED) {
-
-        /* If so, unlock and notify */
-        __atomic_store_n(futexp, UNLOCKED, __ATOMIC_RELEASE);
-        s = futex(futexp, FUTEX_WAKE, 1, NULL, NULL, 0);
-        if (s  == \-1)
-            errExit("futex\-FUTEX_WAKE");
-    }
-}
-
-int
-main(int argc, char *argv[])
-{
-    int nloops;
-    int n_threads;
-
-    nloops = (argc > 1) ? atoi(argv[1]) : 100000;
-
-    //Begin OpenMP parallel section
-    omp_set_num_threads(NUM_THREADS);
-    #pragma omp parallel
-    {
-
-        //Retrieve the actual number of threads
-        if (omp_get_thread_num() == 0) {
-            n_threads = omp_get_num_threads();
-        }
-
-        //Lock and run the critical section
-        flock(&lock);
-        critical_section(nloops);
-        funlock(&lock);
-
-    }
-    
-    printf("Ran with %d threads\n", n_threads);
-    printf("Each thread incremented global_int %d times\n", nloops);
-    printf("Final value of global_int: %d\n", global_int);
-
-    exit(EXIT_SUCCESS);
-}
-
-.EE
 .\" .SH AUTHORS
 .\" .PP
 .\" Futexes were designed and worked on by Hubertus Franke
-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
