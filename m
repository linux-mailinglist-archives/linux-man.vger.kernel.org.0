Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7637E64428D
	for <lists+linux-man@lfdr.de>; Tue,  6 Dec 2022 12:55:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233811AbiLFLzC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Dec 2022 06:55:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233702AbiLFLzB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Dec 2022 06:55:01 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18694BC10
        for <linux-man@vger.kernel.org>; Tue,  6 Dec 2022 03:55:01 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AAA28616DC
        for <linux-man@vger.kernel.org>; Tue,  6 Dec 2022 11:55:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12ED7C433B5
        for <linux-man@vger.kernel.org>; Tue,  6 Dec 2022 11:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1670327700;
        bh=mZwn3I+SC+1I9bfdGQGFBtYBIt/vKXDwhk4k+yc47Sw=;
        h=From:To:Subject:Date:From;
        b=La7N6gHf0nV/6foSU+UcfitUphoUVxXkTUDq9M7Nymz6AQX9LKvgsmiqDSSb5r/Lc
         wlpr4kYHC/fSByKCJRHF/Se0F6x7SXtSSm2nLFFZatxs+lgMLiHIOBYu8rZgGTeXy+
         XN0ytVcYYLgutUpf2zpBGH6aVCGL3Zcsxd8QortK/r4Es0xVz702dhaEiTNne03lGR
         GZx06vyhAufHfvjZAdiQAAsTjR97TwmPb21QSXzfXAal0aLw6BXtuldAoNgdfXAW4Q
         BtYrEqwm+vORwd5fme+byz/qBUDmxwk49OpWkNSttC9fTf9G4sUM1rQRSmzN2BtsSo
         /oIqV4dq0jX0Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id F3975C433EA; Tue,  6 Dec 2022 11:54:59 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216778] New: dark force-71
Date:   Tue, 06 Dec 2022 11:54:59 +0000
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
 cf_regression
Message-ID: <bug-216778-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D216778

            Bug ID: 216778
           Summary: dark force-71
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

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
