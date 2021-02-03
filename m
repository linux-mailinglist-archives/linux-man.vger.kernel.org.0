Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 881DE30E285
	for <lists+linux-man@lfdr.de>; Wed,  3 Feb 2021 19:30:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231388AbhBCS3R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Feb 2021 13:29:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230070AbhBCS3Q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Feb 2021 13:29:16 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94A7EC061573
        for <linux-man@vger.kernel.org>; Wed,  3 Feb 2021 10:28:36 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id c127so585657wmf.5
        for <linux-man@vger.kernel.org>; Wed, 03 Feb 2021 10:28:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tTcCYIM8KaUZd5KN2p6/PCFJEbRoE2fwlqCkrpjpeyk=;
        b=vaQK0nbGWxBbt/Xj1p1Kb7FBdXntyjn5az9Th9OWPqrecYTK4ECFUKHxO2RREK0N7/
         IrOKvJUzV9g8xWzQAbbD2eUXnj/Fbh5YNmFmj4kbFrraSMOMyW/UhsYynC4PShtoi5ZB
         37kkX8pfFMZR1XUPEaLT6sTD5ypBpzg8D/ub9KU3vUfziHAZ5C0Ov/swJDYVkGBAZQjR
         j46MQtA/cwTykWoNu7eKiP4+QOY1QYutcEtIiy8XelyI6Xf8ZxLoRRsdHcGXtgce5wGt
         Uw878GE0sX8G+X/wzHetAB4IyUZ+Uv4tuIQuZXvxQM0hsn8lLJ5kjxhFTKbleOAtBeRd
         gVIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tTcCYIM8KaUZd5KN2p6/PCFJEbRoE2fwlqCkrpjpeyk=;
        b=KJpvqBF3bqrN0jU3ykIxRz4JW8jCFP+TIwnQSt+p9IcOFNbX+YCpYBaRFbjxS7L1c7
         TGjL7F0ZJakmGIeFTEyQAQClZHcxws576QG8bQ7zh1i0olDO1VPELeRi6/M9m3uqGExl
         OeLDJ5UTMJWfFeqbG3JBsKkpfAU6GbnZ8xrCW7J1a2C5j4gU+iB+mY9HmHT2ZvARFdln
         um+YHsvmNDX7zGJuwuFgFsRmuhoellFThr2B8YJmY62FfAQGLezlZF6WSJF9ePoG9PNS
         ddEG2lV2Wo6do+clU5RkloFc0HEcvf9KJ2vjqE179Vw+oE70OrLKzW/6Z05IhkjqYrqa
         WXag==
X-Gm-Message-State: AOAM533kL42VrMPONH429y46qMdm8irAgYUwhpNbNg+shq6UFAsUJIL8
        J+rhaiNZAV4NEklAwNHfHDk=
X-Google-Smtp-Source: ABdhPJxTH6Sk0+FCRKGXCNzfWsB+O+nDQicV29drhSrhASn+aUn4IvukXmQVjdb76P6IrJlCoEkISw==
X-Received: by 2002:a1c:de54:: with SMTP id v81mr4011412wmg.181.1612376915354;
        Wed, 03 Feb 2021 10:28:35 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j11sm4955119wrt.26.2021.02.03.10.28.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Feb 2021 10:28:34 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Willem de Bruijn <willemb@google.com>,
        Florian Weimer <fweimer@redhat.com>
Subject: [PATCH] epoll_wait.2: Glibc doesn't provide epoll_pwait2() yet
Date:   Wed,  3 Feb 2021 19:25:29 +0100
Message-Id: <20210203182528.150479-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi all,

As far as I can tell, glibc doesn't yet provide the wrapper function for
epoll_pwait2(), does it?
So let's add a reminder to check if glibc provides the wrapper in the future.

Cheers,

Alex

 man2/epoll_wait.2 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man2/epoll_wait.2 b/man2/epoll_wait.2
index f0e432478..e338f8830 100644
--- a/man2/epoll_wait.2
+++ b/man2/epoll_wait.2
@@ -35,6 +35,8 @@ epoll_wait, epoll_pwait, epoll_pwait2 \- wait for an I/O event on an epoll file
 .BI "int epoll_pwait2(int " epfd ", struct epoll_event *" events ,
 .BI "               int " maxevents ", const struct timespec *" timeout ,
 .BI "               const sigset_t *" sigmask );
+.\" FIXME: Check if glibc has added a wrapper for epoll_pwait2().
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.0

