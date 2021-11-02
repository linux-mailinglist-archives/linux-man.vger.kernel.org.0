Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16E0544355F
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235063AbhKBSSU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235023AbhKBSSP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:15 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55B8BC061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:40 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 77-20020a1c0450000000b0033123de3425so2717918wme.0
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K0n1lVSMiUtFsbNf6LG9WeD0xMSe0aSmho4oWx8Vb3E=;
        b=ncDr/A02Dqh1FhjiSbLrpjPkOLb5P2l2A1fvFWrFuruNKoAhbI4fB3Aijeu4xemTVV
         gCe6hJ6Y0KK3m8yLngkQlBFkVnrTZz/f55x23dNIdiV1yjFO8Q1+UhlC6we/tTPlsRRC
         dlO3hKrg7tqnX4LwtctJcjR06llzRtf83f4Eds7GruDJoMlR2vtVY/mDdssDnGlsyShV
         Y/JDE7PVctvEwKTdreLRScRINj0UQrTHO7fo6vkNXeP2O9WOgW5FutppWtJa6EVQ02Vr
         FBnqLZJFemxabWHe5sJk1CIF4EM1grHagMEWyHEzZIrXnGPxK2maKsYT0d9zIVys0/a7
         zHWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K0n1lVSMiUtFsbNf6LG9WeD0xMSe0aSmho4oWx8Vb3E=;
        b=c5dtjI5OIj5gHLyrdOmZFkHCU4Q1oycMY4ZUImQeNZufYxaS8aTo+/7buuLdDJ4vLo
         xJdVuAGcV2rYWOySVG0Spo8zCW3WM5R5u391msfLqUbfrqtvQ4W+Kpqt+B6tDi8gQnKm
         MACmMsgXCyL30x8WdmNWALQosVOmmqL0rIHktX0biJbdY61paNBf2aE+vJEcyrcOggvb
         g1r3QcqbNu2o5BcppQRJbjSgDhKytXbR3Fy/Ff+MKZa3+ECnFcrXaVHHamJ+JL9+ZsYG
         H3ro1ta72F/4aUTduQtTRPKWOjD3HAAOzhBxZB+t9hfyPlim8jbKnpcoSQAsd2oL8WqZ
         eObw==
X-Gm-Message-State: AOAM531nuarHYfXRe9I955GedksG/xcEkUFZ6rM5lvp1VuoNfxVY/16c
        PrmcIa16dVUDsQLYOczXXyM=
X-Google-Smtp-Source: ABdhPJzPrJrZZXCpN/Qlz4lSkCohKBdhVOyOfMmFp9D6tXvQLdoeL+Zguzf0EQbW9LtMZHiit/ztXA==
X-Received: by 2002:a1c:a592:: with SMTP id o140mr8808154wme.10.1635876938913;
        Tue, 02 Nov 2021 11:15:38 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:38 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 34/37] lconv-struct.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:51 +0100
Message-Id: <20211102181454.280919-35-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/lconv-struct.3      | 46 +++++++++++++++++++++++++++++++++++++-
 man7/system_data_types.7 | 48 ----------------------------------------
 2 files changed, 45 insertions(+), 49 deletions(-)

