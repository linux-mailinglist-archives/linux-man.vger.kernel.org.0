Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09F13618098
	for <lists+linux-man@lfdr.de>; Thu,  3 Nov 2022 16:08:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231898AbiKCPIV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Nov 2022 11:08:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231918AbiKCPHu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Nov 2022 11:07:50 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88BA01DF26
        for <linux-man@vger.kernel.org>; Thu,  3 Nov 2022 08:05:20 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 3AC57B828DB
        for <linux-man@vger.kernel.org>; Thu,  3 Nov 2022 15:05:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0474C433D7
        for <linux-man@vger.kernel.org>; Thu,  3 Nov 2022 15:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1667487917;
        bh=6dXN1OTlZ1EFnk+oirRKE26SAmOcGc0iMTZZdjjFbZM=;
        h=From:To:Subject:Date:From;
        b=X7X8+WkxwQmRP5TJ9n37Idb4tB4jKSGMKPzndzZ91U/NbBkQ5xItqKZ8uWP4K5kuj
         5wD5jehVzCAM0LVeDCpU5xdUWNm2UHAqAG4pk2JuvlxFBIUEx8Hdb1kvjPW7cS10uJ
         mIfaZGfHLfuH5Pr7JCoHK225NBTwiwSu4g+m7Gs0hBmKqpgGH9HYijlkdPbFgZpYDH
         xWnatw75VdayuVOdyXySBMmJ++cKdUROXm8qgTt8UJOVdqgSArxv690XfwjlBkh12z
         dp/SERwWZ7cbl/ckEG7QoHv0+QKCBye47l1L7eLTkVaV+Kw8P+/sp1izxfunyveUVd
         cpiN+AipZ+9hA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id CF1FAC433EA; Thu,  3 Nov 2022 15:05:17 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216656] New: random: poolsize
Date:   Thu, 03 Nov 2022 15:05:17 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: christophe.leroy@csgroup.eu
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-216656-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-8.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216656

            Bug ID: 216656
           Summary: random: poolsize
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: christophe.leroy@csgroup.eu
        Regression: No

In https://man7.org/linux/man-pages/man4/random.4.html

In "/proc interfaces" section, item "poolsize", part "Linux 2.6 and later",=
 it
is said the file contains value 4096.

That is not correct anymore since commit 6e8ec2552c7d ("random: use
computational hash for entropy extraction")

Also mentionned in https://bugzilla.kernel.org/show_bug.cgi?id=3D216061

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
