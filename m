Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64D214E1966
	for <lists+linux-man@lfdr.de>; Sun, 20 Mar 2022 02:57:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236186AbiCTB6q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 19 Mar 2022 21:58:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234519AbiCTB6p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 19 Mar 2022 21:58:45 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A808A19E393
        for <linux-man@vger.kernel.org>; Sat, 19 Mar 2022 18:57:23 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1A4AE60C5C
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 01:57:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BAD5C340F0
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 01:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1647741442;
        bh=p3yztQCW9kmvE+IXkeTZvCrCgRbXx8E/OtZA3DXGpKI=;
        h=From:To:Subject:Date:From;
        b=uaAi6RSm6VklEAcPDcp+h1D/jM5SIiffcvdOssBcVOyP7jOwPDwATE1DyDFaBEj7O
         X4mr1trA+dHAuuenapwdwj+S1Hv8LkJpiMQE4bFfeeXo0I7RQTOHDICZ0vmYhfeyBO
         0MYjcY+3j9CMjZQTOslkVqpsj9Dj4nTC1dpceU2/n2Jn3ka+GCFfl/IAARsdEviaN/
         yVUkw/aL7F8uuQ61jozrpHGfwr8USPKzGGsVuGw3cZiqgLAAfc8Rt48ltCSIj6K+/J
         LU05yFJznhZ6RZqwDzyBi3etan0cei90ZDy/b3Rqi6gdNWvD/LJrTezxAPDuuxQe0D
         G0qKO3at0B3Eg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 4E2B5CAC6E2; Sun, 20 Mar 2022 01:57:22 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215704] New: Trouble locating documentation related to disk
 read timeout /sys/block/*/device/timeout OR /sys/devices/**/timeout
Date:   Sun, 20 Mar 2022 01:57:22 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: enhancement
X-Bugzilla-Who: mjevans1983@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-215704-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-8.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215704

            Bug ID: 215704
           Summary: Trouble locating documentation related to disk read
                    timeout /sys/block/*/device/timeout OR
                    /sys/devices/**/timeout
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: enhancement
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: mjevans1983@gmail.com
        Regression: No

I've been unable to locate Documentation that matches some locations within
sysfs.

/sys/block/*/device/timeout
/sys/devices/**/timeout

They all appear to cat a value of 30.  However an initial experiment with t=
his
value appears to diverge from assumptions I had made.

My context is related to TLER
smartctl -l scterc,${TIMEOUT_SEC}0,${TIMEOUT_SEC}0 /dev/sdX

I have a software RAID (ZFS in this case) which isn't interacting the way it
expects with underlying hardware.  I was hoping to find a manual that might
explain how the block device tunable fields such as 'timeout' are intended =
to
be utilized and tuned.

I didn't see anything obvious in search of text and 'reStructuredText' files
with the obvious keyword:

https://github.com/torvalds/linux/search?l=3DText&p=3D6&q=3Dtimeout
https://github.com/torvalds/linux/search?l=3DreStructuredText&p=3D16&q=3Dti=
meout

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
