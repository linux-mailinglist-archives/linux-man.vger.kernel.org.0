Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27EB240794F
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232827AbhIKQC7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:02:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230513AbhIKQCy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:54 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4B5DC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:41 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id b6so7328126wrh.10
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RPay557vmhAj10z8aJYqm1cqVIHCWiwhcaVGOzLUJhE=;
        b=ao8SjQU6ZX+s9RfXJMJtkSra/W3xQdG1TAqlk8Kt4w9Er4lpXi8kb1g0UU9m0GbuZu
         Q+Ln7ekvata9PtH+LhD7FAnAkga8NvhDHDZlB33Rvh5eFL+nv/B9V8+EAdIck9ng10nG
         cQbm3h4kp181IjGinV5+cr+9vWZa0AOnCS7bUpwKjz+8vJlBIjdthJZ1Hzfx1tFo4jx0
         vm+kUVSjeKRKfLBz5JJ3Aifcpw4c3lclCYk1FOEz8OywSCj9j6eZnneDx4AUW/RGQPzu
         dCR3GqyUwIXjCSyJ8SUJSVk3/vBKMObdHJR8EcxqLDG6T38kbLX4BPp7/289f3t5+j8G
         eFxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RPay557vmhAj10z8aJYqm1cqVIHCWiwhcaVGOzLUJhE=;
        b=3T6/PQyTZUR6bhouimydMVPnuma0oEPFuR8bSYA1lhGRTxFmsm8UTUS4YdaAOLyMJs
         7YrG7DSckZcLdgTAPhv5U33JhpphRevAfGTriDJLKPDaRphCW64tFaC4DxnyYfz+REfo
         +ukoAujBqiTU/8gpxaPJvhH8iHvC8xS+Xshvr5IVTugT9i5e2YzFV73/2ePa6hhW6wOa
         b2an+UOKK8A+CqI7b/KQylXBMJ2pZHetUa0/Q+2n6ulJZ1T0Q9EDI9DdmhXTGSIAVLUj
         FEzoE6+hyoddJGuMxBxPEYuVYMMKs4OlrcwUFGPXtMf+cQbsvtb+YNYPGAQqBak2RKfm
         w/jQ==
X-Gm-Message-State: AOAM530BBuIcQse0PLQ6aXtWtq0peU9kJ4u1c7Q2aspjShJOwXkDPMu6
        rQFcBkqW8HlsyaYh0e/0qDc=
X-Google-Smtp-Source: ABdhPJxfxHhAjo3VDfvSVDsGqX9qCFHvGQkWqWNpci7702cjVRd+elJjY20K8P6j6YWgjyhBCuRhLw==
X-Received: by 2002:a5d:4803:: with SMTP id l3mr3706060wrq.61.1631376100638;
        Sat, 11 Sep 2021 09:01:40 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:40 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 14/45] ustat.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:47 +0200
Message-Id: <20210911160117.552617-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ustat.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/ustat.2 b/man2/ustat.2
index cb26ab23e..5153d2a47 100644
--- a/man2/ustat.2
+++ b/man2/ustat.2
@@ -30,6 +30,9 @@
 .TH USTAT 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 ustat \- get filesystem statistics
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <sys/types.h>
-- 
2.33.0

