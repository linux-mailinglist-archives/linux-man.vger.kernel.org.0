Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A738927FAA0
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 09:52:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725921AbgJAHwE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 03:52:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725883AbgJAHwE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 03:52:04 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61C1BC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 00:52:04 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id z1so4484713wrt.3
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 00:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pHxURqvNWwmX8PiCHmclnYoFLcDCq6v6WNJCQs8NRsc=;
        b=bNSvf5mE+bPuSwxIDRqqJ3ndkO/i2EwVpWx8FOLahoJQP0DYgLD3vJD3Ov5zk0bsc9
         dpbZqr9o0fxM4wQanNMrijbnxv/jgYp0mDFqOwtH+3q1eV3zAlwP8GxmSbB0jtwMDhx0
         psbf4ncjEHTz43eOHuG+F/hYijaa/YN0dVt2bvbcwk3UTX7a767MQQR1YrUlgMSnAdeA
         SQopIy9RDSmWZuUbAgWxCXzXi2CIo2Nw37o1r2Dl3FCuo38mQNwu+5hqq8+3qbNPrPh5
         kY5kuoibgUPNDOUoifCIaubxTpQt4by29C+3SkqN+IjgAdxDCMHvaaSE0/oficDsiOjJ
         z1tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pHxURqvNWwmX8PiCHmclnYoFLcDCq6v6WNJCQs8NRsc=;
        b=fu1Rz8lk3hJf74Ab8IzCf79+PGnJ+UJz584qfN7Drm37trBJ4eeDU3SMy9AInk0rCW
         kvOuEbr632t77fp7zLSoq3b22RCpTdiYNLBtKA3XFzAmqZfDf7QACr0bw4uqqHR1I9hr
         hnHnHW3WBQ5/88aW5pP6ppKo65Ka9fJqQhcGco+EvO+W+mwkdfbzbN9yusykypoXpeBs
         jNkv4PQdF77CuSwV2yVIv9uo1IzxuOQqObL4UDrU010L+WxY8cVDi7lzpuozqtBPN79+
         G+YotXj912KX4sSOyMbdNVN7KtasAuI9UeuYvhlZ6r3JwW2ml5XxnxtiW/dvMSAQeDEt
         LAzA==
X-Gm-Message-State: AOAM532ek3/ofQ9XmAHEP+L+7xGU800luAFUIU3V/crlH+TK7zFZm2qN
        OC21q3lFApxoNd5mtfdP6KjtLcnEQMI=
X-Google-Smtp-Source: ABdhPJxycz1SMsVyXFtSshEuswIl+j2tpnrilLwv8A6n6An2yrvQvnaBdCcCU9clP/pfjiuTQXPZPw==
X-Received: by 2002:adf:f3cd:: with SMTP id g13mr7239667wrp.298.1601538723084;
        Thu, 01 Oct 2020 00:52:03 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id l17sm7149898wme.11.2020.10.01.00.52.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 00:52:02 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] system_data_types.7: ffix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com>
 <20200928090322.2058-1-colomar.6.4.3@gmail.com>
 <20200928130558.4qi6jitfwxg6ccm7@localhost.localdomain>
 <1fe937db-8874-a8fb-5e65-88b4b15702fe@gmail.com>
 <20200930104322.6ffed5lw3uqmlzph@localhost.localdomain>
 <f9871768-cc7a-fac0-3500-6a0ccaa78099@gmail.com>
 <d145931a-3bea-7924-e353-08834cc592f0@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <a2e64aae-4f3b-a7ce-f5ec-fba5e4efdc18@gmail.com>
Date:   Thu, 1 Oct 2020 09:52:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <d145931a-3bea-7924-e353-08834cc592f0@gmail.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-10-01 09:37, Michael Kerrisk (man-pages) wrote:
> PS Alex, I believe we are at a sync point right now (i.e., I think
> that I do not have any unprocessed patches from you). Let me know if
> I'm wrong.
> 

There's only one patch missing:

https://lore.kernel.org/linux-man/20200929151047.GN6642@arm.com/T/#m7e7fe3066750196cfe26afd53a1a2a7896ddfa96

I hope it still applies.

Thanks,

Alex
