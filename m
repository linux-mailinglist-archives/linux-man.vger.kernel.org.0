Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA7CE269465
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 20:08:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726072AbgINSHn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 14:07:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726134AbgINSHQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 14:07:16 -0400
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com [IPv6:2607:f8b0:4864:20::f44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB53BC06174A;
        Mon, 14 Sep 2020 11:07:15 -0700 (PDT)
Received: by mail-qv1-xf44.google.com with SMTP id q10so216214qvs.1;
        Mon, 14 Sep 2020 11:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5cS4S52/ivmcWHzOjUPY4AEjw85T58jQTfSasZl/Goc=;
        b=FJhRhoqKijSkFo2NNl4y6osks5SS1dlbFfvB0LjzDf3FD+fIrLnMc9FDSQz+Pnyivz
         6A14GwWYuL4xBqRsx2NGEP81iz5bVTQHZEyHDadB2RPkyCfgkhsfouOTlvXwYLHkrNn2
         zE4vfX/LvtEt4Eed3E3ce1rFbkO8Rx3TP7DPxTzAdUQW/VE+kqojgz9WTKak+oS7bDgT
         l9WEDw4RsXje1yYpRq9bJ18EfTI0fGiVT4+7PaG/UKJo5uPFYtCFl5pGqmlA/fQhe2Y/
         HPzc2sVYjAPPPHDGow3evKQAiUUGnVxOhRzVLUYxWurhNvMGkNjudA0YNwFi8BLKyEPY
         AyuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5cS4S52/ivmcWHzOjUPY4AEjw85T58jQTfSasZl/Goc=;
        b=NVbUpkElgmVI5+lkJWZrwSWfzC14LK3W3Vq63J9j7JZdW8DTedhtLKCBohLy/OTab2
         YqM49EZMSXspRoUg2AFmOZxXbGWG/ZzF/491erGwMrzne5v+ILWGzoUg1U0mDGXdrYvY
         Wtom/Q0fQFP8lyEkcI6Wy3AmoaOh/yLnJl1sbamJ546vI5JElsUxjB3eKbK51cqeV9x7
         Jyntawt95jUii5des8vJwrs60YdFKrwuomFYrLh6GuM3x1bnaxX6krRNegvJtEMVBI16
         y4D1fa14o2WdsC2AslhPUWDciWACwUcDM3rZuT1aIlLWr7YsoR7XYd+4qn4peVPNNbjG
         +rcA==
X-Gm-Message-State: AOAM531+3fvm5quRDHZnRi9cqNf9zDwA9+t1jzxYwHNZqJVtfqwbNbHC
        ZxYUpRa0Khrwl1a/lypBWSI=
X-Google-Smtp-Source: ABdhPJz0CEz8IP33W+amLFQ03M7/CVQLV3Wox1IyeKYUsaqNsmiCQMhx2cHyOFKbh8MNVm8pKPT14g==
X-Received: by 2002:a0c:cc13:: with SMTP id r19mr14127259qvk.15.1600106833276;
        Mon, 14 Sep 2020 11:07:13 -0700 (PDT)
Received: from puritycontrol.fios-router.home (pool-96-234-167-227.bltmmd.fios.verizon.net. [96.234.167.227])
        by smtp.gmail.com with ESMTPSA id n136sm13675972qkn.14.2020.09.14.11.07.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2020 11:07:12 -0700 (PDT)
From:   Stephen Smalley <stephen.smalley.work@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        selinux@vger.kernel.org, smcv@collabora.com, jmorris@namei.org,
        serge@hallyn.com, Stephen Smalley <stephen.smalley.work@gmail.com>
Subject: [PATCH v2] socket.7,unix.7: add initial description for SO_PEERSEC
Date:   Mon, 14 Sep 2020 14:07:00 -0400
Message-Id: <20200914180700.11003-1-stephen.smalley.work@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

SO_PEERSEC was introduced for AF_UNIX stream sockets connected via
connect(2) in Linux 2.6.2 [1] and later augmented to support AF_UNIX stream
and datagram sockets created via socketpair(2) in Linux 4.18 [2].  Document
SO_PEERSEC in the socket.7 and unix.7 man pages following the example
of the existing SO_PEERCRED descriptions.  SO_PEERSEC is also supported
on AF_INET sockets when using labeled IPSEC or NetLabel but defer
adding a description of that support to a separate patch.

The module-independent description of the security context returned
by SO_PEERSEC is from Simon McVittie <smcv@collabora.com>.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=da6e57a2e6bd7939f610d957afacaf6a131e75ed

[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0b811db2cb2aabc910e53d34ebb95a15997c33e7

Signed-off-by: Stephen Smalley <stephen.smalley.work@gmail.com>
---
v2 adds kernel commit info to the description and man page and uses
the suggested text from Simon McVittie for the description of
the security context string in a module-neutral way.

 man7/socket.7 |  5 +++++
 man7/unix.7   | 46 ++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 51 insertions(+)

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
index 50828a5bc..298521d4a 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -349,6 +349,52 @@ stream sockets and for
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
+The security context string may include a terminating null character
+in the returned length, but is not guaranteed to do so: a security
+context "foo" might be represented as either {'f','o','o'} of length 3
+or {'f','o','o','\\0'} of length 4, which are considered to be
+interchangeable. It is printable, does not contain non-terminating
+null characters, and is in an unspecified encoding (in particular it
+is not guaranteed to be ASCII or UTF-8).
+.IP
+The use of this option for sockets in the
+.B AF_UNIX
+address family
+is supported since Linux 2.6.2 for connected stream sockets and
+since Linux 4.18,
+.\" commit 0b811db2cb2aabc910e53d34ebb95a15997c33e7
+also for stream and datagram socket pairs created
+using
+.BR socketpair (2).
 .\"
 .SS Autobind feature
 If a
-- 
2.25.1

