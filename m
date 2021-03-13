Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04A4133A058
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:27:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230412AbhCMT0a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234348AbhCMTZ5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:25:57 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFA6BC061574;
        Sat, 13 Mar 2021 11:25:56 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id e18so3594376wrt.6;
        Sat, 13 Mar 2021 11:25:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=m2UYqInPbiVi0OaTJQ9o2S1q3+yvxRnv9zNjA6WqsG0=;
        b=uy6ZrOFPH4Q7ALCnDzF0BmGYOBPgfmgQBg7qs9FM7VVW7+f/2bilxQSCtMWVBJohvX
         Ch/bhpYq930LKPrtnOGrhx8KufnCudjif4MIFkPklhHAy6bhXqUWSPGwkeXrVl65Xi9M
         pA0qREL0yvWC0owUBXGvGQ7/3sPmD2U3L5V0S5Z67KkcglhwaP3Pvo3hbgZxT1NmVYfZ
         w+1TglKJ4wAMwL69Awnmx/QmYruBPAE5zrxQDyyBZmDQvaH1BlAZuTSrnMdDwOt7KIZq
         SR/yPVZ8lAgLxKkaD3AwctXJ0WbYPAPkovFev0wiiv14BUD90mM2dNJ8qVlyzDSVeEzj
         GCRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=m2UYqInPbiVi0OaTJQ9o2S1q3+yvxRnv9zNjA6WqsG0=;
        b=owe1lJLHvUKbBq8ID3zCwBO2nbiQm1EOdXUs8ojWadqDOoe7u0GjkVvXMHrpcYeo5T
         Xtoju9acc2hw5C3IaYJabqdLIJAOoVK5EZw5v+Vj5cZgBoCoL40OeuVWND3IAWVQ8LXk
         ymyXDMOUiX3wP50T+xNBwFuktmO6ktRC0eCJhF7gU/eDm3nOqnaNs1Hhqy7DwmR8sEkS
         NJVscbrmavHNCc4CF40lv52A9rV6b50YrpbGCJ55nR74Agf0WYlyV9DPMdOCksJAuZG/
         KHpL/XI/IXMI/xW/k0VoZNMxUtrkARGFac19E315PcNri0ZQ0NFwhx6yfYG0mAcCV+t8
         L3BQ==
X-Gm-Message-State: AOAM532CjZgUqpfiA/livbwNNAD6jzUVSE4wcuswx6WNXpQ+7nlJvcr/
        Ue3TAFkiscFoEtQq6TrhSOg=
X-Google-Smtp-Source: ABdhPJz0V23KnA6yIiswti5QiH73acYI1QhV9tU6ijBdEO/5LImULsitAbd8x0W3FS7qq+7ZO6R9TQ==
X-Received: by 2002:a5d:6404:: with SMTP id z4mr19052012wru.109.1615663555693;
        Sat, 13 Mar 2021 11:25:55 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:25:55 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 08/17] epoll_wait.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 13 Mar 2021 20:25:18 +0100
Message-Id: <20210313192526.350200-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210214133907.157320-1-alx.manpages@gmail.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/epoll_wait.2 | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/man2/epoll_wait.2 b/man2/epoll_wait.2
index af4180df0..0f3cfe1d5 100644
--- a/man2/epoll_wait.2
+++ b/man2/epoll_wait.2
@@ -32,7 +32,13 @@ epoll_wait, epoll_pwait, epoll_pwait2 \- wait for an I/O event on an epoll file
 .BI "int epoll_pwait(int " epfd ", struct epoll_event *" events ,
 .BI "               int " maxevents ", int " timeout ,
 .BI "               const sigset_t *" sigmask );
-.BI "int epoll_pwait2(int " epfd ", struct epoll_event *" events ,
+.PP
+.BR "#include <linux/eventpoll.h>" \
+" /* Definition of " "struct epoll_event" " */"
+.BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_epoll_pwait2, int " epfd ", struct epoll_event *" events ,
 .BI "               int " maxevents ", const struct timespec *" timeout ,
 .BI "               const sigset_t *" sigmask );
 .\" FIXME: Check if glibc has added a wrapper for epoll_pwait2(),
-- 
2.30.2

