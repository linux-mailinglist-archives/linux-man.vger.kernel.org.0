Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3C69443541
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234939AbhKBSRk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231848AbhKBSRj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:39 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E74CC061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:04 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id v127so23293wme.5
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BrIX9n/fnHEDxfHo8zsqBd/icTPVUL1Jo3rnZ+T80lc=;
        b=lX5z8j3ItPHR1EjUrMFVvS/Iclpce7hEnbqHx2awB86w+cN6mltszB2/z03UxxZbdk
         ItIWyY9J1Yt0JWsOsbwvwqR1ho4KSA7UYHxdEv6cJTYpfFmN1LkWG1pVgbdzyfJTxb2W
         Vewq+DKcEpIH8lv4ZuBQ++XwYBfgqc7TkGaCXujpxffeSQ4UpyWJkei4OFxLyk3SJiSQ
         9r2PoO3VvddByPp7OOTD0UDuyYa43MH0So+KaW+uKZQgMsKSTrz8+IsIRgLsy7XHXWef
         euJNzdVAuM0OiVFkDZb70qKTlQQ3f6+MzLPeC7P6rm6sUMRyXi/fGPm28AiRLjsV+8x5
         /Azw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BrIX9n/fnHEDxfHo8zsqBd/icTPVUL1Jo3rnZ+T80lc=;
        b=bc8/KpBQBBqckFxTjMpAmALee/Qaam+Yj+46vrF6zgcMt9pJxAJUdnm6KPK3SzS8sh
         0ofoVooT6zK+yWWJ8aiVOSjU0lnYSGSit8QZVVVYa2fpH8FdonDk0feNZF0BlhH99QHY
         aWmIR1aEK+KNh/LdC/RhgNrOH0VESLy3Nq8xYxT0SEg6rjfgGOQb2c1f4PI27DO0CHOx
         Do/W7WIY5dhDO7JYuJ8UuLXfnxyk7b5H5ccioniJ/w2XTh/17vtN465b3q80Z8y64+7V
         cSNWNPDAxLAc/LD4VqpibobT2H/h9ANekF0W3ZDjAM1bCWQQa94rJhV69xewfigfBwmA
         1gSQ==
X-Gm-Message-State: AOAM531ZqTA9nZMWYRcqryaGefo8YJpb7nKXRPE71VjVQs+FilDiN5KQ
        u2TX1mQBhTnp/eg202fGEmPcx6aprVM=
X-Google-Smtp-Source: ABdhPJyBD45R1Li+E1LY3cgD3xZQMacdRXnKgAf0VtmqlXWoyvKagmM4oK9vKqMClA4/Yth4oglWIw==
X-Received: by 2002:a1c:a589:: with SMTP id o131mr9105916wme.135.1635876902810;
        Tue, 02 Nov 2021 11:15:02 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:02 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alejandro.colomar@exfo.com>,
        linux-man@vger.kernel.org
Subject: [RFC 05/37] system_data_types.7: ssize_t: Note that some headers only provide the type since POSIX.1-2008
Date:   Tue,  2 Nov 2021 19:14:22 +0100
Message-Id: <20211102181454.280919-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Alejandro Colomar <alejandro.colomar@exfo.com>

Signed-off-by: Alejandro Colomar <alejandro.colomar@exfo.com>
---
 man7/system_data_types.7 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 81f8ebdc9..05ed1a41f 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1429,6 +1429,15 @@ by converting the value to
 and using its length modifier
 .RB ( j ).
 .PP
+.IR Versions :
+.IR <aio.h> ,
+.IR <mqueue.h> ,
+and
+.I <sys/socket.h>
+define
+.I size_t
+since POSIX.1-2008.
+.PP
 .IR "Conforming to" :
 POSIX.1-2001 and later.
 .PP
-- 
2.33.1

