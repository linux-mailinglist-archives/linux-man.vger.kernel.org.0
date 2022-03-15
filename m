Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18AEF4D9A21
	for <lists+linux-man@lfdr.de>; Tue, 15 Mar 2022 12:15:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347901AbiCOLQW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Mar 2022 07:16:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347482AbiCOLQV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Mar 2022 07:16:21 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BAA563D8
        for <linux-man@vger.kernel.org>; Tue, 15 Mar 2022 04:15:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 126A3B81230
        for <linux-man@vger.kernel.org>; Tue, 15 Mar 2022 11:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE924C340F4
        for <linux-man@vger.kernel.org>; Tue, 15 Mar 2022 11:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1647342907;
        bh=PKD+/rwcgJlaUlvuL1Oj1yas2Y7xr3EasOqn38Uutjw=;
        h=From:To:Subject:Date:From;
        b=WGnHOCGaHrlzJSqGz+dgbbDbSNIz6PlAP+g0YVqj6lVuSjGPktIxN4ghaZ77N8Rif
         hFm8GrpmDifOzCK82I+C0tDEzd2OElxUgtPfBv5V067GVR9XR3mNPojUOdus1A+xDG
         FoFFARPXvg3WL1iGvk8VBI+gA4St53M/OEjdf3H2gafwe9ZgK49ZpCnUnNvacPEAKB
         x0F2gf9IckpJJ7o4NjQBqh4EUa7PxDF7mSJrFJ8Nf9Yf8cr/qzm6EeWLLTvei5KFXg
         2oSmhBLmnI97S9O2Trd7YNb3W9n8hqXJkNOLXAm/UfSDvKMx98N14fpNBRn115IDta
         U/BZkREgujPeQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 94049C05FCE; Tue, 15 Mar 2022 11:15:07 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215688] New: Wrong information on powerpc in syscall(2)
Date:   Tue, 15 Mar 2022 11:15:07 +0000
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
Message-ID: <bug-215688-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D215688

            Bug ID: 215688
           Summary: Wrong information on powerpc in syscall(2)
           Product: Documentation
           Version: unspecified
          Hardware: PPC-32
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: christophe.leroy@csgroup.eu
        Regression: No

In the "Architecture calling conventions" table, the "error" is wrong for
powerpc. It should be cr0.SO like powerpc64.

Note [1] should say powerpc as well.

In the second table, there should be no arg7 for powerpc.

Also I see no need to distinguish between powerpc and powerpc64.
For everything in this page powerpc/32 and powerpc/64 are doing exactly the
same.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
