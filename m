Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0ED666CF90C
	for <lists+linux-man@lfdr.de>; Thu, 30 Mar 2023 04:11:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbjC3CLF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 29 Mar 2023 22:11:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbjC3CLF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 29 Mar 2023 22:11:05 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1020510F9
        for <linux-man@vger.kernel.org>; Wed, 29 Mar 2023 19:11:04 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id w9so70810641edc.3
        for <linux-man@vger.kernel.org>; Wed, 29 Mar 2023 19:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680142262;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Egx+1GdjfRp4RTKyJBibMk/cBaJKF1elS2fH5LQcEdM=;
        b=lP70ZUIsBL7SOxl/0NSTjGPK9TpI77mBZJWghWeYU/3FbVkQWijw9aW5IXXYHRT1SO
         YvqQUsoXrlba83W1R0KcFbnxwNSc+NSMh+DQ9943iz0WlDvDZzPBIYvNvuGi6TEAi0Ly
         JnKTvc+8ob8WLufCftmFXqYljQLqTK7w8DNgMoo/oNITKEU6Nt/mGhpahVJsVqtjl2tB
         miIhGdkcAUeyVz/FWyjgY8JPuneMl2pBzHspm7x4FfuCMNk5cqjSFffX23+CfUZ6Cn/V
         I8gS6g/Q82J68xmWaUkiJWvkjNhPPMb8lTOKFedXgyWEwJdQPggH7l7bbFeTA+x2pg7x
         JNeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680142262;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Egx+1GdjfRp4RTKyJBibMk/cBaJKF1elS2fH5LQcEdM=;
        b=V5yK0/9OzH4muY1pNb/LMbHURyhvk5PRsIgVDmhxm98qu5XUN3DGUZM13dk19fXYhf
         Wd+XZ4Is58sVALMeatJRAcoCqYTDZaKhWoQsYceC600/vpVuZtnw3bxBUxI7emUXvu6C
         lzkzAir9ECVwE1qMPUnUn3iz1FzKLn+d0ZmHle+IKIxaJrpg4az36eTgEmEidsKvi6Xd
         leHeH2XXTP9MO3FydaH6qRQgmjiGdk1HtLle3xTv0HG2pE9a0mELIBVjmoWjPotWMHqP
         DxPs6WkKhIy3NQd1H2RJcYQ/BpsZD8iKND0R4BqbgdFDHCOw+ZGs+YzjJ5TY2v+5wU1k
         BrWw==
X-Gm-Message-State: AAQBX9eojItHfiTdfqI3VMLoURgp0MeVoXXcQQ0af9rePSJ0r1pdDjOR
        yAhJa/AropZ54VOhcJxdwQaD+O464tw=
X-Google-Smtp-Source: AKy350Zc0yyq2/4/QSbFNkjy4K1I0Ix6DqYg7DAZA0gTAYq87VNxe7309jD6i7fgfygyBzAguUWDBg==
X-Received: by 2002:a17:906:6542:b0:925:8bc0:b19 with SMTP id u2-20020a170906654200b009258bc00b19mr4254988ejn.20.1680142262417;
        Wed, 29 Mar 2023 19:11:02 -0700 (PDT)
Received: from dj3ntoo (87.sub-72-108-136.myvzw.com. [72.108.136.87])
        by smtp.gmail.com with ESMTPSA id i4-20020a170906850400b0093018c7c07dsm16932048ejx.82.2023.03.29.19.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 19:10:50 -0700 (PDT)
Date:   Wed, 29 Mar 2023 21:10:12 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] bin/stdc: Case-insensitive standard
Message-ID: <ZCTvhG3a0A5N8enU@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
        linux-man@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Perform a case-insensitive match on the standard given on the cli so
that the following works as expected:

    $ stdc c89 printf
             int printf(const char *format, ...);
    $ stdc C89 printf
             int printf(const char *format, ...);

Signed-off-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
---
 bin/stdc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/bin/stdc b/bin/stdc
index 1067cf8..5630825 100755
--- a/bin/stdc
+++ b/bin/stdc
@@ -43,7 +43,7 @@ case $# in
 	;;
 esac;
 
-case "$1" in
+case "$(printf "%s" "$1" | tr "[:upper:]" "[:lower:]")" in
 c89)
 	libc_summ_c89 \
 	| grep_proto "$2";
-- 
2.39.2

