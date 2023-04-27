Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58FA56F0321
	for <lists+linux-man@lfdr.de>; Thu, 27 Apr 2023 11:10:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242902AbjD0JKi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 27 Apr 2023 05:10:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243361AbjD0JKg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 27 Apr 2023 05:10:36 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 584921A6
        for <linux-man@vger.kernel.org>; Thu, 27 Apr 2023 02:10:35 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EA13463AB2
        for <linux-man@vger.kernel.org>; Thu, 27 Apr 2023 09:10:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 50FC8C433D2
        for <linux-man@vger.kernel.org>; Thu, 27 Apr 2023 09:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1682586634;
        bh=NJx3f+sUmiz2uuHxsitHrkOATfPG/HLqlkjXvfYHeDY=;
        h=From:To:Subject:Date:From;
        b=WvC9UNkWiqrArCAacYHJ+d7Pv2c4sZIs7Yr93DwDfq05+Yapej2FJU9LeeMm9dJ0v
         nJestiuKMj033qVz95PTMjN+4fpUPvDeZ8AMyvhO/DIQZ6IbonhI4fOoQ6jGWzTRQ1
         VuUzNZ3iJwCe+o7+76dg54YqpLLTKC1O7Aw7WmqFKkNrHheV+9xgSpelixIO8X72vd
         R0Rqgign/RRqXk04kL1jgjhWrixcuc3SN47l2qwo7SYDFNXP/Po09KDKBjzRvFO8a9
         L2X2TF3so9Qg5/NI16MNElyKUtvE7hr2jdzhoPmy3dbKH9bLzlPCLyuZ/v72FJWqc9
         virPN5527S4Ew==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 35C91C43141; Thu, 27 Apr 2023 09:10:34 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217375] New: Add information about intel_pstate active mode in
 admin-guide/kernel-parameters.txt
Date:   Thu, 27 Apr 2023 09:10:33 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: natesh9261@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-217375-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D217375

            Bug ID: 217375
           Summary: Add information about intel_pstate active mode in
                    admin-guide/kernel-parameters.txt
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: natesh9261@gmail.com
        Regression: No

Information about intel_pstate active mode is added in the doc.
    This operation mode could be used to set on the hardware when it's
    not activated. Status of the mode could be checked from sysfs file
    i.e., /sys/devices/system/cpu/intel_pstate/status.
    The information is already available in cpu-freq/intel-pstate.txt
    documentation.

    Link: https://www.kernel.org/doc/Documentation/cpu-freq/intel-pstate.txt

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
