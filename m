Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A75E527109
	for <lists+linux-man@lfdr.de>; Sat, 14 May 2022 14:37:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231819AbiENMhL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 May 2022 08:37:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230393AbiENMhK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 May 2022 08:37:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8090E10C6
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 05:37:08 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1792260EA6
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 12:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70EB6C34116
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 12:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1652531827;
        bh=u3uhHqNXJdRPOFRzYg9AYZco/LnOuqo+q1VHeHTV2Vw=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=XROLWXcWOGaFtV078HwyZe48LJihyUQPHW7YMY/TLKgup8Rb0/a0kHsa4H6tEsLqD
         EpOAqAJKTmnAOenbKVT9qbEOpTA/TTeVTpFuwdHeVcb7jf1zjmfRJPTFD+JQ5mt6mU
         p1/eRO6UwsK5V+TS1/D3durze2DsmgIWO40ZRVPlo9HcdgP/qOyssKXTv9QhQbg+d/
         Zbj2dewxnHEZURQhxGGsVaH8Hf88vK6vRcT85L2pJVUwPYJTjFkTtjDgTUtbCpWCXs
         QKqzPat3SvnfuV9sjgtCiDl/opy6IAr37zKWHqVmzAIDrKhLEydI1cYwWn6faE0uH+
         +0sh6knpCVWBQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 610D9CC13B3; Sat, 14 May 2022 12:37:07 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215848] fopen(3): Incorrect good practice suggestion
Date:   Sat, 14 May 2022 12:37:07 +0000
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
X-Bugzilla-Resolution: CODE_FIX
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status cc resolution
Message-ID: <bug-215848-11311-RXtSTpwmGE@https.bugzilla.kernel.org/>
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

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx.manpages@gmail.com
         Resolution|---                         |CODE_FIX

--- Comment #2 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Hi Avinash,

I decided to keep fsetpos(3) to not lose the info, so I applied the followi=
ng
patch:


    fopen.3: tfix

    Reported-by: Avinash Sonawane <rootkea@gmail.com>
    Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man3/fopen.3 b/man3/fopen.3
index b9bbc4704..465031167 100644
--- a/man3/fopen.3
+++ b/man3/fopen.3
@@ -114,7 +114,7 @@ Therefore it is good practice (and indeed sometimes
necessary
 under Linux) to put an
 .BR fseek (3)
 or
-.BR fgetpos (3)
+.BR fsetpos (3)
 operation between write and read operations on such a stream.
 This operation may be an apparent no-op
 (as in \fIfseek(..., 0L, SEEK_CUR)\fP

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
