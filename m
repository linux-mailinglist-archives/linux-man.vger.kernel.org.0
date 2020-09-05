Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A6D125E746
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 13:29:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728473AbgIEL3t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 07:29:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728468AbgIEL3o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 07:29:44 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93B90C061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 04:29:43 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id o21so9097015wmc.0
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 04:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YtGc/fS6AXcpkUMkw6+Q05DZrJYmCsh/cm/YQJPe0wY=;
        b=Neu2DXA+Fm0h8bYJI7DUCh9c5+wGwiOZol1Mpu7U5Y+rCyOYHkyOZyDXBVD3sEcp8t
         uJs0Mel7ipv2zamPKcibicpO+1iyuksnzlKCGrQTBl6za83tiEtkY6NDBK1ibiuwWNOT
         JC/AzMkMwU5LMk3aP87VPn3L4Qj7nyay+n3j4mLbxKEGv1tg3+5U3E7R9hBhFMXbRk82
         Bq0fRILRcmjkHZ4gaj/avRcvD1EYYsmsqg6z7rhX1CIqBuhSqtSA/IgKVt+rTdZ4zQES
         7wDh9+c+ghh+64nvSi7vhXMO7g7Yqo3shuB2afLmyIZOI2oc3h6nwJTvZexo4w5Jh/kD
         o3hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YtGc/fS6AXcpkUMkw6+Q05DZrJYmCsh/cm/YQJPe0wY=;
        b=t9wOrdcJ4oNwVO32fWiXem+9EW1ZwXr2DTjkbyV4j+9DszX1js7Xl2GefUu8LgAbI/
         ERpjEseVEpBfK5g/Tetu7elOjKtdzYxAz5ddFvshJuL9JQkvACGJLgXpo6/qRvvz2uXt
         TlsfN2LaPjro5I0JFxwDK3jX7xvO0WCVFwMS7carArsZS1sHY0M+2H+ggVRMUquu/w4j
         YU2luVWkM1ioKmw6x40aVvTlMfUxd9vTARctZ7rKsBzs+g8OxmnhyWJG6SjcJknMI1FD
         6hSddLv3vwC/K+Dqg/bZzvgg/Y9Mevj+z8+yWTiaP1T+aso+MVuU65AsyDx+wYkxsl0X
         csMg==
X-Gm-Message-State: AOAM530ni2mexZzlJl4L+aym5chVWNMALyLxKIb6fhiL6+I+rEnHC9M8
        6nkWVIpaQ2JHrybRDffZH6CR8h6ldIg=
X-Google-Smtp-Source: ABdhPJyD6MeUKd42aJL6rGTqzlynFJxkK760ivh09A1FXhqPYq3S+cjnkOpG5+o7SlD1gHYZSAEEng==
X-Received: by 2002:a1c:4303:: with SMTP id q3mr11700280wma.158.1599305382334;
        Sat, 05 Sep 2020 04:29:42 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id h5sm17656596wrt.31.2020.09.05.04.29.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 04:29:41 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] fanotify.3: Pass array to read(2) directly instead of a pointer to it
Date:   Sat,  5 Sep 2020 13:28:45 +0200
Message-Id: <20200905112844.228160-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It doesn't make any sense to pass a pointer to the array to read(2).

It might make sense to pass a pointer to the first element of the array,
but that is already implicitly done when passing the array, which decays
to that pointer, so it's simpler to pass the array.

And anyway, the cast was unneeded, as any pointer is implicitly casted
to `void *`.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/fanotify.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/fanotify.7 b/man7/fanotify.7
index c18ab68ed..c3d40b56d 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -818,7 +818,7 @@ handle_events(int fd)
 
         /* Read some events */
 
-        len = read(fd, (void *) &buf, sizeof(buf));
+        len = read(fd, buf, sizeof(buf));
         if (len == \-1 && errno != EAGAIN) {
             perror("read");
             exit(EXIT_FAILURE);
@@ -1111,7 +1111,7 @@ main(int argc, char **argv)
 
     /* Read events from the event queue into a buffer */
 
-    len = read(fd, (void *) &events_buf, sizeof(events_buf));
+    len = read(fd, events_buf, sizeof(events_buf));
     if (len == \-1 && errno != EAGAIN) {
         perror("read");
         exit(EXIT_FAILURE);
-- 
2.28.0

