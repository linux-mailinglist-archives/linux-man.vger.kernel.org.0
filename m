Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F19F295EA0
	for <lists+linux-man@lfdr.de>; Thu, 22 Oct 2020 14:39:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2898265AbgJVMjL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 08:39:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2898424AbgJVMiy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Oct 2020 08:38:54 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E28F1C0613D4
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:53 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id g12so2177616wrp.10
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zho/+hW9/797Qkyu3gN2/D8HZ9CGagzjLzojN3oXPJM=;
        b=nxXjPK6YroUywC2oviQm21m58OG/5PUN2OcApWm2Gr/1LVld3dNf5yVBytLAcz0+fO
         WxSvpVE+6dJZOTvswZmjBcc0CGMi1ccUlncZqh1xAxOmfNOksR5bfd5+s9objAni+oFy
         bEpYnnp6x50m3fDU/TYDop7HN21prracKnFN1EnRHtCMuDQve0Sut0H4sK0ba8umO4li
         fX4UxgS5htxUThyS8gMn5s180ZqpfrniSeu4+mpKAc1VMtJecqhmqL+iIshJJsxqM61R
         LTpVmfAipL5ftgAO8AC/ySyYSpYX/02XmsUI2Sr+Kyzbj3v7uMdIqsPMQ6Cj5CCHcw0j
         ssGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zho/+hW9/797Qkyu3gN2/D8HZ9CGagzjLzojN3oXPJM=;
        b=H9oSklSqvLGXF6im0Gc4jvYvaySu8UYQZcFFqklPtyXkQ9tMouYbyx4pIUuW3j66OS
         5gIEJNOzZBWqRbMaBuF/BwsNDkeZ99VeP/yvcexiG2qdu72jQiBMAvyGteuNVHbmOa8g
         tg4j3DtX6+ydDK9p03EPaznYGu+ji99LF/Q0gE+yUe5iknu8tnHU57SLcvB33yt6R3vz
         sAj2GteeM0UWzCiWdKHkl22KQ5YfvYfo/eLwrxu+tHwXQVztLijYvmYJj9EShwcOEVuO
         G9/NqtCcd+tsCkfyCbZN2qMMzb7k/sOFkemwwl426lOluzoV4hHg9l/f+f+pyUoMudyt
         IrcA==
X-Gm-Message-State: AOAM531xlQ9BzxeJjhxfvwKHIuGGcLoZYQf+Rs07gqg6A0wH9eXVJcTX
        3XlTT+Vn3cPiz/+VNc8qRZZk7FstunE=
X-Google-Smtp-Source: ABdhPJzOSCu0Ze49vRb8PrwxyESe75zQM5eDLt0zhzy1emvLFj7xDkQVIDU6oO/UgQoGqS04sMEaEQ==
X-Received: by 2002:adf:8bd4:: with SMTP id w20mr2475672wra.391.1603370332640;
        Thu, 22 Oct 2020 05:38:52 -0700 (PDT)
Received: from debian-VLC.home ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m1sm3573883wme.48.2020.10.22.05.38.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 05:38:52 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 02/10] queue.3, slist.3: NAME: Move code from queue.3 to slist.3
Date:   Thu, 22 Oct 2020 14:38:14 +0200
Message-Id: <20201022123821.22602-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
References: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 17 -----------------
 man3/slist.3 | 17 +++++++++++++++++
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index 90fd3db0e..8fc10892a 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -34,23 +34,6 @@
 .Dt QUEUE 3
 .Os
 .Sh NAME
-.Nm SLIST_EMPTY ,
-.Nm SLIST_ENTRY ,
-.Nm SLIST_FIRST ,
-.Nm SLIST_FOREACH ,
-.\" .Nm SLIST_FOREACH_FROM ,
-.\" .Nm SLIST_FOREACH_SAFE ,
-.\" .Nm SLIST_FOREACH_FROM_SAFE ,
-.Nm SLIST_HEAD ,
-.Nm SLIST_HEAD_INITIALIZER ,
-.Nm SLIST_INIT ,
-.Nm SLIST_INSERT_AFTER ,
-.Nm SLIST_INSERT_HEAD ,
-.Nm SLIST_NEXT ,
-.\" .Nm SLIST_REMOVE_AFTER ,
-.Nm SLIST_REMOVE_HEAD ,
-.Nm SLIST_REMOVE ,
-.\" .Nm SLIST_SWAP ,
 .Nm STAILQ_CONCAT ,
 .Nm STAILQ_EMPTY ,
 .Nm STAILQ_ENTRY ,
diff --git a/man3/slist.3 b/man3/slist.3
index 20058a9c6..d2f1fac66 100644
--- a/man3/slist.3
+++ b/man3/slist.3
@@ -31,6 +31,23 @@
 .\"
 .TH SLIST 3 2020-10-21 "GNU" "Linux Programmer's Manual"
 .SH NAME
+.Nm SLIST_EMPTY ,
+.Nm SLIST_ENTRY ,
+.Nm SLIST_FIRST ,
+.Nm SLIST_FOREACH ,
+.\" .Nm SLIST_FOREACH_FROM ,
+.\" .Nm SLIST_FOREACH_SAFE ,
+.\" .Nm SLIST_FOREACH_FROM_SAFE ,
+.Nm SLIST_HEAD ,
+.Nm SLIST_HEAD_INITIALIZER ,
+.Nm SLIST_INIT ,
+.Nm SLIST_INSERT_AFTER ,
+.Nm SLIST_INSERT_HEAD ,
+.Nm SLIST_NEXT ,
+.\" .Nm SLIST_REMOVE_AFTER ,
+.Nm SLIST_REMOVE_HEAD ,
+.Nm SLIST_REMOVE ,
+.\" .Nm SLIST_SWAP ,
 .SH SYNOPSIS
 .SH DESCRIPTION
 .SH RETURN VALUE
-- 
2.28.0

