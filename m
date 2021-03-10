Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F02E334B7E
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 23:24:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232196AbhCJWXh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 17:23:37 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:57494 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231790AbhCJWXH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 17:23:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1615414987;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=+HBMhwNDuSkuTKHptQidlV5B3gcNKniJIMjHDTB7rlE=;
        b=DXdgQios9fg7Zcdys1A/KSYLDSQ0jyeO98bhghhOUGnqYzV/9vX7+wLJG87njlQUjQVLwG
        0w2gTkpjW69zPWbG5SJYWAGCq4O22ny4vwJY186N59Q7flLCJeD1TrYYEpVu1sxfttOUYQ
        +gMjupnxnCMwSjohojhR4FUfGNFsS+U=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-452-Ul1oQzF1PQOBP1Q-ibLB-g-1; Wed, 10 Mar 2021 17:23:05 -0500
X-MC-Unique: Ul1oQzF1PQOBP1Q-ibLB-g-1
Received: by mail-qt1-f198.google.com with SMTP id t19so14058543qta.2
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 14:23:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+HBMhwNDuSkuTKHptQidlV5B3gcNKniJIMjHDTB7rlE=;
        b=Gx/gJCO+zoVvhNZqpmHMFjUK2Y6kXR5JbSeZvngEcVO0XnjCzPTTfYGOFUTg/GLt5U
         VRUhY+HQH5ZgQ6gCduH8W4tpFrK6+hwGqmJHSWWDVc8Q782te2hdLO6WwgU1Ya21C28f
         XzbwuuKnsrmJDkcGtMEBNwjWnU6tWsiaDMMDYDuOrVzXVvdLZ7DZhdVGpBGMTIIiWF9t
         gymFMYGJQQUrZ5+EOo8jvr8va1U37b/99XNwj8VvMEx0AV/hpfXfBDdrlPi0IPNMTRMX
         2TVCvuxOBotV09wEUfvKTRnbX0w0RQ3RBs6oeEJM5CIN6djlvNI1GU137G3rfEeRzWXn
         0Pfg==
X-Gm-Message-State: AOAM532qnRjjZBQpIeYc1fWp2ntNAZlEZoLAsE8xFuUwBUp3ACZRhHVp
        yrbPsEwkPo/lbcpFoQ5M4eUFCaIG1MrAorCuoiwTStKwFt4aI5udSbC4E3IbyuoCfr+ia0xsR0c
        Oq/OAHgjlG4NQzJeDpOJZvJWKnr518QJ3rIazpOBwjxd8DVSjGX5AC/16jZXfQtk0F+jtbw==
X-Received: by 2002:a37:5289:: with SMTP id g131mr4833608qkb.26.1615414984925;
        Wed, 10 Mar 2021 14:23:04 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzAN3mDdBjKseLO5fmQHxuMXQeVPdNIXECiyhfVTWLlynM+To1wjlluNwci20PAJP2f7jI0tQ==
X-Received: by 2002:a37:5289:: with SMTP id g131mr4833582qkb.26.1615414984522;
        Wed, 10 Mar 2021 14:23:04 -0800 (PST)
Received: from xz-x1.redhat.com ([142.126.89.138])
        by smtp.gmail.com with ESMTPSA id e18sm451364qtr.52.2021.03.10.14.23.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 14:23:04 -0800 (PST)
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
Subject: [PATCH v3 2/4] userfaultfd.2: Add write-protect mode
Date:   Wed, 10 Mar 2021 17:22:58 -0500
Message-Id: <20210310222300.200054-3-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210310222300.200054-1-peterx@redhat.com>
References: <20210310222300.200054-1-peterx@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Write-protect mode is supported starting from Linux 5.7.

Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man2/userfaultfd.2 | 103 ++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 101 insertions(+), 2 deletions(-)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index 555e37409..d1f9aad24 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -78,6 +78,32 @@ all memory ranges that were registered with the object are unregistered
 and unread events are flushed.
 .\"
 .PP
+Userfaultfd supports two modes of registration:
+.TP
+.BR UFFDIO_REGISTER_MODE_MISSING " (since 4.10)"
+When registered with
+.B UFFDIO_REGISTER_MODE_MISSING
+mode, the userspace will receive a page fault message when a missing page is
+accessed.
+The faulted thread will be stopped from execution until the page fault is
+resolved from the userspace by either an
+.B UFFDIO_COPY
+or an
+.B UFFDIO_ZEROPAGE
+ioctl.
+.TP
+.BR UFFDIO_REGISTER_MODE_WP " (since 5.7)"
+When registered with
+.B UFFDIO_REGISTER_MODE_WP
+mode, the userspace will receive a page fault message when a write-protected
+page is written.
+The faulted thread will be stopped from execution until the userspace
+un-write-protect the page using an
+.B UFFDIO_WRITEPROTECT
+ioctl.
+.PP
+Multiple modes can be enabled at the same time for the same memory range.
+.PP
 Since Linux 4.14, userfaultfd page fault message can selectively embed faulting
 thread ID information into the fault message.
 One needs to enable this feature explicitly using the
