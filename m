Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A28D26FC04
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 14:05:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725955AbgIRMFD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 08:05:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726064AbgIRMFD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 08:05:03 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2D02C061756
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 05:05:02 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id d4so5077621wmd.5
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 05:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JcZqvLAfdRwr/3GMl7nlotjbQA1n6RRHzP/9eeZz928=;
        b=eBkWDzmxcOL/4r03OnBcgBg44ECnzuZ4pI1dRtQ5m0fZm/wwAPo4eVtFYyWwZpxGRf
         TwXkDX/GoNJYwWOyYNfZM7u/92cbxEDUYhnRL1PsXz1hqfAkbY3NCyk9GzMoZ/r1pPNh
         f3IfUs66PuH97d94OpRCB22kpgeVOYIxhynljKMpaQYw6rIe1R7bham0PffgFds3gvet
         OLoUO3J5XAKcSQOBtmdySbYLwLPW/Ot2sAn0MmA808nvccDdy8odvsOEZNK3XxRkO0C2
         eBDZe5j7EzdkHN3JOUnyF3l4ER0Bf4NDiBXh+C4TSmJbA4JVCmpw0te4eRTHzEll+0ck
         mV2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JcZqvLAfdRwr/3GMl7nlotjbQA1n6RRHzP/9eeZz928=;
        b=f7yd+1yU3qZ3+bkG8iZt0T6/ay2XD1EqiP2+ix5PNwPjqTCYO5vDkoRDGtYA81wo0j
         W+HHVq7aUzLhmODbN0RI8aHZUykGrKSJHV0HsVws6HseSLk1yDn06sW8YMG2fCGb4OeX
         V4cj7S0EQyAqiWADJyWGINs+nO8hpi2XV+PykHYRKcujTMixm3tFEcdVjLpaVtBAndl5
         nFTYmdgBC6nRgg9YNnBZO+pvdui8fIIouZKtv2V0haAjIQoWk4UAFjN0ByO8bZMsdxv7
         gM1l/ZU5ks7USe19M1YY/WZe4fuF8FcltFznUkDVt92GOiRy0vF58UUvOC437WlVWrOg
         mtVg==
X-Gm-Message-State: AOAM532u8vA/6dwhTU8LvmEaaBflEaetdNNuG/LpIbLF2YdxZDhPKXZ+
        4kulB5aqZMEzV3HJ0r5K52s=
X-Google-Smtp-Source: ABdhPJxVeUu6y0d0k79KS4TASchMaZ5VdYzxRHqBKOQtwEcXjG8vgbni8HgZ0nc6OsZA3qy2teK7jg==
X-Received: by 2002:a1c:e3c3:: with SMTP id a186mr16339028wmh.189.1600430701585;
        Fri, 18 Sep 2020 05:05:01 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id n4sm4862502wrp.61.2020.09.18.05.05.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 05:05:00 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 1/4] system_data_types.7: srcfix: Remove TODO comment
Date:   Fri, 18 Sep 2020 14:04:38 +0200
Message-Id: <20200918120440.30281-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918120440.30281-1-colomar.6.4.3@gmail.com>
References: <20200918120440.30281-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 041e7e243..72afe9e81 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -27,9 +27,6 @@
 .SH NAME
 system_data_types \- overview of system data types
 .SH DESCRIPTION
-.\" TODO:
-.\"	* Add types
-.\"	* Curate "See also"
 .\" Layout:
 .\"	A list of type names (the struct/union keyword will be omitted).
 .\"	Each entry will have the following parts:
-- 
2.28.0

