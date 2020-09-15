Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C19D26B08D
	for <lists+linux-man@lfdr.de>; Wed, 16 Sep 2020 00:13:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727767AbgIOWNZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Sep 2020 18:13:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727743AbgIOQkN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Sep 2020 12:40:13 -0400
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com [IPv6:2607:f8b0:4864:20::843])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 879A2C06174A;
        Tue, 15 Sep 2020 09:40:12 -0700 (PDT)
Received: by mail-qt1-x843.google.com with SMTP id 19so3692131qtp.1;
        Tue, 15 Sep 2020 09:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=U5qBWD/Pi0YOP8OO3FMwldARNgB9cZIIn6+Wxa36CQY=;
        b=E6lqfbQkfG5cw1N/zZndHc9MDrrZlnZBINXTqhxJacElStwMCdApV/IGKoLPc7JKvo
         ls1jmd613FgEYWRtp2i7AvOKWYeRCHc32Cx7psWDd/XND3OeGlb34spPddQXCPoubtbZ
         FhVetIW/5sSw3g6TmYnndob5PzwfNKAKDjQsG3Di3fF3cM/L10qkKOLpArjOAQPEH5pM
         q5ouIAFYI3ics2jvYIbehRLimcljUO+GeToQRHJW9WoRhfFwSogSfSnTwh/uTNH8gmeJ
         EHKelxBDFcoFNoxwwrHSqt45Od+BBSQRo5T2bx0ohuTGz9tyeAfr1cTqS+2zpufPwCPy
         a6+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=U5qBWD/Pi0YOP8OO3FMwldARNgB9cZIIn6+Wxa36CQY=;
        b=fYWRRrRzPSP2ySyJJCcccPtatQ3O/tnDk7MthaMZH5FHfwLwlwXjmBgd9cdrFusxZx
         KcL6XYmkely/RfKJze/92VTwixBV8a5UldMuVIq7kv9y9XSgcgQwnrTHgMbN8lDbrgnG
         E8CRq7g0aLAWRkS6kc8if3s+zBJ8Szz9JLe2N2B+9HFlYWHc909UpwABqPOLvtQZJOht
         5imrDre3AXCaO+ysIQmIzLPP3ct7wRBqRAxqOEIpsZTKVNPxdt+nHUl3zavxY/7TK/ze
         vTqnyki2XwuqsCIrejgd5Vy1jcOal8bKZE7t/ySWznr12lFJ0LvrH+u1CNE/CnXSN2lQ
         9BeQ==
X-Gm-Message-State: AOAM5334Btbd262e0UXVPIy/aOMMwUASfH3In9j3n0LKU4iR6fKCPBgH
        jItKjRsF95PsbEtSxz+/Edw=
X-Google-Smtp-Source: ABdhPJwueNIF6/j3D1/WkJFmXEjp48g8rttDimycmnaHu3TGo4GNviuYN1Rnl3JKAC8BKAmtlLdogQ==
X-Received: by 2002:ac8:2942:: with SMTP id z2mr19342171qtz.376.1600188011702;
        Tue, 15 Sep 2020 09:40:11 -0700 (PDT)
Received: from puritycontrol.fios-router.home (pool-96-234-167-227.bltmmd.fios.verizon.net. [96.234.167.227])
        by smtp.gmail.com with ESMTPSA id 71sm17162340qki.85.2020.09.15.09.40.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 09:40:11 -0700 (PDT)
From:   Stephen Smalley <stephen.smalley.work@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        selinux@vger.kernel.org, smcv@collabora.com, jmorris@namei.org,
        serge@hallyn.com, paul@paul-moore.com,
        Stephen Smalley <stephen.smalley.work@gmail.com>
Subject: [PATCH] socket.7,ip.7: Document SO_PEERSEC for AF_INET sockets
Date:   Tue, 15 Sep 2020 12:39:59 -0400
Message-Id: <20200915163959.25334-1-stephen.smalley.work@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Augment the description of SO_PEERSEC to cover AF_INET sockets
in addition to the prior description for AF_UNIX.

