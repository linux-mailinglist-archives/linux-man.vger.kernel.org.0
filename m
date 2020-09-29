Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A417727C269
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 12:31:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725554AbgI2Kb3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 06:31:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725535AbgI2Kb2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 06:31:28 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFC40C061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:27 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id k10so4773431wru.6
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=I3vlmSbIXqsqmNCnIYtyt+x3ptCVu5eSDZ3y1ok9wX8=;
        b=QpgI0p2KpMfrs82CoYJ3PJGjl+5VV59x3+yc/tgZ3FE880YDU4YBh4NnBvz4NO+mag
         uu79iN+npb9vC67bKV3qjqiCl2pVCMNejf2jDafg/D/itIeP+VULkGsTPX59o2JoJeWh
         xVcra44QSLo4V4q5J+snbo3pK/DqIWbZsWn4yhy1XkwEU91JNnBYKWc5iUqjA2vC40oQ
         wPAGyRbbC3EgZTH7JUeYXVYug7yRpuhi1kjDABcQ1fjwLUstCVAfsjQkX75KCFuw+Y0m
         zAyRjeDkakMu3rtkK7Aly+MAKaBvRD7y2oQYR+Z1GRkpUauAjNHEj01UCQzb93JHlY01
         YQ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=I3vlmSbIXqsqmNCnIYtyt+x3ptCVu5eSDZ3y1ok9wX8=;
        b=nYFQmmDhoCpdH1baYbm38q5loPeufDUEur8FnFwx5fio8gnU+W3ZWnT1/JjTAH4P23
         J2F4drots0jE5imiwcC3HFLuV0tvPbVTS0Jk4ahpQfpUYyDFTuWTRW0MHRC3+spLY73n
         mSt36XF4LMG3Fpo3q4OumrTcU5YjtHobISvfXRi+j0s52xMrXF5rLj4ld3R7tX+egff2
         2vhrriCLb8+NbClQKLCnQN0ijPfaacXMOmPiziYtzLoVegoc87N2raMuMQ6ZR8Q5/NbP
         KvJOcxFifFeX64s4DsGIFHno1w3StvScV/5z92dQf9NWFoAbTFh0fI/Zl8i0YnPZEB7y
         3nBA==
X-Gm-Message-State: AOAM533v6gW5Y4Wy/67s8Hd/C7HYDeT5ri1yslfb9BzUeiwb8BrhnN1S
        70AONax3h60lNWi99Nvsrnk=
X-Google-Smtp-Source: ABdhPJzALObKvIyIpOMCiT84uJqT5+AQR1/cWDBcRnxOY/3OF0Qolx9zitg0mUZNcZwEnBHFBgb2zQ==
X-Received: by 2002:a5d:6886:: with SMTP id h6mr3605142wru.374.1601375486470;
        Tue, 29 Sep 2020 03:31:26 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t5sm5611464wrb.21.2020.09.29.03.31.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 03:31:25 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org, colomar.6.4.3@gmail.org
Subject: [PATCH v2 1/8] system_data_types.7: Add 'intmax_t'
Date:   Tue, 29 Sep 2020 12:30:23 +0200
Message-Id: <20200929103028.56566-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
References: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 56 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index fe6e90afe..e718b3c30 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -343,6 +343,62 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
 See also:
 .BR imaxdiv (3)
 .RE
+.\"------------------------------------- intmax_t ---------------------/
+.TP
+.I intmax_t
+.RS
+.br
+Include:
+.IR <stdint.h> .
+Alternatively,
+.IR <inttypes.h> .
+.PP
+A signed integer type
+capable of representing any value of any signed integer type
+supported by the implementation.
+According to the C language standard, it shall be
+capable of storing values in the range
+.RB [ INTMAX_MIN ,
+.BR INTMAX_MAX ].
+.PP
+The macro
+.B INTMAX_C
+.\" TODO: Document INT*_C(3)
+expands its argument to an integer constant of type
+.IR intmax_t .
+.PP
+The length modifier for
+.I intmax_t
+for the
+.BR printf (3)
+and the
+.BR scanf (3)
+families of functions is
+.BR j ;
+resulting commonly in
+.B %jd
+or
+.B %ji
+for printing
+.I intmax_t
+values.
+.PP
+Bugs:
+.I intmax_t
+is not large enough to represent values of type
+.I __int128
+in implementations where
+.I __int128
+is defined and
+.I long long
+is less than 128 bits wide.
+.PP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.PP
+See also the
+.I uintmax_t
+type in this page.
+.RE
 .\"------------------------------------- lconv ------------------------/
 .TP
 .I lconv
-- 
2.28.0

