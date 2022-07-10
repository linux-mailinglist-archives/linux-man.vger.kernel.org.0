Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D67356D1C7
	for <lists+linux-man@lfdr.de>; Mon, 11 Jul 2022 00:19:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbiGJWT2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Jul 2022 18:19:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbiGJWT2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 10 Jul 2022 18:19:28 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2EF1A1AE
        for <linux-man@vger.kernel.org>; Sun, 10 Jul 2022 15:19:26 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 265FECE0BA4
        for <linux-man@vger.kernel.org>; Sun, 10 Jul 2022 22:19:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA20C341CB
        for <linux-man@vger.kernel.org>; Sun, 10 Jul 2022 22:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1657491563;
        bh=HmvgpgbfRbm1/GTLHXuksd+Dx0iFWB7ZRZVS8mk6ask=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=AvxTsiaS/8oA4+8Ho6GO8z0MBhNYccRGuPiNoFHCBSCb4aMbFBXhY4L99QGmuSi88
         gwUyC8IZ4mj3MJ7kxTe4fsDfK+duC/FqTGeBhN3IThcNY/qLxcLDcL7E39EVgA9iu+
         cVBBgtCI3ztx2YwpRn5BpO/8cGKI0Z3uinmo8/S+GTOy25Qx3Qfn2CLe89eOd0psDv
         uH4SFPXmIco1H7hL+CMf6mqKANEwIXoJNNWFWWZzqojzUAFSstcRFp9GkwinPRz1Rh
         7X0PQo4ZYJyI/4vIeJLyr6TJpO2f4gNif12cTPku2ts07yw48nWeflRx8bmmALzRk3
         NF4m9Nt3T7emQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 6706FCC13BA; Sun, 10 Jul 2022 22:19:23 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216215] clone and unshare say CAP_SYS_ADMIN is required to
 create new namespaces
Date:   Sun, 10 Jul 2022 22:19:23 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status cc resolution
Message-ID: <bug-216215-11311-4TKf8Lwj15@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216215-11311@https.bugzilla.kernel.org/>
References: <bug-216215-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216215

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx.manpages@gmail.com
         Resolution|---                         |INVALID

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
$ cat unshare.c=20
#define _GNU_SOURCE
#include <err.h>
#include <sched.h>
#include <stdlib.h>

int main(void)
{
        if (unshare(CLONE_NEWPID) =3D=3D -1)
                err(EXIT_FAILURE, "unshare(2)");
        exit(EXIT_SUCCESS);
}

$ cc -Wall -Wextra unshare.c
$ sudo setcap 'cap_sys_admin=3D' a.out=20
$ ./a.out=20
a.out: unshare(2): Operation not permitted
$ sudo setcap 'cap_sys_admin=3Deip' a.out=20
$ ./a.out=20
$=20


CAP_SYS_ADMIN is required, as the example above demonstrates.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