SO_PEERSEC for TCP sockets was introduced in Linux 2.6.17 [1], and
SO_PEERSEC for SCTP sockets was introduced in Linux 4.17 [2].

This does not cover usage of SCM_SECURITY for UDP sockets, which
was also introduced in the same commit for 2.6.17.

Examples of the necessary labeled IPSEC and NetLabel configurations
to enable use of SO_PEERSEC for TCP and SCTP sockets can be found in
the SELinux Notebook [3] and the selinux-testsuite [4].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2c7946a7bf45ae86736ab3b43d0085e43947945c

[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d452930fd3b9031e59abfeddb2fa383f1403d61a

[3] https://github.com/SELinuxProject/selinux-notebook

[4] https://github.com/SELinuxProject/selinux-testsuite
---
 man7/ip.7     | 56 +++++++++++++++++++++++++++++++++++++++++++++++++++
 man7/socket.7 |  2 +-
 2 files changed, 57 insertions(+), 1 deletion(-)

diff --git a/man7/ip.7 b/man7/ip.7
index c522b219c..03a9f3f7c 100644
--- a/man7/ip.7
+++ b/man7/ip.7
@@ -979,6 +979,62 @@ Argument is an
 .I ip_mreq_source
 structure as described under
 .BR IP_ADD_SOURCE_MEMBERSHIP .
+.TP
+.BR SO_PEERSEC " (since Linux 2.6.17)"
+If labeled IPSEC or NetLabel is configured on both the sending and
+receiving hosts, this read-only socket option returns the security
+context of the peer socket connected to this socket.  By default, this
+will be the same as the security context of the process that created
+the peer socket unless overridden by the policy or by a process with
+the required permissions.
+.IP
+The argument to
+.BR getsockopt (2)
+is a pointer to a
+buffer of the specified length in bytes
+into which the security context string will be copied.
+If the buffer length is less than the length of the security
+context string, then
+.BR getsockopt (2)
+will return the required length
+via
+.I optlen
+and return \-1 and sets
+.I errno
+to
+.BR ERANGE .
+The caller should allocate at least
+.BR NAME_MAX
+bytes for the buffer initially although this is not guaranteed
+to be sufficient.  Resizing the buffer to the returned length
+and retrying may be necessary.
+.IP
+The security context string may include a terminating null character
+in the returned length, but is not guaranteed to do so: a security
+context "foo" might be represented as either {'f','o','o'} of length 3
+or {'f','o','o','\\0'} of length 4, which are considered to be
+interchangeable. It is printable, does not contain non-terminating
+null characters, and is in an unspecified encoding (in particular it
+is not guaranteed to be ASCII or UTF-8).
+.IP
+The use of this option for sockets in the
+.B AF_INET
+address family
+is supported since Linux 2.6.17
+.\" commit 2c7946a7bf45ae86736ab3b43d0085e43947945c
+for TCP sockets and since Linux
+4.17
+.\" commit d452930fd3b9031e59abfeddb2fa383f1403d61a
+for SCTP sockets.
+.IP
+For SELinux, NetLabel only conveys the MLS portion of the security
+context of the peer across the wire, defaulting the rest of the
+security context to the values defined in the policy for the
+netmsg initial security identifier (SID). However, NetLabel can
+be configured to pass full security contexts over loopback.  Labeled
+IPSEC always passes full security contexts as part of establishing
+the security association (SA) and looks them up based on the association
+for each packet.
 .SS /proc interfaces
 The IP protocol
 supports a set of
diff --git a/man7/socket.7 b/man7/socket.7
index c3635f95b..2f9039333 100644
--- a/man7/socket.7
+++ b/man7/socket.7
@@ -693,7 +693,7 @@ For further details, see
 .BR SO_PEERSEC " (since Linux 2.6.2)"
 Return the security context of the peer socket connected to this socket.
 For further details, see
-.BR unix (7).
+.BR unix (7) and ip(7).
 .TP
 .B SO_PRIORITY
 Set the protocol-defined priority for all packets to be sent on
-- 
2.25.1

