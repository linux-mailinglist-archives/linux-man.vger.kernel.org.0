Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 087AC4AA183
	for <lists+linux-man@lfdr.de>; Fri,  4 Feb 2022 22:00:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238117AbiBDVAi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Feb 2022 16:00:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232318AbiBDVAi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Feb 2022 16:00:38 -0500
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C6EEC061714
        for <linux-man@vger.kernel.org>; Fri,  4 Feb 2022 13:00:35 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id my12-20020a17090b4c8c00b001b528ba1cd7so7240853pjb.1
        for <linux-man@vger.kernel.org>; Fri, 04 Feb 2022 13:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RgFej5t31/nyCWf1fyHFQ5aC31gKoytscrlSyoiWj+o=;
        b=A/BLQ6uNTaiqXhqryxosEzeAb5dsSzq0VAUDP4Mw3ZGrKM85hxySkz2+SDIkazoplR
         TuJS0Si4fuARsamw8rEWmZ1TUzdD+81axzso0mgubamnglx93yWf9oiKdOrfihmtRl2d
         JByC0ckSgsgGDEzDAtaW80VnUnt/NuXKGEMsqQ0kH6GG+fBsY+QBrJ4LsY/pjUdjkLUY
         APFDxyfPKSJDY8eVLISBA16MwBu95s1iIVj5MoIqFhzhWrbfcmXpFT0hki6HxSYE2ulG
         ytMfHks3u/C35FThUxYsrbtQbQDS4rQzvw4Q0YZrcsKApwI4z6muwnBNwLoqCQIqrbC7
         jUNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RgFej5t31/nyCWf1fyHFQ5aC31gKoytscrlSyoiWj+o=;
        b=ExAW/sr0nWkrarV0rTGzfO6Mr0JMYT5cMsuHQ6kh/XZbn4zMO7wxpu0JbamJVeRZ2R
         NAkuzH4Ct/vxfg5VECbL9aYV7Av98ilxIDmjTZlCViHGsJkMsB51pnpPl9QwYeL0eN92
         IDkdhW8Rd+hzNxbE1ijaMIz7Cgzs2ZIHlfIGni9mEExEP2+Q/IYCrocDQ6pqN837prIr
         BJ3NDjy+bjZEXE8klAIC+pjLwseY3sx/j2Si/rEhjkqs6amu/lHneJ8FxkFmLvOSRthf
         VjfIvi2zuLXTP9H9B5S1R7lxpH4ulceSzbUZ9MmoHlZdqAfyTCCuMpv53/7aBmI/H0mi
         yAxQ==
X-Gm-Message-State: AOAM532+arRFG1OuoYyLk56LFP12z/hmku+/JHgHVX2P9LZkImWAiAvT
        6iOq6kaHu3CoXTiqQdv7hB3OHbQJ5ok=
X-Google-Smtp-Source: ABdhPJxiyOgo7biWbqdLwrYZ0WTstSHwA7VMOkUT/VFB/DuyY+dWl1SaGGMCjFSZfO9VIWuYSB5Fug==
X-Received: by 2002:a17:902:c94c:: with SMTP id i12mr5172642pla.16.1644008434132;
        Fri, 04 Feb 2022 13:00:34 -0800 (PST)
Received: from kir-rhat.lan (c-76-104-243-248.hsd1.wa.comcast.net. [76.104.243.248])
        by smtp.gmail.com with ESMTPSA id c11sm3562800pfv.76.2022.02.04.13.00.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 13:00:33 -0800 (PST)
From:   Kir Kolyshkin <kolyshkin@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Kir Kolyshkin <kolyshkin@gmail.com>
Subject: [PATCH] capabilities.7: improve internal references
Date:   Fri,  4 Feb 2022 13:00:21 -0800
Message-Id: <20220204210021.1340700-1-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Trying to make this man page easier to navigate.

Fix a few cases of "see above/below" without a specific reference to a
subsection by quoting the subsection name (making it easier to look it up).
Use the same formatting rule as used by some of the other existing
references, i.e. italicise it.

For uniformity, remove words such as "the subsection" and "under", using
"(see|described in) <subsection title> (above|below)" template.

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man7/capabilities.7 | 65 ++++++++++++++++++++++++++++-----------------
 1 file changed, 41 insertions(+), 24 deletions(-)

