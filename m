Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E746934DA07
	for <lists+linux-man@lfdr.de>; Tue, 30 Mar 2021 00:19:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231585AbhC2WTD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Mar 2021 18:19:03 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:28980 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231597AbhC2WSp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Mar 2021 18:18:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1617056324;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=E2GVHJmjqb2iBlZUx1y2wNYv3goudnNwQwgOfUhB7yU=;
        b=WDtKoo+paj6fAV14JzL7jLEe2+tG94/AagL5WM64+trmA/Q4wSJPt6wLxOBrBmtUkzTmIx
        0jCfD9vtVruGBpAc/cruLFTzTAS1qtYP9Q2ujO/lfUVtNbT6mtXAKs7NeWgagb+rqkHbep
        5izkiZPIBLx7zY3nAeBCOiNvZe/f5a4=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-1-s697q_x0Oy69jCKO47NKVw-1; Mon, 29 Mar 2021 18:18:42 -0400
X-MC-Unique: s697q_x0Oy69jCKO47NKVw-1
Received: by mail-qt1-f197.google.com with SMTP id l11so8507808qtk.2
        for <linux-man@vger.kernel.org>; Mon, 29 Mar 2021 15:18:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=E2GVHJmjqb2iBlZUx1y2wNYv3goudnNwQwgOfUhB7yU=;
        b=uYhPjIYZDuTur9sNzNr5RZJGTNYjFnzkEuzH1VW9D7etdCeTueY2wpn0+xbDL/6ba3
         0Tpw+9KQZMmvJ9TSWR6xWA6vDpR8qe/fMLJ/LGJ045R4akcdjHzhmK7JTVE3I7YcwfCi
         t5CwMC3wxuPlT5I5fizk/UgmpyYUY+bOBIEv5fiEpcg6LaHVney2zsluUQ1vbEaExr5J
         t4Uzt8HXyfAatb2JSQ3dFLgimf0WtiVWKutXfNhrPEiwV49xWJOd4j0lDfZNe/HdVbY/
         Z2F4wWebeOUuaAYiPo5C80ugXkt4AF5m7FHri37EDwWeZM9jhrdEoEwS9yALACEmc99r
         aPQg==
X-Gm-Message-State: AOAM533sndFCsBwNiFbhw98M1/CTD6BM3ozFLW5k8fxmSffo5GVl38/+
        MQeiz6Dx3CGgPO5YNv6s34tpnPdhrwiY4X1xrbXWRHHsTiMlkd2oHtJXUgl42hjuuSuInPnZZF/
        LZMpYXWNa03ZLdnOf0bxo
X-Received: by 2002:ac8:a04:: with SMTP id b4mr24888712qti.376.1617056321687;
        Mon, 29 Mar 2021 15:18:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzgNQ6N3HPLhOf3hwMshyADiJemUjJNr4a4zc+S3pm/C0PON3OhYbkkFJRQ+v/eqjEnWMMxmw==
X-Received: by 2002:ac8:a04:: with SMTP id b4mr24888695qti.376.1617056321467;
        Mon, 29 Mar 2021 15:18:41 -0700 (PDT)
Received: from xz-x1.redhat.com (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id i17sm12255215qtr.33.2021.03.29.15.18.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 15:18:40 -0700 (PDT)
From:   Peter Xu <peterx@redhat.com>
To:     linux-mm@kvack.org, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org
Cc:     Axel Rasmussen <axelrasmussen@google.com>, peterx@redhat.com,
        Nadav Amit <nadav.amit@gmail.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v5 3/4] ioctl_userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Date:   Mon, 29 Mar 2021 18:18:32 -0400
Message-Id: <20210329221833.517923-4-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210329221833.517923-1-peterx@redhat.com>
References: <20210329221833.517923-1-peterx@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

UFFD_FEATURE_THREAD_ID is supported in Linux 4.14.

Acked-by: Mike Rapoport <rppt@linux.vnet.ibm.com>
Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man2/ioctl_userfaultfd.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index 47ae5f473..d4a8375b8 100644
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
+will be set to the faulted thread ID for each page fault message.
 .PP
 The returned
 .I ioctls
-- 
2.26.2

