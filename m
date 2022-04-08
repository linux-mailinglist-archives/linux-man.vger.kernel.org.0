Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACCBA4F943A
	for <lists+linux-man@lfdr.de>; Fri,  8 Apr 2022 13:36:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229550AbiDHLi1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Apr 2022 07:38:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232486AbiDHLiZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Apr 2022 07:38:25 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35E94762A9
        for <linux-man@vger.kernel.org>; Fri,  8 Apr 2022 04:36:22 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C890761FFB
        for <linux-man@vger.kernel.org>; Fri,  8 Apr 2022 11:36:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 35028C385A5
        for <linux-man@vger.kernel.org>; Fri,  8 Apr 2022 11:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649417781;
        bh=SgotHmdHbiDfuudi0A4ALxiCgO08GNmjHKRkLOiKb68=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=LmjlPOQ8PMF0VXlIxuuCyseGnqu2kkbZSiATenR5VFWi6Qkk9s2E2rg0DStDUl+8p
         PR3EpG4n5gWUdAmrL2RF9+Iq6y6IH6sO1Nz+MI6c6mGU8oyRqF7BNBxiUM80Dxk8JA
         kC1QCppS0qbpimZm84lLwUCRg+nklpoLh2OM6Xda54Fs1K69hzfEZ8XRPCoriQMEz5
         iHO2qwEoOgnqnC0SCVSzccQqJiOcFzP5+PCQa0W6FRTvcjAhCnPVU/V6DgS4fzD7zC
         Wf+hLIzxs5KuwtILeipjpuVUkfv1Rwx1VyOqHwDij8hvaRfca8GwrOYuteXvkctkUC
         nfKveYjr36s1Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 1C11AC05FCE; Fri,  8 Apr 2022 11:36:21 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] vfork() returns EINVAL after unshare(CLONE_NEWTIME)
Date:   Fri, 08 Apr 2022 11:36:20 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Other
X-Bugzilla-Component: Other
X-Bugzilla-Version: 2.5
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: socketpair@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: component version product
Message-ID: <bug-215769-11311-eOiTVTU2er@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215769-11311@https.bugzilla.kernel.org/>
References: <bug-215769-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215769

=D0=9A=D0=BE=D1=80=D0=B5=D0=BD=D0=B1=D0=B5=D1=80=D0=B3 =D0=9C=D0=B0=D1=80=
=D0=BA (socketpair@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
          Component|man-pages                   |Other
            Version|unspecified                 |2.5
            Product|Documentation               |Other

--- Comment #13 from =D0=9A=D0=BE=D1=80=D0=B5=D0=BD=D0=B1=D0=B5=D1=80=D0=B3=
 =D0=9C=D0=B0=D1=80=D0=BA (socketpair@gmail.com) ---
Please help me to change Bugzilla fields in the issue. This is a kernel bug=
 as
I think. Nothing should be changed in documentation.


And also, please stop discussing how to correctly use vfork() (regarding
modifying stack, glibc and so on). This issue is actually about vfork() +
CLONE_NEWTIME.

Regarding CLONE_VM. We have no problems for, say, PID namespace. Suppose we
have parent process with two threads. Let's second thread calls vfork() and=
 is
stopped as expected. So children process is running and the first thread of
parent process too. They share VM, but getpid() will give different values =
in
them, right ?

If YES, I don't see any stoppers for doing the same for CLONE_NEWTIME.
If NO, this is a bug.

Actually, yes:

#define _GNU_SOURCE 1
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <syscall.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <err.h>
#include <pthread.h>

static void *showpid (void *restrict arg)
{
  (void) arg;
  for (int i =3D 0; i < 25; i++)
  {
    printf ("thr pid=3D%lu\n", (unsigned long) syscall (SYS_getpid));
    struct timespec ts =3D { 0, 100000000 };<---->// 0.1 sec
    nanosleep (&ts, NULL);
  }
  return NULL;
}

int main (void)
{
  pthread_t thr;
  if (pthread_create (&thr, NULL, showpid, NULL))
    abort ();

  if (unshare (CLONE_NEWPID) =3D=3D -1)
    err (EXIT_FAILURE, "unshare(newpid)");

  sleep (1);<--><------><------>// allow the thread to work for 1 second

  pid_t p =3D vfork ();
  if (!p)
  {
    static char qwe[100];
    static struct timespec ts =3D { 1, 0 };
    syscall (SYS_write, 1, qwe, sprintf (qwe, "child: %lu\n", (unsigned lon=
g)
syscall (SYS_getpid)));
    syscall (SYS_clock_nanosleep, CLOCK_MONOTONIC, 0, &ts, NULL);
    syscall (SYS_write, 1, qwe, sprintf (qwe, "child sleep complete\n"));
    _exit (0);
  }
  if (p =3D=3D -1)
    err (EXIT_FAILURE, "vfork");

  printf("Waiting for child\n");
  waitpid (p, NULL, 0);
  pthread_join (thr, NULL);
}

$ sudo ./a.out=20
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
child: 1
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
child sleep complete
Waiting for child
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371
thr pid=3D46371

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
