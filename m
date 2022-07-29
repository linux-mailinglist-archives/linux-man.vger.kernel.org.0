Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6151584F7E
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 13:21:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232959AbiG2LVR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 07:21:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236051AbiG2LVN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 07:21:13 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96F178720C
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:21:05 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 176D0B8279A
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 11:21:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D291CC433B5
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 11:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1659093662;
        bh=W7KV/NudGWv0LL0FFKraoWxmCGEXKUfVRtzcPvdXZgU=;
        h=From:To:Subject:Date:From;
        b=nIWgqXhWS+RG2X9DIKfqHxbPwDjkukvOCw2VGc6t4qelSwod6FlN26MAJJT2wfxFh
         N5mV8Htn4NvWs5g6XVyU2rhzuIkeu7Kl3BsWclFBu33dD7m3pXoY7RccgwYdj7TLdS
         Nq2f8hiGPMWNryCzAlo2egF/TV8yPSxuP5zd8zFQ92J8+LDjFRPqhxQVTN6hggkT7B
         YPHazvf/3f0L126KOnug+QYhdmOzoe6goqWV9sQhwxVnSfHCA2dxS0eP96mWGo76Ep
         hGzmEtxZKYa+A9YYfuyBg0TGbXA6t3JjnsprqFBfxh4O9Xj5pRH22li8GKn3N3XG55
         DZW3k/yuDt4xw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id C0383C433E6; Fri, 29 Jul 2022 11:21:02 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216304] New: ip(7) IP_MTU_DISCOVER description is incomplete
Date:   Fri, 29 Jul 2022 11:21:02 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: pspacek@isc.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-216304-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216304

            Bug ID: 216304
           Summary: ip(7) IP_MTU_DISCOVER description is incomplete
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: pspacek@isc.org
        Regression: No

Two Path MTU discovery values are missing in man 7 ip:
- IP_PMTUDISC_INTERFACE
- IP_PMTUDISC_OMIT
Those are mentioned in include/uapi/linux/in.h.

/proc/sys/net/ipv4/ip_no_pmtu_disc accepts other values than 0 and 1. This =
is
mentioned in Documentation/networking/ip-sysctl.rst.

Also, I have a bad feeling that conditions when Don't Fragment flag is set =
is
somehow incomplete but I cannot really point finger on it. I apologize for
being so vague!

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
