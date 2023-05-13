Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA7AF7015C6
	for <lists+linux-man@lfdr.de>; Sat, 13 May 2023 11:32:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238045AbjEMJce (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 May 2023 05:32:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238189AbjEMJcc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 May 2023 05:32:32 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C69155AC
        for <linux-man@vger.kernel.org>; Sat, 13 May 2023 02:32:28 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1B7B661D43
        for <linux-man@vger.kernel.org>; Sat, 13 May 2023 09:32:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 57768C433A0
        for <linux-man@vger.kernel.org>; Sat, 13 May 2023 09:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683970347;
        bh=VL7k4Zed1ft4AZ8JmDNSM851lxJTzle2aymOqFX9cnA=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=EG6VmrXy1VzkfSxIKeEfLQkIE+m3uhsL3AS6/bfcRByVC/in8Ggk1xZqKW7dLC8OI
         fT9qA2BTUtmQDQjC+5EvgTpdijwBr0sTJQUVHqU5btpGnJKEGemG1TU8gkzQKu7zLr
         rm5HQDQ5bKbaJfzjL0MvH3iXWeWghkxKZqDxWZJ9nlSu7KvDdQ5Kbupg7tUB0ziIv+
         7cnfA3MftvN2FNUBJD+pLJ88w2oIcD0BeuilsWfVaBqZe4Ws9gU28kWConMyMupP0M
         SNR3VVCD5g9LKg39vOG5sNulo5gOLhlfijcIQIvealGE/x1Kv0pI9f/y0XNDkDn32p
         rI4aKRfi2qLVA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 3D0F9C43145; Sat, 13 May 2023 09:32:27 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217435] man-pages using groff's new MR macro render incorrectly
 on man7.org/linux
Date:   Sat, 13 May 2023 09:32:26 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
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
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217435-11311-eoxyWxGqsz@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217435-11311@https.bugzilla.kernel.org/>
References: <bug-217435-11311@https.bugzilla.kernel.org/>
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

--- Comment #2 from Keith Marshall (keith.d.marshall@ntlworld.com) ---
(In reply to Mingye Wang from comment #1)
> man7.org is not affiliated with the Linux man-pages project. You will have
> more luck reporting at https://github.com/mkerrisk/man-pages/issues.

Strange then, that man7.org itself seems to direct here, for bug reporting;
furthermore, that github repo, which has shown no developer activity in the
last two years, requests that bug reports be directed here, and not to its
issue tracker.

Never mind.  Michael apparently doesn't care that man7.org is poorly
maintained, so why should I?  Sorry to have troubled you.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
