Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30694504B59
	for <lists+linux-man@lfdr.de>; Mon, 18 Apr 2022 05:32:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236060AbiDRDez (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 17 Apr 2022 23:34:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbiDRDey (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 17 Apr 2022 23:34:54 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1533217E20
        for <linux-man@vger.kernel.org>; Sun, 17 Apr 2022 20:32:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id C74B2B80D99
        for <linux-man@vger.kernel.org>; Mon, 18 Apr 2022 03:32:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F6CC385AB
        for <linux-man@vger.kernel.org>; Mon, 18 Apr 2022 03:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1650252734;
        bh=xsG/idi+PRrRlyJXGUquNNjX95Fx8eHV+zZrdbzzCuA=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=P1RZ0NW14H8oa95ofUZ0Jgdyk1SxWfn1nqo2osZoDWQIfmZ5OPiFScmQCRIeUJnRI
         n46v/vkvpq8ZbShELMTTGq0e6994cKeB/Ul7TAaYM8wg2PwVJowWDpGWWopodMK1Ld
         PhjzGVBz8dJoCqjjvimitKOqUrtcJp5Nosllsn5Fk8/HQlNzsTUhnQ/ZSYRcmzoYKw
         tewyoI05dUn9CVjVt5YTtItq42K6s94oj2TFAeavRE6NDjKmESDZwxbiW/naoTCpch
         xGJun7Hb/3EEesGdr9GGiD8OkP3p/hi16x20t+oagRQH5KOQvMGDbBg9Jwjw66hYRv
         9oxOM+RT3foXQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 58E04CAC6E2; Mon, 18 Apr 2022 03:32:14 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215848] fopen(3): Incorrect good practice suggestion
Date:   Mon, 18 Apr 2022 03:32:14 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: rootkea@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215848-11311-MPyqzJirxa@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215848-11311@https.bugzilla.kernel.org/>
References: <bug-215848-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215848

--- Comment #1 from Avinash Sonawane (rootkea@gmail.com) ---
I think we should only mention using `fseek` as a good practice between read
and write operations since:
a. fflush can't be used on input stream i.e. if last operation was read whi=
le
fseek() can be used between read-write or write-read.

b. fsetpos needs fgetpos to be called first. So let's drop `fgetpos+fsetpos`
from the good practice suggestion

So I suggest this small change:
diff --git a/man3/fopen.3 b/man3/fopen.3
index a1d781706..fb289a537 100644
--- a/man3/fopen.3
+++ b/man3/fopen.3
@@ -138,8 +138,6 @@ result of writes other than the most recent.)
 Therefore it is good practice (and indeed sometimes necessary
 under Linux) to put an
 .BR fseek (3)
-or
-.BR fgetpos (3)
 operation between write and read operations on such a stream.
 This operation may be an apparent no-op
 (as in \fIfseek(..., 0L, SEEK_CUR)\fP

Thanks!

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
