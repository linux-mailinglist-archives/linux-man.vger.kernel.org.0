Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09444293E84
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2407999AbgJTOXZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOXZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:25 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24C01C061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:25 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id x7so2406225wrl.3
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lpSxt1wspAI+xvkHQETbb0va5gJJe4jo9bYuqOZC0t8=;
        b=b2c/MyPUAHGTGYURIDK8r6/J98GoApEajmgqk2t6D/Lm2GkfJ7G98NR6kRrBYUJGWi
         XOusiBlxhoTGZpVAEwYemGvg5sXXGJeHkx+TzQmKct1oBLMAQwFA3tYaxhoQ1vRTxc8a
         eLxYGRiyAPBHWJEyOobPVUsCOswv/iWc8yUE/eZzWllfR/EUAdc0dxizA6TQ2Eqo/Mxf
         cYYFIpDRcjTma/OFdmFt1vSWKU4Z07VttztlFnrUHg+6VKeWA8yOx9HimO0XMVFFx6KP
         qc+DVybqHd44/MGxBwMQThFypKnvdodGBj4ealFyNBIpxYnDlk2q//MdFBcb6awEdnDU
         4+SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lpSxt1wspAI+xvkHQETbb0va5gJJe4jo9bYuqOZC0t8=;
        b=A7JIYitzjoAfO1JZqdt9aqN7kPF9krcbC5vJC9UVKTGwADpxXBkdrWcvCjkQougRn2
         v4tovbNZJ9YcGgZMxjSS1nRfbNpQ/VT/72RPVrKCv2YqAx3eMMgHZ8QlmiP1/IPnfpEh
         UopPFgLKwZrXEd4Ttrt9LBMrcJx5bwQr3FqfpNWjwh6PDzO77o6R7GSBk1SFLrYozYna
         MujUxOf5USgZk1crxVkuZ2qnyniJcx/akhKbF0tf0f0CiJ9EudCY7kmfORw3aFeX+goZ
         yjUfyRfiqdy0ZSWg+iteObFyrX9RuNJ8bGjsToNElkl7XLTD6EnvdENcs8VYfwl2Pzdp
         xl2g==
X-Gm-Message-State: AOAM531EmS7ORPLkxeSNLLfxXewowFCS/orA6ne2r7xxg0dPP6Itp2G1
        VwdpGG1kYCqxN8IQXajnho0=
X-Google-Smtp-Source: ABdhPJycPvQl2kzyKt93BRnj0o1apTzb3GWB0Ni12+ZVHDNwUxCU0tJqXZ+OekEzThhvJvEdpSISVQ==
X-Received: by 2002:adf:9793:: with SMTP id s19mr3914714wrb.139.1603203803908;
        Tue, 20 Oct 2020 07:23:23 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:23 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 03/22] list.3: NAME: ffix: Use man markup
Date:   Tue, 20 Oct 2020 16:21:28 +0200
Message-Id: <20201020142146.61837-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3 | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/man3/list.3 b/man3/list.3
index 340b24f7c..d26ac8971 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -31,23 +31,23 @@
 .\"
 .TH LIST 3 2020-10-19 "GNU" "Linux Programmer's Manual"
 .SH NAME
-.Nm LIST_EMPTY ,
-.Nm LIST_ENTRY ,
-.Nm LIST_FIRST ,
-.Nm LIST_FOREACH ,
-.\" .Nm LIST_FOREACH_FROM ,
-.\" .Nm LIST_FOREACH_SAFE ,
-.\" .Nm LIST_FOREACH_FROM_SAFE ,
-.Nm LIST_HEAD ,
-.Nm LIST_HEAD_INITIALIZER ,
-.Nm LIST_INIT ,
-.Nm LIST_INSERT_AFTER ,
-.Nm LIST_INSERT_BEFORE ,
-.Nm LIST_INSERT_HEAD ,
-.Nm LIST_NEXT ,
-.\" .Nm LIST_PREV ,
-.Nm LIST_REMOVE ,
-.\" .Nm LIST_SWAP ,
+LIST_EMPTY,
+LIST_ENTRY,
+LIST_FIRST,
+LIST_FOREACH,
+.\"LIST_FOREACH_FROM,
+.\"LIST_FOREACH_SAFE,
+.\"LIST_FOREACH_FROM_SAFE,
+LIST_HEAD,
+LIST_HEAD_INITIALIZER,
+LIST_INIT,
+LIST_INSERT_AFTER,
+LIST_INSERT_BEFORE,
+LIST_INSERT_HEAD,
+LIST_NEXT,
+LIST_PREV,
+LIST_REMOVE
+.\"LIST_SWAP
 .SH SYNOPSIS
 .SH DESCRIPTION
 .SH RETURN VALUE
-- 
2.28.0

