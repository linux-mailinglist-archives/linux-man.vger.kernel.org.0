Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63F284E1D75
	for <lists+linux-man@lfdr.de>; Sun, 20 Mar 2022 19:49:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343519AbiCTSvK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Mar 2022 14:51:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240513AbiCTSvJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Mar 2022 14:51:09 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10AE245AE0
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 11:49:45 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 817AC61211
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 18:49:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E19D5C36AE5
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 18:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1647802184;
        bh=/OJj+TLwnOu13VAhY+fRvcY3kL2EmQ6hpY2zbSBwGrA=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=MeYHomg/wIyxtWb4xujh1Exdkvz0pmi6ScfH5tzMq6h2kOCTUp2tZ/kR3SGl1halj
         wR+wGdoqJthIRilruYWBcAz1PS70eC+7SnUs94JOIqaUTLeBr5NkapQGiZsNKtglqR
         ma/EhCFyz85hwhXquiJQztrVgHhjSDJPcAk+e7ZUAE8SIQWsjSSg4zSwRryKPrt+jf
         dTCEoE4G8xCBOV36Q2RX4cXNmkRI8Wn0o4Da2AvYb6ftoJ6bXlQmGARWOqk9/NeQM9
         9FUT6zcuRk45UqoTCSmJk+qx6CcQXLu9Z55W+YqgoZhHfSzxRCXTOa0CEu+2+bgVGN
         0EW8NeEGyc31A==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id CB2EFCC13AD; Sun, 20 Mar 2022 18:49:44 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215704] Trouble locating documentation related to disk read
 timeout /sys/block/*/device/timeout OR /sys/devices/**/timeout
Date:   Sun, 20 Mar 2022 18:49:44 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: enhancement
X-Bugzilla-Who: mjevans1983@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215704-11311-rdqfz4QSjj@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215704-11311@https.bugzilla.kernel.org/>
References: <bug-215704-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-8.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215704

--- Comment #1 from Michael Evans (mjevans1983@gmail.com) ---
I should add some context.  I want the kernel ata / sd layers to handle
unresponsive devices so that, ideally, some kind of 'this path is slow, but=
 you
can keep waiting' message is given to upper layers.  New commands should be
soft-failed with a busy state or something similar that conveys the status =
of
'stalled' without 'error' (so far).  I would also hope that any such stall =
is
handled as a barrier for the device, and any other outstanding requests ret=
ried
unless they too are returned with errors.

Somehow events, such as the dmesg entry that follows, correlate to enough
errors to 'fault' the device and knock it out of the pool (during a repair
scrub).

Thus I was looking for a Documentation file that covered the timeout
configuration file and gave guidance on if or how it should be tuned in
relation to other aspects of the disks.

The disk with these responses is a Seagate Exos X16 (ST16000NM001G-2KK103)
Firmware SN03 believed to be ATA ACS-4, 4k sector, CMR.  No errors (no pend=
ing
/ remapped sectors, no logged sectors failed).

[ 1362.163151] ata3.00: exception Emask 0x10 SAct 0x60000000 SErr 0x280100
action 0x6 frozen
[ 1362.163184] ata3.00: irq_stat 0x08000000, interface fatal error
[ 1362.163200] ata3: SError: { UnrecovData 10B8B BadCRC }
[ 1362.163216] ata3.00: failed command: READ FPDMA QUEUED
[ 1362.163230] ata3.00: cmd 60/c0:e8:28:48:d2/03:00:d9:03:00/40 tag 29 ncq =
dma
491520 in
                        res 40/00:f0:e8:4b:d2/00:00:d9:03:00/40 Emask 0x10 =
(ATA
bus error)
[ 1362.163272] ata3.00: status: { DRDY }
[ 1362.163283] ata3.00: failed command: READ FPDMA QUEUED
[ 1362.163297] ata3.00: cmd 60/40:f0:e8:4b:d2/00:00:d9:03:00/40 tag 30 ncq =
dma
32768 in
                        res 40/00:f0:e8:4b:d2/00:00:d9:03:00/40 Emask 0x10 =
(ATA
bus error)
[ 1362.163338] ata3.00: status: { DRDY }
[ 1362.163350] ata3: hard resetting link
[ 1362.476057] ata3: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[ 1362.506459] ata3.00: ACPI cmd ef/10:06:00:00:00:00 (SET FEATURES) succee=
ded
[ 1362.506465] ata3.00: ACPI cmd f5/00:00:00:00:00:00 (SECURITY FREEZE LOCK)
filtered out
[ 1362.506467] ata3.00: ACPI cmd b1/c1:00:00:00:00:00 (DEVICE CONFIGURATION
OVERLAY) filtered out
[ 1362.564800] ata3.00: ACPI cmd ef/10:06:00:00:00:00 (SET FEATURES) succee=
ded
[ 1362.564815] ata3.00: ACPI cmd f5/00:00:00:00:00:00 (SECURITY FREEZE LOCK)
filtered out
[ 1362.564817] ata3.00: ACPI cmd b1/c1:00:00:00:00:00 (DEVICE CONFIGURATION
OVERLAY) filtered out
[ 1362.603044] ata3.00: configured for UDMA/133
[ 1362.603061] sd 2:0:0:0: [sdc] tag#29 FAILED Result: hostbyte=3DDID_OK
driverbyte=3DDRIVER_OK cmd_age=3D0s
[ 1362.603065] sd 2:0:0:0: [sdc] tag#29 Sense Key : Illegal Request [curren=
t]=20
[ 1362.603067] sd 2:0:0:0: [sdc] tag#29 Add. Sense: Unaligned write command
[ 1362.603070] sd 2:0:0:0: [sdc] tag#29 CDB: Read(16) 88 00 00 00 00 03 d9 =
d2
48 28 00 00 03 c0 00 00
[ 1362.603071] I/O error, dev sdc, sector 16539338792 op 0x0:(READ) flags 0=
x700
phys_seg 15 prio class 0
[ 1362.603129] zio pool=3DREDACTED vdev=3D/dev/disk/by-partlabel/REDACTED e=
rror=3D5
type=3D1 offset=3D... size=3D491520 flags=3D40080cb0
[ 1362.603239] sd 2:0:0:0: [sdc] tag#30 FAILED Result: hostbyte=3DDID_OK
driverbyte=3DDRIVER_OK cmd_age=3D0s
[ 1362.603276] sd 2:0:0:0: [sdc] tag#30 Sense Key : Illegal Request [curren=
t]=20
[ 1362.603332] sd 2:0:0:0: [sdc] tag#30 Add. Sense: Unaligned write command
[ 1362.603337] sd 2:0:0:0: [sdc] tag#30 CDB: Read(16) 88 00 00 00 00 03 d9 =
d2
4b e8 00 00 00 40 00 00
[ 1362.603389] I/O error, dev sdc, sector 16539339752 op 0x0:(READ) flags 0=
x700
phys_seg 1 prio class 0
[ 1362.603738] zio pool=3DREDACTED vdev=3D/dev/disk/by-partlabel/REDACTED e=
rror=3D5
type=3D1 offset=3D... size=3D32768 flags=3D1808b0
[ 1362.604011] ata3: EH complete

FAULTED     17     0     0  too many errors  (repairing)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
