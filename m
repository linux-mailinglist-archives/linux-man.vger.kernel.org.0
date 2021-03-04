Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14A6932CA4C
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 03:03:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231226AbhCDCCP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 21:02:15 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:25365 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232025AbhCDCBY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Mar 2021 21:01:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1614823198;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=DK7INWloX9H1AWnOZWZTogB23KAtqlPeswE1LI5JIvE=;
        b=cHxSmiEz5cpSxXExH4dlfiU32UoqA7K0AAaAwzSpRupkeYRN7eGRLLZJXXTFlAUsW+lu5S
        lCuEfQ5715SFnaVEd4a8P9QKi3D2LbcvRCMNXF+3w9cN4IF/vBTDMKws19CFr0pjHVrTII
        K8IUZecbHGTjMvr8PZmOKXflrwdX7gI=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-182-DnHdhQTaP9qJ6vpAt8rwWg-1; Wed, 03 Mar 2021 20:59:57 -0500
X-MC-Unique: DnHdhQTaP9qJ6vpAt8rwWg-1
Received: by mail-qv1-f70.google.com with SMTP id d15so19194502qvn.16
        for <linux-man@vger.kernel.org>; Wed, 03 Mar 2021 17:59:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DK7INWloX9H1AWnOZWZTogB23KAtqlPeswE1LI5JIvE=;
        b=ZpLAaE3aferHAFhPJ5FCXGsXsfybykW8aBWM87cWM+go53hyYp/SubQm3j+4QFlFZh
         L7zS5s7SQR0o5a61O/3hpqyY1I23hGhBl2pupME1O7wnYp9KWZWriizU0i9OXhWqYLOC
         DPLhqec+cPRnqnY9Ha867jid1l7rRfygbqHWW3GLkVoPstSaVRot49E5LwNp7MuYjDp9
         KzedHZgZCUgUMTNcHjJU43wuQSYeYnJCY4iKaCAAHLVmzB7AVLTxBqEy9yN52xmN8YjZ
         eAyFwoEiXqD95njSb5XqzxPEgvbKjW96mJvbd3QYGxNW556M1Ux7LAh0xHwGip3w9tg4
         zhQA==
X-Gm-Message-State: AOAM533OVL2NlAaDxbzqJ0BqbIsFMrGMQG3O45IWpPsGlCSVMxJnLVgd
        00GNjaDsAanDf0gssy3rq/PiTkiCJnTcsaMaxI+p2iWSInkiQCNaLpSusYGsap2eMpZ4nn7CN5w
        ZpqtNlt9tFz/5vZ21xb7hv3MSGgvuvXg727GRX4d4q72uHNsx/MS8YnaF2XF30sQ6/l35Gg==
X-Received: by 2002:a0c:b617:: with SMTP id f23mr2163146qve.44.1614823196978;
        Wed, 03 Mar 2021 17:59:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwxeZ5a1mqjFCVuCtrVoLgbBF/ndMtcWPREu37qyYMGQmwQz48Q/q8ajeD2blfbJQfQ0Oti+w==
X-Received: by 2002:a0c:b617:: with SMTP id f23mr2163126qve.44.1614823196691;
        Wed, 03 Mar 2021 17:59:56 -0800 (PST)
Received: from xz-x1.redhat.com (bras-vprn-toroon474qw-lp130-25-174-95-95-253.dsl.bell.ca. [174.95.95.253])
        by smtp.gmail.com with ESMTPSA id b7sm18610766qkj.115.2021.03.03.17.59.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 17:59:55 -0800 (PST)
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
Subject: [PATCH 4/4] ioctl_userfaultfd.2: Add write-protect mode docs
Date:   Wed,  3 Mar 2021 20:59:47 -0500
Message-Id: <20210304015947.517713-5-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210304015947.517713-1-peterx@redhat.com>
References: <20210304015947.517713-1-peterx@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Userfaultfd write-protect mode is supported starting from Linux 5.7.

Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man2/ioctl_userfaultfd.2 | 74 +++++++++++++++++++++++++++++++++++++---
 1 file changed, 70 insertions(+), 4 deletions(-)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index 1965d1932..3feb888a8 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -208,10 +208,11 @@ signal will be sent to the faulting process.
 Applications using this
 feature will not require the use of a userfaultfd monitor for processing
 memory accesses to the regions registered with userfaultfd.
+.TP
 .BR UFFD_FEATURE_THREAD_ID " (since Linux 4.14)"
 If this feature bit is set,
 .I uffd_msg.pagefault.feat.ptid
-Will be set
+will be set to the faulted thread ID for each page fault message.
 .PP
 The returned
 .I ioctls
@@ -233,6 +234,11 @@ operation is supported.
 The
 .B UFFDIO_UNREGISTER
 operation is supported.
+.TP
+.B 1 << _UFFDIO_WRITEPROTECT
+The
+.B UFFDIO_WRITEPROTECT
+operation is supported.
 .PP
 This
 .BR ioctl (2)
@@ -321,9 +327,6 @@ Track page faults on missing pages.
 .B UFFDIO_REGISTER_MODE_WP
 Track page faults on write-protected pages.
 .PP
-Currently, the only supported mode is
-.BR UFFDIO_REGISTER_MODE_MISSING .
-.PP
 If the operation is successful, the kernel modifies the
 .I ioctls
 bit-mask field to indicate which
@@ -653,6 +656,69 @@ field of the
 structure was not a multiple of the system page size; or
 .I len
 was zero; or the specified range was otherwise invalid.
+.SS UFFDIO_WRITEPROTECT
+(Since Linux 5.7) Do write-protect or write-unprotect for an userfaultfd
+registered memory range with mode
+.BR UFFDIO_REGISTER_MODE_WP .
+.PP
+The
+.I argp
+argument is a pointer to a
+.I uffdio_range
+structure as shown below:
+.PP
+.in +4n
+.EX
+struct uffdio_writeprotect {
+    struct uffdio_range range;  /* Range to change write permission */
+    __u64 mode;                 /* Mode to change write permission */
+};
+.EE
+.in
+There're two modes that are supported in this structure:
+.TP
+.B UFFDIO_WRITEPROTECT_MODE_WP
+When this mode bit is set, the ioctl will be a write-protect operation upon the
+memory range specified by
+.IR range .
+Otherwise it'll be a write-unprotect operation upon the specified range.
+.TP
+.B UFFDIO_WRITEPROTECT_MODE_DONTWAKE
+Do not wake up the thread that waits for page-fault resolution after the
+operation.  This could only be specified if
+.B UFFDIO_WRITEPROTECT_MODE_WP
+is not specified (in a resolving stage, not protecting stage).
+.PP
+This
+.BR ioctl (2)
+operation returns 0 on success.
+On error, \-1 is returned and
+.I errno
+is set to indicate the error.
+Possible errors include:
+.TP
+.B EINVAL
+The
+.I start
+or the
+.I len
+field of the
+.I ufdio_range
+structure was not a multiple of the system page size; or
+.I len
+was zero; or the specified range was otherwise invalid.
+.TP
+.B EAGAIN
+The process was interrupted and need to retry.
+.TP
+.B ENOENT
+The range specified in
+.I range
+is not valid.  E.g., the virtual address does not exist, or not registered with
+userfaultfd write-protect mode.
+.TP
+.B EFAULT
+Encountered a generic fault during processing.
 .SH RETURN VALUE
 See descriptions of the individual operations, above.
 .SH ERRORS
-- 
2.26.2

