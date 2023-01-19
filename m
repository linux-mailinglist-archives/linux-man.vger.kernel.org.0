Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1646672E7D
	for <lists+linux-man@lfdr.de>; Thu, 19 Jan 2023 02:50:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229847AbjASBuQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Jan 2023 20:50:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229704AbjASBrl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Jan 2023 20:47:41 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CCDC5CFC8
        for <linux-man@vger.kernel.org>; Wed, 18 Jan 2023 17:46:00 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 09D42B81FBC
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 01:45:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B131CC433F1
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 01:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674092757;
        bh=mYhqn2/sNLA0pMfw24Qh38OmBUKt56m+QYqoXckr/V0=;
        h=From:To:Subject:Date:From;
        b=SGUjfVEKpP7ojjrmCQel+2R+S99dQ8dAYj/0BZ8TxiMO3eua0bpuFQ67xJytrTDL1
         tJ6seC8WDLCaxdvaHsHRBL9YMYEtHl7sPw9BUxG5hhhC5oz43zDdGxapkY4QM72y3a
         QehQhaM8O3Qm4JpgnAoCjK8o3XXvERIMJOS4UFsFN44S4ykpJGhW2uMUmBKWC6Kd1x
         BSqohDrUgZ2NGRe6kz+hbQ7uYgxICpm2mT5ZFQLHwOdsCDrAaznYfDj9kuQUZZfMci
         A8nToGioaQ2mu6YjTXZKEnFDzQiBXYCZPs9MbNlO6Nzew2BrANCaAHGJFWBZgc0MTD
         qZPRdzAu1Db3w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 95DF7C43145; Thu, 19 Jan 2023 01:45:57 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216951] New: close_range(2) page missing; closefrom(2) needs
 refreshing for glibc inclusion
Date:   Thu, 19 Jan 2023 01:45:57 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: sam@gentoo.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-216951-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216951

            Bug ID: 216951
           Summary: close_range(2) page missing; closefrom(2) needs
                    refreshing for glibc inclusion
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: sam@gentoo.org
        Regression: No

This came up at
https://github.com/OpenRC/openrc/pull/541#discussion_r1070724653.

man-pages currently doesn't document closefrom(2) at all, and is outdated w=
rt
close_range(2) (it only covers the kernel uapi interface, not the fact it's=
 in
glibc & the relevant headers - in since glibc 2.34.).

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
