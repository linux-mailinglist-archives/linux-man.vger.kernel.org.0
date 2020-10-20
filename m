Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91AD8293E83
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2407990AbgJTOXY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOXY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:24 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56055C061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:24 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id e17so2374796wru.12
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UG0rXrw3CBsfE3f/zeHuA1mFbFHv3bshR6MacpsGi50=;
        b=IlqC36rDfXo4UnrFmtf6yMeoUcuoFfW6TY4jzgbZPFhXMK2xpx+qxiKST4oL58KOkD
         6bzORObQZpLevTITf608rfaDwq2zRAYKit+L8N6hMcGNdZpB7B4ZUB6O9xHOP1r+ftRD
         XnBphQz7Ay/jRmWChguwBLsFtalg/vpnTWVl2x0g+3Wtx/KuH6ohjlJ9075SFiibsxIu
         99YyXhABZxGVAO19GyxOgnPNIHhj6KCFumh7SI6c7+YoamjPebt1wSt6tzy2K+XKR3fO
         Ju/K4z64InCmcmbLYA/ZBBHOowSXo9vsTEAsu9W0hwPdGWCuByx8tWIGiwpTpfdIhqX8
         l2lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UG0rXrw3CBsfE3f/zeHuA1mFbFHv3bshR6MacpsGi50=;
        b=FQvCTIxH9QI/8hKs6188Sw6bcKTnwVXnNFh8nDP6EzeedUa6rYABBnIUiId6y8DR0T
         k099cvJA9ewZielWZzu2nrKP1iO45Ks95a8xIaOKfuSf4gFg9qqwzhLug0kVQbPWylz/
         tEcOFSCvIZNwjNMA4x8HrktZTjsU2tjB1nzS/3VR3NbS9xWNO4JzUuslBS911D76oQFj
         ViraET0YAINORgewT8hsK2Qi9JmDkLEXsiUKh9mM/RdPZJKv4CtBC3VzXEncFK8aME0h
         4NV+8UV5GZ491e79l0qUjI0MTUi2GNZEPg6oy6NTAIUTI5yojkwnfo2+UM0axkjuALBB
         3D3A==
X-Gm-Message-State: AOAM5336yo8EH8+kmPgmenqTl/jA00yu/422zAiH+DwBSwNl/2ttg/9I
        A56yTLYScLhuzuK6ogHNeRiWHA2oHOg=
X-Google-Smtp-Source: ABdhPJxO0mpJSq6tekkU5+4USMzItV2/kqKwih9oGOCbWPkHDAdj5ey7z4JKEmUOCxYerTYUVevpew==
X-Received: by 2002:a05:6000:1151:: with SMTP id d17mr4082928wrx.363.1603203802854;
        Tue, 20 Oct 2020 07:23:22 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:22 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 02/22] list.3, queue.3: NAME: Move code from queue.3 to list.3
Date:   Tue, 20 Oct 2020 16:21:27 +0200
Message-Id: <20201020142146.61837-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3  | 17 +++++++++++++++++
 man3/queue.3 | 17 -----------------
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/man3/list.3 b/man3/list.3
index 127c391f1..340b24f7c 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -31,6 +31,23 @@
 .\"
 .TH LIST 3 2020-10-19 "GNU" "Linux Programmer's Manual"
 .SH NAME
+.Nm LIST_EMPTY ,
+.Nm LIST_ENTRY ,
+.Nm LIST_FIRST ,
+.Nm LIST_FOREACH ,
+.\" .Nm LIST_FOREACH_FROM ,
+.\" .Nm LIST_FOREACH_SAFE ,
+.\" .Nm LIST_FOREACH_FROM_SAFE ,
+.Nm LIST_HEAD ,
+.Nm LIST_HEAD_INITIALIZER ,
+.Nm LIST_INIT ,
+.Nm LIST_INSERT_AFTER ,
+.Nm LIST_INSERT_BEFORE ,
+.Nm LIST_INSERT_HEAD ,
+.Nm LIST_NEXT ,
+.\" .Nm LIST_PREV ,
+.Nm LIST_REMOVE ,
+.\" .Nm LIST_SWAP ,
 .SH SYNOPSIS
 .SH DESCRIPTION
 .SH RETURN VALUE
diff --git a/man3/queue.3 b/man3/queue.3
index c48b4ba9f..17adfcf3b 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -71,23 +71,6 @@
 .Nm STAILQ_REMOVE_HEAD ,
 .Nm STAILQ_REMOVE ,
 .\" .Nm STAILQ_SWAP ,
-.Nm LIST_EMPTY ,
-.Nm LIST_ENTRY ,
-.Nm LIST_FIRST ,
-.Nm LIST_FOREACH ,
-.\" .Nm LIST_FOREACH_FROM ,
-.\" .Nm LIST_FOREACH_SAFE ,
-.\" .Nm LIST_FOREACH_FROM_SAFE ,
-.Nm LIST_HEAD ,
-.Nm LIST_HEAD_INITIALIZER ,
-.Nm LIST_INIT ,
-.Nm LIST_INSERT_AFTER ,
-.Nm LIST_INSERT_BEFORE ,
-.Nm LIST_INSERT_HEAD ,
-.Nm LIST_NEXT ,
-.\" .Nm LIST_PREV ,
-.Nm LIST_REMOVE ,
-.\" .Nm LIST_SWAP ,
 .Nm TAILQ_CONCAT ,
 .Nm TAILQ_EMPTY ,
 .Nm TAILQ_ENTRY ,
-- 
2.28.0

