Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7C02334B81
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 23:24:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232626AbhCJWXh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 17:23:37 -0500
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:49049 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231935AbhCJWXI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 17:23:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1615414988;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=BRu817/U099Z69O52DlP7850OjT0QzngDMzivy9vMy0=;
        b=L9SQPsFRUyGFmxGZE/x+s5a+HkQl4dtZWLTUQwNH78SgJEsP1amhGEOvH3RfgdTa2kQIes
        ZjkequRwuGEq4X2dT1v3HgqwuGeomSpgRSyFL7AZmH/m04xav3e7oWF3GH9iuxDBOcA+Cn
        387M7KdouN0ejxSZJYl2Uev0H44n+cc=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-9-jYcqIF8WOOessBIQIgByZQ-1; Wed, 10 Mar 2021 17:23:06 -0500
X-MC-Unique: jYcqIF8WOOessBIQIgByZQ-1
Received: by mail-qt1-f200.google.com with SMTP id k4so14060796qtd.20
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 14:23:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BRu817/U099Z69O52DlP7850OjT0QzngDMzivy9vMy0=;
        b=UQA0RHJuYg+fkAsX6YUz3ASRN7He+qHGP+U6o8KhCVYQPcXCpFvIELnphhmBTmdcPf
         O4HJY7Zl//CR0JNfjf0fJcX8hBVZloL79AXJEYEFuGk+XDCAoqGXfLf65npunKIrWcCN
         JW/+ersBUAIPrAHFyEJRzCfnuLW/fylp6N5FUGDBAUH9gBwRRU2HX2Ys9tEkIWx00h3H
         ABFe+79Gp1W00cyRiBduZlCQgE3kvLbsHAA6x6lyRwtWYZSt6FRqyiw+bQqXLiW/eur6
         5AEq0+bZ9qvyLjZzNOUsfBmzKiv5QkdNZrWFlcoq1JCKuROMSKfGyif9v0k/yRTgFS31
         n6gQ==
X-Gm-Message-State: AOAM530sV13Sy0+cVpXkmmUptikq63jD5tOGiAz9/rDSd9jTuDB11NVx
        8ByNUll/JES7cJdyHNfDWO5my0gkn6mij+uzrfQ+LzNLBR6BwKV3mXSoC1RjnCdfxkL/zSsph8z
        sRUjfl2UGOuMaiCO+n3+FFHYGAiilCJ7aWSP6xrvZ44rg9wMQyjuFEPllqhIcM3vHNhVsDA==
X-Received: by 2002:a05:620a:4152:: with SMTP id k18mr4904309qko.446.1615414986027;
        Wed, 10 Mar 2021 14:23:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxxuNaJloek+uHlF7/E1VLGZKWPpzK7JbQICS1D+PzN2odRmmYut602LIp0SFoC6bEVdMPnNg==
X-Received: by 2002:a05:620a:4152:: with SMTP id k18mr4904283qko.446.1615414985770;
        Wed, 10 Mar 2021 14:23:05 -0800 (PST)
Received: from xz-x1.redhat.com ([142.126.89.138])
        by smtp.gmail.com with ESMTPSA id e18sm451364qtr.52.2021.03.10.14.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 14:23:05 -0800 (PST)
From:   Peter Xu <peterx@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     Andrea Arcangeli <aarcange@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        linux-kernel@vger.kernel.org, peterx@redhat.com,
        Linux MM Mailing List <linux-mm@kvack.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>
Subject: [PATCH v3 3/4] ioctl_userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Date:   Wed, 10 Mar 2021 17:22:59 -0500
Message-Id: <20210310222300.200054-4-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210310222300.200054-1-peterx@redhat.com>
References: <20210310222300.200054-1-peterx@redhat.com>
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

