Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 178FA3BA34B
	for <lists+linux-man@lfdr.de>; Fri,  2 Jul 2021 18:37:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229499AbhGBQk0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Jul 2021 12:40:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229455AbhGBQk0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Jul 2021 12:40:26 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92037C061764
        for <linux-man@vger.kernel.org>; Fri,  2 Jul 2021 09:37:53 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id hp26so4341856ejc.6
        for <linux-man@vger.kernel.org>; Fri, 02 Jul 2021 09:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kinvolk.io; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AWY2RjKT+2r3oOmvFmiVbr8M8QoRSQ2qxYObjvNjLmQ=;
        b=U+hn6zNHXD+IESe1KrFQasFz7kosnf4i5y/6PFBQmfHlyo5Szovx60z28i/0+ggl0P
         umuN5Rt8TyW/5ilPETR7GTovfa5gv3B5JxdURNuVsSFp7NYyl4MeCx0Rfj9B5v/gXgMX
         eEl/V2Okc1baBWkL3L8amgCJWe6sqhlOPXulw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AWY2RjKT+2r3oOmvFmiVbr8M8QoRSQ2qxYObjvNjLmQ=;
        b=opu/HceVeMXD5b6Td+K/ipf8/5yKMjhXE1hkhEclP/lGLu+yjLwvynfdAogxDElWYz
         7RZmRx/67kiBhe2qUF2U6uv64xGCrycLOEFpSnbjgxqKr2XduSQaFRARZMNSexZk5YVy
         KAoEBbIXBF3F6DDCsR0WALtBOcWHV6wkzQV+7rJvUyYudTR7Du8tO6d4UAqa5LSB6iWT
         DVakFTKMM16U+dAqWnQXF6Qk5hkvP5Gcvezc8VgFRtbufWUAMC6vBQo2NVZIE+2KaNTC
         kaOIA2St3+G2BMjBH1Ej4z1qYUiWWCyaHtzLd2OQt5tv3HJLZIkuHV/f8Pn4NcQjCX+Q
         MI9A==
X-Gm-Message-State: AOAM531ZxOQbdHShecNf44jq9gPLKzUskkLuo/U438WhBejFGSp1IaG+
        Sdmr8Kd7HKqDlWiz/+Pmlm7Bq9EgGTA2MO3vHYilshYxrm47dcwcm0Q7/+0iWwoCmJc38uUUGwv
        YIZSx4Lvoi2VyCSqOa45HzqFWnOf5OEypIgdUXHhsjui/K4pUCKTptRfjxBLwSeXY+zBN71oFGJ
        XI3Q==
X-Google-Smtp-Source: ABdhPJwR/GYYl0fu9wEzKJ0eiUPDI1kkw+wyvUlhtvQtLoDy9p07qEo7EIkd0+kGi0B68yIw0pvYhA==
X-Received: by 2002:a17:906:bc83:: with SMTP id lv3mr583357ejb.133.1625243871841;
        Fri, 02 Jul 2021 09:37:51 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8109:9880:57f0:ba7c:cdd5:fff7:623c])
        by smtp.gmail.com with ESMTPSA id g23sm1536450edp.74.2021.07.02.09.37.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jul 2021 09:37:51 -0700 (PDT)
From:   Rodrigo Campos <rodrigo@kinvolk.io>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-kernel@vger.kernel.org, Alban Crequy <alban@kinvolk.io>,
        =?UTF-8?q?Mauricio=20V=C3=A1squez=20Bernal?= <mauricio@kinvolk.io>,
        Sargun Dhillon <sargun@sargun.me>,
        Rodrigo Campos <rodrigo@kinvolk.io>
Subject: [PATCH] seccomp_unotify.2: Add doc for SECCOMP_ADDFD_FLAG_SEND
Date:   Fri,  2 Jul 2021 18:37:44 +0200
Message-Id: <20210702163744.265749-1-rodrigo@kinvolk.io>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This flag was recently added to Linux 5.14 by a patch I wrote:
	https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0ae71c7720e3ae3aabd2e8a072d27f7bd173d25c

This patch adds documentation for the flag, the error code that the flag
added and explains in the caveat when it is useful.

Signed-off-by: Rodrigo Campos <rodrigo@kinvolk.io>
---
Hi! Here goes the documentation for the flag I just added. Please feel free to
amend as you want and let me know if something is not clear :)


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
2.30.2

