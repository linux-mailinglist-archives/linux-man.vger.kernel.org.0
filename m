Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 234C3636092
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 14:55:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234936AbiKWNze (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 08:55:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237515AbiKWNzM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 08:55:12 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 870E76E569
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 05:49:29 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id bs21so29487635wrb.4
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 05:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MdSYYhhQLQFanX/sx1oYgKURHKgRSzYBl0rimXXP/54=;
        b=o4ZJKhCkOeu5paga89VzqFI9ooxPi08V3LHhucU1ZSFGIbEsvGSxOwYE4wwXjeRzJm
         NHct/S0zCIMIcQPePcwPtTBEsUbYyPr0TivkejVG0Q9HWGr7W3QKP7Y6+3FbP1mvzHsm
         WRR9TxCcqoibTtnM+nfTDx7Vv50bKEkJlQifBbg9yKXYQbSl10m78BFOqu7C2ZIMZW1y
         cUJNQ84BEokuZbZJaNc8I1Iel6rGTLYmvVQi07hb+nasq1Ttaj32vrGKdlxhGzwq49r/
         rjvKcAsKLXju1P65jtBvsH7M8LqP+gT7Lco6lHoDFkfzeojb9iwca+OP/i325wtu//bG
         SKUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MdSYYhhQLQFanX/sx1oYgKURHKgRSzYBl0rimXXP/54=;
        b=MYw99iI3fUdgu9/Bzkl3AeL2kEngl5tPfofiYtYUtOocx8Z0UWQ6qOlowLbkqXeFsO
         8tpXUKjP8MpJNxrpwJ0zjTzxnXe1+OPvRyOcrpUDIvfdhlePl6hLMGb1nkAophw/uT3K
         KVJ5e6uH37i5iYarIFXyhRPjUSM5MFAKodTQ3dRKpnPxc2RGkGL2FswJukX5p24EXxXv
         r955aYDaCRJytq7jU+zQOGsgrYgaVEUkxeOe1htGCKNVEJbL0cT4dPg20cd60Fvxjgn2
         Z0R2OR1+7gKUpvxo/jv3/5snapPGmHQtcssxZVBACHjHKGjKOzy5jqkBEJ8CLobHR0Om
         +o2Q==
X-Gm-Message-State: ANoB5pk4QGfYq4N6djg5XF5xow7ShSWk99qwl5rymppP8sEIZH/8b3bh
        zYD3tsIW8P6FLcNs3+uhUCA=
X-Google-Smtp-Source: AA0mqf4kVAqIxc64ZAOhPav3oNTtei9lPyBDyoHIT7llmbZNnWP+6V4wXtTfYQNTFNe2pE2wOyNymg==
X-Received: by 2002:a5d:6e0e:0:b0:22e:ed53:771c with SMTP id h14-20020a5d6e0e000000b0022eed53771cmr17988284wrz.297.1669211368144;
        Wed, 23 Nov 2022 05:49:28 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id o7-20020a05600c510700b003cf5ec79bf9sm2587736wms.40.2022.11.23.05.49.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 05:49:27 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     tz@iana.org, Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@openbsd.org>
Subject: [PATCH v2 4/4] zic.8: Use correct letter case in page title (TH)
Date:   Wed, 23 Nov 2022 14:48:31 +0100
Message-Id: <20221123134827.10420-4-alx@kernel.org>
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

The Linux man-pages started using for the page title (TH) the correct
letter case that programs and identifiers have.  This change was agreed
with groff(1) and mandoc(1) maintainers as an improvement, since it
provides more information to the reader of a manual page.

On 11/22/22 23:45, G. Branden Robinson wrote:
> I add that anyone who wants their man page headers to shout at them
> again can get that with (the forthcoming) groff 1.23.
> 
> o The an (man) and doc (mdoc) macro packages support new `CS` and `CT`
>    registers to control rendering of man page section headings and topics
>    (seen in the page header), respectively, in full capitals.  These
>    default off (with no visible effect on pages that already fully
>    capitalize such text in man page sources).  The rationale is to
>    encourage man page authors to preserve case distinction information in
>    (or restore it to) their topics and section headings, while giving
>    users (including system administrators, distributors, integrators, and
>    maintainers of man(1) implementations) a way to view the rendered page
>    elements in full capitals if desired.
> 
>

Link: <https://git.savannah.gnu.org/cgit/groff.git/tree/NEWS?id=eac39afe3e7a86f3adbfb02ff5e33bfd69d4c224#n271>
Acked-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Ingo Schwarze <schwarze@openbsd.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 zic.8 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/zic.8 b/zic.8
index 4ef2482c..fd5dd315 100644
--- a/zic.8
+++ b/zic.8
@@ -2,7 +2,7 @@
 .\" This page is in the public domain
 .\" %%%LICENSE_END
 .\"
-.TH ZIC 8
+.TH zic 8
 .SH NAME
 zic \- timezone compiler
 .SH SYNOPSIS
-- 
2.38.1

