Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 607622CC898
	for <lists+linux-man@lfdr.de>; Wed,  2 Dec 2020 22:06:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726471AbgLBVFl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Dec 2020 16:05:41 -0500
Received: from mail-sn1nam04lp2051.outbound.protection.outlook.com ([104.47.44.51]:25196
        "EHLO NAM04-SN1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726962AbgLBVFl (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 2 Dec 2020 16:05:41 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oQvEjj+Zpxtbin4RpckknwLscA9XU/RogU7LF6raScjfBXYTvMwYZv+yoxL6el4Pajam/sMinTmM5kh2ZZEgw25+hbfwNbwbQ2ikzbiYgle1LS2UDyeMifBhuqtKKAzA5WtdhyEta7vJGOSDCX6K/BL+EC8IohtHwtB5j63a0iTCZBYA8CR5C3J4khORYE9eAgeHi4JLDSRmrsnLALQ23WMkQTvGQ081FSRFFfh7Q8pX7giDCIjl645hyKmYNvML5Ez2Q3X+Ub4LBCYllySzxidJoQx3s78H9iYofmS29vQ7WkKo5TsGsJ8gXstQ/0EYQe1Z0wYZFzSKj0UQvbD4EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nfguXC/4DuKQkwc+X7StjFCIPd5ev/Hos1Zj0E3wJVo=;
 b=WZcy9VgLntLFsKvVG8jSLJb/EVtFf9iz13Gtl9iZfPJP/OZN6/0Ys8KxNUgPi2urBWtffdCzFfAQgwoeaTIiUSmWmm0vRszF2GawzHmoxMSJtUW5yGWQ2n2H7MIIUAORYbaltx1sEnsH/VZC5hVgdmNkr8cZU78yX9/LYM3QIS7X2Ie/158iTrsqy+sUd+cW7Uvb/6LxJUeAUMshTuOBmAwABj+Iuxvl2HKV3uPm5BFr6GFYjqiRdmnJoaEmW4cjkgNWR/e5OK0NYN5gVwNE2DnkMlFkGdxc+41P59QhPbkIcbzub2Xv0bZKhWGF4B2wM3cDge4IuO0HnPG0zrKg0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wustl.edu; dmarc=pass action=none header.from=wustl.edu;
 dkim=pass header.d=wustl.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wustl.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nfguXC/4DuKQkwc+X7StjFCIPd5ev/Hos1Zj0E3wJVo=;
 b=DmPgF4gZIfSJikdnp+2By3FDTsb2IBXgvu8M/k90WepaTeAg7zNAgBk/9DG1FJ5QUp1PS2wSzYzBnKGLwvDkKYjZjBOj+HFgK25kcJut3YDqbaw4ocl2Nhq4NeqfMoh73aGNhocFY9tr6Fc+2LYFh1Tf27a7mGp49ssXiXQmmBecjCctuWkOE0X+yoUTsX3ONja49g4W19C7H+M6/F/UojnjtESez61LNgjCcIxwfQ2Ayhi3A42cB9/qPwgNVaiSSSnqnsXgYlZBvnYGQ2ZdsXmzwXsfjR/ML9EqTYRkPQtpqajifX8TihCCLiF8TVkAQ3MqfDbdd6cbxemcRyPRDw==
Received: from DM5PR02MB3687.namprd02.prod.outlook.com (2603:10b6:4:b0::15) by
 DM6PR02MB5081.namprd02.prod.outlook.com (2603:10b6:5:51::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.18; Wed, 2 Dec 2020 21:04:57 +0000
Received: from DM5PR02MB3687.namprd02.prod.outlook.com
 ([fe80::c823:9583:e1f1:2102]) by DM5PR02MB3687.namprd02.prod.outlook.com
 ([fe80::c823:9583:e1f1:2102%7]) with mapi id 15.20.3632.019; Wed, 2 Dec 2020
 21:04:57 +0000
From:   "Sudvarg, Marion" <msudvarg@wustl.edu>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "bert@hubertnet.nl" <bert@hubertnet.nl>,
        "Gill, Christopher" <cdgill@wustl.edu>
Subject: RE: [patch] futex.7: Semantics section: Race condition in locking
 semantics description
Thread-Topic: [patch] futex.7: Semantics section: Race condition in locking
 semantics description
Thread-Index: AdbIUsIsG3iA6HxESV+rUO1lseLFkAAgtc+QAAWv0gAAABdB4A==
Date:   Wed, 2 Dec 2020 21:04:56 +0000
Message-ID: <DM5PR02MB368773E150C77BDF45A34C9DC4F30@DM5PR02MB3687.namprd02.prod.outlook.com>
References: <DM5PR02MB3687609B599F7773193DE31AC4F30@DM5PR02MB3687.namprd02.prod.outlook.com>
 <DM5PR02MB3687FF95271C8512DE9BA075C4F30@DM5PR02MB3687.namprd02.prod.outlook.com>
 <92c5a4e1-2fb7-03f2-2f7a-ef9b844da5c8@gmail.com>
In-Reply-To: <92c5a4e1-2fb7-03f2-2f7a-ef9b844da5c8@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=wustl.edu;
x-originating-ip: [108.66.78.62]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3e652d1-c293-4f21-4c47-08d89705ec7b
x-ms-traffictypediagnostic: DM6PR02MB5081:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR02MB50817CEC6BA3710B84CAD827C4F30@DM6PR02MB5081.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QkryzOIh/vdgKjT5GtlF5uvAZiEK21DxiLrItRJMvvvzmDW1if6xrs2gg7ph4TkJGXAMg3QfkrhVPaOc6wfBtGysINDwK/zXmzmvBJQ3HK7kSPdki5GHfW0fgyb7FI9XuzBtbFq/FzEACVTmvJSDugHzruYC6SnkbwmTVVmQASK9YxBPLSuQSCocti7RBBLjZneoTjRDSwFTJkW7QpS9dcqpx+iQlLmpMBoAO7qdj81jj3IG0JubrwcfFP2Jqn872D9dC6oPuGPch+8Piy8RNrJS281pCT6Rtgwgwwtqs9VZuZoB8jTkYSN6eD2fLbTXeupy+BnvQ3hl89TKBv6eWxCMqWorMbZ06ZfejZ495WgxYBUdJ7QI2Pvz21w243Oh6Fq1Ds70nAVaxtLMqim5Ig==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR02MB3687.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(396003)(366004)(346002)(376002)(136003)(8676002)(4326008)(6916009)(5660300002)(478600001)(33656002)(54906003)(99936003)(966005)(86362001)(107886003)(71200400001)(316002)(8936002)(75432002)(786003)(186003)(53546011)(6506007)(66616009)(66476007)(64756008)(66556008)(66446008)(66946007)(76116006)(83380400001)(2906002)(9686003)(55016002)(26005)(7696005)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?1ujm89FQcmt6RfAoqkpIN26Xog3zpGwIeylZJawcaZVgSrpsc8nIEg6AH0Ai?=
 =?us-ascii?Q?ZzONd1vE0Ioz30r4iMHOQEVVozgotBuSfKfs1ALe2HdKbnIPYUR5ABGhpPO/?=
 =?us-ascii?Q?hSudKhnIRL1uZNdxB5PpNx1AwZP5DaeBFGyPpAkrKAb7BTBYKLdtcOIWzqjY?=
 =?us-ascii?Q?Dm5VP+mqXnomUyuR+jnBmsRR3gM8fMnot7zSHjM17mIsaoNMxnDC4vSXhDxl?=
 =?us-ascii?Q?TZ71i7feHHQPIFdn/YrnT7fvF2Eyse7DCNnojhomVaueAGkxwA9IG6UOFnCj?=
 =?us-ascii?Q?FsylY+BM/IMHZMjMyW2Uq8GchtH1YRLfGX8nKFoV4GCm69LY1c+1y2AiE8J4?=
 =?us-ascii?Q?Mea7a+YKV1K47/7UzfXU2jGPC6RfTWeF3PTr2IVJBFGqOCWb27JRt4IBJC12?=
 =?us-ascii?Q?oSEN5e3uxp+VQftm9FTEa9/XoMY6rZl0PGGppA2fJ23ULZUr1+j71tHJVhvN?=
 =?us-ascii?Q?ZFcsAfI1Q9CjZMfhtNjNeD40UazNCZDZ8EsokAoFgix4zD6IvpxNaccGiWs6?=
 =?us-ascii?Q?gcPHVNjxemYoAXXwzm2TFvbdKD37y77ufwB1Ump2mapvFZiIhyuXoIlurW1G?=
 =?us-ascii?Q?7LfzzyhdFNymnxa46Wxp/Wb7EcDJPWYBvSCI6zNAhKnvlbgdOYJdJsX8EujH?=
 =?us-ascii?Q?AlRpI3rTiorgxrZHHwQd4DRbbAHi2c1tjMR3QSwWrTcMxY/9Hg3MISuQcbEA?=
 =?us-ascii?Q?wjYsot24mN1hwKU3k5sX5GP57BNQhsKjuwp+WVMVMcCn+pLOEJ1OPNAok/6h?=
 =?us-ascii?Q?1FbM1DVWAAnJPTU7Bczpi93DFT1ejMw2v7Xm17L9I7J6lwUC5z9eobiUUP8O?=
 =?us-ascii?Q?IRUK5zeIBWD8u2HAOOR7JEElzRssZp+Ed3ot2J+Tk2y9+sl2mTZRS3AQ1nFh?=
 =?us-ascii?Q?I6O5U2Bm1WqDPFON84jSO20F36yQXspDjVc6sjyPbcsHAYNiqb7Rtql09iWE?=
 =?us-ascii?Q?PjG/28pgdnFBONlgJjOWeF1SlgqBUO7zJPxUtvMx8BY=3D?=
Content-Type: multipart/mixed;
        boundary="_002_DM5PR02MB368773E150C77BDF45A34C9DC4F30DM5PR02MB3687namp_"
MIME-Version: 1.0
X-OriginatorOrg: wustl.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR02MB3687.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3e652d1-c293-4f21-4c47-08d89705ec7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2020 21:04:56.8550
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ccca3b5-71cd-4e6d-974b-4d9beb96c6d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mc+rz98djhVmXVGFVuEnym3EDgYuoHo5hLrRbYvPsrQREMBq1dSf2gZ8+dnAOffK+3/u3qnf06o59sxXKUqBUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5081
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--_002_DM5PR02MB368773E150C77BDF45A34C9DC4F30DM5PR02MB3687namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Michael,

Thank you for the fast response!

My mistake; I managed to send you a patch going in the opposite direction: =
it would reset my changes back to the upstream master. I have attached the =
correct patch file, which would incorporate the changes I have made into th=
e master branch with origin:

https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git

This is the repository I've been working from; I assume that's the correct,=
 most up-to-date version?=20

The code example is my own, and (per the attached, corrected patch) my inte=
ntion was to add the code example to the manual page to better illustrate t=
he "up" and "down" locking semantics that are described.

Again, my apologies for the mistake. Best,

Marion Sudvarg


-----Original Message-----
From: Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>=20
Sent: Wednesday, December 2, 2020 2:47 PM
To: Sudvarg, Marion <msudvarg@wustl.edu>
Cc: mtk.manpages@gmail.com; linux-man@vger.kernel.org; bert@hubertnet.nl
Subject: Re: [patch] futex.7: Semantics section: Race condition in locking =
semantics description

Hello Marion.

On 12/2/20 7:07 PM, Sudvarg, Marion wrote:
> Hello Michael,
>=20
> I apologize if you're receiving this email a second time. I
> accidentally kept HTML formatting enabled the first time I sent it,
> causing it to be rejected as spam.
>=20
> I am teaching the Operating Systems Organization course at Washington
> University in St. Louis, and to supplement a series of lectures on
> locking and synchronization, I assigned students to read the futex(7)
> manual page. One student, Alex Baker <mailto:alexbaker@wustl.edu>,
> pointed out a race condition in the description of how to "down" a
> futex, i.e. wait for or acquire a lock, under the Semantics section.
> Say we have two threads, T0 and T1, which execute as follows:
>=20
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
>=20
> Because, in step 8, T1 has set the futex to -1, its call to
> FUTEX_WAIT in 9 will succeed, as the futex holds the expected value
> in the call (-1). But since T0 has already completed its execution
> and has called FUTEX_WAKE, T1 may never be woken.
>=20
> The fwait and fpost (i.e. lock and release, or down and up) functions
> in the Examples section on the futex(2) page seem to be race free,
> but use atomic compare exchange functions, instead of the atomic
> increment and decrement semantics described in futex(7).
>=20
> I've attached a patch for the futex(7) man page, which modifies the
> Semantics section to describe a correct, race-free use of a futex for
> lock acquisition using atomic increment and decrement operations.
> I've also added a code sample to help illustrate this. I hope the
> addition of the code sample does not, in your opinion, add
> unnecessary length to this manual page, given that the futex(2) page
> is already so thorough.
>=20
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
=20
=3D=3D=3D=3D=3D

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
-.SS=20
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
-static int global_int =3D 0;
-static uint32_t lock =3D UNLOCKED;
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
-    for (int i =3D 0; i < nloops; i++) {
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
-    while ( (futex_val =3D __atomic_sub_fetch(futexp, 1, __ATOMIC_ACQ_REL)=
) < LOCKED ) {
-
-        /* If the lock is not available, wait */
-
-        s =3D futex(futexp, FUTEX_WAIT, futex_val, NULL, NULL, 0);
-        if (s =3D=3D \-1 && errno !=3D EAGAIN)
-            errExit("futex\-FUTEX_WAIT");
-    }
-}
-
-/*  Unlock the futex pointed to by \(aqfutexp\(aq:
-    The futex value is incremented by 1.
-   =20
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
-    if (__atomic_add_fetch(futexp, 1, __ATOMIC_ACQ_REL) !=3D UNLOCKED) {
-
-        /* If so, unlock and notify */
-        __atomic_store_n(futexp, UNLOCKED, __ATOMIC_RELEASE);
-        s =3D futex(futexp, FUTEX_WAKE, 1, NULL, NULL, 0);
-        if (s  =3D=3D \-1)
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
-    nloops =3D (argc > 1) ? atoi(argv[1]) : 100000;
-
-    //Begin OpenMP parallel section
-    omp_set_num_threads(NUM_THREADS);
-    #pragma omp parallel
-    {
-
-        //Retrieve the actual number of threads
-        if (omp_get_thread_num() =3D=3D 0) {
-            n_threads =3D omp_get_num_threads();
-        }
-
-        //Lock and run the critical section
-        flock(&lock);
-        critical_section(nloops);
-        funlock(&lock);
-
-    }
-   =20
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
--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

--_002_DM5PR02MB368773E150C77BDF45A34C9DC4F30DM5PR02MB3687namp_
Content-Type: application/octet-stream; name="futex.7.patch"
Content-Description: futex.7.patch
Content-Disposition: attachment; filename="futex.7.patch"; size=5495;
	creation-date="Wed, 02 Dec 2020 21:03:00 GMT";
	modification-date="Wed, 02 Dec 2020 21:03:00 GMT"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL21hbjcvZnV0ZXguNyBiL21hbjcvZnV0ZXguNwppbmRleCBmNTk3MjViNjEu
LjIyZjYxMDY0NiAxMDA2NDQKLS0tIGEvbWFuNy9mdXRleC43CisrKyBiL21hbjcvZnV0ZXguNwpA
QCAtNzIsMTEgKzcyLDE5IEBAIG9wZXJhdGlvbi4KIFdhaXRpbmcgb24gYSBmdXRleCwgdG8gImRv
d24iIGl0LCBpcyB0aGUgcmV2ZXJzZSBvcGVyYXRpb24uCiBBdG9taWNhbGx5IGRlY3JlbWVudCB0
aGUgY291bnRlciBhbmQgY2hlY2sgaWYgaXQgY2hhbmdlZCB0byAwLAogaW4gd2hpY2ggY2FzZSB0
aGUgb3BlcmF0aW9uIGlzIGRvbmUgYW5kIHRoZSBmdXRleCB3YXMgdW5jb250ZW5kZWQuCi1JbiBh
bGwgb3RoZXIgY2lyY3Vtc3RhbmNlcywgdGhlIHByb2Nlc3Mgc2hvdWxkIHNldCB0aGUgY291bnRl
ciB0byBcLTEKLWFuZCByZXF1ZXN0IHRoYXQgdGhlIGtlcm5lbCB3YWl0IGZvciBhbm90aGVyIHBy
b2Nlc3MgdG8gdXAgdGhlIGZ1dGV4LgorSW4gYWxsIG90aGVyIGNpcmN1bXN0YW5jZXMsIHRoZSBw
cm9jZXNzIHNob3VsZAorcmVxdWVzdCB0aGF0IHRoZSBrZXJuZWwgd2FpdCBmb3IgYW5vdGhlciBw
cm9jZXNzIHRvIHVwIHRoZSBmdXRleC4KIFRoaXMgaXMgZG9uZSB1c2luZyB0aGUKIC5CIEZVVEVY
X1dBSVQKLW9wZXJhdGlvbi4KK29wZXJhdGlvbiwKK3doaWNoIGlzIHByb3ZpZGVkIHRoZSByZXR1
cm4gdmFsdWUgb2YgdGhlIGF0b21pYyBkZWNyZW1lbnQgb3BlcmF0aW9uLgorSW4gdGhlIGV2ZW50
IHRoYXQgYW5vdGhlciBwcm9jZXNzIGhhcyBtb2RpZmllZCB0aGUgdmFsdWUgb2YgdGhlIGZ1dGV4
CitiZXR3ZWVuIHRoZSBhdG9taWMgZGVjcmVtZW50IGFuZCB0aGUKKy5CIEZVVEVYX1dBSVQKK29w
ZXJhdGlvbiwgdGhpcyBndWFyYW50ZWVzIHRoYXQgdGhlCisuQiBGVVRFWF9XQUlUCitmYWlscywg
YW5kIHRoZSBwcm9jZXNzIG1heSB0cnkgYWdhaW4gdG8gImRvd24iIHRoZSBmdXRleC4KKy5TUyAK
IC5QUAogVGhlCiAuQlIgZnV0ZXggKDIpCkBAIC0xMDUsNiArMTEzLDE2NiBAQCBiZWxvdy4KIFRo
aXMgbWFuIHBhZ2UgaWxsdXN0cmF0ZXMgdGhlIG1vc3QgY29tbW9uIHVzZSBvZiB0aGUKIC5CUiBm
dXRleCAoMikKIHByaW1pdGl2ZXM7IGl0IGlzIGJ5IG5vIG1lYW5zIHRoZSBvbmx5IG9uZS4KKy5T
SCBFWEFNUExFUworVGhlIHByb2dyYW0gYmVsb3cgZGVtb25zdHJhdGVzIHRoZSB1c2Ugb2YgZnV0
ZXhlcyBpbiBhIHByb2dyYW0gd2hlcmUKK3RocmVhZHMgdXNlIGEgZnV0ZXggdG8gc3luY2hyb25p
emUgYWNjZXNzIHRvIGEgY3JpdGljYWwgc2VjdGlvbiwKK3doaWNoIGluY3JlbWVudHMgYSBnbG9i
YWwgaW50ZWdlciB2YXJpYWJsZQorLklSIG5sb29wcworKGEgY29tbWFuZC1saW5lIGFyZ3VtZW50
IHRoYXQgZGVmYXVsdHMgdG8gMTAwMDAwIGlmIG9taXR0ZWQpCit0aW1lcy4KK0FmdGVyIHRoZSBw
YXJhbGxlbCBzZWN0aW9uLAordGhlIHByb2dyYW0gcHJpbnRzIHRoZSB2YWx1ZSBvZiB0aGUgZ2xv
YmFsIHZhcmlhYmxlLgorVXBvbiBydW5uaW5nIHRoaXMgcHJvZ3JhbSB3ZSBzZWUgb3V0cHV0IHN1
Y2ggYXMgdGhlIGZvbGxvd2luZzoKKy5QUAorLmluICs0bgorLkVYCiskIFxmQi4vZnV0ZXhfZGVt
b1xmUAorUmFuIHdpdGggMiB0aHJlYWRzCitFYWNoIHRocmVhZCBpbmNyZW1lbnRlZCBnbG9iYWxf
aW50IDEwMDAwMDAgdGltZXMKK0ZpbmFsIHZhbHVlIG9mIGdsb2JhbF9pbnQ6IDIwMDAwMDAKKy5F
RQorLmluCisuU1MgUHJvZ3JhbSBzb3VyY2UKK1wmCisuRVgKKy8qIGZ1dGV4X2RlbW8uYworCisg
ICAgVXNhZ2U6IGZ1dGV4X2RlbW8gW25sb29wc10KKyAgICAgICAgICAgICAgICAgICAgKERlZmF1
bHQ6IDEwMDAwMCkKKworICAgIERlbW9uc3RyYXRlIHRoZSB1c2Ugb2YgZnV0ZXhlcyBpbiBhIHBy
b2dyYW0gd2hlcmUgbXVsdGlwbGUgdGhyZWFkcworICAgIHVzZSBhIGZ1dGV4IHRvIHN5bmNocm9u
aXplIGFjY2VzcyB0byBhIGdsb2JhbCBpbnRlZ2VyIHZhcmlhYmxlLCB3aGljaAorICAgIGlzIGlu
aXRpYWxpemVkIHRvIDAuIFRoZSB0d28gdGhyZWFkcyBlYWNoIGluY3JlbWVudCB0aGUgdmFyaWFi
bGUKKyAgICBcKGFxbmxvb3BzXChhcSB0aW1lcywgYW5kIGVtcGxveSBhIHN5bmNocm9uaXphdGlv
biBwcm90b2NvbCB0aGF0CisgICAgZW5zdXJlcyBvbmx5IG9uZSB0aHJlYWQgY2FuIGFjY2VzcyB0
aGUgZ2xvYmFsIHZhcmlhYmxlIGF0IGEgdGltZS4KKworICAgIFdlIHVzZSBPcGVuTVAgZm9yIHRo
cmVhZCBwYXJhbGxlbGlzbTsKKyAgICB0aGVyZWZvcmUsIHRoaXMgcHJvZ3JhbSBtdXN0IGJlIGNv
bXBpbGVkIHdpdGggdGhlIFwtZm9wZW5tcCBmbGFnLAorICAgIGUuZy46CisKKyAgICBnY2MgZnV0
ZXhfZGVtby5jIFwtbyBmdXRleF9kZW1vIFwtZm9wZW5tcAorCisjZGVmaW5lIF9HTlVfU09VUkNF
CisjaW5jbHVkZSA8c3RkaW8uaD4KKyNpbmNsdWRlIDxlcnJuby5oPgorI2luY2x1ZGUgPHN0ZGF0
b21pYy5oPgorI2luY2x1ZGUgPHN0ZGludC5oPgorI2luY2x1ZGUgPHN0ZGxpYi5oPgorI2luY2x1
ZGUgPHVuaXN0ZC5oPgorI2luY2x1ZGUgPHN5cy9zeXNjYWxsLmg+CisjaW5jbHVkZSA8bGludXgv
ZnV0ZXguaD4KKyNpbmNsdWRlIDxvbXAuaD4KKworI2RlZmluZSBlcnJFeGl0KG1zZykgICAgZG8g
eyBwZXJyb3IobXNnKTsgZXhpdChFWElUX0ZBSUxVUkUpOyBcZQorICAgICAgICAgICAgICAgICAg
ICAgICAgfSB3aGlsZSAoMCkKKworI2RlZmluZSBOVU1fVEhSRUFEUyAyCisjZGVmaW5lIExPQ0tF
RCAwCisjZGVmaW5lIFVOTE9DS0VEIDEKKworc3RhdGljIGludCBnbG9iYWxfaW50ID0gMDsKK3N0
YXRpYyB1aW50MzJfdCBsb2NrID0gVU5MT0NLRUQ7CisKK3N0YXRpYyBpbnQKK2Z1dGV4KHVpbnQz
Ml90ICp1YWRkciwgaW50IGZ1dGV4X29wLCB1aW50MzJfdCB2YWwsCisgICAgICBjb25zdCBzdHJ1
Y3QgdGltZXNwZWMgKnRpbWVvdXQsIHVpbnQzMl90ICp1YWRkcjIsIHVpbnQzMl90IHZhbDMpCit7
CisgICAgcmV0dXJuIHN5c2NhbGwoU1lTX2Z1dGV4LCB1YWRkciwgZnV0ZXhfb3AsIHZhbCwKKyAg
ICAgICAgICAgICAgICAgICB0aW1lb3V0LCB1YWRkcjIsIHZhbDMpOworfQorCisvKiAgSW5jcmVt
ZW50cyB0aGUgZ2xvYmFsIGludGVnZXIgdmFyaWFibGUgbmxvb3BzIHRpbWVzLgorICAgIFdpdGhv
dXQgbG9ja2luZywgYSByYWNlIGNvbmRpdGlvbiBtYXkgb2NjdXIuICovCisKK3N0YXRpYyB2b2lk
Citjcml0aWNhbF9zZWN0aW9uKGludCBubG9vcHMpCit7CisgICAgZm9yIChpbnQgaSA9IDA7IGkg
PCBubG9vcHM7IGkrKykgeworICAgICAgICBnbG9iYWxfaW50Kys7CisgICAgfQorfQorCisKKy8q
ICBBdHRlbXB0IHRvIGxvY2sgdGhlIGZ1dGV4IHBvaW50ZWQgdG8gYnkgXChhcWZ1dGV4cFwoYXE6
CisgICAgVGhlIGZ1dGV4IHZhbHVlIGlzIGRlY3JlbWVudGVkIGJ5IDEuCisgICAgSWYgdGhlIGZ1
dGV4IHZhbHVlIGlzIG5vdyBMT0NLRUQsCisgICAgdGhlIGxvY2sgd2FzIHN1Y2Nlc3NmdWxseSBh
Y3F1aXJlZC4KKyAgICBPdGhlcndpc2UsIHdhaXQgZm9yIHRoZSBsb2NrIHRvIGJlIHJlbGVhc2Vk
LiAqLworCitzdGF0aWMgdm9pZAorZmxvY2sodWludDMyX3QgKiBmdXRleHApCit7CisgICAgaW50
IHM7CisgICAgaW50IGZ1dGV4X3ZhbDsKKworICAgIC8qIEF0dGVtcHQgdG8gYWNxdWlyZSB0aGUg
bG9jayAqLworICAgIHdoaWxlICggKGZ1dGV4X3ZhbCA9IF9fYXRvbWljX3N1Yl9mZXRjaChmdXRl
eHAsIDEsIF9fQVRPTUlDX0FDUV9SRUwpKSA8IExPQ0tFRCApIHsKKworICAgICAgICAvKiBJZiB0
aGUgbG9jayBpcyBub3QgYXZhaWxhYmxlLCB3YWl0ICovCisKKyAgICAgICAgcyA9IGZ1dGV4KGZ1
dGV4cCwgRlVURVhfV0FJVCwgZnV0ZXhfdmFsLCBOVUxMLCBOVUxMLCAwKTsKKyAgICAgICAgaWYg
KHMgPT0gXC0xICYmIGVycm5vICE9IEVBR0FJTikKKyAgICAgICAgICAgIGVyckV4aXQoImZ1dGV4
XC1GVVRFWF9XQUlUIik7CisgICAgfQorfQorCisvKiAgVW5sb2NrIHRoZSBmdXRleCBwb2ludGVk
IHRvIGJ5IFwoYXFmdXRleHBcKGFxOgorICAgIFRoZSBmdXRleCB2YWx1ZSBpcyBpbmNyZW1lbnRl
ZCBieSAxLgorICAgIAorICAgIElmIHRoZSBmdXRleCB2YWx1ZSBpcyBub3cgVU5MT0NLRUQsCisg
ICAgbm8gdGhyZWFkcyBhcmUgd2FpdGluZyBmb3IgdGhlIGxvY2suCisgICAgT3RoZXJ3aXNlLCBh
bm90aGVyIHRocmVhZCBpcyB3YWl0aW5nLAorICAgIHNvIHNldCB0aGUgdmFsdWUgdG8gVU5MT0NL
RUQgYW5kIHdha2UuICovCisKK3N0YXRpYyB2b2lkCitmdW5sb2NrKHVpbnQzMl90ICogZnV0ZXhw
KQoreworICAgIGludCBzOworCisgICAgLyogQXJlIGFueSB0aHJlYWRzIHdhaXRpbmcgZm9yIHRo
ZSBsb2NrPyAqLworICAgIGlmIChfX2F0b21pY19hZGRfZmV0Y2goZnV0ZXhwLCAxLCBfX0FUT01J
Q19BQ1FfUkVMKSAhPSBVTkxPQ0tFRCkgeworCisgICAgICAgIC8qIElmIHNvLCB1bmxvY2sgYW5k
IG5vdGlmeSAqLworICAgICAgICBfX2F0b21pY19zdG9yZV9uKGZ1dGV4cCwgVU5MT0NLRUQsIF9f
QVRPTUlDX1JFTEVBU0UpOworICAgICAgICBzID0gZnV0ZXgoZnV0ZXhwLCBGVVRFWF9XQUtFLCAx
LCBOVUxMLCBOVUxMLCAwKTsKKyAgICAgICAgaWYgKHMgID09IFwtMSkKKyAgICAgICAgICAgIGVy
ckV4aXQoImZ1dGV4XC1GVVRFWF9XQUtFIik7CisgICAgfQorfQorCitpbnQKK21haW4oaW50IGFy
Z2MsIGNoYXIgKmFyZ3ZbXSkKK3sKKyAgICBpbnQgbmxvb3BzOworICAgIGludCBuX3RocmVhZHM7
CisKKyAgICBubG9vcHMgPSAoYXJnYyA+IDEpID8gYXRvaShhcmd2WzFdKSA6IDEwMDAwMDsKKwor
ICAgIC8vQmVnaW4gT3Blbk1QIHBhcmFsbGVsIHNlY3Rpb24KKyAgICBvbXBfc2V0X251bV90aHJl
YWRzKE5VTV9USFJFQURTKTsKKyAgICAjcHJhZ21hIG9tcCBwYXJhbGxlbAorICAgIHsKKworICAg
ICAgICAvL1JldHJpZXZlIHRoZSBhY3R1YWwgbnVtYmVyIG9mIHRocmVhZHMKKyAgICAgICAgaWYg
KG9tcF9nZXRfdGhyZWFkX251bSgpID09IDApIHsKKyAgICAgICAgICAgIG5fdGhyZWFkcyA9IG9t
cF9nZXRfbnVtX3RocmVhZHMoKTsKKyAgICAgICAgfQorCisgICAgICAgIC8vTG9jayBhbmQgcnVu
IHRoZSBjcml0aWNhbCBzZWN0aW9uCisgICAgICAgIGZsb2NrKCZsb2NrKTsKKyAgICAgICAgY3Jp
dGljYWxfc2VjdGlvbihubG9vcHMpOworICAgICAgICBmdW5sb2NrKCZsb2NrKTsKKworICAgIH0K
KyAgICAKKyAgICBwcmludGYoIlJhbiB3aXRoICVkIHRocmVhZHNcbiIsIG5fdGhyZWFkcyk7Cisg
ICAgcHJpbnRmKCJFYWNoIHRocmVhZCBpbmNyZW1lbnRlZCBnbG9iYWxfaW50ICVkIHRpbWVzXG4i
LCBubG9vcHMpOworICAgIHByaW50ZigiRmluYWwgdmFsdWUgb2YgZ2xvYmFsX2ludDogJWRcbiIs
IGdsb2JhbF9pbnQpOworCisgICAgZXhpdChFWElUX1NVQ0NFU1MpOworfQorCisuRUUKIC5cIiAu
U0ggQVVUSE9SUwogLlwiIC5QUAogLlwiIEZ1dGV4ZXMgd2VyZSBkZXNpZ25lZCBhbmQgd29ya2Vk
IG9uIGJ5IEh1YmVydHVzIEZyYW5rZQo=

--_002_DM5PR02MB368773E150C77BDF45A34C9DC4F30DM5PR02MB3687namp_--
