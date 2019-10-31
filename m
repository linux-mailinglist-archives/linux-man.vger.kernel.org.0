Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 533C6EAA28
	for <lists+linux-man@lfdr.de>; Thu, 31 Oct 2019 06:22:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726871AbfJaFWF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Oct 2019 01:22:05 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:46302 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726552AbfJaFWF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Oct 2019 01:22:05 -0400
Received: by mail-wr1-f66.google.com with SMTP id n15so4735321wrw.13
        for <linux-man@vger.kernel.org>; Wed, 30 Oct 2019 22:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1k1gS6veOUb6Me/C81nVlBi63bEuLHrwcJxxa15a/mI=;
        b=Gi5aT+51f3Hs/VrmnddAXBWJrpBa4FYAyrnwwXkFfGFzs6mucDUbZc/AVrKuhOqSdC
         ZFbGDVPQFRmbQr4bvmtbbK2aWAvba9BIFGkcwB5UcXlFZYFEr/de42BLhqxby+ChWMcj
         Od5y2qy3GdKplLl23dRc1AcRThxP73mL1aICwPEBrg9LR0iJBv6n159fPu5v6TtLkCIQ
         WqGKXxOqqP1xRv9eLUi2xp0PSSb5x6sSsziZfobArsa+E2R/ZpayufifT7o6mz7Ootmd
         RLlB6AHoLcJF6oybf3INW/v1WOP9PDl3obCJ9NN2QrUOqX9pN+b38Kea4RKJp2cRKvYn
         aTDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1k1gS6veOUb6Me/C81nVlBi63bEuLHrwcJxxa15a/mI=;
        b=EapnBDGIdrpdqOwxi0521ZIDm78aaYtWtF7R1dMswDIELomjvildaKfXKivAskcH4f
         f5/+Z7H0xqNnZY0zo/+KrLpHE5pQEZWrb7jQPDa/lixEd8MhzzACctefI24UzRvOoS1r
         BrLkOM71nK/xcdA0J7Ooo32wfQ7rTJoYWqVDaRWUnOll78OLFHz1qruzVmiMa39ySu6a
         8InRfPNbWJTTfDZWkSu03BGLEFntMpdJYipEjKP3lS4DteIuqTC4jyXLQ8NK6X97isEA
         zuMxyO4XjgOPArOQv4K9IeNWGEDtQykr5gbA+nsAe38/lq9rRJCMBlgIFV0+AOGdclYn
         OHHw==
X-Gm-Message-State: APjAAAWH9mDVo2kuEIBgUvo3GiaNoeYlXGxFtx2aFpfuYaS6S8pKnzcI
        jdcS+8hS1pnpTqY3R/1amxAn2G+S1So=
X-Google-Smtp-Source: APXvYqy97dgZhIBhG/91uxjXI7yGc7+lvTDMccogXhs3E1l1SVXPr6LO7y2COZm4/2s0+pF1jPR90g==
X-Received: by 2002:a5d:55ce:: with SMTP id i14mr3336052wrw.169.1572499322868;
        Wed, 30 Oct 2019 22:22:02 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2f38:d7b0:e8b5:a4a9:346b:8c65? ([2a01:e35:2f38:d7b0:e8b5:a4a9:346b:8c65])
        by smtp.gmail.com with ESMTPSA id x7sm4081623wrg.63.2019.10.30.22.22.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 22:22:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] netlink.7: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20191022213715.5097-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <62104783-dd55-41fc-93fa-c1abde21698f@gmail.com>
Date:   Thu, 31 Oct 2019 06:22:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20191022213715.5097-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks, Jakub. Patch applied.

Cheers,

Michael


On 10/22/19 11:37 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>   man7/netlink.7 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/netlink.7 b/man7/netlink.7
> index 952aa7065..81d42493e 100644
> --- a/man7/netlink.7
> +++ b/man7/netlink.7
> @@ -439,7 +439,7 @@ When not set,
>   only reports
>   .B ESRCH
>   errors and silently ignore
> -.B NOBUFS
> +.B ENOBUFS
>   errors.
>   .TP
>   .BR NETLINK_NO_ENOBUFS " (since Linux 2.6.30)"
> 
