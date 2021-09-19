Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3AFF410CB6
	for <lists+linux-man@lfdr.de>; Sun, 19 Sep 2021 19:36:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229912AbhISRiJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Sep 2021 13:38:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229846AbhISRiJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Sep 2021 13:38:09 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 935B6C061574
        for <linux-man@vger.kernel.org>; Sun, 19 Sep 2021 10:36:43 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id c21so51116224edj.0
        for <linux-man@vger.kernel.org>; Sun, 19 Sep 2021 10:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=scylladb-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cQSWQwAYN6cXfAx1qwGkZTZvNtHvkRAz3Lrj0xuUpkM=;
        b=Q47yocoyuBDKYYa4WFKM1dZFcCODuf2QtjFvIT2wreWYX5Y0TCXG0F7sQEoVR9Dr+S
         27fH94uyUAEJrd7v8jPDwCHrsIY+isy0L8PGgVVEwIWzQwLSs7utY2kHSEe9QFqPEdpv
         DAYXXeyMAJ6XMGOYMozfLA2Iru8yz9T7XTbRjwx5rTn/wVqlf+8lv6lymeq18s3H02IO
         d97bHO0O9hDDeSvspB2w74/lqlFjd7y9gyE7B6ZGjBOP5GxwxyJEumfksgc7ri1D0D/f
         h/+2/+dZzN90aOVd5P3foClthGWaQlfs/dU/qtQFGsntCuCoAJu9+hhnLFHFlTnaSNUZ
         ooyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cQSWQwAYN6cXfAx1qwGkZTZvNtHvkRAz3Lrj0xuUpkM=;
        b=k1JmMUr5LPAjcS7wWvnt6va3QDL0C8PSHZF1mZskp2MfCkOyRZxm7vYJOEWwvwZd1A
         qxLLm1+rFSJNjM/UxDkEKz/w+xiMcJuChO1kAvnnOhIqpTSnftryEScZrgq20XWSNHkC
         arYD4aLfCXMgug9PssvSv6XKcY5VGocw+m3n5ImbrurXqnVwPH7upxeiNMX6iamafXlo
         pvq9qmwg1mYS10VUMqtXeHru8qVIGPAGbiaMylHETAoI4AP7z0z2nbWStGwebW1zdRal
         MyhJWByMKj4srG99LtyaabgpKe/jb0jYwoQY4aJ6xeFB48DZroaLwVjumNtjPoltR0NA
         RhUQ==
X-Gm-Message-State: AOAM533psGehG/MbCacHldUTTHcMBRN509miGgPX6nyDwgjumx0pvm3h
        bVQKuQMaFmkTKrPTS2CgMnu3kJDmwD0PSA==
X-Google-Smtp-Source: ABdhPJyvCrlrjyQWTaEsFGv05QuCcaH2HxYyKQYZgwNV/JK8Rtgrrb50CyCVDrVUU6v8Q10TOZVCdA==
X-Received: by 2002:a17:906:3882:: with SMTP id q2mr24644458ejd.396.1632073001815;
        Sun, 19 Sep 2021 10:36:41 -0700 (PDT)
Received: from avi.cloudius-systems.com (system.cloudius-systems.com. [199.203.229.89])
        by smtp.gmail.com with ESMTPSA id n13sm5054786ejk.97.2021.09.19.10.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Sep 2021 10:36:41 -0700 (PDT)
From:   Avi Kivity <avi@scylladb.com>
To:     linux-man@vger.kernel.org
Cc:     mingo@redhat.com
Subject: [PATCH v1] perf_event_open.2: clarify and expand memory barrier requirements
Date:   Sun, 19 Sep 2021 20:36:39 +0300
Message-Id: <20210919173639.2100661-1-avi@scylladb.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

perf_event_open(2) instructs the user to issue an rmb() after reading
data_head to ensure that user-space sees all writes to the memory
it reads. rmb() is a kernel-internal term that might not mean much
to the reader; and further it is too strict. It's enough to require
the weaker load-acquire fence. This is an industry standard term
that does not require the user to understand kernel terminology.

In addition, require a store-release fence before writing data_tail.
This prevents the user's reads from being reordered with the kernel's
writes to the just-freed space. The documentation in <linux/perf_event.h>
also suggests doing this.

Signed-off-by: Avi Kivity <avi@scylladb.com>
---
 man2/perf_event_open.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 81c1b10f2..db5ce746b 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -1837,18 +1837,19 @@ The value needs to be manually wrapped by the size of the mmap buffer
 before accessing the samples.
 .IP
 On SMP-capable platforms, after reading the
 .I data_head
 value,
-user space should issue an rmb().
+user space should issue a load-acquire fence.
 .TP
 .I data_tail
 When the mapping is
 .BR PROT_WRITE ,
 the
 .I data_tail
 value should be written by user space to reflect the last read data.
+Before writing, issue a store-release fence.
 In this case, the kernel will not overwrite unread data.
 .TP
 .IR data_offset " (since Linux 4.1)"
 .\" commit e8c6deac69629c0cb97c3d3272f8631ef17f8f0f
 Contains the offset of the location in the mmap buffer
-- 
2.31.1