@@ -144,6 +170,17 @@ single threaded non-cooperative userfaultfd manager implementations.
 .\" and limitations remaining in 4.11
 .\" Maybe it's worth adding a dedicated sub-section...
 .\"
+.PP
+Starting from Linux 5.7, userfaultfd is able to do synchronous page dirty
+tracking using the new write-protection register mode.
+One should check against the feature bit
+.B UFFD_FEATURE_PAGEFAULT_FLAG_WP
+before using this feature.
+Similar to the original userfaultfd missing mode, the write-protect mode will
+generate an userfaultfd message when the protected page is written.
+The user needs to resolve the page fault by unprotecting the faulted page and
+kick the faulted thread to continue.
+For more information, please refer to "Userfaultfd write-protect mode" section.
 .SS Userfaultfd operation
 After the userfaultfd object is created with
 .BR userfaultfd (),
@@ -219,6 +256,64 @@ userfaultfd can be used only with anonymous private memory mappings.
 Since Linux 4.11,
 userfaultfd can be also used with hugetlbfs and shared memory mappings.
 .\"
+.SS Userfaultfd write-protect mode (since 5.7)
+Since Linux 5.7, userfaultfd supports write-protect mode.
+The user needs to first check availability of this feature using
+.B UFFDIO_API
+ioctl against the feature bit
+.B UFFD_FEATURE_PAGEFAULT_FLAG_WP
+before using this feature.
+.PP
+To register with userfaultfd write-protect mode, the user needs to initiate the
+.B UFFDIO_REGISTER
+ioctl with mode
+.B UFFDIO_REGISTER_MODE_WP
+set.
+Note that it's legal to monitor the same memory range with multiple modes.
+For example, the user can do
+.B UFFDIO_REGISTER
+with the mode set to
+.BR "UFFDIO_REGISTER_MODE_MISSING | UFFDIO_REGISTER_MODE_WP" .
+When there is only
+.B UFFDIO_REGISTER_MODE_WP
+registered, the userspace will
+.I not
+receive any message when a missing page is written.
+Instead, the userspace will only receive a write-protect page fault message
+when an existing but write-protected page got written.
+.PP
+After the
+.B UFFDIO_REGISTER
+ioctl completed with
+.B UFFDIO_REGISTER_MODE_WP
+mode set, the user can write-protect any existing memory within the range using
+the ioctl
+.B UFFDIO_WRITEPROTECT
+where
+.I uffdio_writeprotect.mode
+should be set to
+.BR UFFDIO_WRITEPROTECT_MODE_WP .
+.PP
+When a write-protect event happens, the userspace will receive a page fault
+message whose
+.I uffd_msg.pagefault.flags
+will be with
+.B UFFD_PAGEFAULT_FLAG_WP
+flag set.  Note: since only writes can trigger such kind of fault,
+write-protect messages will always be with
+.B UFFD_PAGEFAULT_FLAG_WRITE
+bit set too along with bit
+.BR UFFD_PAGEFAULT_FLAG_WP .
+.PP
+To resolve a write-protection page fault, the user should initiate another
+.B UFFDIO_WRITEPROTECT
+ioctl, whose
+.I uffd_msg.pagefault.flags
+should have the flag
+.B UFFDIO_WRITEPROTECT_MODE_WP
+cleared upon the faulted page or range.
+.PP
+Write-protect mode only supports private anonymous memory.
 .SS Reading from the userfaultfd structure
 Each
 .BR read (2)
@@ -364,8 +459,12 @@ flag (see
 .BR ioctl_userfaultfd (2))
 and this flag is set, this a write fault;
 otherwise it is a read fault.
-.\"
-.\" UFFD_PAGEFAULT_FLAG_WP is not yet supported.
+.TP
+.B UFFD_PAGEFAULT_FLAG_WP
+If the address is in a range that was registered with the
+.B UFFDIO_REGISTER_MODE_WP
+flag, when this bit is set it means it's a write-protect fault.  Otherwise it's
+a page missing fault.
 .RE
 .TP
 .I pagefault.feat.pid
-- 
2.26.2

