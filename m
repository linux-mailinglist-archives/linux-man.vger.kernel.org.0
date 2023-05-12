Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA2C4700F7D
	for <lists+linux-man@lfdr.de>; Fri, 12 May 2023 21:58:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238138AbjELT6g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 May 2023 15:58:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230373AbjELT6f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 May 2023 15:58:35 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF44961AE
        for <linux-man@vger.kernel.org>; Fri, 12 May 2023 12:58:34 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4127D61596
        for <linux-man@vger.kernel.org>; Fri, 12 May 2023 19:58:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 979E6C4339C
        for <linux-man@vger.kernel.org>; Fri, 12 May 2023 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683921513;
        bh=8VefPSyk0qQ2EAjA3bNROztd3yn+Hu70EU/Vtf+fo58=;
        h=From:To:Subject:Date:From;
        b=qhx4dmSRD+bAWQuz4vyuvLHuwwGgGBMFULnAHOomfEpcrcNPS0gj+ijbkRM5HVWzk
         beG5S91wWTteVo32pSVF9DS9lkZLy8VZ5L9Nq3Ma8soIitP0/VP9qojnekh8veAv9G
         zDYODqNHFC8QKfcUDTDu1ToZ3xNtEsW97o6E+zob9nc350p1Wo50dZayvmIF3M7j0S
         hTt7zN/NjVEIeVr5xF2vSvNkxlyGkU7DpqgKudvt6dpKVrvLbOuaakDJw9b4S5bA9q
         7f71RylXPo4RJhTNo1A9qF9rK/nTQJQZCOw9ddno/YL7xCyKfHJODIWPMkYE8niYOg
         sT6lCaUsQS/1Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 78693C43145; Fri, 12 May 2023 19:58:33 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217435] New: man-pages using groff's new MR macro render
 incorrectly on man7.org/linux
Date:   Fri, 12 May 2023 19:58:33 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: keith.d.marshall@ntlworld.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-217435-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217435

            Bug ID: 217435
           Summary: man-pages using groff's new MR macro render
                    incorrectly on man7.org/linux
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: keith.d.marshall@ntlworld.com
        Regression: No

Since its last formal release, GNU Troff's git trunk has introduced a new
macro, for encoding references to other man pages.  man7.org/linux/man-pages
appears to have imported some page sources, e.g.
https://man7.org/linux/man-pages/man1/groff.1.html, which use this new macr=
o,
but your rendering engine does not support it; consequently, the displayed =
page
is incomplete, and effectively unreadable in places.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
