Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0FF6A3B7A26
	for <lists+linux-man@lfdr.de>; Tue, 29 Jun 2021 23:57:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235226AbhF2V7b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Jun 2021 17:59:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235094AbhF2V7b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Jun 2021 17:59:31 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFB58C061766
        for <linux-man@vger.kernel.org>; Tue, 29 Jun 2021 14:57:03 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id g22so52744pgl.7
        for <linux-man@vger.kernel.org>; Tue, 29 Jun 2021 14:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=x5m1g0PH3I9XvvaNliOxoS71jKVtRzM/NDxRiqSDFQ4=;
        b=up/oF0oZqL96+dlLm0aeTJ9VKRBYfF9EF57HinarA+PbEVCFxf2OA9ymIie0QJL0rb
         QoYvtLAs5EVF5i1CI7fW/uYNfi0g06qYV6fo9cNVwbFM68WBbgrmv8q0Z9zceWs4RE1V
         51fiB0o8xy0tLrWzFXrzUGovPjOFsiYYOp8YqcmIz9VmzjN2x+I994dV+d8IbfjdyUXF
         wVCOBU2wr4rzi0IOaeHIKz7e9v5ya5SD2TUqKyzwCAiyh6UFWcQjIsSeoviTFdr+b8M3
         a4ZgiKwktIskCmATRa58Atsl1kxffLRXEEaS7lO50vfFYoJd3YEw/MevdL5no16RHBHQ
         ie1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=x5m1g0PH3I9XvvaNliOxoS71jKVtRzM/NDxRiqSDFQ4=;
        b=sG1ugUB3GtUxcXQZAsllyqxG4Ogye4t8xjDQJN9I1MuaX2lmizcWMDFsmR8FojQTmG
         VZkX3cQeNtr+NqYykKmpMORKgH35Yw72wCv3RRtWwQy17kyZWJd0M9ksta3YnuOdyVv4
         qz6Pv1KvCn1kF7MTg+YzLRyZ6yuHiZ5YsQxpKCCUKm7g+TDDcTtjTobLyEuVGaSoxp4h
         UTRz+gTErP/7imvaiUhBv8cSOgMzdRosSHEUQs9dyLaLQVWKl70bgMQyWb4R1tCPXk23
         iEbAeOB0JdhQnwUUCq6b84uuvI65XSIBAz2VSYBXGOcmED++hC96/OVGuKmTfPvK6Ykd
         wQFw==
X-Gm-Message-State: AOAM533cTAbEA685qeyV8i4oETWA9sYxMqinp13JpfYjabqwPGxnQ9DO
        vJMzUkMRxpN27tym4pghTT9NgjJotQV+ZvZM
X-Google-Smtp-Source: ABdhPJyK7bUc38ToPzxJgMJjDnKCtnfPz3zw+bZOQm0JVJNu6gRcj/MVctRBY1w8KMj7lajjwTdO9w==
X-Received: by 2002:a05:6a00:1356:b029:301:a406:636d with SMTP id k22-20020a056a001356b0290301a406636dmr31990261pfu.39.1625003823218;
        Tue, 29 Jun 2021 14:57:03 -0700 (PDT)
Received: from kir-rhat.lan (c-76-104-243-248.hsd1.wa.comcast.net. [76.104.243.248])
        by smtp.gmail.com with ESMTPSA id u23sm21885898pgk.38.2021.06.29.14.57.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jun 2021 14:57:02 -0700 (PDT)
From:   Kir Kolyshkin <kolyshkin@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Kir Kolyshkin <kolyshkin@gmail.com>
Subject: [PATCH 2/3] user_namespaces.7: fix a ref
Date:   Tue, 29 Jun 2021 14:56:59 -0700
Message-Id: <20210629215700.137856-2-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210629215700.137856-1-kolyshkin@gmail.com>
References: <20210629215700.137856-1-kolyshkin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The file being referred to no longer exists, as it was moved to
*.rst first (commit 20a78ae9ed297f2) and then to under
admin-guide (commit bf6b7a742e3f82b). Both those commits
are from 2019 (Linux 5.3).

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man7/user_namespaces.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
index f2e02c978..518e7a3bb 100644
--- a/man7/user_namespaces.7
+++ b/man7/user_namespaces.7
@@ -1383,4 +1383,4 @@ main(int argc, char *argv[])
 .BR pid_namespaces (7)
 .PP
 The kernel source file
-.IR Documentation/namespaces/resource\-control.txt .
+.IR Documentation/admin\-guide/namespaces/resource\-control.rst .
-- 
2.31.1

