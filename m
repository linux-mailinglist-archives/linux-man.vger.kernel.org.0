Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4C31426894
	for <lists+linux-man@lfdr.de>; Fri,  8 Oct 2021 13:19:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240199AbhJHLVl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Oct 2021 07:21:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240238AbhJHLVk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Oct 2021 07:21:40 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34C5CC061570
        for <linux-man@vger.kernel.org>; Fri,  8 Oct 2021 04:19:45 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id r7so28682967wrc.10
        for <linux-man@vger.kernel.org>; Fri, 08 Oct 2021 04:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=6tffRlKwRiFuhW1OhFcWnrVpQTAuv8OrUAWSg1LlOBU=;
        b=EgPTEj+0a9LQ7P/HdxBuNd5GoyImgDRPiGzc8ZUtOjgY4AfSBmQTrmJUWJoStasGup
         m3O7awh6VCi3e4asmU7RzwL3dERnSDSfI4TiVkbBfCO17XUUWweBXgsjOHocRV+rOb9B
         U7wh20YqwF9laXKHqFOg3HvPVSw3iy/bhDvlDGTP2l6rmSxwmd/WP7CoaMCg03I9Ao4Z
         4rTfz1j5pJ86TrpZfda911OmUhdCC7nm0PfLxJgONZo7Zq3rVkwV1JkBRIX+eTxxjrQa
         Ev4+yaxoXqdnDH4Mn7EbyK8j9igqVo8ft9ad2PIJcVmJvYdURe8gKamXTJ2AAhFH+mtK
         xCVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=6tffRlKwRiFuhW1OhFcWnrVpQTAuv8OrUAWSg1LlOBU=;
        b=xLnI4q+5tr7FBX8EDC/lqu7bN7zBX1bm3y4M6yH7rEu23I1j5scXi9XFTMB3iLQhsQ
         7+tcQXN/p08Sx/wgtyqw2/iz1PhrHG/JmM6zK6WVkzHmvhzip6lqOb7b8nvlbqOw+GoH
         IZ4Z/HCiQ4y1ZvzRccAzBcc3uqilXaPN0erMHXw5+rh1bcGRseRf4Jz5OY3MA5b35plO
         5gbs5xbvAEDCaXc9M/FInPw0As1AQvEvO0s12LP/pOEam5reTvfryuebyq4UpjKZGU58
         AmPR798Cx8m1NMEsoOBu4mIzpa14seEt9A4Uq7ie22eqkfTzTV9SIRln+jDwFmzSdQJZ
         niag==
X-Gm-Message-State: AOAM530Alp4DT6cpDcTsTXI6t+H7iVtvV/TJMSOf5qTLzyVfl6h8UVmn
        2NbzO/fzpz6F1nZLmYNEFhYiwbH06U6VlQ==
X-Google-Smtp-Source: ABdhPJzA5opqtz7k3L6Acygyw0lTpZ4Rtjzi4OEBLdCozT1azrn9dyQhQNhatmVW9ynrJxqtriFWrg==
X-Received: by 2002:a1c:158:: with SMTP id 85mr2726832wmb.187.1633691983780;
        Fri, 08 Oct 2021 04:19:43 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id u17sm2178603wrw.85.2021.10.08.04.19.43
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Oct 2021 04:19:43 -0700 (PDT)
To:     linux-man <linux-man@vger.kernel.org>
From:   Jonny Grant <jg@jguk.org>
Subject: should free() refer to posix_memalign?
Message-ID: <177c3be6-6bab-7e55-6fa5-fc0fc33ff3b2@jguk.org>
Date:   Fri, 8 Oct 2021 12:19:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello

https://man7.org/linux/man-pages/man3/malloc.3.html

"The free() function frees the memory space pointed to by ptr,
 which must have been returned by a previous call to malloc(),
 calloc(), or realloc().  "


Could this list refer to the other ways memory can be allocated too? free() accepts other memory.
posix_memalign
aligned_alloc
memalign
valloc
pvalloc
reallocarray

That would be changing it to say :-

"The free() function frees the memory space pointed to by ptr,
 which must have been returned by a previous call to malloc(),
 calloc(), realloc(), posix_memalign(), aligned_alloc(), memalign(), valloc(), reallocarray() or pvalloc()"

https://man7.org/linux/man-pages/man3/posix_memalign.3.html

Kind regards
Jonny
