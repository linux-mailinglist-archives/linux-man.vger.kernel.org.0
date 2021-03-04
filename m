Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A671B32CA48
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 03:03:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232778AbhCDCB5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 21:01:57 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:37499 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233003AbhCDCBX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Mar 2021 21:01:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1614823197;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=67CmUKUe+TmQG3UkcCcwTlXVexG5QMLko4/9hpCBQsc=;
        b=IS7LQ/ayNkiy4U+C4xTYYUGxZNbB4uk1zWknkWE4rglYcowNh7/yBVkywIKHDT1m5V+yVl
        dG+UUT+nfcgxl+N3tUU8tZ1JzmEpvktb18sGhOZLoLT9FLDnLgH1nH+8j6OaZ+iwmPuT1/
        rcxk9aw3hcfysp9HymafwlQwSzo2TCs=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-238-o789W5VkOb2XCZLXa1RnmA-1; Wed, 03 Mar 2021 20:59:55 -0500
X-MC-Unique: o789W5VkOb2XCZLXa1RnmA-1
Received: by mail-qk1-f197.google.com with SMTP id a1so9860443qkn.11
        for <linux-man@vger.kernel.org>; Wed, 03 Mar 2021 17:59:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=67CmUKUe+TmQG3UkcCcwTlXVexG5QMLko4/9hpCBQsc=;
        b=Wj7adTBCG0uO2JvlBqCv3D+3se/15PvpERMjCjsS8Iqj2W8z1MkzreccHudoMdaRub
         3PYhHTijlrXfzNJ5fu2HTRfPeh/DPofKZUvOO4/EEKu+qKh5LF27gWI2RjB5GTWBmv8C
         UrlHE5qESPJcwUuNn2tRf2AbbFSefD0y6IxAJy2rOjQhAaxzcPUi8FU/Koh+CpujtKC2
         27K2K/Pc/retyPqS8MVdYASGNEzII/i0YfQG2nXf7hiKBVTBr4X99SpiVZ36k7J08B/5
         aamPQ211boXUaGKQ06vQgCv9J9RKlYFwdAWjhpBtUzUlqKEnH1j2n/Ub+x1CM2Aj1C+Y
         SYLA==
X-Gm-Message-State: AOAM531MgLopfPfhvHKwobvkP3Ua0S39IX3+l7ZVQ8+iwyagu6dkTrcA
        lffD2pRYVT+I11FX0WqwzIpMGFTF0LAVDvX7uxtExkG8I5g7VzTAdCYWTARk9a+4xL4FSHsMNYU
        WZoq76SnaBf3F46r86qbS0Rnl6zCpJwZkrugHg6HpI8gTZE96PlCcNH4QI4IaSc3SDckfTA==
X-Received: by 2002:a05:620a:887:: with SMTP id b7mr1915879qka.215.1614823194870;
        Wed, 03 Mar 2021 17:59:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxo2VGf7bBuTU7j/MVXQgMA7Qwe9+C87OoGoXi+q2ohdE1GsIQSeuTM/aQKjlxmq66uapauvw==
X-Received: by 2002:a05:620a:887:: with SMTP id b7mr1915861qka.215.1614823194633;
        Wed, 03 Mar 2021 17:59:54 -0800 (PST)
Received: from xz-x1.redhat.com (bras-vprn-toroon474qw-lp130-25-174-95-95-253.dsl.bell.ca. [174.95.95.253])
        by smtp.gmail.com with ESMTPSA id b7sm18610766qkj.115.2021.03.03.17.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 17:59:54 -0800 (PST)
From:   Peter Xu <peterx@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        linux-kernel@vger.kernel.org,
        Linux MM Mailing List <linux-mm@kvack.org>,
        peterx@redhat.com, Axel Rasmussen <axelrasmussen@google.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH 3/4] ioctl_userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Date:   Wed,  3 Mar 2021 20:59:46 -0500
Message-Id: <20210304015947.517713-4-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210304015947.517713-1-peterx@redhat.com>
References: <20210304015947.517713-1-peterx@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

UFFD_FEATURE_THREAD_ID is supported in Linux 4.14.

Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man2/ioctl_userfaultfd.2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index 47ae5f473..1965d1932 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -208,6 +208,10 @@ signal will be sent to the faulting process.
 Applications using this
 feature will not require the use of a userfaultfd monitor for processing
 memory accesses to the regions registered with userfaultfd.
+.BR UFFD_FEATURE_THREAD_ID " (since Linux 4.14)"
+If this feature bit is set,
+.I uffd_msg.pagefault.feat.ptid
+Will be set
 .PP
 The returned
 .I ioctls
-- 
2.26.2

