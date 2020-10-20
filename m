Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C845B293E90
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408034AbgJTOXi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOXi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:38 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10B5CC061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:38 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id a72so1997672wme.5
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zgvBKoSAae6k8dLA6L3ClK7mZIjOwQuSBwZd1G0z1eI=;
        b=f8ZIfXbsjYjkSmiEYin+7s6rbcNucR3zsvbOMXK/tMLFA1xH68aKxKJTj0qV2j1qfv
         g0S4LEjZO2hMcOM39D7YlZvsHUPB2rcWEqG+JpbLqS9z3Tdo8s7y1ECkTlv5aaww5y9/
         /bwFnQoJENRKaHjK6+pBb00AHgsGxmd0lCLebh7/tfGX2x0XcP8ur2zMqJvQxrhSJCH+
         Gaj5si8dL0rwvNWn0FNGINbVn2BngGALEHjeA9ZODKIYQhKIWEwVZaPw3hzR94WdbWml
         hQ9hFlSMXOeYChcVQ61l20UyKqpoXayNFMyiAV+gvwOW5Tn87/vv9Y3w0clw6vPFiuzf
         FiTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zgvBKoSAae6k8dLA6L3ClK7mZIjOwQuSBwZd1G0z1eI=;
        b=Cd+3ELuQYWiXVMLVaYOlXwYOY/ow7rFU9nzas0Z4kx3qArQYoOznfU5/iQ3nUrCw56
         IwbUkgA3AMlEQ2o2bTzHC/YxbfrBhqoQfqPBpPS40Us/qqbE1BsouL37aRwoiaGNvgCj
         8eMKWGhdgQxAxZqqX4sdRkdJro9s6lzYtyNObHg/T4eYpPAx6DYm3AfAeVDh1YX/GtWd
         bOtI+sOPu3udEbYd5SRBsc4kmfQrcrnffwgqON71jpxiW/DP4TcT7SUinfsXtX2sUxQc
         Kx/eylEdF+IX9yeC+VDqAScdveXXh0hX1yKw97XSK/e+zyW88JZDbVkhscrUY3xSt60L
         0fMQ==
X-Gm-Message-State: AOAM531A5tqUZoPBk83NPF+iVMWAR8QhRHh7toMuy0xO+0anF/EN0vpP
        CIO6uH6M0/+l6PbCRpb1HbE=
X-Google-Smtp-Source: ABdhPJw/xHWGB9oeYBqngipHqFoicF0SItBAl5z+vZuw4Asa3RLPLI+Tgyrxgq3TyhjxILe4itYFoA==
X-Received: by 2002:a05:600c:1149:: with SMTP id z9mr3475353wmz.180.1603203816827;
        Tue, 20 Oct 2020 07:23:36 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:36 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 15/22] list.3: CONFORMING TO: Copy from queue.3
Date:   Tue, 20 Oct 2020 16:21:40 +0200
Message-Id: <20201020142146.61837-16-colomar.6.4.3@gmail.com>
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
 man3/list.3 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man3/list.3 b/man3/list.3
index 71b35c26d..64f94197a 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -257,6 +257,11 @@ from the list.
 .\" .IR head2 .
 .SH RETURN VALUE
 .SH CONFORMING TO
+Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
+Present on the BSDs.
+.Nm queue
+functions first appeared in
+.Bx 4.4 .
 .SH BUGS
 .SH EXAMPLES
 .SH SEE ALSO
-- 
2.28.0

