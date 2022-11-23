Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9658B63608F
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 14:55:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237694AbiKWNzR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 08:55:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236016AbiKWNyy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 08:54:54 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77E5F65863
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 05:49:05 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id x17so16012985wrn.6
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 05:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=49QooWvwCFddH0S4/ezu30sbtGIAVXX2GvGTqUbNI3M=;
        b=kmxnd51+Oboez72HxQrxZTbbxgQpl0fDWSmmAY7rArwcm4QLtJE3uEk8a8kR3lCbtW
         BOjEj73IoPk/oCODaSoh1ydHeErQDhhlpOWnwZumIOuZwJ2TbO/bjuMu1Q8u1c9qy7tP
         08E+dbwhE+D5gI/OFh0CELUocpEuuQ5aVv2O9y06GUKy/e5nWnIjhddeO2DAKLz2ngXC
         UE4FaqaRW4jR00C+c+Vn7BjiW0nmge5g1fxJuZ2uqcGF8wwioW4aJ6nN2jRHJZNQNRKc
         kP7owQ64qe9VJUMCwYs/XCfJwgxN1N7OgBnfwGVonn11tYg/+eu741sSKroEkiyBTWdk
         rkxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=49QooWvwCFddH0S4/ezu30sbtGIAVXX2GvGTqUbNI3M=;
        b=fVf8xYBGxVCGFq38GbkIHbY5EdPk69NM5cYgTKSOV2dmfp7WnOp5b2L7DXkdnQA8Tq
         J5qx4xX89or74t6WFxpJa+JqrMJOnDUHVX/2BxAre0iNrbucgoQt/q5tt2cVJaYq+dxm
         lhqvNwUSmkyIgvdc+6PXYk4/bNYxGOWbQcSkrgaWNw1LRyWFeJ9JPbqeZAA4Sbg+bCrZ
         gp5Rt684+/dR6DfyAWAowTnwEzgugpGvQlTdt+AiSreMHJmkcV/kDCjKj1sdW34kDu6D
         w4fkRwyNsK4jIJ7vNgVVbLGAB7xMAiSfUhxb6bToCGeixsjAeu8dlviwhJvtt9Abs3rL
         5s+w==
X-Gm-Message-State: ANoB5pljDu7I2ZyyGGwmfn07H6Ll9kk8n3tGbROvj4fcflwYWYOg1tCx
        ufAFRb8a9OP35EaiCiNuy1yNZYK6g/Y=
X-Google-Smtp-Source: AA0mqf4HlWOSb1A8Er2OcbJi0FsT7mGCWYjL5VamLbq6OyVuzdty0puFKLFriw90IlWDKE1SrstNAQ==
X-Received: by 2002:adf:f50d:0:b0:23a:cdf5:3676 with SMTP id q13-20020adff50d000000b0023acdf53676mr18418935wro.336.1669211344012;
        Wed, 23 Nov 2022 05:49:04 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id o7-20020a05600c510700b003cf5ec79bf9sm2587736wms.40.2022.11.23.05.49.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 05:49:03 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     tz@iana.org, Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v2 2/4] zic.8: s/time zone/timezone/ for consistency
Date:   Wed, 23 Nov 2022 14:48:27 +0100
Message-Id: <20221123134827.10420-2-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221123134827.10420-1-alx@kernel.org>
References: <20221123134827.10420-1-alx@kernel.org>
MIME-Version: 1.0
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

This adds consistency across other manual pages, and with POSIX.1.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 zic.8 | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/zic.8 b/zic.8
index c2c61739..7fb51dde 100644
--- a/zic.8
+++ b/zic.8
@@ -212,7 +212,7 @@ .SH OPTIONS
 .B zic
 prohibit this.
 .PP
-A time zone abbreviation uses a
+A timezone abbreviation uses a
 .B %z
 format.
 Pre-2015 versions of
@@ -270,7 +270,7 @@ .SH OPTIONS
 pre-2014 versions of the reference client support at most 1200
 transitions.
 .PP
-A time zone abbreviation has fewer than 3 or more than 6 characters.
+A timezone abbreviation has fewer than 3 or more than 6 characters.
 POSIX requires at least 3, and requires implementations to support
 at least 6.
 .PP
@@ -297,7 +297,7 @@ .SH FILES
 \*<https://pubs\*:.opengroup\*:.org/\*:onlinepubs/\*:9699919799/\*:basedefs/\*:V1_chap06\*:.html\*>
 and the encoding's non-unibyte characters should consist entirely of
 non-PPCS bytes.  Non-PPCS characters typically occur only in comments:
-although output file names and time zone abbreviations can contain
+although output file names and timezone abbreviations can contain
 nearly any character, other software will work better if these are
 limited to the restricted syntax described under the
 .B \*-v
@@ -521,7 +521,7 @@ .SH FILES
 .q "EST"
 or
 .q "EDT" )
-of time zone abbreviations to be used when this rule is in effect.
+of timezone abbreviations to be used when this rule is in effect.
 If this field is
 .q \*- ,
 the variable part is null.
@@ -574,12 +574,12 @@ .SH FILES
 this amount matters.
 .TP
 .B FORMAT
-The format for time zone abbreviations.
+The format for timezone abbreviations.
 The pair of characters
 .B %s
 is used to show where the
 .q "variable part"
-of the time zone abbreviation goes.
+of the timezone abbreviation goes.
 Alternatively, a format can use the pair of characters
 .B %z
 to stand for the UT offset in the form
@@ -596,12 +596,12 @@ .SH FILES
 Alternatively,
 a slash (/)
 separates standard and daylight abbreviations.
-To conform to POSIX, a time zone abbreviation should contain only
+To conform to POSIX, a timezone abbreviation should contain only
 alphanumeric ASCII characters,
 .q "+"
 and
 .q "\*-".
-By convention, the time zone abbreviation
+By convention, the timezone abbreviation
 .q "\*-00"
 is a placeholder that means local time is unspecified.
 .TP
@@ -609,7 +609,7 @@ .SH FILES
 The time at which the UT offset or the rule(s) change for a location.
 It takes the form of one to four fields YEAR [MONTH [DAY [TIME]]].
 If this is specified,
-the time zone information is generated from the given UT offset
+the timezone information is generated from the given UT offset
 and rule change until the time specified, which is interpreted using
 the rules in effect just before the transition.
 The month, day, and time of day have the same format as the IN, ON, and AT
@@ -867,7 +867,7 @@ .SH "EXTENDED EXAMPLE"
 and
 .q "BMT"
 were initially used, respectively.  Since
-Swiss rules and later EU rules were applied, the time zone abbreviation
+Swiss rules and later EU rules were applied, the timezone abbreviation
 has been CET for standard time and CEST for daylight saving
 time.
 .SH FILES
-- 
2.38.1

