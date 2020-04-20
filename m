Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9295F1B14EA
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 20:43:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726492AbgDTSnM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 14:43:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725613AbgDTSnL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 14:43:11 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C777C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:43:11 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id t14so13436849wrw.12
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=LPQUiW4n52RGA1/Ez3dnpECS8IQGaUn5tR/29CpjMMU=;
        b=N30oFbenKjqRplP8lMtVJ+Pip5GLd2gJYXvMCTj2iDgvmUABJfP7MEe/9tI9EmNHT7
         O5rNS2nSKj1tN1M6e+xZ9CVJORszZGsaW216t8Bt8/O3nBCbGIvBJOfJzR08sxU9Vqfo
         TZ4eETNlBOlXve1HVHEEawkeOuw1znNPvAntoblptLRBfDpo/rQq5M0vcamTv3cir0+r
         Qhf5Gcv/SVVoVfP1ot4BjgExvU7ymBvb9iUeItut1/pQ8ThTkqVH42Q053+s2tfKzfhL
         IGKlRbnDRoZ0erpoWryaiKTZicha2behkYX5utXdCrlGXLDf03ORIDAJqiOZkUrmGCYL
         Rf4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=LPQUiW4n52RGA1/Ez3dnpECS8IQGaUn5tR/29CpjMMU=;
        b=G6WtSMFhDkcC/p3HQEwL5/BQ2UsmYp3Hs4DNY9NvfS0FbX0XujgOPCIhVUHQNIfvv5
         AbWoOc13YS5x9FGSQPioDf4RI1WqW4zQAHvtHIrPpVu03C9aAIwmEiu9rp+6t2ZVygBM
         j1GgCEW7UmhLUcgGPSIMK/QMYlBY/a8vI1RpU0IxtkRJS6U4HJ0vSB5IQkSU8BCd/MfF
         GmyZ+dQ+0cac+23Z1OnPcTa6tOu3iMsG89QZCZKpRHG2vJxxHgUBHUeRmO4oB9BMTNIf
         sHhfR5VVZcM07eaLaCT9qD7fzz72QIMlniivWiUFwLOS2O/RyrLFUO4MO0roIIYB1GOm
         DvBQ==
X-Gm-Message-State: AGi0Pub1mRRcue/C76zp9QBgoq8hRsdGOTX4+W1ct80NyXWB9XhWcBtS
        NH+YAqp9yma1wMhxSoRNOtA=
X-Google-Smtp-Source: APiQypKm5l3SAlF6+lImYTjUGg8dn3EmHSgeiud0cYpyZJ2zWw0+pn+3O9400+eeGQhc3XX+BceTUQ==
X-Received: by 2002:adf:edc6:: with SMTP id v6mr19742688wro.8.1587408190416;
        Mon, 20 Apr 2020 11:43:10 -0700 (PDT)
Received: from localhost.localdomain ([141.226.12.123])
        by smtp.gmail.com with ESMTPSA id n9sm438873wrx.61.2020.04.20.11.43.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2020 11:43:09 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH 2/4] fanotify_mark.2: Clarification about FAN_EVENT_ON_CHILD and new events
Date:   Mon, 20 Apr 2020 21:42:57 +0300
Message-Id: <20200420184259.29406-3-amir73il@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200420184259.29406-1-amir73il@gmail.com>
References: <20200420184259.29406-1-amir73il@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Some of the new event types that were added in v5.1 along with init flag
FAN_REPORT_FID are not eligable for reporting to a directory watching
with FAN_EVENT_ON_CHILD.

Document the events that cannot be generated on children of a watching
parent.

Signed-off-by: Amir Goldstein <amir73il@gmail.com>
Reviewed-by: Jan Kara <jack@suse.cz>
Reviewed-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>
---
 man2/fanotify_mark.2 | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index 687e20f4a..7fbcd5e36 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -314,8 +314,21 @@ Events for the immediate children of marked directories shall be created.
 The flag has no effect when marking mounts and filesystems.
 Note that events are not generated for children of the subdirectories
 of marked directories.
+More specifically, the directory entry modification events
+.BR FAN_CREATE ,
+.BR FAN_DELETE ,
+.BR FAN_MOVED_FROM
+and
+.BR FAN_MOVED_TO
+are not generated for any entry modifications performed inside subdirectories
+of marked directories.
+Note that the events
+.BR FAN_DELETE_SELF
+and
+.BR FAN_MOVE_SELF
+are not generated for children of marked directories.
 To monitor complete directory trees it is necessary to mark the relevant
-mount.
+mount or filesystem.
 .PP
 The following composed values are defined:
 .TP
-- 
2.17.1

