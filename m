Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EE2A293E8A
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408028AbgJTOXd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOXd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:33 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 886FCC061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:31 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id k18so2120909wmj.5
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SKGEEHCRETwd6h9jNsjao2C3LpaBgeXwfnttqzluZKk=;
        b=p+gpi/d4LAY9xGX1lyZifwkgJpLJqtMEQxaQOwDYdNWxAAIQQj4NbNcjB6zc0+SWJR
         Herl56uTGLcR1vzobrw4ZN8JfxtOpay8y+uC/yy5NWxqgSzkmxoQtygxWnNokg5wqBdr
         h8Nsrg5XlcK5yQMSW1svu73OzZv7f4tzjv8d3JXemReeK1r//ZLxu00Yhq9CukMbW6Z5
         j6FQHvHNFIV5cBAAGRPp07jAZMO2Hct19sCvSVn42yttC+n9rP5EPZ86rfh8XPfHIubO
         MTCsIVJutcD8+qb2XXTO2yhdzFN4sp3IyJBsJYBl2JOWS/GTkWzVsja9fKQ1+L5gBusv
         cDmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SKGEEHCRETwd6h9jNsjao2C3LpaBgeXwfnttqzluZKk=;
        b=sX+yZ44Fa5q9aQe5Zx7IeEad797BP3VuycgGMuQ71S97gmMmN2kD1qaM4fk0d/BJW7
         JfSLNCx81CXXmDQXG9QU8KTnpG55VIDPhS0c40ZEJW+FZ5YE1c531TiHhnDuwHJE5p79
         zej+CxfPbQpnL4vx7HNMuYc6EtccrKzb3QFCBipmRt91PsbxpanvQuwHt0ZdzJbc30cN
         F+5zu2c7gWwFQEoo9htCpAFxM0YoLDZnzV49fDtaUTnbxF5yWai8r8YRjp1Q9jMqyF8h
         q9TQS+fez93VMWsGZxmIg6vHJ+D5y5Bz7Ygd39hEr0OOx97el/3JvBwRg/1WYE4OU2It
         ISNg==
X-Gm-Message-State: AOAM532CHUXc36ara9lkr78DCAw8jHZkAc8+FdJc5c4Q/NFl8s3O7O8x
        YKsGaqqBXAiPbOD+QKZuGxMd2TM4UrI=
X-Google-Smtp-Source: ABdhPJxneIawtY0N8DW/IbZjb4gefRtY91q5cG69/myfRtMsbq46JSxvP6j+C5gvT7zFj/OZb+aoCg==
X-Received: by 2002:a1c:b402:: with SMTP id d2mr3397761wmf.128.1603203810287;
        Tue, 20 Oct 2020 07:23:30 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:29 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 09/22] list.3: DESCRIPTION: Copy description about naming of macros from queue.3
Date:   Tue, 20 Oct 2020 16:21:34 +0200
Message-Id: <20201020142146.61837-10-colomar.6.4.3@gmail.com>
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
 man3/list.3 | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/man3/list.3 b/man3/list.3
index ae6590fdb..70f32a384 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -89,6 +89,31 @@ LIST_REMOVE
 .fi
 .SH DESCRIPTION
 These macros define and operate on doubly-linked lists.
+.Pp
+In the macro definitions,
+.Fa TYPE
+is the name of a user defined structure,
+that must contain a field of type
+.Li SLIST_ENTRY ,
+.Li STAILQ_ENTRY ,
+.Li LIST_ENTRY ,
+.Li TAILQ_ENTRY ,
+or
+.Li CIRCLEQ_ENTRY ,
+named
+.Fa NAME .
+The argument
+.Fa HEADNAME
+is the name of a user defined structure that must be declared
+using the macros
+.Li SLIST_HEAD ,
+.Li STAILQ_HEAD ,
+.Li LIST_HEAD ,
+.Li TAILQ_HEAD ,
+or
+.Li CIRCLEQ_HEAD .
+See the examples below for further explanation of how these
+macros are used.
 .SH RETURN VALUE
 .SH CONFORMING TO
 .SH BUGS
-- 
2.28.0