diff --git a/man7/capabilities.7 b/man7/capabilities.7
index c65524496..d524288b0 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -398,7 +398,7 @@ write a user ID mapping in a user namespace (see
 .B CAP_SYS_ADMIN
 .IR Note :
 this capability is overloaded; see
-.IR "Notes to kernel developers" ,
+.I Notes to kernel developers
 below.
 .IP
 .PD 0
@@ -952,7 +952,9 @@ Since Linux 2.6.25, this is a per-thread capability set.
 In older kernels, the capability bounding set was a system wide attribute
 shared by all threads on the system.
 .IP
-For more details on the capability bounding set, see below.
+For more details, see
+.I Capability bounding set
+below.
 .TP
 .IR Ambient " (since Linux 4.3)"
 .\" commit 58319057b7847667f0c9585b9de0e8932b0fdb08
@@ -983,12 +985,17 @@ this does not trigger the secure-execution mode described in
 A child created via
 .BR fork (2)
 inherits copies of its parent's capability sets.
-See below for a discussion of the treatment of capabilities during
-.BR execve (2).
+For details on how
+.BR execve (2)
+affects capabilities, see
+.I Transformation of capabilities during execve()
+below.
 .PP
 Using
 .BR capset (2),
-a thread may manipulate its own capability sets (see below).
+a thread may manipulate its own capability sets; see
+.I Programmatically adjusting capability sets
+below.
 .PP
 Since Linux 3.2, the file
 .I /proc/sys/kernel/cap_last_cap
@@ -1042,7 +1049,9 @@ Enabling the file effective capability bit implies
 that any file permitted or inheritable capability that causes a
 thread to acquire the corresponding permitted capability during an
 .BR execve (2)
-(see the transformation rules described below) will also acquire that
+(see
+.I Transformation of capabilities during execve()
+below) will also acquire that
 capability in its effective set.
 Therefore, when assigning capabilities to a file
 .RB ( setcap (8),
@@ -1080,7 +1089,7 @@ it automatically uses the version 2 scheme
 .BR VFS_CAP_REVISION_3 " (since Linux 4.14)"
 .\" commit 8db6c34f1dbc8e06aa016a9b829b06902c3e1340
 Version 3 file capabilities are provided
-to support namespaced file capabilities (described below).
+to support namespaced file capabilities, described below.
 .IP
 As with version 2 file capabilities,
 version 3 capability masks are 64 bits in size.
@@ -1249,8 +1258,9 @@ its permitted and effective sets will be cleared.
 For the treatment of capabilities when a process with a
 user ID of zero performs an
 .BR execve (2),
-see below under
-.IR "Capabilities and execution of programs by root" .
+see
+.I Capabilities and execution of programs by root
+below.
 .\"
 .SS Safety checking for capability-dumb binaries
 A capability-dumb binary is an application that has been
@@ -1306,8 +1316,9 @@ If the real or effective user ID of the process is 0 (root),
 then the file inheritable and permitted sets are ignored;
 instead they are notionally considered to be all ones
 (i.e., all capabilities enabled).
-(There is one exception to this behavior, described below in
-.IR "Set-user-ID-root programs that have file capabilities" .)
+(There is one exception to this behavior, described in
+.I Set-user-ID-root programs that have file capabilities
+below.)
 .IP 2.
 If the effective user ID of the process is 0 (root) or
 the file effective bit is in fact enabled,
@@ -1346,8 +1357,9 @@ can be disabled using the securebits mechanism described below.
 .\"
 .\"
 .SS Set-user-ID-root programs that have file capabilities
-There is one exception to the behavior described under
-.IR "Capabilities and execution of programs by root" .
+There is one exception to the behavior described in
+.I Capabilities and execution of programs by root
+above.
 If (a) the binary that is being executed has capabilities attached and
 (b) the real user ID of the process is
 .I not
@@ -1611,17 +1623,18 @@ operation.
 Setting this flag stops the kernel from adjusting the process's
 permitted, effective, and ambient capability sets when
 the thread's effective and filesystem UIDs are switched between
-zero and nonzero values.
-(See the subsection
-.IR "Effect of user ID changes on capabilities" .)
+zero and nonzero values. See
+.I Effect of user ID changes on capabilities
+above.
 .TP
 .B SECBIT_NOROOT
 If this bit is set, then the kernel does not grant capabilities
 when a set-user-ID-root program is executed, or when a process with
 an effective or real UID of 0 calls
 .BR execve (2).
-(See the subsection
-.IR "Capabilities and execution of programs by root" .)
+(See
+.I Capabilities and execution of programs by root
+above.)
 .TP
 .B SECBIT_NO_CAP_AMBIENT_RAISE
 Setting this flag disallows raising ambient capabilities via the
@@ -1695,10 +1708,11 @@ or any descendant user namespace.
 .PP
 The rules about the transformation of the process's capabilities during the
 .BR execve (2)
-are exactly as described in the subsections
-.IR "Transformation of capabilities during execve()"
+are exactly as described in
+.I Transformation of capabilities during execve()
 and
-.IR "Capabilities and execution of programs by root" ,
+.I Capabilities and execution of programs by root
+above,
 with the difference that, in the latter subsection, "root"
 is the UID of the creator of the user namespace.
 .\"
@@ -1709,8 +1723,9 @@ Traditional (i.e., version 2) file capabilities associate
 only a set of capability masks with a binary executable file.
 When a process executes a binary with such capabilities,
 it gains the associated capabilities (within its user namespace)
-as per the rules described above in
-"Transformation of capabilities during execve()".
+as per the rules described in
+.I Transformation of capabilities during execve()
+above.
 .PP
 Because version 2 file capabilities confer capabilities to
 the executing process regardless of which user namespace it resides in,
@@ -1732,7 +1747,9 @@ Namespaced file capabilities are recorded as version 3 (i.e.,
 .I security.capability
 extended attributes.
 Such an attribute is automatically created in the circumstances described
-above under "File capability extended attribute versioning".
+in
+.I File capability extended attribute versioning
+above.
 When a version 3
 .I security.capability
 extended attribute is created,
-- 
2.34.1

