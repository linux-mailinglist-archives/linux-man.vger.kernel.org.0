Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 300387CE480
	for <lists+linux-man@lfdr.de>; Wed, 18 Oct 2023 19:29:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231822AbjJRR31 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Oct 2023 13:29:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231618AbjJRR3D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Oct 2023 13:29:03 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 269A83A9E
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 10:21:11 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-6b6f4c118b7so4161102b3a.0
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 10:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697649670; x=1698254470; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VRmYCDVIJv0BNHQlmEGFjJHbebMAWIQal8I4hvukVYQ=;
        b=W8dwliWTQhALeGHirvXkqo/VlGN4vm8e62xbdtmk5pyWo2WANvfIjC1nhTIC3Ppshm
         kwgDHDm4CedNUKEW/GKIPY8X8dW98tlA45z/ya4KBRasy0ROhYnpSDYWK8ITXJfDeTqL
         B0E6Ih9vBXOztskfaTLsKRuH2BoEknLaZIXaKZmf+HfL2wPF+Wqw9i0u+o29jjqMYBTP
         TM/YjcMrBuGwFK5f+QCOcEmtKDAuTqvCXfwXIX311d3sz963kK2ljrNnFQxDliCZxiSa
         iEN/UvdocTZZXokArPtebsPsEQLarrb+9o1uilznNfdG1KCu8wWEkT3MIx55KYd1J3St
         YEEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697649670; x=1698254470;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VRmYCDVIJv0BNHQlmEGFjJHbebMAWIQal8I4hvukVYQ=;
        b=YqKs8tUMSwt0Ok/KP7Cp3HLywyh8EH97vgqccqa+qhOIzdiRVHiI8Vsb7VJDummGTd
         rm57Qf4rq7B92g7BnnSwZ+YEspJtSz4ABir6RC2o3Z9kaM9Wnf7qZX+c+nqy5s3hzThG
         xV7cZU+hFYhMjZPlUI4DhB5tobADey3Q2NPi5x3LWOj4GmoUMQLIsoAbrZS8Z0IVGVpB
         mtbiloWHZ1PTjsz0YuZawVJRypKgs07zE7PWVOuJNB+0AyWjxD0yrllrQsrDiV/FN2ma
         Z2rDbYEaQyWITXR8R2Q/dfX1dK5s3Z/om+glrqNMtGl81IHuAZD2xaINWxsyt2tCmWiJ
         7jQQ==
X-Gm-Message-State: AOJu0YxliuF1UozkOhgan4spYW6x39bMi+FAVymxEV0B+8e2J+Frs0wZ
        KbzKvzY3rwtqqiT8sQSdAH18oJs7swDNYmJF+IP5ZA==
X-Google-Smtp-Source: AGHT+IFpUmm4d9/jOwv0aXU8YYsnGptluelspcqJy5TiTvlL6bXq474KDryy+tI9BjRzj+8FQqAyQw==
X-Received: by 2002:a05:6a00:c95:b0:6bc:b13c:35d5 with SMTP id a21-20020a056a000c9500b006bcb13c35d5mr5830490pfv.13.1697649670050;
        Wed, 18 Oct 2023 10:21:10 -0700 (PDT)
Received: from mandiga.. ([2804:1b3:a7c3:a647:e0e3:84ab:f290:d748])
        by smtp.gmail.com with ESMTPSA id fa36-20020a056a002d2400b006b2e07a6235sm3574777pfb.136.2023.10.18.10.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 10:21:08 -0700 (PDT)
From:   Adhemerval Zanella <adhemerval.zanella@linaro.org>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com
Subject: [PATCH 0/5] Some ld.so updates
Date:   Wed, 18 Oct 2023 14:20:59 -0300
Message-Id: <20231018172104.1196993-1-adhemerval.zanella@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The patchset updates some environment variables that have been removed
on recent glibc versions, clarify the LD_PROFILE on secure-execution
mode, update the filtered ot environment variables, add missing loader
options, and add the recent glibc hardware capability that replaced the
legacy one.

I will probably sent more updates once my environment variable handling
handling set is installed [1]

[1] https://patchwork.sourceware.org/project/glibc/list/?series=25781

Adhemerval Zanella (5):
  ld.so.8: Update environment variables from recent glibc versions
  ld.so.8: Clarify LD_PROFILE in secure-execution mode
  ld.so.8: Add add filtered out environemnt variable in secure-execution
    mode
  ld.so.8: Describe glibc Hardware capabilities
  ld.so.8: Describe the --list-diagnostics loader option

 man8/ld.so.8 | 91 +++++++++++++++++++++++++++++++++++++++++++---------
 1 file changed, 76 insertions(+), 15 deletions(-)

-- 
2.34.1

