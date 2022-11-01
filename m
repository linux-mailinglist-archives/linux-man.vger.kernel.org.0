Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9215614A92
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 13:26:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230158AbiKAM0H (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Nov 2022 08:26:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229587AbiKAM0H (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Nov 2022 08:26:07 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7989717AA3
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 05:26:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 3A5C6B81D12
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 12:26:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E43C0C433B5
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 12:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1667305563;
        bh=5r9ivR5wnGaE6mYzN/YLWcHs5K5mnDemGgBcaq0VkYs=;
        h=From:To:Subject:Date:From;
        b=m6h1CuXsO/QnP2ytBT8SqWEc/oB7Jyu5oraXrrSOHp2f8XFGEKiilTP+1OZYD+YH7
         LaYG8bWXjiVpCyPvEKx/Hx9qZUn/kS9aMteVPrNAqo8AhdN2NAzJ9LY+zc1pz4Tbhv
         9qaDUmHWYaCJ2vrmMIuSp8wEKwrup31KyNyQesJ2GFPfKmBiFI5TxkyUPbbkNX2twt
         LzQsBKvrsSbqcgEL0Dn1cHXXDs363/9J8Gpm1dIBf1jAu4p7qk08SjWl61jTSeHsMl
         EnauQVME/1X0JKbklgirgIoPzs9KKbTL+C6lmG14VhmeLJYaD9y4p4mdX0ummJyTE3
         5emueRPIPrF7w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id CED65C433E6; Tue,  1 Nov 2022 12:26:03 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216648] New: man 5 core incorrectly states circumstances in
 which a core is not produced
Date:   Tue, 01 Nov 2022 12:26:03 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: veluca93@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-216648-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-8.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216648

            Bug ID: 216648
           Summary: man 5 core incorrectly states circumstances in which a
                    core is not produced
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: veluca93@gmail.com
        Regression: No

As per title, the `core` manpage states:

       There are various circumstances in which a core dump file is not
       produced:

[...]

       *  The RLIMIT_CORE (core file size) or RLIMIT_FSIZE (file size)
          resource limits for the process are set to zero; see
          getrlimit(2) and the documentation of the shell's ulimit
          command (limit in csh(1)).

However, this is not actually correct when core dumps are piped to a progra=
m,
as the section below states ...

       *  The RLIMIT_CORE limit is not enforced for core dumps that are
          piped to a program via this mechanism.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
