Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 415FA651492
	for <lists+linux-man@lfdr.de>; Mon, 19 Dec 2022 22:02:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232535AbiLSVCh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Dec 2022 16:02:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231305AbiLSVCf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Dec 2022 16:02:35 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A89E07678
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 13:02:34 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id h12so9891627wrv.10
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 13:02:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JSeP1JeU1kUQ+iflrGuoJEo4M9adF33ipq6HFR5Qjpc=;
        b=VjheYjAGV0vKp6xMzO6RI3NMIBYl7qLnE3lXwYg6m70ccw6ex0sxFpHR2DETMxTPWH
         Vs6HFiDt6kOAo+wd8Azd8swei1j+7P7/XscasVzaYvr9QIwjrqPostRNXWIk4EFggeKM
         M7fvokg6uxEQ6fQVeU7IWSTmJyK/kTbDPn0FVhqhi+ECM6PVjCGnjkSjgGv0Ba9E0Pt5
         mkTwGydjM2g8d0JOhH2aWqcXqPQuxWQohsScsu0+ZtObhk9Hrg1tO3VRoHaN9dLOlaoH
         4DpEEizCJYgqgE0YlTY7Y3ze8ilDqZ3bKZ/CcuJr1ZPTRcIhSzc1SDFKddZdNpAr3mvf
         V5OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JSeP1JeU1kUQ+iflrGuoJEo4M9adF33ipq6HFR5Qjpc=;
        b=Izt/QOuWTHlfqiRstc64rXoqzZhtfBpyJYXotJxkA+umgAAMDbQ2klkRI5Vyjfllgo
         ZYgTA1HQa8SRy8vAo9NJOV5Nz3S64/Q7x7avGDJI6/owkSJcf5ws3eWRvENv6aI+Jtnk
         GjdioxL5+mttCX5nWHWCElw1fqL18MC2kd9dEWwRETkwLCAlu93qfi3+dz5T+EQJ4+a4
         XbDWicvHKcTFmORSnlWNODjhUbm/K9XjdAcQqaOJ530JyiZOazQWRzN2J80eQLUAxuzK
         5VwgWUD5QPwCLpzP4UoI7rDibhsInMtoICTpBsHld20heVAOQXDo5k9ppb9AnwrIf+7U
         06Kw==
X-Gm-Message-State: ANoB5pme2fX681iz6NJeqwG8+09eXSBmtjmHmFWJl7rMYdYhKUMSVYyG
        y4mWv63D74zc4YtoY1xZoot/scNf2E4=
X-Google-Smtp-Source: AA0mqf5AyDuN5MIQ9wqX87XRMEiSm9IZHPUV2PLj7/fwBiIBQZZmCNWcplarSPb6RfYiInn7dUVwiA==
X-Received: by 2002:a5d:5402:0:b0:242:12cf:fba7 with SMTP id g2-20020a5d5402000000b0024212cffba7mr25939469wrv.14.1671483753271;
        Mon, 19 Dec 2022 13:02:33 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k11-20020a5d6d4b000000b0022584c82c80sm10888516wri.19.2022.12.19.13.02.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 13:02:32 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
Subject: [PATCH v6 2/5] stpecpy.3, stpecpyx.3, ustpcpy.3, ustr2stp.3, zustr2stp.3, zustr2ustp.3: Add new links to string_copy(7)
Date:   Mon, 19 Dec 2022 22:02:06 +0100
Message-Id: <20221219210208.10860-3-alx@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221215002648.35111-1-alx@kernel.org>
References: <20221215002648.35111-1-alx@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Cc: Martin Sebor <msebor@redhat.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc: Jakub Wilk <jwilk@jwilk.net>
Cc: Serge Hallyn <serge@hallyn.com>
Cc: Iker Pedrosa <ipedrosa@redhat.com>
Cc: Andrew Pinski <pinskia@gmail.com>
Cc: Stefan Puiu <stefan.puiu@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/stpecpy.3    | 1 +
 man3/stpecpyx.3   | 1 +
 man3/ustpcpy.3    | 1 +
 man3/ustr2stp.3   | 1 +
 man3/zustr2stp.3  | 1 +
 man3/zustr2ustp.3 | 1 +
 6 files changed, 6 insertions(+)
 create mode 100644 man3/stpecpy.3
 create mode 100644 man3/stpecpyx.3
 create mode 100644 man3/ustpcpy.3
 create mode 100644 man3/ustr2stp.3
 create mode 100644 man3/zustr2stp.3
 create mode 100644 man3/zustr2ustp.3

diff --git a/man3/stpecpy.3 b/man3/stpecpy.3
new file mode 100644
index 000000000..6ff53887b
--- /dev/null
+++ b/man3/stpecpy.3
@@ -0,0 +1 @@
+.so man7/string_copy.7
diff --git a/man3/stpecpyx.3 b/man3/stpecpyx.3
new file mode 100644
index 000000000..6ff53887b
--- /dev/null
+++ b/man3/stpecpyx.3
@@ -0,0 +1 @@
+.so man7/string_copy.7
diff --git a/man3/ustpcpy.3 b/man3/ustpcpy.3
new file mode 100644
index 000000000..6ff53887b
--- /dev/null
+++ b/man3/ustpcpy.3
@@ -0,0 +1 @@
+.so man7/string_copy.7
diff --git a/man3/ustr2stp.3 b/man3/ustr2stp.3
new file mode 100644
index 000000000..6ff53887b
--- /dev/null
+++ b/man3/ustr2stp.3
@@ -0,0 +1 @@
+.so man7/string_copy.7
diff --git a/man3/zustr2stp.3 b/man3/zustr2stp.3
new file mode 100644
index 000000000..6ff53887b
--- /dev/null
+++ b/man3/zustr2stp.3
@@ -0,0 +1 @@
+.so man7/string_copy.7
diff --git a/man3/zustr2ustp.3 b/man3/zustr2ustp.3
new file mode 100644
index 000000000..6ff53887b
--- /dev/null
+++ b/man3/zustr2ustp.3
@@ -0,0 +1 @@
+.so man7/string_copy.7
-- 
2.39.0

