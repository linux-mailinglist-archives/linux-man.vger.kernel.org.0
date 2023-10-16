Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D50867CB5CE
	for <lists+linux-man@lfdr.de>; Mon, 16 Oct 2023 23:56:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234255AbjJPV4P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Oct 2023 17:56:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234261AbjJPV4N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Oct 2023 17:56:13 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4263DF7
        for <linux-man@vger.kernel.org>; Mon, 16 Oct 2023 14:56:12 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB75FC433CC
        for <linux-man@vger.kernel.org>; Mon, 16 Oct 2023 21:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697493371;
        bh=GBvQ4to4S5d2QeBuAddbF2VbjerubeSl2rV8pTGyE+U=;
        h=From:To:Subject:Date:From;
        b=aj6Uca/oDDyyqXH+DTSjHbQBjJSRJ3F20K3OI60KBC+7VQqYSW2v3AN7pVsO2874O
         MUL8MCUeLqCe30ZSOIj5KxOfvJbKvVlt7lvtRLDGnCP4Lyo48h3Qf8TlGPo2+HdHLN
         XevTGwlZi+iONA+1wYqRPpxjpkoaEOn8d3lMYVUQdOhAeAiUH5SIMOw+wqljtpCyQu
         Ajn9I99J2MdmJpLgrHuPPPDEc+yIcczOo3fPG8X2Ry+FyyzwuAEOEgZtkNB7bn5kyx
         AANBU293AJFlgTDyA+CAVp2M4V6StkjFHQ1lWOYDONYRB9PaDjc2QjWOKv5dOuFZ4M
         Mu7LxpcmcNPeg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id C6B00C53BD3; Mon, 16 Oct 2023 21:56:11 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 218018] New: dl_iterate_phdr should mention Elf64_Phdr (in
 addition to Elf32_Phdr).
Date:   Mon, 16 Oct 2023 21:56:11 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: ppluzhnikov@google.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-218018-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D218018

            Bug ID: 218018
           Summary: dl_iterate_phdr should mention Elf64_Phdr (in addition
                    to Elf32_Phdr).
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: ppluzhnikov@google.com
        Regression: No

dl_iterate_phdr should mention Elf64_Phdr (in addition to Elf32_Phdr).
Currently the man page says:

These program headers are structures of the following form:
  typedef { ... } Elf32_Phdr;

which is obviously wrong for 64-bit binaries.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
