Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01B403E3767
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 00:32:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229947AbhHGWc1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 18:32:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhHGWc1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 18:32:27 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31A54C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 15:32:08 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id k38-20020a05600c1ca6b029025af5e0f38bso11579486wms.5
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 15:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mKU5qdSdmq3rNocCfPrXjswwbd+0gMuPUbqE4FdWRyc=;
        b=aw+9KXTarE2BstHuT9IE8gDzxJ3OkjQuxWbFpPjumJc9TJs+2ll3SeU9ekWsFJBygI
         45I0rGCjeSmJfKVk8kBDI1alG8/b1CMjlGES0vmwKSNxGqhu6QMVp/TQbSqfwqMKADZ1
         p4pYiTxYJpgR9HaXaTCotuqbnuWFeux0axO3TD/PlsXZcsOj6Rgi7U2RunpHPRcXii7W
         B61+CbMcXfTiPcp+gTGIIyKdZwpDt/IHKUS9UwJtv/ONxxv2a/nTf2jCLJ8EaqyVZvVA
         gA7qqLVtp8QAjUZVC6wE6m9u7cfN6qPAfTDHbR3GHrRabXIe7cL6422GYFSHk3Ce5XRt
         Vcmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mKU5qdSdmq3rNocCfPrXjswwbd+0gMuPUbqE4FdWRyc=;
        b=n/isVNRXN52yINOSm3d7eTAkRbRfDBmoLS9l1g9PtACEfwWnL5GDluzl24VGhE/5k/
         q8U2p1+LyfqFtZiL+IYTvxPUUEJ8pe/ugekVJKdlFRvoigddVjMvFYnao0MqZvuTdyTq
         p21Bvx8ojjTgvhOOURnoy8SGs6HKvrMH8mCwSntFVu3SmPYQWEOnZTmefdWxV5HIwz1C
         kml0ZQXG1orSqKf6UQaX/hz4f0/d+ICNYmD6AnuJuMrooo6dXrf8vnB3hYCmNekMSwNv
         duzQnp7YLZjwqiSbaHMcarjwEWJRM7DTLuOkcD96EL5ZgHaTL2jOBQy/R81+vf0HGDYp
         C2XQ==
X-Gm-Message-State: AOAM531PJOqESRtMn8lX7hyO1kTy3fWxf1hlSHgEBsrQiU3S0O9q2a9/
        89YI0Cyt6TWY57zSQLn5p3Q=
X-Google-Smtp-Source: ABdhPJwoDZRmThiiay28lGfXVFluuRYO5kefyOGsxXl4xy0pP4HF1k6kuntJ4qQfplAL3+DEdvxcbQ==
X-Received: by 2002:a05:600c:a05:: with SMTP id z5mr9604291wmp.73.1628375526899;
        Sat, 07 Aug 2021 15:32:06 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n7sm12668644wmd.3.2021.08.07.15.32.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 15:32:06 -0700 (PDT)
Subject: Re: [PATCH 07/32] printf.3: wfix
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Sergey Petrakov <kr@spmail.info>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-8-alx.manpages@gmail.com>
 <78b9440a-1e5b-3f2f-65f7-e222dfa1e477@gmail.com>
 <557edcab-8036-9249-e7bb-cb4e3765f59d@gmail.com>
Message-ID: <5d08063e-5109-3ea3-30d0-77af0c842029@gmail.com>
Date:   Sun, 8 Aug 2021 00:32:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <557edcab-8036-9249-e7bb-cb4e3765f59d@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 8/8/21 12:20 AM, Alejandro Colomar (man-pages) wrote:
> stdio (7)', and it's only a ffix.

s/7/3/
