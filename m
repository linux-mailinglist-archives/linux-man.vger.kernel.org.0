Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7411E27C26D
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 12:31:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727851AbgI2Kbd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 06:31:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725535AbgI2Kbd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 06:31:33 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AAFBC061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:33 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id e17so4090314wme.0
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=j3AY/310GuNzvpwEATi3xSLuNwE+Fdu1EOfyXt7c5h4=;
        b=t+AoEr8qbpbfD0PWG+EQk2t71SO8CVbXsJ5X1U6JGFWlvVgYBp8wZp03d+jnkzZCzi
         MpnMsUf43PF6sVi3VHICseHnLrOCV5s0I5KmbeB6SKfiZgOtfVU4AI3nOZna8NHl06zA
         Wt0dSlVcL2tCf0PGyM16w1pn+MQ3VdnH2S4swwCPxBgXMIftbCvIXCAjnzQ4h/SgAP/Z
         JrJEktSi/lf+oBEM6ivsuu/22kJp/ny+TEGYFCweoQe4nP+9PChii6SO69ck5s5SZp51
         MjvLcP2U/8hcnS35zgRR3Ez1lG0SA6sdouLXjTL5xuhQwDRZpwSj4aVusyG/FzHCcEho
         aMcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=j3AY/310GuNzvpwEATi3xSLuNwE+Fdu1EOfyXt7c5h4=;
        b=W8Hvm6Aqx/E0dVUoRGet4BYnEtoXeoz8FTb1j3vW7g5zQUqqg81WsBOUZWJMWiSHTt
         NzCEk6R9+9MXIs/kJsOq8aiPpzhq8nY4Qi4a4UB+wihhtoenyNTU7SUnR+aWvt3EZGX9
         r7j4wQhnFnVwafwuz6FV4AUX9pQ4JGC45LKdHvu9KbyAaPL4725mxcV+n7fBV9624Npi
         7irTDZmxzuGTiOar4Ohpu6FOoSLwVIjy2d+Tm6m8cl0uQV64AxP9Ga/+lMvxBgPmRuGS
         pnYvfB/azg21ZhCMBlzvF7+kQilLEvCpJm4XfQnOaKRJ8hGTCGdbFy+oADfW49HZjlQJ
         4XgA==
X-Gm-Message-State: AOAM533V3HK1giGK0CwmVlUQOlcfsUyosgvJOyzTzKnukExoD243vJoM
        3WCIVLMCExWDA+6aFFkVlLw=
X-Google-Smtp-Source: ABdhPJwDW/cnsrI8c6bd3DT1QMjWgn/WDb0xd3j0ei3gIHWxY5LHk7K9ZVvoxUNDSHdd5hq7pCO/1A==
X-Received: by 2002:a1c:28a:: with SMTP id 132mr4024450wmc.144.1601375491845;
        Tue, 29 Sep 2020 03:31:31 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t5sm5611464wrb.21.2020.09.29.03.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 03:31:31 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org, colomar.6.4.3@gmail.org
Subject: [PATCH v2 5/8] system_data_types.7: Add intN_t family of types
Date:   Tue, 29 Sep 2020 12:30:27 +0200
Message-Id: <20200929103028.56566-6-colomar.6.4.3@gmail.com>
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
 man7/system_data_types.7 | 79 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 2e7aca7d2..9b8244649 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -399,6 +399,85 @@ See also the
 .I uintmax_t
 type in this page.
 .RE
+.\"------------------------------------- intN_t -----------------------/
+.TP
+.IR int N _t
+.RS
+.br
+Include:
+.IR <stdint.h> .
+Alternatively,
+.IR <inttypes.h> .
+.PP
+.IR int8_t ", " int16_t ", " int32_t ", " int64_t
+.PP
+A signed integer type
+of a fixed width of exactly N bits,
+N being the value specified in its type name.
+According to the C language standard, they shall be
+capable of storing values in the range
+.RB [ INT N _MIN ,
+.BR INT N _MAX ],
+substituting N by the appropriate number.
+.PP
+According to POSIX,
+.IR int8_t ", " int16_t
+and
+.I int32_t
+are required;
+.I int64_t
+is only required in implementations that provide integer types
+with width 64;
+and all other types of this form are optional.
+.PP
+The length modifiers for the
+.IR int N _t
+types for the
+.BR printf (3)
+family of functions
+are expanded by macros of the forms
+.BR PRId N
+and
+.BR PRIi N
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"PRId64"
+or
+.B %"PRIi64"
+for printing
+.I int64_t
+values.
+The length modifiers for the
+.IR int N _t
+types for the
+.BR scanf (3)
+family of functions
+are expanded by macros of the forms
+.BR SCNd N
+and
+.BR SCNi N,
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"SCNd8"
+or
+.B %"SCNi8"
+for scanning
+.I int8_t
+values.
+.PP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.PP
+See also the
+.IR __int128 ,
+.IR intmax_t ,
+.IR uint N _t ,
+.I uintmax_t
+and
+.I unsigned __int128
+types in this page.
+.RE
 .\"------------------------------------- lconv ------------------------/
 .TP
 .I lconv
-- 
2.28.0

