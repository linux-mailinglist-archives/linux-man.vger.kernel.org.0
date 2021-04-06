Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A493354E50
	for <lists+linux-man@lfdr.de>; Tue,  6 Apr 2021 10:09:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232453AbhDFIJf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Apr 2021 04:09:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232131AbhDFIJe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Apr 2021 04:09:34 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5CF6C06174A
        for <linux-man@vger.kernel.org>; Tue,  6 Apr 2021 01:09:26 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id g8-20020a9d6c480000b02901b65ca2432cso13839554otq.3
        for <linux-man@vger.kernel.org>; Tue, 06 Apr 2021 01:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc;
        bh=yJg7l9gsSaG4kv6u+ykRws6ChQyLvMEkVt2JLigC6yM=;
        b=HpUr2JRZcGAyqPshkPsz3R2ogd7YGRPrLXqDCOFX6TzsjeROqDPBn9yKCc9CJvnX3o
         6kvtUvrao1O0eK7WaQYi3a2nU7SDRyFu4eqn08uEBxjqqa7lLg0ERjNAosm6+t7gK/gk
         Co/NBDreOqb1OiCsTpVjpzrYo3N2Hx+tThOevx01AUPesY7YqKIbIT2Cjjc6NIOMCCst
         DsFlivnUFBU0EqbFeD2fALaMp5Boy8i4MDub5xnu4jna8fF/KS1pbYcvJ1SAiEgOjDkf
         57QvFj7DOfipxQOZB5o2ml21mKF6f5p9dq/kUmknBzn8vCHZ9Ex/f3WPtds8YF/tXY7O
         Z1vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:cc;
        bh=yJg7l9gsSaG4kv6u+ykRws6ChQyLvMEkVt2JLigC6yM=;
        b=UOpv43tYQRAU0q7KiKnbV66qulawd8Sjy+/p/+VBawWa+ZpCnMENcX6mvrsCdBIHuM
         ENTnBkEer+vYZHKL+gJ9sz5IkMJN5gT9yKuiwlz5kmt9kICJSGoUHva52yZyhmofYzuT
         5JWHa+VmxtJZtsF18TLvXj4kXB4sqVfAv3aWY7DQ6thUEhwc4oiWpm8Hwm9e7NWBU+gx
         Uy0lL2O2La2ZGXH7NLDc8vqRlxQiA2jHnFRJ/BE/26kKZo4u6k4MHKVQtVZujDMphKHb
         Oom9E4a2n0dwr85Y2mSaSsPTWxIQdsoWz6G2xE4LTROtm6lo+xhDBk+ky2pNr59QaxGZ
         vktg==
X-Gm-Message-State: AOAM530cl7RxkL5n0yi9drW+bcJVghAoT/mp0OBw5ObIIhNDZSi87cFD
        l/4070LvkNH+mQkRT1C3ChgWJyituEZTLi9JlyU=
X-Google-Smtp-Source: ABdhPJycB7Za0JiLW+AldREFqVnUeiFG/G7PRuuVZTsaDYmler8AsiAatTmOB0Foyq+Oz+tpGwd3VmEcKj97HzrFURI=
X-Received: by 2002:a9d:7854:: with SMTP id c20mr27090623otm.114.1617696566091;
 Tue, 06 Apr 2021 01:09:26 -0700 (PDT)
MIME-Version: 1.0
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 6 Apr 2021 10:09:15 +0200
Message-ID: <CAKgNAkhzkmGavKg47RmmK0n8cqC_OxdJ3oVw1N6iOvWEMoGSHw@mail.gmail.com>
Subject: Tweaks to your recent userfaultfd patches
To:     Peter Xu <peterx@redhat.com>
Cc:     Mike Rapoport <rppt@linux.vnet.ibm.com>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Peter,

I made a number of tweaks to your recent patches to userfaultfd.2 and
ioctl_userfaultfd.2. Many of the changes are cosmetic language
fix-ups, but also I reworded a few things, notably "message" ==>
"notification" for consistency (I think) with the rest of the page.

Could you take a look at the patch below please, and let me know if
there are any problems?

Thanks,

Michael

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index c29e0bb6a..365c1fa7b 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -212,7 +212,7 @@ memory accesses to the regions registered with userfaultfd.
 .BR UFFD_FEATURE_THREAD_ID " (since Linux 4.14)"
 If this feature bit is set,
 .I uffd_msg.pagefault.feat.ptid
-will be set to the faulted thread ID for each page fault message.
+will be set to the faulted thread ID for each page-fault message.
 .PP
 The returned
 .I ioctls
@@ -450,7 +450,7 @@ Do not wake up the thread that waits for
page-fault resolution
 Copy the page with read-only permission.
 This allows the user to trap the next write to the page,
 which will block and generate another write-protect userfault message.
-This is only used when both
+This is used only when both
 .B UFFDIO_REGISTER_MODE_MISSING
 and
 .B UFFDIO_REGISTER_MODE_WP
@@ -667,7 +667,7 @@ structure was not a multiple of the system page size; or
 .I len
 was zero; or the specified range was otherwise invalid.
 .SS UFFDIO_WRITEPROTECT (Since Linux 5.7)
-Write-protect or write-unprotect an userfaultfd registered memory range
+Write-protect or write-unprotect a userfaultfd-registered memory range
 registered with mode
 .BR UFFDIO_REGISTER_MODE_WP .
 .PP
