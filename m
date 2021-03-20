Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD323342F6D
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 21:02:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229815AbhCTUBa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Mar 2021 16:01:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229766AbhCTUBY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Mar 2021 16:01:24 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3111C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 13:01:23 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id k128so4852603wmk.4
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 13:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1I8EUdr7T1se9AnMzqx3wKrxguk2nbJ2dhPHZ/7rr28=;
        b=d7uUZfqbqZu+pox5MrY1r8OrXJ2PFDbFh04sZe+B1C3Elhawjl7fTwN2Bfx2JP0tb6
         ubP619pUCRI6LhlJnoohAQ01CwLi+XnK6HoFpADECGfgIXUA0579BZnHS3w7Uexk88MH
         HHJpc19HAVpSvO54pedWPDYMSZqkR7G5Ev3KbYXASjfvjUTIQ2EqzM2vHUXmUU+vC6Xj
         UHFUbuJgc39oDDzXj6WQZaqeHB1+tHDKIgzBYtbfuur2o0jGkZEghPwaNdFw5FTqS6XD
         BhzvvL5G6OhZOUWaUUz/tJ42OXG5BpZt4st6ytBccPZ09wd336eDxBqIoV/rIljvcbZf
         30+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1I8EUdr7T1se9AnMzqx3wKrxguk2nbJ2dhPHZ/7rr28=;
        b=Enc8KPfEgcWLeIhKRb90OHgicfia0TAqkpzQc/zqu8n3LNnrJm3gjua+I5qgQnkA+/
         Z2P3qaU9tlf1p6E8fTEOeA3t/m23IEC4uGYfLEzZjNDcT7QsM+gM24RfidwYHKP2NWvj
         5IIjNyqjh5+pDAuPu/D1rlt5VEsLCJCnU1ct5DoiZJIiDQLaINR1ZkELv096hUmNS0wk
         HrvhoS4y9CtXgY334GkFv+mTIn9vwwv/ENfZ/RAn6fp9NA9k870VUzs+/0bBm/pwSxqF
         oE4epzwX/7LKoyudw6Lv4NECpHeczmsY+AzB9yakNVYmzd8B+I7dxTr9CmuQzW2oYbsV
         bvvA==
X-Gm-Message-State: AOAM533g+TciuB/706fMo5z1ULf9iCF7UBd3RwLn8kCJyBTL9Z7JKG1l
        2kleCl6Ec2rZjpdwBrTt8V8=
X-Google-Smtp-Source: ABdhPJwpxZ9a7Ot3sopmoJtWLLNYmMc+2iy5dWc1b1qdHxHBRzp6PGdq9rWQ0DC98MrzJ82om/Bqfw==
X-Received: by 2002:a7b:cb90:: with SMTP id m16mr8980727wmi.162.1616270482250;
        Sat, 20 Mar 2021 13:01:22 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id h21sm11086242wmp.10.2021.03.20.13.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Mar 2021 13:01:21 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Mark Kettenis <kettenis@openbsd.org>,
        Florian Weimer <fw@deneb.enyo.de>
Subject: [PATCH v3] errno.3: Fix ENODATA text
Date:   Sat, 20 Mar 2021 21:01:16 +0100
Message-Id: <20210320200115.95489-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <87k0q1zk7a.fsf@mid.deneb.enyo.de>
References: <87k0q1zk7a.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

ENODATA is an XSI STREAMS extension (not base POSIX).

Linux reused the name for extended attributes.
The current manual pages don't use ENODATA with its POSIX
meaning, so use the xattr(7) specific text, and leave the POSIX
meaning for a secondary paragraph.

Reported-by: Mark Kettenis <kettenis@openbsd.org>
Reported-by: Florian Weimer <fw@deneb.enyo.de>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/errno.3 | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/man3/errno.3 b/man3/errno.3
index fe9b7f715..eeb885823 100644
--- a/man3/errno.3
+++ b/man3/errno.3
@@ -403,7 +403,13 @@ No buffer space available (POSIX.1 (XSI STREAMS option)).
 .\" ENOCSI is defined but appears to be unused.
 .TP
 .B ENODATA
-No message is available on the STREAM head read queue (POSIX.1-2001).
+The named attribute does not exist,
+or the process has no access to this attribute; see
+.BR xattr (7).
+.IP
+In POSIX.1-2001 (XSI STREAMS option),
+this error was described as
+"No message is available on the STREAM head read queue".
 .TP
 .B ENODEV
 No such device (POSIX.1-2001).
-- 
2.30.1

