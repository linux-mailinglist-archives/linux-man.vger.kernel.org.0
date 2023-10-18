Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 408517CE49C
	for <lists+linux-man@lfdr.de>; Wed, 18 Oct 2023 19:31:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231854AbjJRRbY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Oct 2023 13:31:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231283AbjJRRam (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Oct 2023 13:30:42 -0400
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 942EB3AAD
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 10:21:16 -0700 (PDT)
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-57f0f81b2aeso3901863eaf.3
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 10:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697649675; x=1698254475; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zvFZXSm67ytPvXtW6BlU0xU6xJ0R2EV/pxAVAmdN5tY=;
        b=O0ZC4yamJpI6+UPQi5z+otv9Z2DmlRtMWTz+abLNeTBNKatRHBDGFE+Sg365EYyC0B
         pFatrHpZVvWtHsr60ltpjP8yyQ8sQuAy7sAQo30Q2WYNRVupqw6/dyjpvl6J4CkePyJV
         a36XOKejerX1Sh3A/uEskt5YAT/5mfQn4GTh7/RqH2O26rotk5oQGPrjCcoNl6B2cCFr
         EspYHDUAVUZ3liN340zoy+UJ3FcRKzglPUyeL95wnL08TGAPzrGCJjrd5T5FwTFOW0D9
         IoO1CaQHMczAH/rg+l35BzdVuiUZycPNrkrjDXLkSTGSGkNgMvRN7EX0trRfkDGqkw6Z
         +MFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697649675; x=1698254475;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zvFZXSm67ytPvXtW6BlU0xU6xJ0R2EV/pxAVAmdN5tY=;
        b=PqQaIgXhfatoqOZjJB6UdT7KC28AFuvAsxc+uagbMKMqfoMfaQAJy3pMl05OEAYmWX
         SOawoP1UUzuxHMdK/lnYEF7srm86VrJln5bW9UUdKA2Q778I6WWYvGI/ZzR4PcQDdRH6
         Rr0zj7Ef5UX9yOvVU3F6dEO41ctcvWVbtYAQ9c5z4DFCLaUVPcFbmkxKWv2R8g5UzBli
         D6SBT6JVBacs9vd/hiPRoUstD1QXSU4Mtx3s70gDepRo6gTPMl9gugHq9kjdeLR01H10
         C51Tqq4OiyGw3nd5Uwsx8YHS7yV9x73h//lALIskhCAKTfQ6pGHhiwMPoQROlbRiRnZ8
         lPNg==
X-Gm-Message-State: AOJu0YwhZF3mFLV+BVM4oeuk49wZuzkRsfkm+mb231t2k0y/8/T1lrhP
        1+KfcOlryDTxEXvLtr4ZOp0C4YyZI+L7DYbqFzQGFQ==
X-Google-Smtp-Source: AGHT+IEMyWrjl+ukVD/nDBCCHqzYYZZsJUN5hJQGv9mz0BZdypcAwiByFgnngmhoBpDO2XrZlInbtg==
X-Received: by 2002:a05:6359:3516:b0:166:f618:cf6a with SMTP id un22-20020a056359351600b00166f618cf6amr1528773rwb.27.1697649675272;
        Wed, 18 Oct 2023 10:21:15 -0700 (PDT)
Received: from mandiga.. ([2804:1b3:a7c3:a647:e0e3:84ab:f290:d748])
        by smtp.gmail.com with ESMTPSA id fa36-20020a056a002d2400b006b2e07a6235sm3574777pfb.136.2023.10.18.10.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 10:21:14 -0700 (PDT)
From:   Adhemerval Zanella <adhemerval.zanella@linaro.org>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com
Subject: [PATCH 3/5] ld.so.8: Add add filtered out environment variable in secure-execution mode
Date:   Wed, 18 Oct 2023 14:21:02 -0300
Message-Id: <20231018172104.1196993-4-adhemerval.zanella@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018172104.1196993-1-adhemerval.zanella@linaro.org>
References: <20231018172104.1196993-1-adhemerval.zanella@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

They are define by unservars.h file in glibc code [1].

[1] https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/generic/unsecvars.h;h=8278c50a84ffda18e28c178d390f1899d8306e26;hb=HEAD

Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
---
 man8/ld.so.8 | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index 74286d583..a0020be98 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -280,6 +280,17 @@ Other environment variables treated in this way include:
 .BR GETCONF_DIR ,
 .BR HOSTALIASES ,
 .BR LOCALDOMAIN ,
+.BR LD_AUDIT ,
+.BR LD_DEBUG ,
+.BR LD_DEBUG_OUTPUT ,
+.BR LD_DYNAMIC_WEAK ,
+.BR LD_HWCAP_MASK,
+.BR LD_LIBRARY_PATH ,
+.BR LD_ORIGIN_PATH ,
+.BR LD_PRELOAD ,
+.BR LD_PROFILE ,
+.BR LD_SHOW_AUXV ,
+.BR LOCALDOMAIN ,
 .BR LOCPATH ,
 .BR MALLOC_TRACE ,
 .BR NIS_PATH ,
-- 
2.34.1

