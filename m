Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 763EA281652
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 17:15:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388233AbgJBPO5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 11:14:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726017AbgJBPOw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 11:14:52 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 423DEC0613D0;
        Fri,  2 Oct 2020 08:14:52 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id q9so2044183wmj.2;
        Fri, 02 Oct 2020 08:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PBP6z5DXc5+B6Aax/XZWoiuZJP1QI0X0/j3bu6pDZMc=;
        b=S+qPrvco+57yq+xUItZ2S4BOsTFYwGPXuESFpfO1jtDZ506zlYy4lV3kguHQ75QrDO
         TA+/WxyeU4o/U91duhbBeZByAuhaPL6HwplbjFcxzImtCQpcln0qFjbzrbVJnc0ov466
         mkKYRtL9VJWnYtgRgLiNEtBN41AJjF824ZfBx98tjtBVsBB6Q7oIsqhkZkrfYL7V3Utd
         6YmIfGlPnQNVMla9t6qE9BYTWEyHAUQd4934YkVjL5IHW9p5PuviFewL696u0ohVeyXh
         Mobeh69eHtNxvP0iDqO6yQX9JsdN5lQlEUqZFLxPGBPn+7smPsDRZyA+tuASORZRfMU0
         98GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PBP6z5DXc5+B6Aax/XZWoiuZJP1QI0X0/j3bu6pDZMc=;
        b=IGjWwrxSGDonKBWDIDDMVhMLPy0j3AjLlW266FBJutMkDWf7TJUMjeAaQ41HGiZWkZ
         aCjhlv/SUGQVKgWOUhXZ5dSOWd80JUN6tKkPVENDNrjJWhLHHVolgl07aYNxOUI3npYK
         5qKt5wjifTzMfhpABLJhxf6z4jJNM7CvnlUxh8mh6LcoKprEgD0kWnfkRzb4P1vugyVp
         JJ0jjyuUstvgU5LIFRoFyM1U2eoZdtrOya/3wA0kx46TToT821jROagz4A5vV7XS0eaj
         TmWOfK12mfDt9TchvFaS3F6EQFtps4GlNs53e7uEpQCeZmthB0G825JrVUPw3rQW+jSr
         TsJA==
X-Gm-Message-State: AOAM5312ytLl4KTtJ5AuhaL5TFOP97GOETI/muIF8kSh/fCPJo9zV1A+
        Coc9czPbRshpnJ7t4OTw0nw=
X-Google-Smtp-Source: ABdhPJxR7k4Vwx8DluGGsRedcqH0pLoaoA/yQuivc0BjiiQpjhH8YM4DNOD1INdXU+r8XdQzv48pUw==
X-Received: by 2002:a1c:65d7:: with SMTP id z206mr3549440wmb.165.1601651691025;
        Fri, 02 Oct 2020 08:14:51 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u127sm2312237wmu.48.2020.10.02.08.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 08:14:50 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, linux-kernel@vger.kernel.org,
        eggert@cs.ucla.edu, jwakely.gcc@gmail.com, David.Laight@ACULAB.COM
Subject: [PATCH v4 2/2] void.3: New link to system_data_types(7)
Date:   Fri,  2 Oct 2020 17:14:20 +0200
Message-Id: <20201002151419.32053-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
References: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/void.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/void.3

diff --git a/man3/void.3 b/man3/void.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/void.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

