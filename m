Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE5E3297F60
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 00:18:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1762275AbgJXWS0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Oct 2020 18:18:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387972AbgJXWSZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Oct 2020 18:18:25 -0400
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com [IPv6:2607:f8b0:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD9C9C0613CE
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:18:25 -0700 (PDT)
Received: by mail-il1-x141.google.com with SMTP id a20so4757429ilk.13
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=lRnlSmx6Y9u+R0croRrlZargzuLRKzRVOR0rYoKr8zE=;
        b=BhN61I1swmHEE1D2Ykbwgh1gI4mCqafw+csBjK1tvKN5eOu2iizFplVxSfViDzGCI9
         ev+pp/1SUsNExbLyhZ6oRTpOAZH306uoX9oUFVoJwMph2J4LoqKspaWS+Tt3lduE0F/V
         6ZtdyfsCeU2WPOnYPGrgx4Q5ZxBjUHbfOT+MoDZsFAKkWwQHuiJVOKcnjLrsM8ipJrNg
         PgRHgLi6zkgMlQkW7Fyw2AML3NT69G2atmLvP63xktmQPi5BZDsqS2Hnk3XVXYUk//Kh
         kff5LVh9nTz27UrUzS8VZWOtcBIA/uQc5hiKyV8FKvqHTPC5PLxS3/8DrKi9Yk7dkExk
         CdTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=lRnlSmx6Y9u+R0croRrlZargzuLRKzRVOR0rYoKr8zE=;
        b=WNuMjGnPagCj4Wo5l0zU0TmUDq4X/q7yIrJtL3ww6Mg3DQDLiQPbEQKPABVH9dewdo
         3zWiCE+CMsWiQqe31x0s+Qdd6jijZIbL8xb8HrGI496SWpxjm2xCGW7islkGkX8pK3Nu
         +UfB0KOq+n/2nRAg9huMfGHIRl7aHYDVfJE/UNMIZQACNQHJ/vFlzOrzDBdQhVGtCW9l
         p1wQYvjWRrYsOqJ0jz2kc8pRlZMPmCoVJTXbkVEySaLHmm6Qh3B2/xlGwBr7wtDo2tpi
         PJEKzxUzC+Kdpb39e3G072QWtfPWV6gRWPCN3HsuH77zbTkS1lgaIXcELVFNEDX4idjH
         32NA==
X-Gm-Message-State: AOAM532Snblx+2Dhc5voDLTNXkwLRLkYnTKBl5OQDPgl/uJISxlJ2Phw
        nBwQM3Gv1TEgp4aWD9bfQbllaPbDsjTYRlyvwdg=
X-Google-Smtp-Source: ABdhPJwcIiBgs1QKWz4eTqHz3gYqR24jiE6grKbFk5zQthxAF7ZZmB/gmps8pZwdxmZmwhThPjBCLr8I3QWPBW+jO1w=
X-Received: by 2002:a92:9a90:: with SMTP id c16mr6415236ill.171.1603577904355;
 Sat, 24 Oct 2020 15:18:24 -0700 (PDT)
MIME-Version: 1.0
From:   Jing Peng <pj.hades@gmail.com>
Date:   Sat, 24 Oct 2020 18:18:13 -0400
Message-ID: <CAL+Ps4Q4M95LM8M1yeSKZqMN1yd3JxWNS=WY7u=y93w3JDrOMw@mail.gmail.com>
Subject: [PATCH] proc.5: wfix
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Jing Peng <pj.hades@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In the section for /proc/[pid]/smaps, the description of field
ProtectionKey occurs twice: both before and after the description of
VmFlags.

Changes made by this patch:
1) Only the first occurrence is kept because its order matches the
output of /proc/[pid]/smaps.
2) The kernel version that CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS was
introduced is only mentioned in the second occurrence. Now it's moved
to the first one.

Signed-off-by: Jing Peng <pj.hades@gmail.com>
---
 man5/proc.5 | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/man5/proc.5 b/man5/proc.5
index ed309380b..ac58c789a 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -1987,7 +1987,7 @@ contains the memory protection key (see
 associated with the virtual memory area.
 This entry is present only if the kernel was built with the
 .B CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS
-configuration option.
+configuration option (since Linux 4.6).
 .IP
 The "VmFlags" line (available since Linux 3.8)
 represents the kernel flags associated with the virtual memory area,
@@ -2026,13 +2026,6 @@ encoded using the following two-letter codes:
     um  - userfaultfd missing pages tracking (since Linux 4.3)
     uw  - userfaultfd wprotect pages tracking (since Linux 4.3)
 .IP
-"ProtectionKey" field contains the memory protection key (see
-.BR pkeys (7))
-associated with the virtual memory area.
-Present only if the kernel was built with the
-.B CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS
-configuration option. (since Linux 4.6)
-.IP
 The
 .IR /proc/[pid]/smaps
 file is present only if the
--
2.29.1
