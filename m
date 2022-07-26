Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AB75581B10
	for <lists+linux-man@lfdr.de>; Tue, 26 Jul 2022 22:30:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232729AbiGZUa3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jul 2022 16:30:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230168AbiGZUa2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Jul 2022 16:30:28 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3378111168
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 13:30:27 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id l22so88258wrz.7
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 13:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=FMiNRn1zxFov4lL0b4TN65gy9uSnd1a7htV/FK2YSCM=;
        b=MMZhlN5lDp7lrNLGULJfzgq+Q0MRTDtOIDXE/ujcMbv5MuMI2ReUbfErgnaNzf/XOO
         oXpsyUujqx0592Dluqf6p7H8xtpcvBl7cb11LInLFg8wDVUZQNX+4JpMTMqx3pnmgsLb
         lYwSZWc2/Jq9i0jXy8gM2wGTuajW1R/vr+Tb/0759PKhTFLeXQA6FuU0WRuOVtPfIzpx
         1qJ2cm89mguI+2gWXeU74Y4pcGCBw1ZaQq/FO/+jpr4dUPE+stL67QIPe1oMyUPOlxK+
         CIKWo2wZSe4vVXmioumuWTCfyHMLKlaSkhnHRJ1iwmtCcycxQdQ5jtgiKw9V6aQ8TIbd
         OaRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=FMiNRn1zxFov4lL0b4TN65gy9uSnd1a7htV/FK2YSCM=;
        b=jGnEdJTV6ZgHtAZQV36+XzYDe6vieRUXNiSUj8RWaA3Sb+h/en3q0Ro6EmQMiFNjtF
         2uV+1DA3Y2kcse1ifhVDDg0WiEGg3b/Y+kovkeVYuOrELfKfa3Bt+U6Y41yH8/0AVkC+
         h0mpmIYkkO2fHU1N5Hq9/SbKIeMoKk4MUltDQJwTyySwsc0B000eEZtGJt1mHUpB05Ty
         CjqsRTlppaqNe8lN09LHGV8JTsZVH02DE31B2QRKsfo7crJO6UKOcbvMm18+2sbzM684
         OmIREeK1+zE+PMa1ZsDXlCK38Kc8Tun6yxBh6UOSaK6oFz87AiZYfz1t+n6Z5dwslrle
         2F2Q==
X-Gm-Message-State: AJIora/BZyNPEvVeEBclusz6574mrPXi5D/BHuLTb8tiURdzDxw7tyvZ
        eMsvYrdQpziFDpcmJPlPdsjhrarU08Q=
X-Google-Smtp-Source: AGRyM1umzgSCorpiNPPYa5sI7A3k8tr8UpUhYkLkd8zn9N3btyvfYdHfxfDBN2LnTQjREsRwpMGSvQ==
X-Received: by 2002:adf:dc0e:0:b0:21e:9b17:52fe with SMTP id t14-20020adfdc0e000000b0021e9b1752femr3705912wri.21.1658867425511;
        Tue, 26 Jul 2022 13:30:25 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id j20-20020a05600c1c1400b003a319b67f64sm5329221wms.0.2022.07.26.13.30.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 13:30:24 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, groff@gnu.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v3] open_how.2type: ffix
Date:   Tue, 26 Jul 2022 22:26:44 +0200
Message-Id: <20220726202643.49890-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1073; h=from:subject; bh=9n3kll1q3H1hjBrscLwYGDtM9AWbnneNvCDCn4SRDB4=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBi4E3wEGbpD9FgCaKRbQGxfu4fKmWEjoj1VsXK77dz b/WpB3WJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCYuBN8AAKCRCejBr7vv/bMgaiD/ 9MRj4T02TuLx8GsHOLC/nVmqzdZNECfxHRkqgxk50G4pcboDhSySBNVUJd+9PikVn3Z9uT97s7IfkL Y/pKikB6Ylnt0DzvkxkMRPDB6HlwhP5GJdVIlCQ53KdVp14INxKakrWQsjuzbctiUpZeXX4ebgTltv vx3T7j2jiWovXNywbfY8wp/iQxs/kxSrOd7OX7neahXGi+KViJqDB+bugvVZDDK/DlyvXv8cyceTLb K/fYISdO4ScmsH7qxInwk/6HfZb2qtF9Usr2PJuXEq3QMH6jaB0V3wqVJZ7tol4kaix32Ft+j2+gJC Arr2xN4sDUKSOI5COUjG/kqiSCw2qh5io//2cUiFgTBzxyhbWLB0ZedPwqlPWHZaWRrst6c33oN2CU NC0Wv+wwqCjto+TcCQ+OuJCaNLEcYjFbk/cPpss3Qs+WSfJzrRwQiytsloAlFmijy2h2JhOgnrQ3nC haK1ovBHWvRSFdv8h/ieXER+wBx2hUXkYHJjNi7sF0a4fD9+Q3NPeBn9qIWzyfnYgwzd4gYUWaH5Xn 5BhmXI9NbKVnKosvAZtCjIdhHxIkg9GEYRuvAAhFs7fkNnBs7TjLGQxxrXhBblWE6UxCB9NWdMEmyK E5nCcQTH+flRODfKx24rQC/N/0HNvIPsCbH8vG6rk+M9ihxsYUWIy0WFcFZg==
X-Developer-Key: i=alx.manpages@gmail.com; a=openpgp; fpr=A9348594CE31283A826FBDD8D57633D441E25BB5
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Format structures with tbl(1) to improve alignment in proportional-width font text.

Reported-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Branden,

I feel this v3 is good enough to propose it as an actual patch to the list.

v3:

- Use .nf/.fi for comments, but not for types and member names.
- Specify 2 spaces as the distance between types and member names,
  and between member names and the comments.
- Disallow hyphenating some identifier, to avoid confusion.

Cheers,

Alex

 man2type/open_how.2type | 27 ++++++++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/man2type/open_how.2type b/man2type/open_how.2type
index e058c08dc..01446a56b 100644
--- a/man2type/open_how.2type
+++ b/man2type/open_how.2type
@@ -13,9 +13,30 @@ Linux kernel headers
 .B #include <linux/openat2.h>
 .PP
 .B struct open_how {
-.BR "    u64  flags;" "    /* " O_ "* flags */"
-.BR "    u64  mode;" "     /* Mode for " O_ { CREAT , TMPFILE "} */"
-.BR "    u64  resolve;" "  /* " RESOLVE_ "* flags */"
+.PD 0
+.TS
+l lB2 lB2 l1 lX.
+\&	u64	flags;	/*	T{
+.fi
+.BR O_ *
+flags */
+.nf
+T}
+\&	u64	mode;	/*	T{
+.fi
+Mode for
+.BR \%O_ { CREAT , TMPFILE }
+*/
+.nf
+T}
+\&	u64	resolve;	/*	T{
+.fi
+.BR RESOLVE_ *
+flags */
+.nf
+T}
+.TE
+.PD
     /* ... */
 .B };
 .fi
-- 
2.36.1

