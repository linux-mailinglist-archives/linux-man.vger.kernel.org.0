Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 071FB265D2E
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 12:00:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725828AbgIKJ7u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 05:59:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725781AbgIKJ7V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 05:59:21 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E4AEC061573;
        Fri, 11 Sep 2020 02:59:20 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id b79so4176422wmb.4;
        Fri, 11 Sep 2020 02:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=38aZsz59xvLtmdIjzfxB1EkwG+OjFx2kIIc5EQe6fJs=;
        b=OW/v/SkbLGJh7zNSa8ionJNhI0iUB3hGCWvhahcJmgYfehSWrtEFFjlkay3gMO5461
         2NbBov5GNNo9EpP98fxq9HnfI4fgi8HEtr76VHtnavR8GdJf0/94ZF9EDK+ctnveQ4A2
         lWQhsqlM2Ua1uHzVS0qDg090ynwFLSdUAfhZf8+D+ztKDiEaEME2sBMxGDieMgLaWaKO
         esD0VVoC1oKiNTOY6jgJ33x0DBOAdZoER7B4sx1haiJURnDPXwgHnYBJvVYyLgr2PPUQ
         3F+vCPqTklDlO1RwA/zhWJ7jrb3ypKI9P2nK844+vw615Vk3lUf5oekuNDzj8RMEe8XM
         9INg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=38aZsz59xvLtmdIjzfxB1EkwG+OjFx2kIIc5EQe6fJs=;
        b=R3zXFyy6xJyppV5Awq+ucum/YlV7XQdfRE6qVWcP34AXaoNBzlvleNIl477PTCZWeD
         UC5dLAumFXSrQ0tIrNAGr3VeiZIpmu+/gTogQE3CkpOiQ3OKeWQiDDBZkA6eHdQk4X3B
         nVDTgxy4v1ZWY9LEry4+JFR6Sg4ENPvsKIzTHeTyW929ILWNJcEQpdENwFTmQ7znwx+H
         9As7wDuNzLGoREoHhZDXtBLja1EvFo8KwtIwQ331BeRT/1E8EtkJ4elPaL88EIjW9EJW
         I9lCSasPF5T4xwxd6h/NNPUDYpWJCCRSauXN9Ti9vURsvczLO+rO418AazkciCtGVEv6
         6/jg==
X-Gm-Message-State: AOAM531u4Zu1MOZznhm4b2dzPgU3/UNGtQGwNNoggvrnte6Ko/z6AJ3y
        ULDi60IzeFDCWj0Ki5JhN8M0v8kg1H8=
X-Google-Smtp-Source: ABdhPJzYDuq8h7Ust8YsgfBSh3gzW+xSBYKs2O/AL900uRJt1k+VZmabVJtpO5SgSnMretdz8PIx1g==
X-Received: by 2002:a1c:7911:: with SMTP id l17mr1360710wme.179.1599818358647;
        Fri, 11 Sep 2020 02:59:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 97sm3606122wrm.15.2020.09.11.02.59.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 02:59:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/24] inet_net_pton.3: Use 'PRIx32' rather than "%x" when
 printing 'uint32_t' values
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-2-colomar.6.4.3@gmail.com>
 <928d25b7-7f97-f9b9-80ce-0550c18131c2@gmail.com>
 <050c5399-8f08-5ae6-2546-0cafd055780a@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <04da2934-1a38-2f3f-d2ed-475a0531a1c8@gmail.com>
Date:   Fri, 11 Sep 2020 11:59:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <050c5399-8f08-5ae6-2546-0cafd055780a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/11/20 11:39 AM, Alejandro Colomar wrote:
> Hi Michael,

[...]


>> So, I'm in a little bit of doubt about patches 01 and 02. Does
>> this really win us anything? On the one hand, %"PRIx32" is more
>> difficult to read than %x. On the other, does it win us anything
>> in terms of portability? At first glance, the answers seems to me
>> to be "no". Your thoughts?
>>
>> Thanks,
>>
>> Michael
> 
> On 16-bit systems 'unsigned int' might be shorter than 'uint32_t'.
> There it would make a difference, I guess.

I guess. But even un the 80s, when (I think) htonl() appeared,
I kind of doubt that there were many such systems. I think 
I'll skip these patches.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
