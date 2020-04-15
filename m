Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A70A1AAEBB
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2020 18:50:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2410462AbgDOQuN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Apr 2020 12:50:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2410454AbgDOQuH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Apr 2020 12:50:07 -0400
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com [IPv6:2607:f8b0:4864:20::54a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 574A0C061A0C
        for <linux-man@vger.kernel.org>; Wed, 15 Apr 2020 09:50:07 -0700 (PDT)
Received: by mail-pg1-x54a.google.com with SMTP id u15so466073pgg.14
        for <linux-man@vger.kernel.org>; Wed, 15 Apr 2020 09:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=4W4UEvT/MgoD23Owvxtd0mFu7U2hYUMtBI0M9ESAV30=;
        b=UR/2lz3k/o1NK4imaWmG0Mjb0PrgG1tmYuJORKj0VQsV+LrqLych3hES0W7FymeH4M
         Pelgj+R2mDqN42s9OhFsm168rRZDXmzjtcq+XcVATQ+oznNHgYfBaLMoU2b72gPEqpHK
         9+PWu1NdBa11Zb6G1B6u74bASFEs6knT8ftrelgMSUV9vmYZy6lkCfrYBDqg4eTcuNFw
         U8o6GcRbUTjNcoosskLJJFw0NhmESF5l1qz0v2ca2W4FD3vxkd/GFY18vQAjy3x64Qyj
         oiwXo2tBl9kUbixbeUPYhU7Qw98Fm5jDj8Nw5z/0VC5nFb+pfXhK4Id99Ne9K5jT7TLR
         /VXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=4W4UEvT/MgoD23Owvxtd0mFu7U2hYUMtBI0M9ESAV30=;
        b=sfJhS+PiOW2P7LFgTCyZ7M0KVCXTW+87TMkEUF1RI0UUCljJA8GCF/4qWFYCAW26Ec
         DVQvkVP83jQ4uhNRfVY6PkKHdlo35pFO470TjhzL95NErWACZJKsinQo6Fe1ngn3KHJT
         /Z7xM2yXbSf8/6PL18CTlEGG8AORcAqqrLcLN2b7E40uBNVPQnncr4TTxm3jwUidIbJm
         hrkCwh30H1HVEenhzfBPH4NcvJYthx2lDZn2JsEyhXdovoK/yisOuKRGF1LoFjIcKiBx
         vMzxFRulWPeFVx4DATEIoHbuKXLLU1P6Y7PQYcqta36GvsRiAzsYnCq7j6BnEDmH5d+v
         jfJQ==
X-Gm-Message-State: AGi0Pubh0IA9VqC4QPLYqZSX+Nek/Qdiam3KCY0iE6sArpYvdTkY+a0w
        EMHRSbzPJ3jt3ZKXTIeruf6N4yvfMhUL
X-Google-Smtp-Source: APiQypLby1RzFNUVF8eFTk9Xvdq8bQfUWdyQDk1epcABxg1Rn4RugPf2x+5mzhr+TqpyAi2CsnNHHodtrOFY
X-Received: by 2002:a17:90a:4497:: with SMTP id t23mr152305pjg.102.1586969406820;
 Wed, 15 Apr 2020 09:50:06 -0700 (PDT)
Date:   Wed, 15 Apr 2020 09:49:49 -0700
Message-Id: <20200415164949.44562-1-bgeffon@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
Subject: [PATCH v2] mremap.2: Add information for MREMAP_DONTUNMAP.
From:   Brian Geffon <bgeffon@google.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Sonny Rao <sonnyrao@google.com>,
        Jesse Barnes <jsbarnes@google.com>,
        Vlastimil Babka <vbabka@suse.cz>,
        Brian Geffon <bgeffon@google.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Brian Geffon <bgeffon@google.com>
---
 man2/mremap.2 | 49 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/man2/mremap.2 b/man2/mremap.2
index d73fb64fa..ff5939ff1 100644
--- a/man2/mremap.2
+++ b/man2/mremap.2
@@ -129,6 +129,22 @@ If
 is specified, then
 .B MREMAP_MAYMOVE
 must also be specified.
+.TP
+.BR MREMAP_DONTUNMAP " (since Linux 5.7)"
+.\" commit e346b3813067d4b17383f975f197a9aa28a3b077
+This flag which must be used in conjunction with
+.B MREMAP_MAYMOVE
+remaps a mapping to a new address and it does not unmap the mapping at
+.BR old_address .
+This flag can only be used with private anonymous mappings.
+Any access to the range specified at
+.BR old_address
+after completion will result in an anonymous page fault.
+The anonymous page fault will be handled by a
+.BR userfaultfd (2)
+if the range was previously registered on the mapping specified by
+.BR old_address .
+Otherwise, it will be zero filled by the kernel.
 .PP
 If the memory segment specified by
 .I old_address
@@ -176,6 +192,8 @@ a value other than
 .B MREMAP_MAYMOVE
 or
 .B MREMAP_FIXED
+or
+.B MREMAP_DONTUNMAP
 was specified in
 .IR flags ;
 .IP *
@@ -197,9 +215,22 @@ and
 .IR old_size ;
 .IP *
 .B MREMAP_FIXED
+or
+.B MREMAP_DONTUNMAP
 was specified without also specifying
 .BR MREMAP_MAYMOVE ;
 .IP *
+.B MREMAP_DONTUNMAP
+was specified with and
+.BR old_address
+that was not private anonymous;
+.IP *
+.B MREMAP_DONTUNMAP
+was specified and
+.BR old_size
+was not equal to
+.BR new_size ;
+.IP *
 \fIold_size\fP was zero and \fIold_address\fP does not refer to a
 shareable mapping (but see BUGS);
 .IP *
@@ -209,10 +240,20 @@ flag was not specified.
 .RE
 .TP
 .B ENOMEM
+Not enough memory was available to complete the operation.
+Possible causes are:
+.RS
+.IP * 3
 The memory area cannot be expanded at the current virtual address, and the
 .B MREMAP_MAYMOVE
 flag is not set in \fIflags\fP.
 Or, there is not enough (virtual) memory available.
+.IP *
+.B MREMAP_DONTUNMAP
+was used causing a new mapping to be created that would exceed the
+(virtual) memory available.
+Or, it would exceed the maximum number of allowed mappings.
+.RE
 .SH CONFORMING TO
 This call is Linux-specific, and should not be used in programs
 intended to be portable.
@@ -238,6 +279,14 @@ call will make a best effort to populate the new area but will not fail
 with
 .B ENOMEM
 if the area cannot be populated.
+.PP
+The
+.BR MREMAP_DONTUNMAP
+flag may be used to atomically move a mapping while leaving the source
+mapped.
+Possible applications for this behavior might be garbage collection or
+non-cooperative
+.BR userfaultfd (2) .
 .SH BUGS
 Before Linux 4.14,
 if
-- 
2.26.0.110.g2183baf09c-goog

