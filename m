Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CDA0636090
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 14:55:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236973AbiKWNzb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 08:55:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236980AbiKWNzH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 08:55:07 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 731A36B21D
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 05:49:21 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id d1so17363204wrs.12
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 05:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z2LGpXx1kju2+gx33OjCICn93dcCuObe9DX33M0v2qE=;
        b=eNIZO2Rg8MlcrcE5BqOMIfl8M0kyXhnTO5UyTjrA2uHarBFWklsXCNGk54tjSAFRuL
         avErd5QPgdEiiV4mHgbD0f5iRDXM/h7whIrxtyDKu+GthOZwvFFcJVMATq5HGFNcK5nq
         oKea6luNwuAGPeBD+iKvbJNurp17i05TyAAwko+Nm3WiyRLTPFybw2BNRnVD8naMhIjA
         TWfwMFVbnm8MVCdzd/gmjPET/iKXOHlIKFrRPNsyChCeNouqh6EldKcAm0VmE6Hx7LyM
         WZ8QUwUf3Fm+PrameUlLIBH06nb0gpIMQFJkXBomejxWNsK73/KgHLWZ22euKOYMrApA
         otTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z2LGpXx1kju2+gx33OjCICn93dcCuObe9DX33M0v2qE=;
        b=nlxcC9shH6mNqEhIo4YkJ4/bjRid7GtVZ4Kt4phDoJ9wjwRVNkpCwldxDWcfaRB7Rc
         NHajl5Ppl5LP676kKNzEOQRWPemEB+qbJ/5fIR6emcwqBa6P++Vb2f2dPtX4MudNkCog
         K4O9QUj0UvZQe2hI377egFSb05uifAU675onkichaCG8KkkfyqezPZnY/2+k0S1bXiUZ
         H3BjG/L6vZGjZSYs8UmtYt+5KTLW0Io/Ynz0PFoH9DnAt050Me9Zj4tsMZ5G+J4HADkC
         D+2mZIxSJvnSB586tCOru38f+5VNzM8XcW92dktDuda3kcfZtzj+gZBbM4WG9DusaHx9
         UHdw==
X-Gm-Message-State: ANoB5pm8gRzwaQf6CW0Rgd5t4ed3ACedBmkOpkekVWypiP6aLQRW02ip
        KnwtPxnptB+6rVkdwoDKZqg=
X-Google-Smtp-Source: AA0mqf7LYE+mIyvCE1l8cD7e/tZ/J9XBTJV6/wa7iLctxScc/oN83T/HlvUCETtGidinRhTDAi0NBg==
X-Received: by 2002:adf:f741:0:b0:22e:37ba:41c7 with SMTP id z1-20020adff741000000b0022e37ba41c7mr17344316wrp.173.1669211360034;
        Wed, 23 Nov 2022 05:49:20 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id o7-20020a05600c510700b003cf5ec79bf9sm2587736wms.40.2022.11.23.05.49.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 05:49:19 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     tz@iana.org, Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Geoff Clare <gwc@opengroup.org>, groff@gnu.org
Subject: [PATCH v2 3/4] zic.8: Use correct escape sequences instead of special characters
Date:   Wed, 23 Nov 2022 14:48:29 +0100
Message-Id: <20221123134827.10420-3-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221123134827.10420-1-alx@kernel.org>
References: <20221123134827.10420-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

See the following table from groff_char(7):

 ┌──────────────────────────────────────────────────────────────────┐
 │Keycap   Appearance and meaning   Special character and meaning   │
 ├──────────────────────────────────────────────────────────────────┤
 │"        " neutral double quote   \[dq] neutral double quote      │
 │'        ’ closing single quote   \[aq] neutral apostrophe        │
 │-        ‐ hyphen                 \- or \[-] minus sign/Unix dash │
 │\        (escape character)       \e or \[rs] reverse solidus     │
 │^        ˆ modifier circumflex    \(ha circumflex/caret/“hat”     │
 │`        ‘ opening single quote   \(ga grave accent               │
 │~        ˜ modifier tilde         \(ti tilde                      │
 └──────────────────────────────────────────────────────────────────┘

Reviewed-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Geoff Clare <gwc@opengroup.org>
Cc: <groff@gnu.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

v2:
- Transform ' into \(aq [Branden].


Hi Branden,

I took the freedom to take your message as a reviewed-by.  Please confirm :)

Cheers,

Alex


 zic.8 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/zic.8 b/zic.8
index 7fb51dde..4ef2482c 100644
--- a/zic.8
+++ b/zic.8
@@ -351,7 +351,7 @@ .SH FILES
 .q + .
 To allow for future extensions,
 an unquoted name should not contain characters from the set
-.q !$%&'()*,/:;<=>?@[\e]^`{|}~ .
+.q !$%&\(aq()*,/:;<=>?@[\e]\(ha\(ga{|}\(ti .
 .TP
 .B FROM
 Gives the first year in which the rule applies.
-- 
2.38.1

