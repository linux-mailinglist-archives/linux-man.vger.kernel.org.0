Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91D6B777AFD
	for <lists+linux-man@lfdr.de>; Thu, 10 Aug 2023 16:42:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233066AbjHJOmK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Aug 2023 10:42:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235961AbjHJOmB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Aug 2023 10:42:01 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A1E22698
        for <linux-man@vger.kernel.org>; Thu, 10 Aug 2023 07:42:01 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9DBA565E8A
        for <linux-man@vger.kernel.org>; Thu, 10 Aug 2023 14:42:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E766C433CA
        for <linux-man@vger.kernel.org>; Thu, 10 Aug 2023 14:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691678520;
        bh=BXPCcBPeIKjTUDt7M2BMyYnmWH8k1vOYaAfZYlPKICM=;
        h=From:To:Subject:Date:From;
        b=hpbMXCOgnhxfSgAZ4tFmfrE+/7RY/4I0aMgl0tqWR7xrXKVlSRvcNDLDnpvC1eI0p
         1C5DXUdcCoLUSDQLVEWNnyxMfdYYwXexFRdbcK5867gtrztZIoFCZK7Sc55XgLYRoq
         w64BaJBQHj85pwv5hc/6+IZ9NjTVNYyNXDWUhJNPQxYD6LL6OcPNYsLQ3mM7SPoD18
         7UkIdr2MC3mP45puZiQmtH9h77cpwKJphOQMJ+bzJ84cx473tfN8ZNKM8vPRCzQkc9
         1bUn+gIu7b4Za/kzjg4t7cnhJmrI2n+I73MggRbD61HfhKZcjjNAS5q0NapXg07f4O
         Trh6wZ3jysA7Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id E693BC53BC6; Thu, 10 Aug 2023 14:41:59 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 217783] New: Documentation: networking/can.rst contains
 incorrect definition for bcm_head_msg
Date:   Thu, 10 Aug 2023 14:41:59 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: kjeremy@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-217783-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217783

            Bug ID: 217783
           Summary: Documentation: networking/can.rst contains incorrect
                    definition for bcm_head_msg
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: kjeremy@gmail.com
        Regression: No

The documentation for bcm_msg_head is as follows in the doc:


struct bcm_msg_head {
        __u32 opcode;                   /* command */
        __u32 flags;                    /* special flags */
        __u32 count;                    /* run 'count' times with ival1 */
        struct timeval ival1, ival2;    /* count and subsequent interval */
        canid_t can_id;                 /* unique can_id for task */
        __u32 nframes;                  /* number of can_frames following */
        struct can_frame frames[0];
};


The last member is incorrect and should be `struct can_frame frames[];`.
This causes problems with documentation further down that suggests using a
super struct:=20

struct {
        struct bcm_msg_head msg_head;
        struct canfd_frame frame[5];
} msg;

which is illegal in later GCC versions with C++

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
