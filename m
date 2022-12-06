Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 388866442E0
	for <lists+linux-man@lfdr.de>; Tue,  6 Dec 2022 13:05:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235349AbiLFMFV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Dec 2022 07:05:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235376AbiLFMEv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Dec 2022 07:04:51 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E9E22A96D
        for <linux-man@vger.kernel.org>; Tue,  6 Dec 2022 04:02:17 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 3B3ACB819D0
        for <linux-man@vger.kernel.org>; Tue,  6 Dec 2022 12:02:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD948C4347C
        for <linux-man@vger.kernel.org>; Tue,  6 Dec 2022 12:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1670328134;
        bh=MGqMYaedHPa9tk8cYbXjqYv22Pxe5tE+dFJTA4rJ4Us=;
        h=From:To:Subject:Date:From;
        b=X0lKz/2QaBjQ8gi11Cfb+rDynrWB2ZFfja3AOqmzyDZeyo80tziPHwFSH1pfGLB9O
         jZ/Y5SyQv97YUQL072Cjqm+1JFkFMvUsU25OkM9lvqAQG3YgBESiOATJQjKmanajUd
         FNc7ozZCLUJlmHe3CRmPQuUP9i7+e3T7n1FSFSDOCeH5X9LWi4IOnU1JbScgGmu52E
         3p5aZm7PIUj/uP0zGFXIwRbBK99QqARdRETbHQwGhVMBYGTXXMkM720aX3yoCcTyA8
         ifAA4V5P47c+0uDm1Ww2RJ6C3si1CvvZDnlALzxP4W7nbYCW2hd17GghMJ6XvSs9k3
         /3njMHh7f0TIw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id C24E6C433EA; Tue,  6 Dec 2022 12:02:14 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216779] New: dark force
Date:   Tue, 06 Dec 2022 12:02:14 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: skbrothers7127@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression attachments.created
Message-ID: <bug-216779-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216779

            Bug ID: 216779
           Summary: dark force
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: skbrothers7127@gmail.com
        Regression: No

Created attachment 303367
  --> https://bugzilla.kernel.org/attachment.cgi?id=3D303367&action=3Dedit
dark force-71

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
