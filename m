Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1337932D7E2
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 17:34:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237836AbhCDQd0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 11:33:26 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:40184 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237840AbhCDQdR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 11:33:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1614875511;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=L+ETSEf1ZAFUSggoPbuwMmKsXjA8FmosFmIyKB/HpBM=;
        b=imRIUmetSzXFWRWo+AvHzeskhoH5oMcqGZ8eXqMoaadmV0N9JW7RcJK7bYvsk4hCZaHs3l
        J05ohUBIBVvi1jqYg9dzmb4fTRGjzHZlQFiXmlXtG9W9maSzoZlopYqO2yvcHCxEfKJCeb
        rQ4SVFL+77bB4f6SVmNDdYS+r+65qDY=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-232-huSqDC8FO2Wm9bK--r8Q_Q-1; Thu, 04 Mar 2021 11:31:49 -0500
X-MC-Unique: huSqDC8FO2Wm9bK--r8Q_Q-1
Received: by mail-qk1-f197.google.com with SMTP id y79so23522513qka.23
        for <linux-man@vger.kernel.org>; Thu, 04 Mar 2021 08:31:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=L+ETSEf1ZAFUSggoPbuwMmKsXjA8FmosFmIyKB/HpBM=;
        b=NqHaxtnzjUHNC2e/OGFTLvbN6HfF6yMBPg0h6JQO8UBiyw7SirijqLtZJQkF6+DVCG
         D9m1KjBWt2v5WKXBK7mhf+ytIWPYdfdKfyQC8BVLj+Lbndk77OaUNq7pp4XRc8gNPfPt
         +IOVocB2oFfNLuMqQwG2p3PeP/thjCwhrjGfxRDJbLF5EXim6X+tpkBv1247idEjhBR9
         On177VhjHhXBl7Tp+B+Vju+uXExTsd7TEfxjerDYaQ6kQkWKqGTTTwbLuI+WltWxiPq0
         a15M16z8a9sMUvqFtFiLJiNZGPp997tN7VbriMf0+5r3rPQAOri2+AI2M02VGWkEPbfW
         jauA==
X-Gm-Message-State: AOAM533+3ZnkEqRs9Zm15KGM6dY+0FlWFtN2vQkRuR23ifazAFvLB46Z
        SuLdqzT07fnQnarV0Pg3fsFh7xzOyzptz4duyP5k/5mzjSpmGIKn82mJB1iJr30BOO6O/+zqnVN
        oAhv24c0ojaSZKe4ZDMPefsznAhOUsHI/xQviojKSfhwKKrQqJcDnaHY9KClcnEj5sQM9fQ==
X-Received: by 2002:a05:6214:1424:: with SMTP id o4mr4686704qvx.34.1614875509312;
        Thu, 04 Mar 2021 08:31:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzZVGrykbdTHTsJvMYciYnspUzYH+GMDJvtLzn0b2/AnSBx/ccJd5RUBv4+cALIgTK9I6Wcag==
X-Received: by 2002:a05:6214:1424:: with SMTP id o4mr4686678qvx.34.1614875509092;
        Thu, 04 Mar 2021 08:31:49 -0800 (PST)
Received: from xz-x1.redhat.com (bras-vprn-toroon474qw-lp130-25-174-95-95-253.dsl.bell.ca. [174.95.95.253])
        by smtp.gmail.com with ESMTPSA id r2sm51753qti.4.2021.03.04.08.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 08:31:48 -0800 (PST)
From:   Peter Xu <peterx@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        linux-kernel@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Linux MM Mailing List <linux-mm@kvack.org>,
        peterx@redhat.com
Subject: [PATCH v2 3/4] ioctl_userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Date:   Thu,  4 Mar 2021 11:31:39 -0500
Message-Id: <20210304163140.543171-4-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210304163140.543171-1-peterx@redhat.com>
References: <20210304163140.543171-1-peterx@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

UFFD_FEATURE_THREAD_ID is supported in Linux 4.14.

Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man2/ioctl_userfaultfd.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index 47ae5f473..b58983fe7 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -208,6 +208,11 @@ signal will be sent to the faulting process.
 Applications using this
 feature will not require the use of a userfaultfd monitor for processing
 memory accesses to the regions registered with userfaultfd.
+.TP
+.BR UFFD_FEATURE_THREAD_ID " (since Linux 4.14)"
+If this feature bit is set,
+.I uffd_msg.pagefault.feat.ptid
+Will be set to the faulted thread ID for each page fault message.
 .PP
 The returned
 .I ioctls
-- 
2.26.2