diff --git a/man3/lconv-struct.3 b/man3/lconv-struct.3
index db50c0f09..27a4d587d 100644
--- a/man3/lconv-struct.3
+++ b/man3/lconv-struct.3
@@ -1 +1,45 @@
-.so man7/system_data_types.7
+.TH LCONV-STRUCT 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+struct lconv \- numeric formatting information
+.SH SYNOPSIS
+.nf
+.B #include <locale.h>
+.PP
+.BR "struct lconv {" "                /* Values in the \(dqC\(dq locale: */"
+.BR "    char *decimal_point;" "      /* \(dq.\(dq */"
+.BR "    char *thousands_sep;" "      /* \(dq\(dq */"
+.BR "    char *grouping;" "           /* \(dq\(dq */"
+.BR "    char *mon_decimal_point;" "  /* \(dq\(dq */"
+.BR "    char *mon_thousands_sep;" "  /* \(dq\(dq */"
+.BR "    char *mon_grouping;" "       /* \(dq\(dq */"
+.BR "    char *positive_sign;" "      /* \(dq\(dq */"
+.BR "    char *negative_sign;" "      /* \(dq\(dq */"
+.BR "    char *currency_symbol;" "    /* \(dq\(dq */"
+.BR "    char  frac_digits;" "        /* CHAR_MAX */"
+.BR "    char  p_cs_precedes;" "      /* CHAR_MAX */"
+.BR "    char  n_cs_precedes;" "      /* CHAR_MAX */"
+.BR "    char  p_sep_by_space;" "     /* CHAR_MAX */"
+.BR "    char  n_sep_by_space;" "     /* CHAR_MAX */"
+.BR "    char  p_sign_posn;" "        /* CHAR_MAX */"
+.BR "    char  n_sign_posn;" "        /* CHAR_MAX */"
+.BR "    char *int_curr_symbol;" "    /* \(dq\(dq */"
+.BR "    char  int_frac_digits;" "    /* CHAR_MAX */"
+.BR "    char  int_p_cs_precedes;" "  /* CHAR_MAX */"
+.BR "    char  int_n_cs_precedes;" "  /* CHAR_MAX */"
+.BR "    char  int_p_sep_by_space;" " /* CHAR_MAX */"
+.BR "    char  int_n_sep_by_space;" " /* CHAR_MAX */"
+.BR "    char  int_p_sign_posn;" "    /* CHAR_MAX */"
+.BR "    char  int_n_sign_posn;" "    /* CHAR_MAX */"
+.B };
+.fi
+.SH DESCRIPTION
+Contains members related to the formatting of numeric values.
+In the "C" locale, its members have the values
+shown in the comments above.
+.SH CONFORMING TO
+C11 and later; POSIX.1-2001 and later.
+.SH SEE ALSO
+.BR setlocale (3),
+.BR localeconv (3),
+.BR charsets (7),
+.BR locale (7)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index f4b30caba..25a45e318 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -135,54 +135,6 @@ and
 types in this page.
 .RE
 .\"------------------------------------- lconv ------------------------/
-.TP
-.I lconv
-.RS
-.IR Include :
-.IR <locale.h> .
-.PP
-.EX
-struct lconv {                  /* Values in the "C" locale: */
-    char   *decimal_point;      /* "." */
-    char   *thousands_sep;      /* "" */
-    char   *grouping;           /* "" */
-    char   *mon_decimal_point;  /* "" */
-    char   *mon_thousands_sep;  /* "" */
-    char   *mon_grouping;       /* "" */
-    char   *positive_sign;      /* "" */
-    char   *negative_sign;      /* "" */
-    char   *currency_symbol;    /* "" */
-    char    frac_digits;        /* CHAR_MAX */
-    char    p_cs_precedes;      /* CHAR_MAX */
-    char    n_cs_precedes;      /* CHAR_MAX */
-    char    p_sep_by_space;     /* CHAR_MAX */
-    char    n_sep_by_space;     /* CHAR_MAX */
-    char    p_sign_posn;        /* CHAR_MAX */
-    char    n_sign_posn;        /* CHAR_MAX */
-    char   *int_curr_symbol;    /* "" */
-    char    int_frac_digits;    /* CHAR_MAX */
-    char    int_p_cs_precedes;  /* CHAR_MAX */
-    char    int_n_cs_precedes;  /* CHAR_MAX */
-    char    int_p_sep_by_space; /* CHAR_MAX */
-    char    int_n_sep_by_space; /* CHAR_MAX */
-    char    int_p_sign_posn;    /* CHAR_MAX */
-    char    int_n_sign_posn;    /* CHAR_MAX */
-};
-.EE
-.PP
-Contains members related to the formatting of numeric values.
-In the "C" locale, its members have the values
-shown in the comments above.
-.PP
-.IR "Conforming to" :
-C11 and later; POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR setlocale (3),
-.BR localeconv (3),
-.BR charsets (7),
-.BR locale (7)
-.RE
 .\"------------------------------------- ldiv_t -----------------------/
 .TP
 .I ldiv_t
-- 
2.33.1

