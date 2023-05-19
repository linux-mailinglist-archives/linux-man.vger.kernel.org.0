Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74ADD708DC8
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 04:28:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbjESC2S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 May 2023 22:28:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229655AbjESC2R (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 May 2023 22:28:17 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFD27E5C
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 19:28:14 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5F138653A1
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 02:28:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF430C4339B
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 02:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684463293;
        bh=kYtCWxi3gVZf06/SHvEFi7kdPVDJCftJ1R/xRhHe3W0=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=M4kJ/xD0IXNR8Drutu2ZuFbpt6pqSaZ3btYrOj4LrOHh+NE9qyBCZIP/Ndtrgk9Ck
         gZXTtWAV/OEBXwquNnlW9y7TrWKKZ9CV9CxgeQKIsuVi/wsY2dHG8NQQqwizcRkU5W
         Vo0/srwagWn1ydPPog+k/rR/+gTC6A5GZ137LsjCNwLW0l6GWmF7XcOCQDLWkPUNDG
         VbFm50/8+fflTBX/htkRzNncHqyUQ5hVpz1K7TLqQD9zyMiOSxcnj9NMt9GWPIgzU6
         L/mMHnBYqPD1WpDdhyTavXjPOkHyPzuzN74u/V/+OtoEmRgr3c3G/5JktKwTPakFAN
         Z+g5MfGBZu1ZA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id A7D49C43144; Fri, 19 May 2023 02:28:13 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 216667] Self-contradictory description of inheritable
 capability set
Date:   Fri, 19 May 2023 02:28:13 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: rhmcruiser@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-216667-11311-2jwcSW44IY@https.bugzilla.kernel.org/>
In-Reply-To: <bug-216667-11311@https.bugzilla.kernel.org/>
References: <bug-216667-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D216667

--- Comment #2 from Monthero Ronald (rhmcruiser@gmail.com) ---
If curious you can also check the process capabilities set and decode their
capabilities set flags for -  permitted, inherited and ambient as below.
The capabilities set can differ based on process , user and privileges=20

Example:

test$ ps alx | grep docker=20
4     0    2068       1  20   0 1834532 76808 -     Ssl  ?          0:16
/usr/bin/dockerd -H fd:// --containerd=3D/run/containerd/containerd.sock
0  1000   70187   65976  20   0  17868  2504 pipe_r S+   pts/7      0:00 gr=
ep
--color=3Dauto docker
test$=20
test$ egrep Cap  /proc/2068/status=20
CapInh: 0000000000000000
CapPrm: 000001ffffffffff
CapEff: 000001ffffffffff
CapBnd: 000001ffffffffff
CapAmb: 0000000000000000
test$=20

Decode the capability flags for this process

test$ capsh --decode=3D000001ffffffffff
0x000001ffffffffff=3Dcap_chown,cap_dac_override,cap_dac_read_search,cap_fow=
ner,cap_fsetid,cap_kill,cap_setgid,cap_setuid,cap_setpcap,cap_linux_immutab=
le,cap_net_bind_service,cap_net_broadcast,cap_net_admin,cap_net_raw,cap_ipc=
_lock,cap_ipc_owner,cap_sys_module,cap_sys_rawio,cap_sys_chroot,cap_sys_ptr=
ace,cap_sys_pacct,cap_sys_admin,cap_sys_boot,cap_sys_nice,cap_sys_resource,=
cap_sys_time,cap_sys_tty_config,cap_mknod,cap_lease,cap_audit_write,cap_aud=
it_control,cap_setfcap,cap_mac_override,cap_mac_admin,cap_syslog,cap_wake_a=
larm,cap_block_suspend,cap_audit_read,cap_perfmon,cap_bpf,cap_checkpoint_re=
store
test$

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
