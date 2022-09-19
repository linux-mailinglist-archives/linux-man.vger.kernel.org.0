Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 556A15BD29E
	for <lists+linux-man@lfdr.de>; Mon, 19 Sep 2022 18:55:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229529AbiISQzK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Sep 2022 12:55:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229721AbiISQzG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Sep 2022 12:55:06 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E6F913DE6
        for <linux-man@vger.kernel.org>; Mon, 19 Sep 2022 09:55:05 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id a3so35930451lfk.9
        for <linux-man@vger.kernel.org>; Mon, 19 Sep 2022 09:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=X7QLiXJKBsb2SB89rVCwRtd2mD9kKVy1c0l1Vm4Q9FQ=;
        b=QBylqQaBoinKaiLit0zeYp0YAyttgaOigJAdTAfs+Nk+d4um8GyX6rA1ggsDfs7qSz
         kk+LeqKX5BzIsptoSakdWjsWo3mJLr/kiNsUfRnPINe4ZAiVk9Wvz8ZWL+SiOQ9OMUsA
         MDY4dkOn5dMS3KemMyK5a3Ccg1CzWmyaWMC21TKcXiyUb7Jh5frJLiFZNTC3xzPE5hJ7
         5aroXmQ/tYMuMvsDibabuMI1aZBk/36KZv4VlO0pigO/D5FoCuBsjVe45VriqJfxzeVB
         T8eStrHgMKtjc3XPLSdSZ3M3HkAr8UQ4WTaumwni2tvljPtcHeaxkauNjWdarJuYPcmI
         Cgwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=X7QLiXJKBsb2SB89rVCwRtd2mD9kKVy1c0l1Vm4Q9FQ=;
        b=SxlVJR3sBqH4k/aFoeNWkSr30QZSpYCyTAtQx7purw8lX/hnkQYaqg0y5YcTjVs3iT
         tCtPorJQhZuZj28BBOzOfXD1CWureICUuW95SU+6uFaPxAjwOr7EVRAoVOrgxtBY5Jm+
         7ufjoAe+JfifRIf9/yezEgvk3BXHoYL0mmxLtPu1AVRBku8+0pr9+pDKNZuH+bL4av7D
         yljpIwTa8+W5evbOZp4vhCFwo6kzAeGD73I2tghSGRjnrIU2jah0wgHlsVClHqVHcbf8
         vzyGPDQ6saqzNsjJt51y2+0SFtJLid2JV89LF17bA5pfZpoBTBwi+/3cH/+ykpwQw+qP
         tHzg==
X-Gm-Message-State: ACrzQf0n0iD38QuVaDPONDTcnISqvKuCtlbdaG/WiQeY0j4qaf6Xyx43
        JuYcPuCazspGnJhausWSwT9I/r2GrdsHeg==
X-Google-Smtp-Source: AMsMyM5nbl55gzyhWpw4PFHHYxo0hXB94dgqvbcY87jgIFsI4LoL6G9CspObrQMcDc28lW3K8Kmvxw==
X-Received: by 2002:ac2:5cc7:0:b0:497:a835:48c9 with SMTP id f7-20020ac25cc7000000b00497a83548c9mr6136354lfq.62.1663606503532;
        Mon, 19 Sep 2022 09:55:03 -0700 (PDT)
Received: from dell7760.lan ([31.169.55.19])
        by smtp.googlemail.com with ESMTPSA id m11-20020ac24acb000000b0049496855494sm5263815lfp.104.2022.09.19.09.55.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:55:03 -0700 (PDT)
From:   Alex Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alex Colomar <alx.manpages@gmail.com>,
        Walter Harms <wharms@bfs.de>, Radisson97@gmx.de,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        libc-alpha@sourceware.org
Subject: [RFC v3 2/4] register_printf_specifier.3, register_printf_modifier.3, register_printf_type.3: Add links to printf.h(3head)
Date:   Mon, 19 Sep 2022 18:54:54 +0200
Message-Id: <20220919165456.28289-3-alx.manpages@gmail.com>
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
 man3/register_printf_modifier.3  | 1 +
 man3/register_printf_specifier.3 | 1 +
 man3/register_printf_type.3      | 1 +
 3 files changed, 3 insertions(+)
 create mode 100644 man3/register_printf_modifier.3
 create mode 100644 man3/register_printf_specifier.3
 create mode 100644 man3/register_printf_type.3

diff --git a/man3/register_printf_modifier.3 b/man3/register_printf_modifier.3
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3/register_printf_modifier.3
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
diff --git a/man3/register_printf_specifier.3 b/man3/register_printf_specifier.3
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3/register_printf_specifier.3
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
diff --git a/man3/register_printf_type.3 b/man3/register_printf_type.3
new file mode 100644
index 000000000..ad10bad38
--- /dev/null
+++ b/man3/register_printf_type.3
@@ -0,0 +1 @@
+.so man3head/printf.h.3head
-- 
2.37.2

