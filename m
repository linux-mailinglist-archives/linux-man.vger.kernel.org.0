Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D1E329839F
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 22:09:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1418767AbgJYVJq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 17:09:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732093AbgJYVJq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 17:09:46 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB3EBC061755
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 14:09:45 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id n15so10281691wrq.2
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 14:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F5qGxYDBZZAKkN+kv6pejgpF94gU4fqZOq8AkxRQmQ8=;
        b=XzcXIV3Pe7MfmPc/NFBBE6NMir4hq28Ppv/nTTAjiz+XeFh4gWScooRT68Q/212sys
         78Z1tMp6t0rXQDo33aCED9aVn4fXwDed6nyHwmIoRr1w6jucSgS+ik+KwTncghOLjn7y
         n9VExXnyGjbxSCNxReOfBBGzDrdsKtNl6/+vB2CKsPX8HOqYBnMhaSMxyVnhpvkKdRS1
         j+8nwUPK5qeZHCHfTIdQWinSkpfg3mwbeL8oTfAz+3m36VUJR8zrt6VSU0jQgQauKwRe
         caqfQOfU/9kreFvpdKyOSsN5ni2wYTNnDhlxb3wMcg3/5SYm2VR4WAfkGsEmX/DrJxj4
         H35g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F5qGxYDBZZAKkN+kv6pejgpF94gU4fqZOq8AkxRQmQ8=;
        b=q+1sEWWVL8CYRjraYhtHd1N48OL8GdwPBT8+RGNWCZmUWOkFwIyTRKjxrESpjr5gcr
         SVtcf7tEn9z903P186rZFQ+1QoL+xio6ZXg2BV/60Ae8Ea5UjmYXerPKnoN7GhJ2aA84
         r9FLzBK0jhZbCWWyvgU9NH6Kj2dSUIYlJW/hfLPbnlZXlfCn6MkirMzfqhBLZeo80fbi
         H76LUWeMunURn82AYHRxmYfutqBw3KNwUpzB8cGvjXwaY+ICvou5ygMeMQhQNLp0VQfb
         lwOzCn6j6VjhnEsiSNvseU38zX438cZwtHCuyZnyN/9CUk9D8mstbkZXTNxB8Bnmib87
         pnbA==
X-Gm-Message-State: AOAM530xJy6EX2+hwmdFZcue29I14TifgexoMK4Tcu4+N0eWzDf6W7Up
        Sp4UdbTVud0/8oLwqt3lFKM=
X-Google-Smtp-Source: ABdhPJzSrL4gVM3tvEJgErNs5KjjT7CPbyGUElFUCRS/eyCLk3AOR6UDFKtSQ0RJKGWxrZRCfSezgA==
X-Received: by 2002:adf:814f:: with SMTP id 73mr14130453wrm.174.1603660184547;
        Sun, 25 Oct 2020 14:09:44 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t6sm21929480wre.30.2020.10.25.14.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 14:09:43 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 1/2] system_Data_types.7: Add 'clockid_t'
Date:   Sun, 25 Oct 2020 22:08:16 +0100
Message-Id: <20201025210816.8072-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 28d276c69..49ca2d8e1 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -110,6 +110,29 @@ See also:
 .BR times (2),
 .BR clock (3)
 .RE
+.\"------------------------------------- clockid_t --------------------/
+.TP
+.I clockid_t
+.RS
+Include:
+.IR <sys/types.h> .
+Alternatively,
+.IR <time.h> .
+.PP
+Used for clock ID type in the clock and timer functions.
+According to POSIX,
+it shall be defined as an arithmetic type.
+.PP
+Conforming to:
+POSIX.1-2001 and later.
+.PP
+See also:
+.BR clock_adjtime (2),
+.BR clock_getres (2),
+.BR clock_nanosleep (2),
+.BR timer_create (2),
+.BR clock_getcpuclockid (3)
+.RE
 .\"------------------------------------- div_t ------------------------/
 .TP
 .I div_t
-- 
2.28.0

