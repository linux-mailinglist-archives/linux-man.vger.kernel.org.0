Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5520B4ED53E
	for <lists+linux-man@lfdr.de>; Thu, 31 Mar 2022 10:12:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232586AbiCaIOA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Mar 2022 04:14:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232580AbiCaINy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Mar 2022 04:13:54 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 828B31EDA3A
        for <linux-man@vger.kernel.org>; Thu, 31 Mar 2022 01:12:07 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 3D6F9B82001
        for <linux-man@vger.kernel.org>; Thu, 31 Mar 2022 08:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1214C34110
        for <linux-man@vger.kernel.org>; Thu, 31 Mar 2022 08:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648714324;
        bh=WQhO5US6VfrvPzO6x6jF36bUBQGbz9IykGf6ttBcb5k=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=SJMoP8Dh7eWn7qTPQNQdFswEFYwrpVtHdGfX2WkoVi02auoPL0Hr5/ORFSTjP7DOw
         zi5t2Ut4LvziYpYO4I+AcTWRSNRHQpOMD6c8nAOaT2WC8jOEnizI8y27yAYR5Q8P1f
         hGoNNeElkenjLzGoo5Gw1J3RNqzkrdle0q8HZFKlbX5ocKpVQZ7ykWLtrAmZggx37X
         e0og0gaslMaaU+ebdHqdwhtQB9W6GpFDlXIgiCnZUiF14jfVdyrLrI9Hol7sYu+Bbw
         DqtLxlD0uO/DyD8oH6MAlbl/RZ1/5g+gdiYmDSUw6O6cLYxOdGLCsT6MaGrSVB6WL+
         LcWK56P6QNEug==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id BE3D9CAC6E2; Thu, 31 Mar 2022 08:12:04 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] man 2 vfork() does not document corner case when PID ==
 1
Date:   Thu, 31 Mar 2022 08:12:04 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: socketpair@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215769-11311-kmq0UP58e2@https.bugzilla.kernel.org/>
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

--- Comment #4 from =D0=9A=D0=BE=D1=80=D0=B5=D0=BD=D0=B1=D0=B5=D1=80=D0=B3 =
=D0=9C=D0=B0=D1=80=D0=BA (socketpair@gmail.com) ---
#define _GNU_SOURCE 1
#include <stdio.h>
#include <sched.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <err.h>

#ifndef CLONE_NEWTIME
#define CLONE_NEWTIME   0x00000080
#endif

int main (void)
{
  if (unshare (CLONE_NEWTIME))  err (EXIT_FAILURE, "UNSHARE_NEWTIME");

  pid_t pid;
  switch (pid=3Dvfork ())
  {
  case 0:
    _exit(0);
  case -1:
    err(EXIT_FAILURE, "vfork BUG");
  default:
    waitpid(pid, NULL, 0);
  }
  return 0;
}

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
