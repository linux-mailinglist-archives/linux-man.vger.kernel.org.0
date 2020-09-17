Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EFDA26E272
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 19:32:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726549AbgIQRc2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 13:32:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726343AbgIQRcX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 13:32:23 -0400
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com [IPv6:2607:f8b0:4864:20::741])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8D16C06178B;
        Thu, 17 Sep 2020 10:31:52 -0700 (PDT)
Received: by mail-qk1-x741.google.com with SMTP id t138so3111591qka.0;
        Thu, 17 Sep 2020 10:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AKD/9E79SiZQSW8oLqIokHA8vYGAi3tIl8g3KfMvNZo=;
        b=i7O5uCFiTKcXzgLkwDex6HWSQBoUI+9kgqEAVg2IH/LpTwrClxKKk48Hku+F9EaVEj
         ik/CjXF+lBlDqP6VAi6xR5NYYcLqNgA3afDwEQEo6/zb5T2v2Ag+YMtxbm5E2qoe8z70
         mnl6tDHo5gMC/OehcctCXL2bhQgDrmj2nogKnA5PocP1/o/8VUDM9VOuhVIrSnMN93fB
         q5BweGKQuuWvdkEcrotqmZht9Hj1YvKOXMr0H8acngAvsJE9IWX6nHObFtoOipQIpuaz
         UmSNjz1X7WKQ55jMtPjBR81Q9Wi5l9FgtvDeOzIcXMN/ptl3E0NVxr584KxtJ2YYBLuS
         mmOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AKD/9E79SiZQSW8oLqIokHA8vYGAi3tIl8g3KfMvNZo=;
        b=cTZctJMH9XkfDjIrURSWTJvqFCHiU079barNXca4eR22+ihFqCO351X++ZKxWlXETu
         HQ+WAp5gP1tHCh7dxJ+KoT5cKDMfWRyQmFD1Jw1w690F+X5ElNhYMlaBwgI8cam/Kywx
         Bl4G8KrT8ortg+3OoaN8MxGGO4CnU85/gJ8lXG8gBRAb0ZOExzCwafZKQ+SqRDMFrm42
         UhfG/REKF6gcAvGT5uVxBc/kiFJE0TggjDa/ZvJxOz7WB1WiHJ13OkR/hSpetM5Z7TOa
         3epLuiGKCDh4IyNvoSqI7bzHAjvFXQiuHTHnWfubuEGc+XTT0X9yUdHXNRUqaQjpRBKT
         1imw==
X-Gm-Message-State: AOAM5300PwifwQiL2DpTBWF6o5Nhjv33mQytD7p4Df61PDN5UUz0ci5z
        U0RsnBZYh4LLvoG9omWEDkk=
X-Google-Smtp-Source: ABdhPJw7RbnGGgOX1j37sVcKkhBWi28KOF3PvRne37dN6DIZIQo2h0vEj4EjBDtBZObYBFIXls2IVQ==
X-Received: by 2002:a37:54a:: with SMTP id 71mr26161702qkf.407.1600363912118;
        Thu, 17 Sep 2020 10:31:52 -0700 (PDT)
Received: from puritycontrol.fios-router.home (pool-96-234-167-227.bltmmd.fios.verizon.net. [96.234.167.227])
        by smtp.gmail.com with ESMTPSA id z3sm277480qkf.92.2020.09.17.10.31.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 10:31:51 -0700 (PDT)
From:   Stephen Smalley <stephen.smalley.work@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        selinux@vger.kernel.org, smcv@collabora.com, jmorris@namei.org,
        serge@hallyn.com, paul@paul-moore.com,
        Stephen Smalley <stephen.smalley.work@gmail.com>
Subject: [PATCH] ip.7: Document IP_PASSSEC for UDP sockets
Date:   Thu, 17 Sep 2020 13:31:43 -0400
Message-Id: <20200917173143.57241-1-stephen.smalley.work@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Document the IP_PASSSEC socket option and SCM_SECURITY
ancillary/control message type for UDP sockets.

IP_PASSSEC for UDP sockets was introduced in Linux 2.6.17 [1].

Example NetLabel and IPSEC configurations and usage of this option
can be found in the SELinux Notebook [2] and SELinux testsuite [3].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2c7946a7bf45ae86736ab3b43d0085e43947945c

[2] https://github.com/SELinuxProject/selinux-notebook

[3] https://github.com/SELinuxProject/selinux-testsuite

Signed-off-by: Stephen Smalley <stephen.smalley.work@gmail.com>
---
 man7/ip.7 | 48 ++++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 42 insertions(+), 6 deletions(-)

diff --git a/man7/ip.7 b/man7/ip.7
index 03a9f3f7c..681234c90 100644
--- a/man7/ip.7
+++ b/man7/ip.7
@@ -17,11 +17,6 @@
 .\" 	IP_IPSEC_POLICY (2.5.47)
 .\"	    Needs CAP_NET_ADMIN
 .\"
-.\" 	IP_PASSSEC (2.6.17)
-.\" 	    Boolean
-.\"	    commit 2c7946a7bf45ae86736ab3b43d0085e43947945c
-.\"	    Author: Catherine Zhang <cxzhang@watson.ibm.com>
-.\"
 .\"	IP_MINTTL (2.6.34)
 .\"	    commit d218d11133d888f9745802146a50255a4781d37a
 .\"	    Author: Stephen Hemminger <shemminger@vyatta.com>
@@ -664,6 +659,47 @@ with
 .B IP_OPTIONS
 puts the current IP options used for sending into the supplied buffer.
 .TP
+.BR IP_PASSSEC " (since Linux 2.6.17)"
+.\" commit 2c7946a7bf45ae86736ab3b43d0085e43947945c
+If labeled IPSEC or NetLabel is configured on the sending and receiving
+hosts, this option enables receiving of the security context of the peer
+socket in an ancillary message of type
+.B SCM_SECURITY
+retrieved using
+.BR recvmsg (2).
+This option is only supported for UDP sockets; for TCP or SCTP sockets,
+see the description of the
+.B SO_PEERSEC
+option below.
+.IP
+The value given as an argument to
+.BR setsockopt (2)
+and returned as the result of
+.BR getsockopt (2)
+is an integer boolean flag.
+.IP
+The security context returned in the
+.B SCM_SECURITY
+ancillary message
+is of the same format as the one described under the
+.B SO_PEERSEC
+option below.
+.IP
+NOTE: The reuse of the
+.B SCM_SECURITY
+message type
+for the
+.B IP_PASSSEC
+socket option was likely a mistake since other IP control messages use
+their own numbering scheme in the IP namespace and often use the
+socket option value as the message type.  There is no conflict
+currently since the IP option with the same value
+as
+.B SCM_SECURITY
+is
+.B IP_HDRINCL
+and this is never used for a control message type.
+.TP
 .BR IP_PKTINFO " (since Linux 2.2)"
 .\" Precisely: 2.1.68
 Pass an
@@ -1290,13 +1326,13 @@ and
 .BR IP_MTU ,
 .BR IP_MTU_DISCOVER ,
 .BR IP_RECVORIGDSTADDR ,
+.BR IP_PASSSEC ,
 .BR IP_PKTINFO ,
 .BR IP_RECVERR ,
 .BR IP_ROUTER_ALERT ,
 and
 .BR IP_TRANSPARENT
 are Linux-specific.
-.\" IP_PASSSEC is Linux-specific
 .\" IP_XFRM_POLICY is Linux-specific
 .\" IP_IPSEC_POLICY is a nonstandard extension, also present on some BSDs
 .PP
-- 
2.25.1

