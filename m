Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B4D632D7DB
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 17:33:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237855AbhCDQdZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 11:33:25 -0500
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:53185 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237831AbhCDQdN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 11:33:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1614875508;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=p9IaoeJsCRUG1LLipzY/Smbk9hrubLxR/AALEDsivN8=;
        b=OAaN0JRv3sNwCuwEcT5UE+hb22Jxp6MRiaP18NVmkOA/149kCZbEqw+qX39gcKjiSQVQYK
        /oGZbo8dIU4RwotgDZP7VPzLAGBYOEuPLKHD1ZJow+gNFYn9UbKVc0y5Y4iPzLSuzDNYb2
        Z9kUprhTvJ1YfzhS2zNn6Myz0CglLnM=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-189-h-je6H3WPhmIgT2Q525sgw-1; Thu, 04 Mar 2021 11:31:46 -0500
X-MC-Unique: h-je6H3WPhmIgT2Q525sgw-1
Received: by mail-qt1-f200.google.com with SMTP id 16so2330584qtw.1
        for <linux-man@vger.kernel.org>; Thu, 04 Mar 2021 08:31:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p9IaoeJsCRUG1LLipzY/Smbk9hrubLxR/AALEDsivN8=;
        b=eayH6f2ewlvzdt7u6IWcWXTwMXkHM6lbhtgKyJuUrcU0n7PlncVIDNIBEMQE5WD02O
         i3OwFieYzYIIi9T/DT3sJvES1A/Qkrnw37legEbZlPcwyHvwaaEL1FyvbqSwfZ7DbJs6
         8PEN5GOpvH5OF/zBFoMDwVAGiAA4/2QTGa/PBZcYTqppfUcLTijc6O+b7lYpJnHxIWLh
         a9PACNamH14yOAOv8Pa9fjbS24EfPDWhQrNFF+Q4QXIF6DpZB557KHf2rIUrNRYAz0k8
         b+8bMS5sgyM88P8fXdgn4MGW2XqRffKDmtvp+yo+ToQvZ+CD4UAMsVFpjKhGy3l13NsC
         /YGA==
X-Gm-Message-State: AOAM532BIdEReeKcitt6OYC76jLAEbZsrz9rrSf4QK57ErgJx06cyjyJ
        mrHkaK9Zub9KLB1nCciEzTdmC40jNff2x0yLHsB8q5F4dg6XLwIhUqSfZb9wX4wRYPd+bKzrR52
        MA2hrtP6B8fJ5FESGdbWG8nETIviYhTyAzo5beS4/0zv+WAuEXUsNwGmyI/6NNI10eWddhA==
X-Received: by 2002:a0c:b9a2:: with SMTP id v34mr4525213qvf.17.1614875505704;
        Thu, 04 Mar 2021 08:31:45 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwSsP+FFMDB/tnZzXdHZPnv+zAKYJ770BYZdyp3Xn0vfNLHMmlKp8dtkSsQcoMvksDc0fVEbA==
X-Received: by 2002:a0c:b9a2:: with SMTP id v34mr4525179qvf.17.1614875505427;
        Thu, 04 Mar 2021 08:31:45 -0800 (PST)
Received: from xz-x1.redhat.com (bras-vprn-toroon474qw-lp130-25-174-95-95-253.dsl.bell.ca. [174.95.95.253])
        by smtp.gmail.com with ESMTPSA id r2sm51753qti.4.2021.03.04.08.31.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 08:31:44 -0800 (PST)
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
Subject: [PATCH v2 1/4] userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Date:   Thu,  4 Mar 2021 11:31:37 -0500
Message-Id: <20210304163140.543171-2-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210304163140.543171-1-peterx@redhat.com>
References: <20210304163140.543171-1-peterx@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

UFFD_FEATURE_THREAD_ID is supported since Linux 4.14.

Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man2/userfaultfd.2 | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index e7dc9f813..0cd426a8a 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -77,6 +77,13 @@ When the last file descriptor referring to a userfaultfd object is closed,
 all memory ranges that were registered with the object are unregistered
 and unread events are flushed.
 .\"
+.PP
+Since Linux 4.14, userfaultfd page fault message can selectively embed faulting
+thread ID information into the fault message.  One needs to enable this feature
+explicitly using the
+.BR UFFD_FEATURE_THREAD_ID
+feature bit when initializing the userfaultfd context.  By default, thread ID
+reporting is diabled.
 .SS Usage
 The userfaultfd mechanism is designed to allow a thread in a multithreaded
 program to perform user-space paging for the other threads in the process.
@@ -229,6 +236,9 @@ struct uffd_msg {
         struct {
             __u64 flags;    /* Flags describing fault */
             __u64 address;  /* Faulting address */
+            union {
+                __u32 ptid; /* Thread ID of the fault */
+            } feat;
         } pagefault;
 
         struct {            /* Since Linux 4.11 */
@@ -358,6 +368,9 @@ otherwise it is a read fault.
 .\" UFFD_PAGEFAULT_FLAG_WP is not yet supported.
 .RE
 .TP
+.I pagefault.feat.pid
+The thread ID that triggered the page fault.
+.TP
 .I fork.ufd
 The file descriptor associated with the userfault object
 created for the child created by
-- 
2.26.2

