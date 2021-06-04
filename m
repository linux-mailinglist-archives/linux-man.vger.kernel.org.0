Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0D5239C0DD
	for <lists+linux-man@lfdr.de>; Fri,  4 Jun 2021 21:57:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230352AbhFDT7d (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Jun 2021 15:59:33 -0400
Received: from mail-yb1-f201.google.com ([209.85.219.201]:47913 "EHLO
        mail-yb1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230256AbhFDT7c (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Jun 2021 15:59:32 -0400
Received: by mail-yb1-f201.google.com with SMTP id d4-20020a25b5c40000b02904f8e3c8c6c9so13069784ybg.14
        for <linux-man@vger.kernel.org>; Fri, 04 Jun 2021 12:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=WnPagf26OWdwQb5LXQhta12h+qhGjx2PcreReVGXCeo=;
        b=hpz+AqKJE8ngJhA5Wm8aOueDvuhKlrf5ud0y7nE8MAbai96Y1SI/WTH6Vx97AQnfew
         0oe34wyic4uKfD0tFs8z+dmuj0dzVSM6AGsx+15baZbD1pmISnEgBTS3h7vUn2v3J3yp
         W6kOQEP0Kw/do7UwSGxvVEJRqVijGOMegAIFSb9/UF2g1ZqLG6hKyljzY27/6pjfHclB
         icqDIauyBqUttVv/7jHjvtCFi1bJLhGq4Tj51LGQTXKO0PiQTEFtYIB3r3Levu6dGRRo
         ozf4rsoTTV5OXgAk2Ra763oX79oDvo5XKOB4/q3OsTspSerALoP3yA8QrM4NbSjpb4FS
         r9gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=WnPagf26OWdwQb5LXQhta12h+qhGjx2PcreReVGXCeo=;
        b=qsNx4Z5uFaY1mZYBa1z5Bg2fP082lnk3MPN1LGsi15lNlpCJ803NJVXJ3tieHssu+g
         ZVxJoiHRArOaVK51zfL5GWqvaN+ijTXA8V3VziAGH7J5VQQfnx+Cik8dNy+dySZEOwtW
         q/Neiz8xlsA9Fs0ip+Vv2DRL831uzy5ZKpIHdisHXrVKF072FXCtKmYgAAs5nc4BZlPp
         WcXNvC9e6UktggoamcZ3fpebFL8oCMvtLA633Jzti1QQ/AIP8Ee3cUwY08auxgsiyZIl
         GIZHRn8YYsTFhbEblUOzCX76FwUTjmBtzRyChiDMne8td3Nfhw4l6E3LG28yXOs+bwR9
         cNmw==
X-Gm-Message-State: AOAM533so43D7/hi4IO644cWUVjZbm6c8ciE/sy4kVZNaZ7fGzNhPhRC
        +GIiq9wWYUsIamjFqNaA/YbiVK9J9IOrNKhjLKTx
X-Google-Smtp-Source: ABdhPJykffaXJ4ldrV/N8M8LAhc59pRdH3WwGqKEERTe/NFie2IyyTRlFsySPXtOh7OLV1lWyzUGDQcI7cIarMg49/eY
X-Received: from ajr0.svl.corp.google.com ([2620:15c:2cd:203:a513:d22b:d6ad:e903])
 (user=axelrasmussen job=sendgmr) by 2002:a5b:c83:: with SMTP id
 i3mr7780659ybq.453.1622836593174; Fri, 04 Jun 2021 12:56:33 -0700 (PDT)
Date:   Fri,  4 Jun 2021 12:56:22 -0700
Message-Id: <20210604195622.1249588-1-axelrasmussen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.rc1.229.g3e70b5a671-goog
Subject: [PATCH v2] ioctl_userfaultfd.2, userfaultfd.2: add minor fault mode
From:   Axel Rasmussen <axelrasmussen@google.com>
To:     Andrea Arcangeli <aarcange@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Hugh Dickins <hughd@google.com>,
        Mike Kravetz <mike.kravetz@oracle.com>,
        Peter Xu <peterx@redhat.com>
Cc:     linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        linux-mm@kvack.org, Axel Rasmussen <axelrasmussen@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Userfaultfd minor fault mode is supported starting from Linux 5.13.

This commit adds a description of the new mode, as well as the new ioctl
used to resolve such faults. The two go hand-in-hand: one can't resolve
a minor fault without continue, and continue can't be used to resolve
any other kind of fault.

This patch covers just the hugetlbfs implementation (in 5.13). Support
for shmem is forthcoming, but as it has not yet made it into a kernel
release candidate, it will be added in a future commit.

Signed-off-by: Axel Rasmussen <axelrasmussen@google.com>
---
 man2/ioctl_userfaultfd.2 | 125 ++++++++++++++++++++++++++++++++++++---
 man2/userfaultfd.2       |  79 ++++++++++++++++++++-----
 2 files changed, 182 insertions(+), 22 deletions(-)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index 504f61d4b..7b990c24a 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -214,6 +214,10 @@ memory accesses to the regions registered with userfaultfd.
 If this feature bit is set,
 .I uffd_msg.pagefault.feat.ptid
 will be set to the faulted thread ID for each page-fault message.
+.TP
+.BR UFFD_FEATURE_MINOR_HUGETLBFS " (since Linux 5.13)"
+If this feature bit is set, the kernel supports registering userfaultfd ranges
+in minor mode on hugetlbfs-backed memory areas.
 .PP
 The returned
 .I ioctls
@@ -240,6 +244,11 @@ operation is supported.
 The
 .B UFFDIO_WRITEPROTECT
 operation is supported.
+.TP
+.B 1 << _UFFDIO_CONTINUE
+The
+.B UFFDIO_CONTINUE
+operation is supported.
 .PP
 This
 .BR ioctl (2)
@@ -278,14 +287,8 @@ by the current kernel version.
 (Since Linux 4.3.)
 Register a memory address range with the userfaultfd object.
 The pages in the range must be "compatible".
-.PP
-Up to Linux kernel 4.11,
-only private anonymous ranges are compatible for registering with
-.BR UFFDIO_REGISTER .
-.PP
-Since Linux 4.11,
-hugetlbfs and shared memory ranges are also compatible with
-.BR UFFDIO_REGISTER .
+Please refer to the list of register modes below for the compatible memory
+backends for each mode.
 .PP
 The
 .I argp
@@ -324,9 +327,16 @@ the specified range:
 .TP
 .B UFFDIO_REGISTER_MODE_MISSING
 Track page faults on missing pages.
+Since Linux 4.3, only private anonymous ranges are compatible.
+Since Linux 4.11, hugetlbfs and shared memory ranges are also compatible.
 .TP
 .B UFFDIO_REGISTER_MODE_WP
 Track page faults on write-protected pages.
+Since Linux 5.7, only private anonymous ranges are compatible.
+.TP
+.B UFFDIO_REGISTER_MODE_MINOR
+Track minor page faults.
+Since Linux 5.13, only hugetlbfs ranges are compatible.
 .PP
 If the operation is successful, the kernel modifies the
 .I ioctls
@@ -735,6 +745,105 @@ or not registered with userfaultfd write-protect mode.
 .TP
 .B EFAULT
 Encountered a generic fault during processing.
+.\"
+.SS UFFDIO_CONTINUE
+(Since Linux 5.13.)
+Resolve a minor page fault by installing page table entries for existing pages
+in the page cache.
+.PP
+The
+.I argp
+argument is a pointer to a
+.I uffdio_continue
+structure as shown below:
+.PP
+.in +4n
+.EX
+struct uffdio_continue {
+    struct uffdio_range range; /* Range to install PTEs for and continue */
+    __u64 mode;                /* Flags controlling the behavior of continue */
+    __s64 mapped;              /* Number of bytes mapped, or negated error */
+};
+.EE
+.in
+.PP
+The following value may be bitwise ORed in
+.IR mode
+to change the behavior of the
+.B UFFDIO_CONTINUE
+operation:
+.TP
+.B UFFDIO_CONTINUE_MODE_DONTWAKE
+Do not wake up the thread that waits for page-fault resolution.
+.PP
+The
+.I mapped
+field is used by the kernel to return the number of bytes
+that were actually mapped, or an error in the same manner as
+.BR UFFDIO_COPY .
+If the value returned in the
+.I mapped
+field doesn't match the value that was specified in
+.IR range.len ,
+the operation fails with the error
+.BR EAGAIN .
+The
+.I mapped
+field is output-only;
+it is not read by the
+.B UFFDIO_CONTINUE
+operation.
+.PP
+This
+.BR ioctl (2)
+operation returns 0 on success.
+In this case, the entire area was mapped.
+On error, \-1 is returned and
+.I errno
+is set to indicate the error.
+Possible errors include:
+.TP
+.B EAGAIN
+The number of bytes mapped (i.e., the value returned in the
+.I mapped
+field) does not equal the value that was specified in the
+.I range.len
+field.
+.TP
+.B EINVAL
+Either
+.I range.start
+or
+.I range.len
+was not a multiple of the system page size; or
+.I range.len
+was zero; or the range specified was invalid.
+.TP
+.B EINVAL
+An invalid bit was specified in the
+.IR mode
+field.
+.TP
+.B EEXIST
+One or more pages were already mapped in the given range.
+.TP
+.B ENOENT
+The faulting process has changed its virtual memory layout simultaneously with
+an outstanding
+.B UFFDIO_CONTINUE
+operation.
+.TP
+.B ENOMEM
+Allocating memory needed to setup the page table mappings failed.
+.TP
+.B EFAULT
+No existing page could be found in the page cache for the given range.
+.TP
+.BR ESRCH
+The faulting process has exited at the time of a
+.B UFFDIO_CONTINUE
+operation.
+.\"
 .SH RETURN VALUE
 See descriptions of the individual operations, above.
 .SH ERRORS
diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index 593c189d8..07f53c6ff 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -78,7 +78,7 @@ all memory ranges that were registered with the object are unregistered
 and unread events are flushed.
 .\"
 .PP
-Userfaultfd supports two modes of registration:
+Userfaultfd supports three modes of registration:
 .TP
 .BR UFFDIO_REGISTER_MODE_MISSING " (since 4.10)"
 When registered with
@@ -92,6 +92,18 @@ or an
 .B UFFDIO_ZEROPAGE
 ioctl.
 .TP
+.BR UFFDIO_REGISTER_MODE_MINOR " (since 5.13)"
+When registered with
+.B UFFDIO_REGISTER_MODE_MINOR
+mode, user-space will receive a page-fault notification
+when a minor page fault occurs.
+That is, when a backing page is in the page cache, but
+page table entries don't yet exist.
+The faulted thread will be stopped from execution until the page fault is
+resolved from user-space by an
+.B UFFDIO_CONTINUE
+ioctl.
+.TP
 .BR UFFDIO_REGISTER_MODE_WP " (since 5.7)"
 When registered with
 .B UFFDIO_REGISTER_MODE_WP
@@ -212,9 +224,10 @@ a page fault occurring in the requested memory range, and satisfying
 the mode defined at the registration time, will be forwarded by the kernel to
 the user-space application.
 The application can then use the
-.B UFFDIO_COPY
+.B UFFDIO_COPY ,
+.B UFFDIO_ZEROPAGE ,
 or
-.B UFFDIO_ZEROPAGE
+.B UFFDIO_CONTINUE
 .BR ioctl (2)
 operations to resolve the page fault.
 .PP
@@ -318,6 +331,43 @@ should have the flag
 cleared upon the faulted page or range.
 .PP
 Write-protect mode supports only private anonymous memory.
+.\"
+.SS Userfaultfd minor fault mode (since 5.13)
+Since Linux 5.13, userfaultfd supports minor fault mode.
+In this mode, fault messages are produced not for major faults (where the
+page was missing), but rather for minor faults, where a page exists in the page
+cache, but the page table entries are not yet present.
+The user needs to first check availability of this feature using
+.B UFFDIO_API
+ioctl against the feature bit
+.B UFFD_FEATURE_MINOR_HUGETLBFS
+before using this feature.
+.PP
+To register with userfaultfd minor fault mode, the user needs to initiate the
+.B UFFDIO_REGISTER
+ioctl with mode
+.B UFFD_REGISTER_MODE_MINOR
+set.
+.PP
+When a minor fault occurs, user-space will receive a page-fault notification
+whose
+.I uffd_msg.pagefault.flags
+will have the
+.B UFFD_PAGEFAULT_FLAG_MINOR
+flag set.
+.PP
+To resolve a minor page fault, the handler should decide whether or not the
+existing page contents need to be modified first.
+If so, this should be done in-place via a second, non-userfaultfd-registered
+mapping to the same backing page (e.g., by mapping the hugetlbfs file twice).
+Once the page is considered "up to date", the fault can be resolved by
+initiating an
+.B UFFDIO_CONTINUE
+ioctl, which installs the page table entries and (by default) wakes up the
+faulting thread(s).
+.PP
+Minor fault mode supports only hugetlbfs-backed memory.
+.\"
 .SS Reading from the userfaultfd structure
 Each
 .BR read (2)
@@ -456,19 +506,20 @@ For
 the following flag may appear:
 .RS
 .TP
-.B UFFD_PAGEFAULT_FLAG_WRITE
-If the address is in a range that was registered with the
-.B UFFDIO_REGISTER_MODE_MISSING
-flag (see
-.BR ioctl_userfaultfd (2))
-and this flag is set, this a write fault;
-otherwise it is a read fault.
+.B UFFD_PAGEFAULT_FLAG_WP
+If this flag is set, then the fault was a write-protect fault.
 .TP
+.B UFFD_PAGEFAULT_FLAG_MINOR
+If this flag is set, then the fault was a minor fault.
+.TP
+.B UFFD_PAGEFAULT_FLAG_WRITE
+If this flag is set, then the fault was a write fault.
+.HP
+If neither
 .B UFFD_PAGEFAULT_FLAG_WP
-If the address is in a range that was registered with the
-.B UFFDIO_REGISTER_MODE_WP
-flag, when this bit is set, it means it is a write-protect fault.
-Otherwise it is a page-missing fault.
+nor
+.B UFFD_PAGEFAULT_FLAG_MINOR
+are set, then the fault was a missing fault.
 .RE
 .TP
 .I pagefault.feat.pid
-- 
2.32.0.rc1.229.g3e70b5a671-goog

