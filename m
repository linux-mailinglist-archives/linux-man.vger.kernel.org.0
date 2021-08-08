Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B70193E3997
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:41:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230301AbhHHImH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231254AbhHHImG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:06 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D418C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:47 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id d131-20020a1c1d890000b02902516717f562so9200618wmd.3
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zS4PT3Fy3Oztfl6PbayESYCmSVMOx8p0NfdDL8W621E=;
        b=KMvvkeK177B8NPMEJHS1jP+okmMd7VyEFjRX1lY3MZPq1XJ0H5eXaPnuIoaRVRHkuE
         5XLhS//MKRlm95yz2zhrmtLsNFScSB7n985fk5ERvqsQ4WiwX1XlygHE6q3qoIrgm4Td
         uZS8kU35sFV2YdJDN9q5LtwtJ9G9l1U2h5p/aIA9slHhDfoX2ovmOUKxf19NmVrf9Sri
         vuncMkALSLDf/yOpUp1Jn20WHoSMmnfYfwm8YqWOOssmSrAfRc6NSskWvR0rmU4mTh0D
         MM2PollUsht+LlEWMb6cO+wBAtxQo+0INcDZ0gqNGh8KTdGb3XoHKuANjiG90zY/DdiG
         jN8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zS4PT3Fy3Oztfl6PbayESYCmSVMOx8p0NfdDL8W621E=;
        b=JopGbqJ1t2UGzGvOjEeBcaxZhIywIFVSgjJ3anq/3un4Nl75Vg2Ff3xxlugMfFC6a/
         oqnEl7Cj1ogeQUQpH8SdeCa5mo5etWDIeU8BiuNXjmERkugeq24i5e07xQiWhTj5QyvK
         Arc8QBsKJtx2CQNGzAnZ8wXq2okP4tL7WkY6wnD4aWtoJklBsh4REUlOk7ZWi5NutoMu
         8Ry6GlUaSHYxUT24NbmOujw93JmLOclh7ZwrY6QbFp8IJ2jVUEncdDcOWrd1mGigW0sB
         I8JaMj7y6dGjbyUj6bQ7u4E6Tfwz1Qpn2yD/ukfvSaJn80FmRGlIfNaAnZC7D05UxDAl
         N6Jg==
X-Gm-Message-State: AOAM5324LW62l46A8SXGY08tgcMt9easKWMwAszBBNt1ddcqWN1llOp8
        0JRfwpnpJEub1L53XYCg7FE=
X-Google-Smtp-Source: ABdhPJzCvSbI9nU+GIdeBLmzJ7fZb+6RwzI+E915KUWfRff5150Hdil4GTfg7z7264/OKBVNnLydpQ==
X-Received: by 2002:a7b:c779:: with SMTP id x25mr27428673wmk.88.1628412105382;
        Sun, 08 Aug 2021 01:41:45 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:44 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Peter Collingbourne <pcc@google.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 02/23] sigaction.2: Document SA_EXPOSE_TAGBITS and the flag support detection protocol
Date:   Sun,  8 Aug 2021 10:41:12 +0200
Message-Id: <20210808084133.734274-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Peter Collingbourne <pcc@google.com>

Signed-off-by: Peter Collingbourne <pcc@google.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sigaction.2 | 123 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 123 insertions(+)

diff --git a/man2/sigaction.2 b/man2/sigaction.2
index 57ad6418c..4bf6f095e 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -261,6 +261,44 @@ This flag is meaningful only when establishing a signal handler.
 .\" .I sa_sigaction
 .\" field was added in Linux 2.1.86.)
 .\"
