Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DFB35FE87D
	for <lists+linux-man@lfdr.de>; Fri, 14 Oct 2022 07:55:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbiJNFzK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Oct 2022 01:55:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbiJNFzJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Oct 2022 01:55:09 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B34353A66
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 22:55:08 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 43B97619F7
        for <linux-man@vger.kernel.org>; Fri, 14 Oct 2022 05:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A242DC43470
        for <linux-man@vger.kernel.org>; Fri, 14 Oct 2022 05:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1665726907;
        bh=h1hrODiZAHp8hjH+ZAo+MovmzyKB48DNVf3O5mUxbLY=;
        h=From:To:Subject:Date:From;
        b=s5qZye/KEkfxg74+XT1SjlCEq186vyR+ONkuJoBYjI4rPZcyp/BflwOeFwwWEqQ1l
         HiGmjFhSgy36tExKeYOJQu9kAsH953z03BUtTT254NrNdxQ6gezqQ9Vr9mGxZzBvAP
         +lgLSY52SvaEIyjMepE9c5wAOhjBa7BScQRAa2fEOCvMNY7G8LS9K+vf6RCA9sJpJ/
         ojRp32T1vkc+lhNUClar+fSyRAcUZ2qBlvlkGQ44yZXRdAxZcZOhW7PmCUwbGXDDsJ
         sTs1H6TVBmDDnAgWu4vHzd1FaOL/OrX6EjwM7jZtNhL+9cIU3OYZVe+AVazhHHl58m
         ZWKkt39Fy3POg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 89DF4C433EA; Fri, 14 Oct 2022 05:55:07 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216584] New: Undocumented mount option subset=pids for proc
Date:   Fri, 14 Oct 2022 05:55:07 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: linux@philippwendler.de
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-216584-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216584

            Bug ID: 216584
           Summary: Undocumented mount option subset=3Dpids for proc
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: linux@philippwendler.de
        Regression: No

Since Linux 5.8, proc can be mounted with options subset=3Dpids to hide all
non-task-related information. This is missing from proc(5).

Original patch:
https://lore.kernel.org/all/20200423200316.164518-6-gladkov.alexey@gmail.co=
m/

The kernel documentation shows the option:
https://www.kernel.org/doc/html/latest/filesystems/proc.html#mount-options

This option is useful when mounting proc for a container nested for example=
 in
a Docker container that hides certain parts of /proc, otherwise one is not
allowed to mount /proc
(https://lkml.kernel.org/lkml/cover.1597931457.git.gladkov.alexey@gmail.com=
/).
It might be useful to add a note about this as well.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
