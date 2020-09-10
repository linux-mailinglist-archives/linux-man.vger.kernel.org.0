Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1FF42651C9
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:02:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726899AbgIJVCO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:02:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727980AbgIJVBz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:01:55 -0400
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com [IPv6:2607:f8b0:4864:20::744])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11126C061756;
        Thu, 10 Sep 2020 14:01:52 -0700 (PDT)
Received: by mail-qk1-x744.google.com with SMTP id p4so7624053qkf.0;
        Thu, 10 Sep 2020 14:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Qj+bF6JHAiKUykX77NiGv2uVk1sGIJT54ofxqXbZgR4=;
        b=CNOzJABtDEmZY6gFwgUpGwuAig4xQxjZutndog6nXBEkfkWAt9oQjMk0y0rArt5yzj
         6w8mOJwIzmQcGG6QJC/eXM4pdsn+4vYY1ZIBK797L4dbXCrqrGCOj/LevtX0SLMsXscb
         Xn7LLmE99m1EOg/WWgIQrnOM1wN8AT9WBfUtK+DenHHZWEXiBGDpiqj0Hs4GPDryJrve
         9FkKmt/7NLKhczHZsUsDWn+QAUJlMqJJP4/KCGD/kJNMS5NA0gm5h7Kwb3zNAZx48Ynw
         vve6TpP9tIWpf9r9opVGITGYI8gNQ9LqygPVjRcbcqa5Wf3lubUzBU/aVlLK3WKewxUq
         dr7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Qj+bF6JHAiKUykX77NiGv2uVk1sGIJT54ofxqXbZgR4=;
        b=kprPMUF+LTx3bNRpr0PpS2jVBuYJkLoAXIf+85g44DYArRvlrV/kZpQ10DH60ZqS8N
         sdEgicjLuutamsDdYNc6AvnskUpRww4OsE0xuH3Y3ZupTOkBfz8L88UBALX4OX+MoOqB
         DiWS/fwmDVzbyPmYZXLTrz5URbjDIjBo1wHGPWT7RtEAqkJha1sFrDuZDR6fKlwAVp2k
         dzS8kB+WQfZyxYSIA+KvSG5AKVQd45Tg3wEM/f3h6YGSJICygLr09Kmw3GKg1YrzG0zJ
         XLKBWeYQN5ibYH6e4kv/Jzr1sCJG+CCD2H4vpLlTmIBROrhwt6giI3as8t1Xk3ndhaVp
         odFg==
X-Gm-Message-State: AOAM5325WOeDEgajtR5DGNaYiyKbr9kjBuYtM2glCiO7L2JUwU6c4f3S
        7SKOI/cnQ3ufJxQxq5ygmRE=
X-Google-Smtp-Source: ABdhPJw9OCeXPquFymYHBaZYRTytzOzHjznm/e9LSivf+IcVTn/OufvciOc7XaKg+oW4v7pnzMkXLA==
X-Received: by 2002:ae9:e8c5:: with SMTP id a188mr9966875qkg.204.1599771710554;
        Thu, 10 Sep 2020 14:01:50 -0700 (PDT)
Received: from puritycontrol.fios-router.home (pool-68-134-6-11.bltmmd.fios.verizon.net. [68.134.6.11])
        by smtp.gmail.com with ESMTPSA id g12sm153604qke.90.2020.09.10.14.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:01:50 -0700 (PDT)
From:   Stephen Smalley <stephen.smalley.work@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        selinux@vger.kernel.org,
        Stephen Smalley <stephen.smalley.work@gmail.com>
Subject: [PATCH] socket.7,unix.7: add initial description for SO_PEERSEC
Date:   Thu, 10 Sep 2020 17:00:59 -0400
Message-Id: <20200910210059.34759-1-stephen.smalley.work@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

SO_PEERSEC was introduced for AF_UNIX stream sockets connected via
connect(2) in Linux 2.6.2 and later augmented to support AF_UNIX stream
and datagram sockets created via socketpair(2) in Linux 4.18.  Document
SO_PEERSEC in the socket.7 and unix.7 man pages following the example
of the existing SO_PEERCRED descriptions.  SO_PEERSEC is also supported
on AF_INET sockets when using labeled IPSEC or NetLabel but defer
adding a description of that support to a separate patch.

Signed-off-by: Stephen Smalley <stephen.smalley.work@gmail.com>
---
 man7/socket.7 |  5 +++++
 man7/unix.7   | 40 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 45 insertions(+)

diff --git a/man7/socket.7 b/man7/socket.7
index 21e891791..c3635f95b 100644
--- a/man7/socket.7
+++ b/man7/socket.7
@@ -690,6 +690,11 @@ Return the credentials of the peer process connected to this socket.
 For further details, see
 .BR unix (7).
 .TP
+.BR SO_PEERSEC " (since Linux 2.6.2)"
+Return the security context of the peer socket connected to this socket.
+For further details, see
+.BR unix (7).
+.TP
 .B SO_PRIORITY
 Set the protocol-defined priority for all packets to be sent on
 this socket.
diff --git a/man7/unix.7 b/man7/unix.7
index f61b51424..1032c0aa1 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -349,6 +349,46 @@ stream sockets and for
 .B AF_UNIX
 stream and datagram socket pairs created using
 .BR socketpair (2).
+.TP
+.B SO_PEERSEC
+This read-only socket option returns the
+security context of the peer socket connected to this socket.
+By default, this will be the same as the security context of
+the process that created the peer socket unless overridden
+by the policy or by a process with the required permissions.
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
+For SELinux, the security context string is a null-terminated
+string and the returned length includes the terminating null.
+Other security modules may differ.
+.IP
+The use of this option for sockets in the
+.B AF_UNIX
+address family
+is supported since Linux 2.6.2 for connected stream sockets and
+since Linux 4.18, also for stream and datagram socket pairs created
+using
+.BR socketpair (2).
 .\"
 .SS Autobind feature
 If a
-- 
2.25.1

