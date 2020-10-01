Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 698F5280241
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:13:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732407AbgJAPNT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:13:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732384AbgJAPNT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:13:19 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 148ADC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:13:19 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id e16so6244970wrm.2
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=bmuG9CC00/55KT9qwZ18d1AlXtMNmB8K4AK4SMyixiU=;
        b=vaghxvQpM2CEp8GWIB3cMIIqmE+/M1hH8PWNX0tRPiNY4FYdfsZs3HuaXjk8WbHpTD
         9xCnvNUTLR0yF4u74F6vOEcqUUteYpKLpE/yCysZyFsaZJ8SVNFY+Jrg4uzzoTN2vHI0
         TPHWEZKOMbWnoJZ4V+8hqnN889ldpLe+5vciPGykDKgQUJgLJ0ckaiEpPfaKBio3HGDd
         epmehg/uogtPz3WmNh+EtkkeaOg5CZN93VzKivcvCemi8RI1XAJrem5DdVOY5btNgxkG
         0c0IxmMjxiyH+p91orfNKedyMRsw6ySjDuFRzmHFRauaUk9BbNKHJo/H+7lbsoJJO//B
         Oaig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bmuG9CC00/55KT9qwZ18d1AlXtMNmB8K4AK4SMyixiU=;
        b=LF+F2HcujqUcV0EcQr+rkRuMMRCLPhLwtJ+809W349MTbsXv9cmuJZEJscaHau01vS
         isQ9BExqSMsOmCHhtm6xqJ5bDqou+H6/3GHJN598Z1taDinB0y+FR23hwSfQ36AxAZGi
         fC1oEXxsCCrzjKXIfAayYINswULwGeQ1AV1VY+lBCDffvnal41mBNIqsWXQBXAVRDUJu
         bMCznktsKkRKSfU+T420xiBljVt296aWSLNhkAKWFFXJsScj3974WR68+g3pgU8aBsUZ
         306q1NqjHjvKR0za2aBfqIAv2Bpxumrp94YLjKVDp+Jox70cCRuzo1VLbexz7h0+P54I
         vqig==
X-Gm-Message-State: AOAM531W+FVlHQsaxFcEziv1yi5oxCfYwXw0EDmXlWmwi8274FemrWbm
        zVV9h+DwV7iqMYWOuj5Md6c=
X-Google-Smtp-Source: ABdhPJxY+nggHxkDufhEILIenOK/pg71YYOoMNuHyg8X23HYzUD8OR8zExx5Npa48yWZRhmVJ1eK4g==
X-Received: by 2002:adf:e7ce:: with SMTP id e14mr9329926wrn.43.1601565197821;
        Thu, 01 Oct 2020 08:13:17 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id n14sm330270wmi.33.2020.10.01.08.13.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 08:13:17 -0700 (PDT)
Subject: Re: [PATCH 05/16] system_data_types.7: Add int_fastN_t family of
 types
To:     Jonathan Wakely <jwakely.gcc@gmail.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
 <20201001101559.77163-6-colomar.6.4.3@gmail.com>
 <CAH6eHdQPvsfHcsWXNKXZsZcvWkmH6JOvcAivVFjq+HJEctG62w@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <feebe27f-e9e0-1a4d-cbdd-f15f0e3468cb@gmail.com>
Date:   Thu, 1 Oct 2020 17:13:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAH6eHdQPvsfHcsWXNKXZsZcvWkmH6JOvcAivVFjq+HJEctG62w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-01 13:07, Jonathan Wakely wrote:

> 
> I don't see anything in this man page saying that the <stdint.h> types
> are all typedefs, rather than new types that are distinct from the
> standard integer types. That seems like useful information.
> 

Hello Jonathan,

I almost missed this.

We (Michael and I) chose not to give any information
about typedefs in this page.
So the reader should not assume that any type at all,
unless explicitly specified, is a typedef.
Any type could be defined however the implementation chooses to do,
and this page will only give the requirements for the implementation.

However, if you still think we should be clearer in this point,
we might create a NOTE about this in the end of the page.

Your thoughts?

Thanks,

Alex
