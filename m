Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1562A6B0E71
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 17:19:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229799AbjCHQTV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 11:19:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229871AbjCHQTP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 11:19:15 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAFEBB6932
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 08:19:00 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 65D1461336
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 16:19:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE588C4339C
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 16:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678292339;
        bh=7kEGl2T5Mi319q10uGVDfrsW6W1KvK2D/y1kqAgKxdU=;
        h=From:To:Subject:Date:From;
        b=HxI1zbnTzwncSD8Jzo/L4OxXwwcj2NiFMy1aF6z8WvO+YptriUyNwyvQaQXv9rJ9k
         TYA4wcUgc/bFzwT4OEX8yN5pmA0u6Ygi9pDN6XNj5A6yl5hDRzaN4Hy1Tn2B5frDxO
         Mc8P8GGMMMFgcGZenODrMam+sXMOi1xoDqAxMt03UTBj0MBuf1SO6rJ/wRLDRGyyZ4
         GUf7mLtOxNzT0RkZ1v6+Ues3dRIYrLTeOAkAHxxqBoVwjo6KseIqBLpPwOUvX5wSdH
         Xm41no52D9QzAFFqTjYJG58n/u+rvS4BxhHzDx+26gmVdeBNwinBP5vNY2oIvT6S3C
         kzLfHiu4GRN0Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id B68FFC43142; Wed,  8 Mar 2023 16:18:59 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217164] New: proc(5) man page says that VmallocUsed is not
 calculated, but it is calculated for me
Date:   Wed, 08 Mar 2023 16:18:59 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: konrad@borowski.pw
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-217164-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217164

            Bug ID: 217164
           Summary: proc(5) man page says that VmallocUsed is not
                    calculated, but it is calculated for me
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: konrad@borowski.pw
        Regression: No

https://man7.org/linux/man-pages/man5/proc.5.html says the following:

              VmallocUsed %lu
                     Amount of vmalloc area which is used.  Since Linux
                     4.4, this field is no longer calculated, and is
                     hard coded as 0.  See /proc/vmallocinfo.

However, this was changed in 5.3 in
https://github.com/torvalds/linux/commit/97105f0ab7b877a8ece2005e214894e937=
93950c.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
