Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF87C3D968E
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231126AbhG1UUc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231479AbhG1UUc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:32 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A751C061765
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:30 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id b9so3990816wrx.12
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5lpLCPKr8W4sUxBMeHrPrJZSpGQ/cFW9CY/zet3DXWM=;
        b=lqicSw/YOpnQ8eXmxQadVh1l7baY2ZPa5axk/F/CwLzmQE+c6w1XFgF7ri/IpuvDri
         lBK/tbWWBdHHr45y4lOHwLkt23V/DqOEzTzEWsN5u4rnhrLyuES9sr1AkTxq5N2a2mTm
         b5k3VcZAT24Bt5i6z1jl/y96kDv48KZHrSvVfxLKZnp8vDWiHq4BNS3kppMXdT5OZ1jC
         vC/x3KI60io5rPkguZKXb2k/m6SBtGPVrdoCvysIynvUzdlnd/S2+lRCDAyA4uSEQ5ZU
         1rwmKEzrQZHQ0zRzESk7kp0SjYC4sDeGhlSIkSYNeRu+E9weh0ScRYEvcS/e4xk+ubO2
         3bzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5lpLCPKr8W4sUxBMeHrPrJZSpGQ/cFW9CY/zet3DXWM=;
        b=JqZuvsiTuXG8pdFquiwAtPhWBn4lNJS4au53lK/naiQlkgeh+AHBcCrIV68011cAgO
         CzSWSN4RA/emYHXtI+sEJGVMElPnwkuZR1k1HXiGGLWi6S84lRaFhSMquBexC96uPaR9
         B9TL8RQdnxeQKuJ3okIxOTqEqOAEbpu9j3dsCjl1otm6tSXIybVDuJ527i5PaojSuUoB
         YW8MTaPyN+hJSPgg0kPKYhyOLvzJh7vkJIPShEOKF5UypcWelGko19e0jAcE/5ubrPO9
         kUGsu8RElGfuNpG2zJyWu/L4qMc/gOdMFoGzJruupwESRj8FgymRF0tTq9/BeEzOpx1+
         0eNA==
X-Gm-Message-State: AOAM530qoleCb1CH4YiTtJ8BYJNLa82yr53tTbnfrJwUyDWqvlxiEnNp
        no2il16ISVnoZ9dATOpCvCQ=
X-Google-Smtp-Source: ABdhPJy/NHxDQSNcTfQ5tqAQXVc4aUHnQXDYNSZbPuEaHlWIMLzR9u6WQMlqyEjUpyTPw+MNH53aqQ==
X-Received: by 2002:a05:6000:1b02:: with SMTP id f2mr1081439wrz.274.1627503628758;
        Wed, 28 Jul 2021 13:20:28 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:28 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Rodrigo Campos <rodrigo@kinvolk.io>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 16/32] seccomp_unotify.2: Add doc for SECCOMP_ADDFD_FLAG_SEND
Date:   Wed, 28 Jul 2021 22:19:52 +0200
Message-Id: <20210728202008.3158-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Rodrigo Campos <rodrigo@kinvolk.io>

This flag was recently added to Linux 5.14 by a patch I wrote:
	https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0ae71c7720e3ae3aabd2e8a072d27f7bd173d25c

This patch adds documentation for the flag, the error code that the flag
added and explains in the caveat when it is useful.

Signed-off-by: Rodrigo Campos <rodrigo@kinvolk.io>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/seccomp_unotify.2 | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/man2/seccomp_unotify.2 b/man2/seccomp_unotify.2
index 2673d9bc7..9bd27214f 100644
--- a/man2/seccomp_unotify.2
+++ b/man2/seccomp_unotify.2
@@ -739,6 +739,17 @@ When allocating the file descriptor in the target,
 use the file descriptor number specified in the
 .I newfd
 field.
+.TP
+.BR SECCOMP_ADDFD_FLAG_SEND
+Available since Linux 5.14, combines the
+.B SECCOMP_IOCTL_NOTIF_ADDFD
+ioctl with
+.B SECCOMP_IOCTL_NOTIF_SEND
+into an atomic operation. On successful invocation, the target process's
+errno will be 0 and the return value will be the file descriptor number that was
+installed in the target. If allocating the file descriptor in the tatget fails,
+the target's syscall continues to be blocked until a successful response is
+sent.
 .RE
 .TP
 .I srcfd
@@ -801,6 +812,13 @@ Allocating the file descriptor in the target would cause the target's
 limit to be exceeded (see
 .BR getrlimit (2)).
 .TP
+.B EBUSY
+If the flag
+.B SECCOMP_IOCTL_NOTIF_SEND
+is used, this means the operation can't proceed until other
+.B SECCOMP_IOCTL_NOTIF_ADDFD
+requests are processed.
+.TP
 .B EINPROGRESS
 The user-space notification specified in the
 .I id
@@ -1131,6 +1149,14 @@ that would
 normally be restarted by the
 .BR SA_RESTART
 flag.
+.PP
+Furthermore, if the supervisor response is a file descriptor
+added with
+.B SECCOMP_IOCTL_NOTIF_ADDFD,
+then the flag
+.B SECCOMP_ADDFD_FLAG_SEND
+can be used to atomically add the file descriptor and return that value,
+making sure no file descriptors are inadvertently leaked into the target.
 .\" FIXME
 .\" About the above, Kees Cook commented:
 .\"
-- 
2.32.0

