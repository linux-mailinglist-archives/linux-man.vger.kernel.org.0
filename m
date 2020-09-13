Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADD3D2680AD
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 20:04:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725936AbgIMSEO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 14:04:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725876AbgIMSEM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 14:04:12 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3073DC06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:04:11 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id o5so16232530wrn.13
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:references:subject:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pmbnxqtjPrDblQU7793ScQNjI1Ke6kLxKnK5gKknHoI=;
        b=gq3ms4Ri0gwJ46/3phbsOprQIJrlskSuV3ltS17w++GNEPvM+L9+Y6DJjjGJT7pNNu
         7BOuXTAhV0ipjavDj+HgtOl/3Mx3tIVe3Sh37h1cxkTd/A0ohMPKaqdYmlZeydqEOp2f
         5zWnCJXcfoEicN0mdBr2rAnpYAWXPJCansJoaI9gOnG40gQRNPYujG/YRfTkEPJCe29Q
         fMM9m4MyFsygqZizxIYV2buFBcLOdFeQYvLrTOuhA5w0hB1WmYluXziUgXmxCPFQT4l+
         EKNzYBv+nl6RSBJ1Jvv/RWv55M2bdqCUSmiB60eabaygrfIiiO0/KXYgAXr7tuQdJ4V9
         aprA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:references:subject:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pmbnxqtjPrDblQU7793ScQNjI1Ke6kLxKnK5gKknHoI=;
        b=mmtQk94bfrL9LzNh4vFboCyNNQvQmpu4DYQhcRwMnX0dCufUHclYAo5KF7xvbcW//Z
         v06EQrCTU0oYinrZmk8IPEx3t84k6mpaootOJtKG2ispWDLHizLULiWzvoiPjwSqjQ4y
         vM/5eD6F/jMs5BJ5vhpuJRjlqBfaGLGNMs9SZqvBnW/Zf+AeAoP0Xy0oLXe2KxCidRUV
         iqTTxYwg12HO0tajl5fipIHPTz93S9rZLlyspfLkOCoFj4yH71ebwg6CJBRiEDDlfeBI
         cbgDZyhEwd85RPDGTFG8s3c7NAx/16sb47zBAyeRJnSdqjfZ1KcLl5yuBbzTxgRbpwVr
         nbhA==
X-Gm-Message-State: AOAM531YsS3LFzlEBMEjCA1VozMK2UHCitGhiW+n1EmviBivfRTg7/0r
        GRACAnGRtoXnlhaAJd9pDww=
X-Google-Smtp-Source: ABdhPJyo2Ns2ttskKThjC1SIxgcimsoCefsvIBiDSyxyhtqzU2pXm8EMfgLiGBC+iStudDvzyITX6w==
X-Received: by 2002:adf:db52:: with SMTP id f18mr11892402wrj.397.1600020249621;
        Sun, 13 Sep 2020 11:04:09 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id q192sm17075546wme.13.2020.09.13.11.04.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 11:04:08 -0700 (PDT)
To:     ldv@altlinux.org
Cc:     kbukin@gmail.com, linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <20200913173801.GA15488@altlinux.org>
Subject: Re: [PATCH] stat.2: fixed inode printing in example program
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <9f5d1d00-9946-5cc0-cc74-3c4820b37c59@gmail.com>
Date:   Sun, 13 Sep 2020 20:04:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200913173801.GA15488@altlinux.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Please, see the patch I just sent:

https://lore.kernel.org/linux-man/20200913175506.576683-1-colomar.6.4.3@gmail.com/T/#u

Do you agree it solves this problem?

Cheers,

Alex