+.TP
+.B SA_UNSUPPORTED
+Used to dynamically probe for flag bit support.
+.IP
+If an attempt to register a handler succeeds with this flag set in
+.I act->sa_flags
+alongside other flags that are potentially unsupported by the kernel,
+and an immediately subsequent
+.BR sigaction ()
+call specifying the same signal number n and with non-NULL
+.I oldact
+yields
+.B SA_UNSUPPORTED
+.I clear
+in
+.IR oldact->sa_flags ,
+then
+.I oldact->sa_flags
+may be used as a bitmask
+describing which of the potentially unsupported flags are,
+in fact, supported.
+See the section "Dynamically probing for flag bit support"
+below for more details.
+.TP
+.BR SA_EXPOSE_TAGBITS " (since Linux 5.11)"
+Normally, when delivering a signal,
+an architecture-specific set of tag bits are cleared from the
+.I si_addr
+field of
+.IR siginfo_t .
+If this flag is set,
+an architecture-specific subset of the tag bits will be preserved in
+.IR si_addr .
+.IP
+Programs that need to be compatible with Linux versions older than 5.11
+must use
+.B SA_UNSUPPORTED
+to probe for support.
 .SS The siginfo_t argument to a SA_SIGINFO handler
 When the
 .B SA_SIGINFO
@@ -846,6 +884,91 @@ Triggered by a
 .BR seccomp (2)
 filter rule.
 .RE
+.SS Dynamically probing for flag bit support
+The
+.BR sigaction ()
+call on Linux accepts unknown bits set in
+.I act->sa_flags
+without error.
+The behavior of the kernel starting with Linux 5.11 is that a second
+.BR sigaction ()
+will clear unknown bits from
+.IR oldact->sa_flags .
+However, historically, a second
+.BR sigaction ()
+call would typically leave those bits set in
+.IR oldact->sa_flags .
+.PP
+This means that support for new flags cannot be detected
+simply by testing for a flag in
+.IR sa_flags ,
+and a program must test that
+.B SA_UNSUPPORTED
+has been cleared before relying on the contents of
+.IR sa_flags .
+.PP
+Since the behavior of the signal handler cannot be guaranteed
+unless the check passes,
+it is wise to either block the affected signal
+while registering the handler and performing the check in this case,
+or where this is not possible,
+for example if the signal is synchronous, to issue the second
+.BR sigaction ()
+in the signal handler itself.
+.PP
+In kernels that do not support a specific flag,
+the kernel's behavior is as if the flag was not set,
+even if the flag was set in
+.IR act->sa_flags .
+.PP
+The flags
+.BR SA_NOCLDSTOP ,
+.BR SA_NOCLDWAIT ,
+.BR SA_SIGINFO ,
+.BR SA_ONSTACK ,
+.BR SA_RESTART ,
+.BR SA_NODEFER ,
+.BR SA_RESETHAND ,
+and, if defined by the architecture,
+.B SA_RESTORER
+may not be reliably probed for using this mechanism,
+because they were introduced before Linux 5.11.
+However, in general, programs may assume that these flags are supported,
+since they have all been supported since Linux 2.6,
+which was released in the year 2003.
+.PP
+The following example program exits with status 0 if
+.B SA_EXPOSE_TAGBITS
+is determined to be supported, and 1 otherwise.
+.PP
+.EX
+#include <signal.h>
+#include <stdio.h>
+#include <unistd.h>
+
+void handler(int signo, siginfo_t *info, void *context) {
+    struct sigaction oldact;
+    if (sigaction(SIGSEGV, 0, &oldact) == 0 &&
+        !(oldact.sa_flags & SA_UNSUPPORTED) &&
+        (oldact.sa_flags & SA_EXPOSE_TAGBITS)) {
+        _exit(0);
+    } else {
+        _exit(1);
+    }
+}
+
+int main(void) {
+    struct sigaction act = {0};
+    act.sa_flags = SA_SIGINFO | SA_UNSUPPORTED | SA_EXPOSE_TAGBITS;
+    act.sa_sigaction = handler;
+    if (sigaction(SIGSEGV, &act, 0) != 0) {
+        perror("sigaction");
+        return 1;
+    }
+
+    raise(SIGSEGV);
+}
+.EE
 .SH RETURN VALUE
 .BR sigaction ()
 returns 0 on success; on error, \-1 is returned, and
-- 
2.32.0

