Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAF8C5BD29F
	for <lists+linux-man@lfdr.de>; Mon, 19 Sep 2022 18:55:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229686AbiISQzL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Sep 2022 12:55:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229945AbiISQzI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Sep 2022 12:55:08 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1AB7DF63
        for <linux-man@vger.kernel.org>; Mon, 19 Sep 2022 09:55:06 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id q17so20708238lji.11
        for <linux-man@vger.kernel.org>; Mon, 19 Sep 2022 09:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=P00WhijRfH2E96H0tBil63UGxsOi+rpVPKVC/6OzbDA=;
        b=UCeAhfoBIx8qQDuQFaFJwCv5uVE8/dQQ781czIPsSe2B7bFE7ROmWLR71QKuoRJt+r
         0wxk99QAVyF9Y/frnK00mU63vdvBfsOxYTpHoiqnUhPmcO0yYurYXKbBrpLlU2q9umiP
         XUI+72WXPWYrVSsMsLwRndaJ8pV+yYQr1Arvh6O4u/dMEBvBEb5LEgEKTMEcdoZ2lMiy
         MpIeG00SM3haiLRhT22so5IlE+m7Q5JxwoKjxvqsupiuoT3IWfj2F9KQ0AdonOBjlUaA
         bP0Z0VqVFpkNkoVbU9Q0LF7ESdlakDK9AQIAGXyv2lpCYuT8ez+iaF6bIYbQZ29mlLXz
         vG8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=P00WhijRfH2E96H0tBil63UGxsOi+rpVPKVC/6OzbDA=;
        b=cBIj3SLf5f/DN/J6Mij5qk+KINQ2U1dbbR3PWjmG2wuPNvBYYyiFfBoRG4psG+LamF
         kbzriHFqkyjWcv77MQDqYhnbrd+vnUP+MX3N+tw+kP/BHYNJgGWbHVzQLFp4oda9n6o5
         9enJNh4fbU4Az9mxQn4FyymYCoDV1CNAXLlljFxi6St/RXvBskok3qWehwmbZRiIrN61
         aHL3KomNauFQjB46QosguNLlaS5CaomzJ9PqgE7ukxRxqZLDXut8fAjPJh4D145xCIrR
         UWDXhj09A0/F2egKoQezwkozNtQiT7Iw4MIDcVaV769u8GlDn8Io1KkJ5h4d3XXgmb1Z
         TsYA==
X-Gm-Message-State: ACrzQf3f56ZtRcbk+BOtbsyD56iIvJxvfG+ag2PFEkTSIqwlUSNk5+CH
        mm8ZKq6/kZlUtYRpYttjOIorQfhehLsIyA==
X-Google-Smtp-Source: AMsMyM4pSVOiKBLYbcOX92WMYVsAq1XRAA1Ox6+KXu9UBlVnfjNAkqjt3F0ge87jZ/vd8TdYtKHmVQ==
X-Received: by 2002:a2e:a601:0:b0:26c:4149:251a with SMTP id v1-20020a2ea601000000b0026c4149251amr3850720ljp.348.1663606505317;
        Mon, 19 Sep 2022 09:55:05 -0700 (PDT)
Received: from dell7760.lan ([31.169.55.19])
        by smtp.googlemail.com with ESMTPSA id m11-20020ac24acb000000b0049496855494sm5263815lfp.104.2022.09.19.09.55.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:55:04 -0700 (PDT)
From:   Alex Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alex Colomar <alx.manpages@gmail.com>,
        Walter Harms <wharms@bfs.de>, Radisson97@gmx.de,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        libc-alpha@sourceware.org
Subject: [RFC v3 4/4] PA_CHAR.3const, PA_DOUBLE.3const, PA_FLAG_LONG.3const, PA_FLAG_LONG_DOUBLE.3const, PA_FLAG_LONG_LONG.3const, PA_FLAG_PTR.3const, PA_FLAG_SHORT.3const, PA_FLOAT.3const, PA_INT.3const, PA_LAST.3const, PA_POINTER.3const, PA_STRING.3const, PA_WCHAR.3const, PA_WSTRING.3const: Add links to printf.h(3head)
Date:   Mon, 19 Sep 2022 18:54:56 +0200
Message-Id: <20220919165456.28289-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220918221640.19942-1-alx.manpages@gmail.com>
References: <20220918221640.19942-1-alx.manpages@gmail.com>
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