@@ -693,13 +693,13 @@ When this mode bit is set,
 the ioctl will be a write-protect operation upon the memory range specified by
 .IR range .
 Otherwise it'll be a write-unprotect operation upon the specified range,
-which can be used to resolve an userfaultfd write-protect page fault.
+which can be used to resolve a userfaultfd write-protect page fault.
 .TP
 .B UFFDIO_WRITEPROTECT_MODE_DONTWAKE
 When this mode bit is set,
 do not wake up any thread that waits for
 page-fault resolution after the operation.
-This could only be specified if
+This can be specified only if
 .B UFFDIO_WRITEPROTECT_MODE_WP
 is not specified.
 .PP
diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index 0e9206424..3ff05af90 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -83,10 +83,10 @@ Userfaultfd supports two modes of registration:
 .BR UFFDIO_REGISTER_MODE_MISSING " (since 4.10)"
 When registered with
 .B UFFDIO_REGISTER_MODE_MISSING
-mode, the userspace will receive a page fault message
+mode, user-space will receive a page-fault notification
 when a missing page is accessed.
 The faulted thread will be stopped from execution until the page fault is
-resolved from the userspace by either an
+resolved from user-space by either an
 .B UFFDIO_COPY
 or an
 .B UFFDIO_ZEROPAGE
@@ -95,17 +95,17 @@ ioctl.
 .BR UFFDIO_REGISTER_MODE_WP " (since 5.7)"
 When registered with
 .B UFFDIO_REGISTER_MODE_WP
-mode, the userspace will receive a page fault message
+mode, user-space will receive a page-fault notification
 when a write-protected page is written.
 The faulted thread will be stopped from execution
-until the userspace write-unprotect the page using an
+until user-space write-unprotects the page using an
 .B UFFDIO_WRITEPROTECT
 ioctl.
 .PP
 Multiple modes can be enabled at the same time for the same memory range.
 .PP
-Since Linux 4.14, userfaultfd page fault message can selectively embed
-faulting thread ID information into the fault message.
+Since Linux 4.14, a userfaultfd page-fault notification can selectively embed
+faulting thread ID information into the notification.
 One needs to enable this feature explicitly using the
 .B UFFD_FEATURE_THREAD_ID
 feature bit when initializing the userfaultfd context.
@@ -177,10 +177,12 @@ One should check against the feature bit
 .B UFFD_FEATURE_PAGEFAULT_FLAG_WP
 before using this feature.
 Similar to the original userfaultfd missing mode, the write-protect mode will
-generate an userfaultfd message when the protected page is written.
+generate a userfaultfd notification when the protected page is written.
 The user needs to resolve the page fault by unprotecting the faulted page and
-kick the faulted thread to continue.
-For more information, please refer to "Userfaultfd write-protect mode" section.
+kicking the faulted thread to continue.
+For more information,
+please refer to the "Userfaultfd write-protect mode" section.
+.\"
 .SS Userfaultfd operation
 After the userfaultfd object is created with
 .BR userfaultfd (),
@@ -276,11 +278,11 @@ with the mode set to
 .BR "UFFDIO_REGISTER_MODE_MISSING | UFFDIO_REGISTER_MODE_WP" .
 When there is only
 .B UFFDIO_REGISTER_MODE_WP
-registered, the userspace will
+registered, user-space will
 .I not
-receive any message when a missing page is written.
-Instead, the userspace will only receive a write-protect page fault message
-when an existing but write-protected page got written.
+receive any notification when a missing page is written.
+Instead, user-space will receive a write-protect page-fault notification
+only when an existing but write-protected page got written.
 .PP
 After the
 .B UFFDIO_REGISTER
@@ -295,16 +297,17 @@ should be set to
 .BR UFFDIO_WRITEPROTECT_MODE_WP .
 .PP
 When a write-protect event happens,
-the userspace will receive a page fault message whose
+user-space will receive a page-fault notification whose
 .I uffd_msg.pagefault.flags
 will be with
 .B UFFD_PAGEFAULT_FLAG_WP
 flag set.
-Note: since only writes can trigger such kind of fault,
-write-protect messages will always be with
+Note: since only writes can trigger this kind of fault,
+write-protect notifications will always have the
 .B UFFD_PAGEFAULT_FLAG_WRITE
-bit set too along with bit
-.BR UFFD_PAGEFAULT_FLAG_WP .
+bit set along with the
+.BR UFFD_PAGEFAULT_FLAG_WP
+bit.
 .PP
 To resolve a write-protection page fault, the user should initiate another
 .B UFFDIO_WRITEPROTECT
@@ -314,7 +317,7 @@ should have the flag
 .B UFFDIO_WRITEPROTECT_MODE_WP
 cleared upon the faulted page or range.
 .PP
-Write-protect mode only supports private anonymous memory.
+Write-protect mode supports only private anonymous memory.
 .SS Reading from the userfaultfd structure
 Each
 .BR read (2)
@@ -464,8 +467,8 @@ otherwise it is a read fault.
 .B UFFD_PAGEFAULT_FLAG_WP
 If the address is in a range that was registered with the
 .B UFFDIO_REGISTER_MODE_WP
-flag, when this bit is set it means it's a write-protect fault.
-Otherwise it's a page missing fault.
+flag, when this bit is set, it means it's a write-protect fault.
+Otherwise it's a page-missing fault.
 .RE
 .TP
 .I pagefault.feat.pid
