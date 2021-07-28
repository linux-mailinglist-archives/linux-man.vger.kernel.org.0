Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4526A3D969B
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231398AbhG1UUo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231562AbhG1UUo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:44 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECE92C061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:41 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id m38-20020a05600c3b26b02902161fccabf1so5237916wms.2
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zS4PT3Fy3Oztfl6PbayESYCmSVMOx8p0NfdDL8W621E=;
        b=s5VHStrShx3uaBD40BnMmjhLI8wnObjvWPiZ1E8iXS4UPl89+gYQ2ygO7PaJWJsJTq
         lkrMS8hXKn06w/UlwEU+xls2j5XZv1Z4GfPYfTQUhz0jW4cCZIu/JkGWAe2/OhXfXdL2
         VWbppL1OkmMh0QkWJ8y0+kAo85+SMMCe0PdKA6J2AV86huvcOVmiJujU8i2Rggc65T3O
         UhF9A3XNohoNuJfWHQpKP291N6EOQ074IFpPMXs6p4xMUDizgy98rGvskc8tMPv/NCUi
         MAcQ2uBDb6q3LpZ63bPaUCIyobdQTGOfnni/nJZyujs28e/2GHN7HkeHMwRIcY6Rotow
         BGAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zS4PT3Fy3Oztfl6PbayESYCmSVMOx8p0NfdDL8W621E=;
        b=szlfMr9Oac9ckSM1B63E09+Mbczx3KPt+ZvtyB9+h7hTNAotsmD99+4SmpQU10TE0R
         Aqx8PPwE/pc+CSKD8Sujwe9ACCjaTKIiLvfEfPaOL7NlcaqfTJcGh7P1pjiLCrZJ5m1n
         ycVvAWPb9MowZDmqdz0ptL1K4xWfgDR5iQCXdxAgxnmOzYBvj/5xGCNYIIUECVgxfcat
         qx8OC/Sd83EgeKgaarEr2fLjRb8q4Y2AfbRkd09dB9pkw7Xnh3IM7MfC336AgmYa25WR
         +FrMnNHwZwJ07KtHFOTRycFCK6Oa+ZtJMv+xFYSTMCcntsKLSRpsO2Gwxjqvym9DXQ4T
         Ak8A==
X-Gm-Message-State: AOAM530OPyUVh7IMIQ5FB4AnnxFsEEJeNqB9weYNR2To0RQP2eGArnJS
        BRk/i04x12Y0maWIAj9QPe1lU2JyulQ=
X-Google-Smtp-Source: ABdhPJyveww7OI70v92aUY+oWRygA1Lrqn6gtLFmV+CJMP9xfJ8YQu1ddCgQSJP/V5KY0HuC/IVg8g==
X-Received: by 2002:a1c:e90d:: with SMTP id q13mr1260942wmc.163.1627503640572;
        Wed, 28 Jul 2021 13:20:40 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:40 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Peter Collingbourne <pcc@google.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 28/32] sigaction.2: Document SA_EXPOSE_TAGBITS and the flag support detection protocol
Date:   Wed, 28 Jul 2021 22:20:04 +0200
Message-Id: <20210728202008.3158-29-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
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

