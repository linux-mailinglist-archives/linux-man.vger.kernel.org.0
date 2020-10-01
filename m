Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB91F27FD11
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725938AbgJAKQf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731704AbgJAKQf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:35 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C564C0613E2
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:33 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id j136so1115072wmj.2
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cdnXa1awL5WT+EWtvpL9/3anCoEKmUktHLxqkJ9nd7U=;
        b=GxYbWCQINeA6Cga8qaad6Es1OORs8xf1L4OFsPicqRb9TXammgg5LU3GzULiW+yZFH
         JntL1UzusEWG/msTJ9hjsZXXthfa6rcoeQHSKF69mCSaWEbp3dnMVquLbCTTKxZFzIBA
         LVjWinmStK9Kwk91KZA3qxrYQUptXQcgJehSkpRUByp3QOnydwXTS10NIXfWUPplXgp4
         +qeverNh/uG5dDR0mRX/frId3kxur6Gsk9b25w02dmJrzxkAaFwVuTZ+X8iMWkEIDrDT
         Whqy3xWfznskgqiYOGfu4fEFzN5o5eazJErd4WzfbrshgANuLKBBWL1zZ6q4D7BFkD0X
         2bDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cdnXa1awL5WT+EWtvpL9/3anCoEKmUktHLxqkJ9nd7U=;
        b=nwn4oMugZoOtyN0MRZCDnShuuB5N7U2BmDrzz8A897PGIOYK9VVlanQb7mJ3wuKVRf
         Cggr/qUCbLY8r0NBJPZwa3uNDGCSSP5RC86u8T4b/cAGFhB7czkFKekSiwVqJXRTFp2G
         6e+hr6WN719AbAPzXbIGQNyvVsEJJWz9NRdO9zFMMFRF4LB0N5kvmMGhIItsy3vllVjI
         C2RUpEJgyJtr6806KZyrcn3u/uU0k0EKRM/jHgCYSSZg5xULpfje/CJkmM8wQem95Efk
         nf/rddr+8nqhl3Ip6A/otx3O0AW1E2gJTFOsaw/aAoHjYV5VVlHeyObul1M7XVyggWN8
         tkCA==
X-Gm-Message-State: AOAM533jjmq4iG6qSBfiOUHbMbPjACpHTQhG5WF1wXIdOAq7F7NO1oJk
        IgbOVo2GUJnSPIHxqyjN7HQ9XG4m+Fx8mQ==
X-Google-Smtp-Source: ABdhPJykXatnP+Fpjbl2OVlUId/VPiptQunaerbe8RuUOIbi8kllq3IeeqTdaxBH/dzEI7c3tXzsKA==
X-Received: by 2002:a7b:ce96:: with SMTP id q22mr7208486wmj.132.1601547392060;
        Thu, 01 Oct 2020 03:16:32 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:31 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 03/16] system_data_types.7: srcfix
Date:   Thu,  1 Oct 2020 12:15:47 +0200
Message-Id: <20201001101559.77163-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index a653a7b11..a099c0250 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -406,7 +406,10 @@ Include:
 Alternatively,
 .IR <inttypes.h> .
 .PP
-.IR int8_t ", " int16_t ", " int32_t ", " int64_t
+.IR int8_t ,
+.IR int16_t ,
+.IR int32_t ,
+.I int64_t
 .PP
 A signed integer type
 of a fixed width of exactly N bits,
@@ -418,7 +421,8 @@ capable of storing values in the range
 substituting N by the appropriate number.
 .PP
 According to POSIX,
-.IR int8_t ", " int16_t
+.IR int8_t ,
+.IR int16_t
 and
 .I int32_t
 are required;
@@ -1299,7 +1303,10 @@ Include:
 Alternatively,
 .IR <inttypes.h> .
 .PP
-.IR uint8_t ", " uint16_t ", " uint32_t ", " uint64_t
+.IR uint8_t ,
+.IR uint16_t ,
+.IR uint32_t ,
+.I uint64_t
 .PP
 An unsigned integer type
 of a fixed width of exactly N bits,
@@ -1310,7 +1317,8 @@ capable of storing values in the range [0,
 substituting N by the appropriate number.
 .PP
 According to POSIX,
-.IR uint8_t ", " uint16_t
+.IR uint8_t ,
+.IR uint16_t
 and
 .I uint32_t
 are required;
-- 
2.28.0

