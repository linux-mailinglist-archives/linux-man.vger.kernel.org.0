Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66CE07B5F6D
	for <lists+linux-man@lfdr.de>; Tue,  3 Oct 2023 05:40:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229738AbjJCDkC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Oct 2023 23:40:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjJCDkB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Oct 2023 23:40:01 -0400
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E7DEB7
        for <linux-man@vger.kernel.org>; Mon,  2 Oct 2023 20:39:59 -0700 (PDT)
Received: by mail-il1-x134.google.com with SMTP id e9e14a558f8ab-3512c43adebso1561135ab.3
        for <linux-man@vger.kernel.org>; Mon, 02 Oct 2023 20:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696304399; x=1696909199; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=1Dt6DQl7b0vXxKLBbPMbMSybTBLiCV9FModGYnNq0Mw=;
        b=IlLOBSFN3QbZyH0Q86R3Mn/mkRzZ7vGrGtheh7x9/7FajSUghYReqCUClcLlNTadaT
         QxTpEvnxRLXvBuQ9pF24XTFvRLp/BgFlGmLRULt+1byuJBND3DdBQ3dLad7NW5Mwof51
         0Xzpl1/arO6HRrj8RIlFyxTBaohE2x3PZUIYCQ/kQ8jyeWhGoV7wY76Wl/8PPnzaxtNo
         C3Akv5zWAm2R7KSXL7uknCT+eEfEDklo7ekdiwLkmUT6w8Uhka1IiYM7lcwBg/qSY6zH
         woUwHik96Vw1XyVu3uXudmCgdbjByuRXARwPIbsGaoF/D87RboMEceltJF5sNdYRX2dM
         VBuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696304399; x=1696909199;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Dt6DQl7b0vXxKLBbPMbMSybTBLiCV9FModGYnNq0Mw=;
        b=vUcu+j8OK3CGA0wMWbCofG2mLMHIPyDxh7y+1lAEzWZG+whPYuy6NbmtlZE51qiemA
         wxqTuEk7j5ihkof8CZT7SdQXkaBcVTLih7CFjhY9NxC3s7CnqlUEOfj9iEt4IleIkOoG
         ayB/xayQ9WbL7oSF1aS9/PEzmRTryWJ+ThQAuT+W7egtBzeLcbt5JkYv6AWHKFHjNnGd
         /L+FHp5AbZo+NBNkNBfvHFvoHaBhN8QClfMGtPrAv8M48cogiQn0eTQyQKw8dtLy0s9L
         1z3ZeX9Efqu1BsEDddIR2p7qWIWxMFSlphbIJHP+VPNmkd+kwB1EA7r3xSNZ0H966d98
         oDog==
X-Gm-Message-State: AOJu0Yy1cH4jKC7d3DUPcF4lROxOt/Smo522y+RSfVYQ+dVQH3AebobA
        fk0TRTpPGdTws3C8isopPNqZNmwHYMk=
X-Google-Smtp-Source: AGHT+IEX6uxd6FoEKNcS6iwfys8HZKqUN6I1YRiPz9ofDewm3XgHXTb/vncQwrrxi/MlYbRfHdIibA==
X-Received: by 2002:a05:6e02:1549:b0:351:59db:a206 with SMTP id j9-20020a056e02154900b0035159dba206mr18514530ilu.19.1696304398755;
        Mon, 02 Oct 2023 20:39:58 -0700 (PDT)
Received: from host-180-78.ilcmijsm.champaign.il.us.clients.pavlovmedia.net (host-180-78.ilcmijsm.champaign.il.us.clients.pavlovmedia.net. [66.253.180.78])
        by smtp.gmail.com with ESMTPSA id eq28-20020a0566384e3c00b00439ca0123f8sm111905jab.44.2023.10.02.20.39.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 20:39:58 -0700 (PDT)
From:   Arnav Rawat <rawat.arnav@gmail.com>
X-Google-Original-From: Arnav Rawat <arnavr3@illinois.edu>
To:     alx@kernel.org, linux-man@vger.kernel.org
Subject: Missing pthread manual pages
Date:   Mon, 02 Oct 2023 22:39:57 -0500
Message-ID: <2244802.irdbgypaU6@host-180-78.ilcmijsm.champaign.il.us.clients.pavlovmedia.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey,

In pthreads(7), the pages for pthread_cond_signal and pthread_cond_wait are referenced, but do not exist within man3/. A few other pthread man pages also are not contained within the project. I believe this is a bug, and I cannot find another repository of man-pages which provides these pages.


