Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD28265B42C
	for <lists+linux-man@lfdr.de>; Mon,  2 Jan 2023 16:27:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229447AbjABP1G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Jan 2023 10:27:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236402AbjABP0n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Jan 2023 10:26:43 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 187C6B5D
        for <linux-man@vger.kernel.org>; Mon,  2 Jan 2023 07:26:42 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8F6D061008
        for <linux-man@vger.kernel.org>; Mon,  2 Jan 2023 15:26:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBC6FC433F2
        for <linux-man@vger.kernel.org>; Mon,  2 Jan 2023 15:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672673201;
        bh=7ZohUxz8wsmTUMHUykodjJvBMM/VP1n7IEQe29S2qEQ=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=QDfPcuNhBSBV2QUscyztCH3jDxUiHHJx9wlx1rYLeRVuSbZDG6R5E/J+r1vRIZBk2
         5LCExPQWDEN5g+rwQuSE10M2ElkzedP32/eCk5tOA+9Wcdeqe2QNgHe74Zp1svUcPY
         SDZP8Z4XEFbr4dZBB3CJGQh/d76nQ80wqq4TBST2eiBZAbyKESO7qf1T10N6pgwZaR
         De1tUrv/ChLrdWqPjP17a1xKSX6Yz34FNQudT9xTPYr9E/nKg0zAtrw1zJgQ7aDffA
         qtC0IsBcVf5uVPajEMTsEtWalHnvaq2kgdpZt5U4DvuAjDA4SlM3P5Aoovy2eoggxJ
         +bV5EYbNjS2rw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id D5D77C43144; Mon,  2 Jan 2023 15:26:40 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216876] prototype for execveat() in the documentation appears
 wrong
Date:   Mon, 02 Jan 2023 15:26:40 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: fweimer@redhat.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-216876-11311-ih78cgxgtz@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216876-11311@https.bugzilla.kernel.org/>
References: <bug-216876-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216876

--- Comment #1 from Florian Weimer (fweimer@redhat.com) ---
* Alejandro Colomar via Libc-alpha:

> It seems that glibc added a wrapper recently, and I didn't check that
> the prototype changed:
>
> alx@asus5775:~/src/gnu/glibc$ grepc execveat
> ./posix/unistd.h:300:
> extern int execveat (int __fd, const char *__path, char *const __argv[],
>                      char *const __envp[], int __flags)
>     __THROW __nonnull ((2, 3));
>
>
> ./sysdeps/unix/sysv/linux/execveat.c:25:
> int
> execveat (int dirfd, const char *path, char *const argv[], char *const
> envp[],
>           int flags)
> {
>   /* Avoid implicit array coercion in syscall macros.  */
>   return INLINE_SYSCALL_CALL (execveat, dirfd, path, &argv[0], &envp[0],
>                             flags);
> }
>
>
> I CCd glibc so that they can comment.

POSIX uses these types for fexecve and execve, and it seemed right to be
consistent with that.

There are several more manual pages which do not specify the correct
prototype: open, openat, prctl.  I have received compiler bug reports
when people used function pointers modeled after the declarations of
open and prctl in the manual pages because of the ABI mismatch with the
glibc implementations.  The execveat difference is harmless in
comparison.

Thanks,
Florian

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
