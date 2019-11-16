Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B727EFEBE4
	for <lists+linux-man@lfdr.de>; Sat, 16 Nov 2019 12:41:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727530AbfKPLlc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 16 Nov 2019 06:41:32 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:52985 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727448AbfKPLl1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 16 Nov 2019 06:41:27 -0500
Received: by mail-wm1-f67.google.com with SMTP id l1so12223846wme.2
        for <linux-man@vger.kernel.org>; Sat, 16 Nov 2019 03:41:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brauner.io; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9qrbBm1fL62NwECBN+3glE+N1as0J/NyBOFPV+RHSPg=;
        b=FUWeFJQPe7xIzamd5joY0TZn2ICzDMAdR0UP0/kbwZecxanpjgHKCIH2HiHcTW3IrD
         HHMsF0uOQlBekIwAo2lKkzSBGRs9meIn2OcL1EagZ4kF+ogadMnEVSnv/UMtpZKs4z58
         06mxx/5O0wGASoSt+sxQhEfx5lGOTuHh+2/cMOsvwIRV4hw89sADsQZAWtuIPMPURJ0j
         ErQ6DcMtJTDWnJf4cQy8qBA8ktgbmnmvoqur3vl5XWBN35DDnNtVcH3IF7iAlWkP/I6p
         YcQTfD2GPho+PkD/38XEIbT5oQHET5Om0OqgsaWJEyAlBCUeE8zOvCUTpC4juDBHFJoZ
         TjmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9qrbBm1fL62NwECBN+3glE+N1as0J/NyBOFPV+RHSPg=;
        b=tBgWcbaZXtL8muA+8CTAb+eYizNK6My9AtNRmu4Xr0ysI1CUitBViW4NkoFew7gJ87
         n1r91o8G4ayLEIcorNsy0NjmewH6YtpZV+JwL0j3hjy4LEgM1Kt6X/JVDdmTvLP3stZv
         n9yto5/45f8wLjd4UPXIMbXTFkS0oFCR12wrh9O38O/0pyaFpZfVwrqhJzLnWUPFgZ8q
         nkCiBQ/p3fSSgFpmm3sXEy4lxwybiYosZ+2M5M99KBAeb+O8QrqmNst3xkNctfOazHQO
         6HAw7rQJ8lLUjSjeI3hM+daX8uZB9N3Ac40jksJ9Sm5peVWSPHKfxa6vYnoleB9rQhjQ
         w8mg==
X-Gm-Message-State: APjAAAW9OG5uD+AJqZc8sLjnOapRoTKi2BjXAXPfXWP2LDWtN4e3Hsc9
        lOoJ7R352FD9LLJbokl1YM5+tw==
X-Google-Smtp-Source: APXvYqxd3+/pvXHp+aXQvAUHFjmjZyEe3Wr02QAA/72ZOBUitdXD7hE7GEdnDudUfo1+6/HqB0HC5A==
X-Received: by 2002:a1c:9917:: with SMTP id b23mr19488879wme.42.1573904483443;
        Sat, 16 Nov 2019 03:41:23 -0800 (PST)
Received: from localhost.localdomain ([213.220.153.21])
        by smtp.gmail.com with ESMTPSA id x5sm12539189wmj.7.2019.11.16.03.41.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Nov 2019 03:41:22 -0800 (PST)
From:   Christian Brauner <christian@brauner.io>
To:     mtk.manpages@gmail.com
Cc:     adrian@lisas.de, akpm@linux-foundation.org, arnd@arndb.de,
        avagin@gmail.com, christian.brauner@ubuntu.com,
        dhowells@redhat.com, fweimer@redhat.com, jannh@google.com,
        keescook@chromium.org, linux-api@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        mingo@elte.hu, oleg@redhat.com, xemul@virtuozzo.com
Subject: [PATCH 1/3] clone.2: Fix typos
Date:   Sat, 16 Nov 2019 12:41:12 +0100
Message-Id: <20191116114114.7066-1-christian@brauner.io>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Christian Brauner <christian.brauner@ubuntu.com>

Fix two spelling mistakes in manpage describing the clone{2,3}()
syscalls/syscall wrappers.

Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
---
 man2/clone.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/clone.2 b/man2/clone.2
index f67a60067..57a9eaba7 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -70,12 +70,12 @@ create a new ("child") process, in a manner similar to
 .PP
 By contrast with
 .BR fork (2),
-these system cals provide more precise control over what pieces of execution
+these system calls provide more precise control over what pieces of execution
 context are shared between the calling process and the child process.
 For example, using these system calls, the caller can control whether
 or not the two processes share the virtual address space,
 the table of file descriptors, and the table of signal handlers.
-These system calls also allow the new child process to placed
+These system calls also allow the new child process to be placed
 in separate
 .BR namespaces (7).
 .PP

base-commit: 91243dad42a7a62df73e3b1dfbb810adc1b8b654
-- 
2.24.0

