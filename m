Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DE0C280136
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 16:25:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732298AbgJAOZQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 10:25:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732478AbgJAOZM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 10:25:12 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DC6BC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 07:25:10 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id v12so3324966wmh.3
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 07:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YCoLs9V7pTGgUojGQ/WeN/LycF/DEPdP2BvDla8AyI0=;
        b=Nwz9XqeM4XFreuSxEHuP0LT/jSaVHzGkjs8pZTOVF21JvMZ209/mI5uFMZgdhrgiep
         CRf8/8GwB79Lf1paDTCyNv+hnfi82vxs2a2JMyjdvX0t7TuodzEaeDKP0tJeaDxwU1EH
         zVTB97RDfYCGmLEAacKgdD6jwPnumo+uo3UNYKYvLfFp6dQPTKBLMNTJO0ULthviVKYc
         tb3QH5M1D9/ojv1qjlnUwS84bpqIxeKk+VT8uubdigwOO77fkFCYnRMCeV+klQJATkTt
         kNtQrAkLBmtgcB9KIIKnus81nAhDFx4Q0VuHi/aIM8hyR1WGUdEEXpxd5xq7lFsNKa5R
         LF0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YCoLs9V7pTGgUojGQ/WeN/LycF/DEPdP2BvDla8AyI0=;
        b=CvOlbyXJYE+cvA3AygVsqZpsjiyyhu7pFymDctxs/MZr9ZTU8KC3031F58Rzs9J5Kr
         KVk5V/jggZjaEO06u4rtPYeoMQWTQ0v4q6PJWr7RYE3yOdAVCoG4+1PdgxYjvqZOsAWz
         M6xRr5LvooPimCVT5IKgB9KoIo+RkVdXhizVXpLbU0hXkf7ns320oylQZaCDsLOWChBt
         JLE5/LGdKH8fXtfq2g9YvRRCyOiUAHH6JLtMd51Np/9jyxI20zOylR9hC2T02S/5piUB
         4/Lj3FHZ61nESPckwbrqGOBMxiNSPJppXCkaAT08KMAhUJ3VIbJGA1jXT2r7ZchnKhZr
         MuPg==
X-Gm-Message-State: AOAM531tDqu4Lzmk+RWqTFXk92lsvbzBUEk08HzOc3v40rQmfb0OjuDf
        vh7hSYnd/iFi2dy7F4uO3bM=
X-Google-Smtp-Source: ABdhPJwhKcthwHp9CjcGmRKvvyx3cyeSEGzYO9PLLVk+1vUXfNBwU9q5Jq/okbVlxM/202gOn4d69w==
X-Received: by 2002:a1c:b703:: with SMTP id h3mr235389wmf.131.1601562308717;
        Thu, 01 Oct 2020 07:25:08 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id z191sm164483wme.40.2020.10.01.07.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 07:25:08 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2] system_data_types.7: Move "Bugs" after "Notes", as man-pages(7) specifies
Date:   Thu,  1 Oct 2020 16:23:56 +0200
Message-Id: <20201001142355.98424-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001132904.93549-1-colomar.6.4.3@gmail.com>
References: <20201001132904.93549-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi,

I guess the patch before applies,
but just in case, I rebased against what I think is your HEAD right now.
You didn't upload it yet AFAICS, so I rebased my commits in the order
you applied them.  I hope it works :)

Cheers,

Alex


 man7/system_data_types.7 | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index abaf9e3cc..4645ed5f4 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -40,13 +40,13 @@ system_data_types \- overview of system data types
 .\"		* Description (no "Description" header)
 .\"			A few lines describing the type.
 .\"
-.\"		* Bugs (if any)
-.\"
 .\"		* Conforming to (see NOTES)
 .\"			Format: CXY and later; POSIX.1-XXXX and later.
 .\"
 .\"		* Notes (optional)
 .\"
+.\"		* Bugs (if any)
+.\"
 .\"		* See also
 .\"------------------------------------- aiocb ------------------------/
 .TP
@@ -368,6 +368,9 @@ for printing
 .I intmax_t
 values.
 .PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
 Bugs:
 .I intmax_t
 is not large enough to represent values of type
@@ -378,9 +381,6 @@ is defined and
 .I long long
 is less than 128 bits wide.
 .PP
-Conforming to:
-C99 and later; POSIX.1-2001 and later.
-.PP
 See also the
 .I uintmax_t
 type in this page.
@@ -1309,6 +1309,9 @@ for printing
 .I uintmax_t
 values.
 .PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
 Bugs:
 .I uintmax_t
 is not large enough to represent values of type
@@ -1319,9 +1322,6 @@ is defined and
 .I unsigned long long
 is less than 128 bits wide.
 .PP
-Conforming to:
-C99 and later; POSIX.1-2001 and later.
-.PP
 See also the
 .I intmax_t
 type in this page.
-- 
2.28.0

