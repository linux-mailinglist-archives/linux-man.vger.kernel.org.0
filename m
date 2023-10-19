Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B838C7CF8F6
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 14:32:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345513AbjJSMcG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 08:32:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235422AbjJSMbv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 08:31:51 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 799801B4
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 05:31:47 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1caa371dcd8so17622545ad.0
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 05:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697718706; x=1698323506; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZzEmWzXgdxM3GRBLnov0+qi1S4R5EtHEhkRPwxEkg0o=;
        b=nfniMNBTgnUPNZPuhJqBXYYsiG6+snnhKrX+7usZV8UAG78qsg3Cn6CrHCX+/FI9GX
         qPB3A+wJmSjYPRPP8gYBfcFZnhBaQmx4BfYXlfDcNPRWdIWewSxKKELczczVh5/c9jut
         2YHRb3RRT5a+GG966TWBfq8rGnRfQiNn+xyfdZyS28GOTvVOcFBvfBlCjcTYgIXrGtHO
         PdL3Fx+6kkzfw1MoJXNSjkDeCRQ1wx/RGon+RBYRngYgsFugiItqbMjQQcXpuPdAKK8r
         0Fsq65KDk77Lztx72ueEq5Y6dURtuyhsLhc3Y+l54r04f+HA2VurRFAihbrCQuhKxGGg
         iY4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697718706; x=1698323506;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZzEmWzXgdxM3GRBLnov0+qi1S4R5EtHEhkRPwxEkg0o=;
        b=D/1idTuKNfZm4t3hUKgopM9ohJmpQRW1Z7HQpZrnMEONK5sFWgwiMy6jFPIlH9ZDOE
         633V+8fToqLzCET+S3ds4SFdunnj5Ygi0/vfv5XaIBTE1LvH3Ysl1Lr49VoUnn0Eunhv
         ewBtOiULnJo4VuOyg+R/UklU3VFjM/4Mb2tGc5MMF+VVjFsWGriGEuJpvE7cz98qYYQv
         brsH+36yMZpTrUYmQz0yGQzQTEP6jseYXyG+5K3neaRGhuBnFoaoxqIXztUxdwYcHrA+
         ASlDFmnNQWGsRgOLVTKvs0njPDN/xEQdC+AhOaSeVbiUFNWwViPWqdZ0TJ0DxVnKq9re
         cKBQ==
X-Gm-Message-State: AOJu0YzmovdSZmeFhxM9LoBiFvoihmH2qjEB74pRsjK8z/8qGE4iSdFp
        UfQeQMEso8SiTqo0NCgs2K50BfALvoIwOkvqe/6OPg==
X-Google-Smtp-Source: AGHT+IEvXYxFBfuYJfI8iNioODUa0NT1Ky9A74J0S2q+VeYw/i1/PreqJFTNbRMc2orRNU8LRg8Avg==
X-Received: by 2002:a17:903:11d0:b0:1c8:a68e:7f1 with SMTP id q16-20020a17090311d000b001c8a68e07f1mr2201053plh.66.1697718705609;
        Thu, 19 Oct 2023 05:31:45 -0700 (PDT)
Received: from mandiga.. ([2804:1b3:a7c3:a647:8435:c932:f94b:575b])
        by smtp.gmail.com with ESMTPSA id h2-20020a170902f7c200b001bbd1562e75sm1845297plw.55.2023.10.19.05.31.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 05:31:43 -0700 (PDT)
From:   Adhemerval Zanella <adhemerval.zanella@linaro.org>
To:     linux-man@vger.kernel.org
Cc:     alx@kernel.org
Subject: [PATCH v2 0/2] Some ld.so updates
Date:   Thu, 19 Oct 2023 09:31:37 -0300
Message-Id: <20231019123139.1808532-1-adhemerval.zanella@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The patchset clarify the LD_PROFILE on secure-execution mode, and
add the recent glibc hardware capability that replaced the legacy one.

Adhemerval Zanella (2):
  ld.so.8: Clarify LD_PROFILE in secure-execution mode
  ld.so.8: Describe glibc Hardware capabilities

 man8/ld.so.8 | 54 ++++++++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 48 insertions(+), 6 deletions(-)

-- 
2.34.1

