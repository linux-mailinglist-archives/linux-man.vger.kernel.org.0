Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 100152781A1
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 09:33:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727432AbgIYHdB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 03:33:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727428AbgIYHc7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 03:32:59 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF2B0C0613D3
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:32:58 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id e2so2127873wme.1
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YBZFHaQSxr828OiCiEtBMHxCpiDEinex00LYkJ1xJ+0=;
        b=XRgPM4B08Puxu41xvSOwzQXoELDw7RMROSgo2m1bNx8aBM9ndCiFSH3SRsUVdj2rww
         56vqpol3Jcw/8Vx7uw49GnRTl3OzFDzIXDyvwwgzSuAAs6XQ0FJpRKrTpB4+JaJowfJ1
         /PBox+WFYwq6LNoxJ13Yfoo+KAM6n2yF6w5MOvsj9fCnnOa3QgLLdNwF/thBnmQaK2HE
         aNLVNdtKgB7CxPyRGF6zwelDCeiYBjEoMwfaT3x2aAWX3Gu90yHIwt4Nf2Cu7ZSYTWOT
         txQgBeM6uVkoMPqoUwemfbzljP+5vJ3o3qXwiqfq3F+O2CvR0l0wkrJ6c3pMPhwSAjKC
         oTxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YBZFHaQSxr828OiCiEtBMHxCpiDEinex00LYkJ1xJ+0=;
        b=JYstN8UyLo4NwOqLkUPBFSOAjK33yJRQbWXY0MVyS1tLFdOgUJBrqUrrfveBxTstQ/
         +DzCHQIinuuy8ATWFrfJE/r1tV2aN8ghf3hFI3ZcI1BUAekZg4h4t+lAvrEzgRqg9Lfe
         dcjBR88fL5ClCSC0WtKSs8o+nLqH54YHj3vd3T3Z0GlO7i2BbpbAExSolHO5ckViea/g
         EWX8lxj4iI4fDu1abZfyzmUJU6FKIwTcV6rg1CHscmUrrrnxf8IYZZjtVkia2IEZwj1h
         5olvU6XSqZcvDfVr3vxGjEAJM0LjEMeq5rgQhmYSSQmgiw5RjwcVPonmzE08afoV4DvV
         3Z3A==
X-Gm-Message-State: AOAM532yvISKh5SesAiCjeWlJhFqeiEfYA+pBJIra+Jz7xTdMR7LdLgY
        gA2xh1LI8fmJHkzA6xYlVFU=
X-Google-Smtp-Source: ABdhPJza3i4XjJDtsmQarG031aRawJJ1dXuvDhSQJmoH8t/edVYWo7MrMOGd5FY55RZ+Hi97KOD7yw==
X-Received: by 2002:a05:600c:2146:: with SMTP id v6mr1556153wml.159.1601019177447;
        Fri, 25 Sep 2020 00:32:57 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id n2sm1974314wma.29.2020.09.25.00.32.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 00:32:56 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 02/10] system_data_types.7: Add lconv
Date:   Fri, 25 Sep 2020 09:31:33 +0200
Message-Id: <20200925073140.173394-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 47 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 095a20f6d..b04457bbf 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -226,6 +226,53 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
 .IP
 See also:
 .BR imaxdiv (3)
+.\"------------------------------------- lconv ------------------------/
+.TP
+.I lconv
+.IP
+Include:
+.IR <locale.h> .
+.IP
+.EX
+struct lconv {                  /* Values in the "C" locale: */
+    char   *decimal_point;      /* "." */
+    char   *thousands_sep;      /* "" */
+    char   *grouping;           /* "" */
+    char   *mon_decimal_point;  /* "" */
+    char   *mon_thousands_sep;  /* "" */
+    char   *mon_grouping;       /* "" */
+    char   *positive_sign;      /* "" */
+    char   *negative_sign;      /* "" */
+    char   *currency_symbol;    /* "" */
+    char    frac_digits;        /* CHAR_MAX */
+    char    p_cs_precedes;      /* CHAR_MAX */
+    char    n_cs_precedes;      /* CHAR_MAX */
+    char    p_sep_by_space;     /* CHAR_MAX */
+    char    n_sep_by_space;     /* CHAR_MAX */
+    char    p_sign_posn;        /* CHAR_MAX */
+    char    n_sign_posn;        /* CHAR_MAX */
+    char   *int_curr_symbol;    /* "" */
+    char    int_frac_digits;    /* CHAR_MAX */
+    char    int_p_cs_precedes;  /* CHAR_MAX */
+    char    int_n_cs_precedes;  /* CHAR_MAX */
+    char    int_p_sep_by_space; /* CHAR_MAX */
+    char    int_n_sep_by_space; /* CHAR_MAX */
+    char    int_p_sign_posn;    /* CHAR_MAX */
+    char    int_n_sign_posn;    /* CHAR_MAX */
+};
+.EE
+.IP
+Contains members related to the formatting of numeric values.
+In the "C" locale, its members have the values
+shown in the comments above.
+.IP
+Conforming to: C11 and later; POSIX.1-2001 and later.
+.IP
+See also:
+.BR setlocale (3),
+.BR localeconv (3),
+.BR charsets (5),
+.BR locale (7)
 .\"------------------------------------- ldiv_t -----------------------/
 .TP
 .I ldiv_t
-- 
2.28.0

