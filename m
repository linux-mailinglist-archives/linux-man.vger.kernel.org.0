Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E7197E134D
	for <lists+linux-man@lfdr.de>; Sun,  5 Nov 2023 13:13:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229527AbjKEMNt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Nov 2023 07:13:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbjKEMNs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Nov 2023 07:13:48 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34547C5
        for <linux-man@vger.kernel.org>; Sun,  5 Nov 2023 04:13:46 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAC4C433CC
        for <linux-man@vger.kernel.org>; Sun,  5 Nov 2023 12:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699186425;
        bh=dvwMz0vO5wDsMtu9hAAapCyl6o6Uen5HwgI+IRlkjbk=;
        h=From:To:Subject:Date:From;
        b=OsJcllUCIEsDGjI383uaz3gl64YmPyLX6kezIDIq+92rwXTdqssF4CpPuaCbbS5oD
         2CQmddbDAm2r2OVo3YjVA3Mhm1JsYXNrTpy1le+Nlu73K67os9T1eoLflMjsme0Er8
         rbTm6UsR77xSKAJt0XOx9ny3g274+oC1cpWRXM+3rjkpy2AIkAq0eHc2d903z4l4kX
         jm1jY5cHVG+Wn4S8BjIgA2L63nu63o19p7ZFPEvfzvoSY8friOY6F9hxUNHlWLbqCu
         YEzynjZqDA5esuTzXxXH+BeHgDSZWXx+WQO5QyS+sjD74SbEg3YmPsAR6e/k18DZVh
         KGL2x50RwVFng==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id C1711C53BD3; Sun,  5 Nov 2023 12:13:45 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 218105] New: Incorrect path name in description of creating a
 threaded cgroups tree
Date:   Sun, 05 Nov 2023 12:13:45 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: goeran@uddeborg.se
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-218105-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D218105

            Bug ID: 218105
           Summary: Incorrect path name in description of creating a
                    threaded cgroups tree
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: goeran@uddeborg.se
        Regression: No

The manual page for cgroups.7 explains how to create a threaded subtree in =
this
way:

    1. In an existing cgroup, z, that currently has the type domain, we (1)
       enable  one  or  more  threaded controllers and (2) make a process a
       member of z.  (These two steps can be done in either  order.)   This
       has the following consequences:

       *  The type of z becomes domain threaded.

       *  All  of the descendant cgroups of x that were not already of type
          threaded are converted to type domain invalid.

Where the last bullet talks about "x", it should surely talk about "z".

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
