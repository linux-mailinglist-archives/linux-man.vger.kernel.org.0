Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF046345242
	for <lists+linux-man@lfdr.de>; Mon, 22 Mar 2021 23:09:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230167AbhCVWJI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Mar 2021 18:09:08 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:42320 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230258AbhCVWI6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Mar 2021 18:08:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1616450938;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=BRu817/U099Z69O52DlP7850OjT0QzngDMzivy9vMy0=;
        b=Xj/pAn5Ng3jbI3R15QwYU28Bau3W/QuWhCjpTm/u8oMT94jqa2+oPEhGg5rwF5E5ycbaXX
        yWKZPvxjg55KsOvhYtlCEUrboGFIEnOXiHTgKsRJ0Wpi2LL7g8RM0AhJ35WHjh8iKOe/EP
        5SlC1i2zSKg1JQYb2yUl7PtCP5InTi8=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-144-HHi8yUsiO-OL4Hl2PZcncg-1; Mon, 22 Mar 2021 18:08:56 -0400
X-MC-Unique: HHi8yUsiO-OL4Hl2PZcncg-1
Received: by mail-qv1-f71.google.com with SMTP id h12so373020qvm.9
        for <linux-man@vger.kernel.org>; Mon, 22 Mar 2021 15:08:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BRu817/U099Z69O52DlP7850OjT0QzngDMzivy9vMy0=;
        b=qwvCmfXoUUqeKudE+lLBgMpqtzuayhiMQFa64S7nWyamWqJVI9wgouRyHl78LFACkU
         pJkUwdhrPUyR0RxFPcn+CzoEygFRCpgrvpmOKypha6dTxpB9MXmnilfxp92FLuh8wcK1
         SOD6ueX0/iDI216uQW7Csy1U6hNK/ctEfIgxpdB6gs9nTlZNMrtVCx6xbCs8hsVYLw44
         CSf9mg5dqFb0P69AVmsDAhqnqkLoTOVRtQesVHmlLMyjr2v4T4OoYLZq57cDBDN+AAYp
         H5N/lH42TGyrLWz6a7lLB7UQbqlgPLWticPGzOsWbqrjpSemoXhKnLs/KjZL71xztWZp
         yqPg==
X-Gm-Message-State: AOAM5313WSbQY+YZhqvxTNYlPHeOU8Ffx577CbGcFxFxMFym1wtOo+AG
        AVVpFsRyMS7TsVwFpNLsJ5FlyzjdIjnJYWNnj+NtEPLgJHLcp7645A1bS/cwEzWtqD7q2prbqFU
        MLhVxEaY87QVCxFg1/7NjwhsIgAH4DFRRQU1F89ecoLNSBQbjhSuq/inBgtfajA6urvtKYQ==
X-Received: by 2002:a0c:8365:: with SMTP id j92mr1838983qva.19.1616450935947;
        Mon, 22 Mar 2021 15:08:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwCbjzyxBUp80nxRyYOsjXe3EhMn6ViF263Myc1EobEUgW3DpX04+Jg+RKXYZDbze77kuVtcQ==
X-Received: by 2002:a0c:8365:: with SMTP id j92mr1838955qva.19.1616450935685;
        Mon, 22 Mar 2021 15:08:55 -0700 (PDT)
Received: from xz-x1.redhat.com (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id x1sm9627850qtr.97.2021.03.22.15.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 15:08:54 -0700 (PDT)
From:   Peter Xu <peterx@redhat.com>
To:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mm@kvack.org
Cc:     Andrea Arcangeli <aarcange@redhat.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Alejandro Colomar <alx.manpages@gmail.com>, peterx@redhat.com,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v4 3/4] ioctl_userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Date:   Mon, 22 Mar 2021 18:08:47 -0400
Message-Id: <20210322220848.52162-4-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210322220848.52162-1-peterx@redhat.com>
References: <20210322220848.52162-1-peterx@redhat.com>
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

