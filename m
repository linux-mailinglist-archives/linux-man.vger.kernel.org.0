Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D2F94EABD0
	for <lists+linux-man@lfdr.de>; Tue, 29 Mar 2022 13:02:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233042AbiC2LEd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Mar 2022 07:04:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231437AbiC2LEb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Mar 2022 07:04:31 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF82F23D459
        for <linux-man@vger.kernel.org>; Tue, 29 Mar 2022 04:02:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 7A9EFB81658
        for <linux-man@vger.kernel.org>; Tue, 29 Mar 2022 11:02:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 35526C3410F
        for <linux-man@vger.kernel.org>; Tue, 29 Mar 2022 11:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648551765;
        bh=rUWf1tJbkN3GV4spNEjA6xie2fufe6YwIyWsXoGBvYQ=;
        h=From:To:Subject:Date:From;
        b=PingbQc+p1qdblX1PkjOdlHZ25i1G4m5L3++MBTt0KlfYiiQfWxvJDkc5qBwoctJC
         kohIbXER2jlZOXNVHKRWrfjYlf4M2yMplC4rxf4Rq5zKmFrC8mjp48bfj6Zd0qAUmC
         md3y/1Ufw5A8ddDmuct9+MDrx5BgVK9f9oto9+tzElm1QidwHnRLdwHRSvINwGZcG7
         QzwAQrc4GlWyoJaMNhbLr82SdH0iXdPDkjQ2vhJ5bSsbgMoroFsRL/TQtu1eU+zzre
         9h8UxjzuS4X0wPNcUQWlC0k5VY3oYQMxxgKvKIub9oLCmZTF6tfeKVwn0g4/K55vGG
         DiLoNSSGs9JaA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 204ADCAC6E2; Tue, 29 Mar 2022 11:02:45 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] New: man 2 vfork() does not document corner case when
 PID == 1
Date:   Tue, 29 Mar 2022 11:02:44 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
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
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-215769-11311@https.bugzilla.kernel.org/>
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

            Bug ID: 215769
           Summary: man 2 vfork() does not document corner case when PID
                    =3D=3D 1
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: socketpair@gmail.com
        Regression: No

If a process has PID=3D1 (for example in pid namespace), calling vfork() al=
ways
returns EINVAL. (https://bugs.python.org/issue47151).

Please add this informtion in "RETURN VALUE" section or just in somewhere e=
lse
in the manpage.

Actually, it may be a bug in Linux kernel, I don't know. Possibly because t=
he
init process must not be suspended ?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