Cc: Walter Harms <wharms@bfs.de>
Cc: <Radisson97@gmx.de>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: <libc-alpha@sourceware.org>
Signed-off-by: Alex Colomar <alx.manpages@gmail.com>
---
 man3const/PA_CHAR.3const             | 1 +
 man3const/PA_DOUBLE.3const           | 1 +
 man3const/PA_FLAG_LONG.3const        | 1 +
 man3const/PA_FLAG_LONG_DOUBLE.3const | 1 +
 man3const/PA_FLAG_LONG_LONG.3const   | 1 +
 man3const/PA_FLAG_PTR.3const         | 1 +
 man3const/PA_FLAG_SHORT.3const       | 1 +
 man3const/PA_FLOAT.3const            | 1 +
 man3const/PA_INT.3const              | 1 +
 man3const/PA_LAST.3const             | 1 +
 man3const/PA_POINTER.3const          | 1 +
 man3const/PA_STRING.3const           | 1 +
 man3const/PA_WCHAR.3const            | 1 +
 man3const/PA_WSTRING.3const          | 1 +
 14 files changed, 14 insertions(+)
 create mode 100644 man3const/PA_CHAR.3const
 create mode 100644 man3const/PA_DOUBLE.3const
 create mode 100644 man3const/PA_FLAG_LONG.3const
 create mode 100644 man3const/PA_FLAG_LONG_DOUBLE.3const
 create mode 100644 man3const/PA_FLAG_LONG_LONG.3const
 create mode 100644 man3const/PA_FLAG_PTR.3const
 create mode 100644 man3const/PA_FLAG_SHORT.3const
 create mode 100644 man3const/PA_FLOAT.3const
 create mode 100644 man3const/PA_INT.3const
 create mode 100644 man3const/PA_LAST.3const
 create mode 100644 man3const/PA_POINTER.3const
 create mode 100644 man3const/PA_STRING.3const
 create mode 100644 man3const/PA_WCHAR.3const
 create mode 100644 man3const/PA_WSTRING.3const

diff --git a/man3const/PA_CHAR.3const b/man3const/PA_CHAR.3const
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3const/PA_CHAR.3const
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
diff --git a/man3const/PA_DOUBLE.3const b/man3const/PA_DOUBLE.3const
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3const/PA_DOUBLE.3const
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
diff --git a/man3const/PA_FLAG_LONG.3const b/man3const/PA_FLAG_LONG.3const
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3const/PA_FLAG_LONG.3const
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
diff --git a/man3const/PA_FLAG_LONG_DOUBLE.3const b/man3const/PA_FLAG_LONG_DOUBLE.3const
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3const/PA_FLAG_LONG_DOUBLE.3const
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
diff --git a/man3const/PA_FLAG_LONG_LONG.3const b/man3const/PA_FLAG_LONG_LONG.3const
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3const/PA_FLAG_LONG_LONG.3const
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
diff --git a/man3const/PA_FLAG_PTR.3const b/man3const/PA_FLAG_PTR.3const
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3const/PA_FLAG_PTR.3const
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
diff --git a/man3const/PA_FLAG_SHORT.3const b/man3const/PA_FLAG_SHORT.3const
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3const/PA_FLAG_SHORT.3const
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
diff --git a/man3const/PA_FLOAT.3const b/man3const/PA_FLOAT.3const
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3const/PA_FLOAT.3const
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
diff --git a/man3const/PA_INT.3const b/man3const/PA_INT.3const
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3const/PA_INT.3const
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
diff --git a/man3const/PA_LAST.3const b/man3const/PA_LAST.3const
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3const/PA_LAST.3const
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
diff --git a/man3const/PA_POINTER.3const b/man3const/PA_POINTER.3const
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3const/PA_POINTER.3const
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
diff --git a/man3const/PA_STRING.3const b/man3const/PA_STRING.3const
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3const/PA_STRING.3const
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
diff --git a/man3const/PA_WCHAR.3const b/man3const/PA_WCHAR.3const
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3const/PA_WCHAR.3const
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
diff --git a/man3const/PA_WSTRING.3const b/man3const/PA_WSTRING.3const
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3const/PA_WSTRING.3const
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
-- 
2.37.2

