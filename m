Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E07C2802D2
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:34:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732104AbgJAPew (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:34:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731885AbgJAPew (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:34:52 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 775B5C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:34:50 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id s12so6316473wrw.11
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5nSxHhM79RvoZ18dq6lA970ASXxwEFZXWerZlGXV1DA=;
        b=Db9VH7U1/tRE1NjWdtp7d7DMwHU1PtKwdoqfMdtJu0aZbx37UzV2ESZaVlS52Dl/WY
         VGfY2cwOBZTjN3galhecHY3yDv5xIi9fw4yRXgeEuZ+KzYlGGnpP80mDqDPzo3AvYbVR
         0QLO3iEOY7Lizm2mua0Tm8Mlud325DTUYLQ2jPlVDF454JZPEf2EL5veV245JZ6jzMIc
         WaWHR+VjsmgOtS+oBILRzp/AU2TUWp9Nrgdaf95YHiZxsxlU2qu8JZs/WfPD4y2c4Jph
         sIb8N9SK7C2oISrcZyoS/ZC7SvVzNB+TpupCAEKQUFVhZXvJsC5fObjL1rzB2+kw1xdt
         BW1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5nSxHhM79RvoZ18dq6lA970ASXxwEFZXWerZlGXV1DA=;
        b=hq1Ah8j86LoYheKSoLZNF87WMCbiE1181+ecKx+9l7NRY3XwUvZSNN97zEOvnqYZY5
         uIeYC/STdBZzkGh+4FO0xwAjuvKxqXkjFJ5g4knJtyDVZMXK+oJ9hte/YWrZiLkt5U/H
         /VmNSwn7w7J0PQsbhRRhc31IEDE4zru3jgF5RC3aXf3q92OmwYS+Rjto/r+cjvUVfBZS
         wK4/5rnyMXA7W+YVxRFGFNf07cVlzSxRPjr+bH0bCP8YuRVBDH6mzo7NAtdPlirjqSSS
         1aRxRcmUDIIPMKhx1Um/vxovHSezP9zLkGrrOMOOanVKHpDgCajmylsseHUhcAkgWi4c
         zddA==
X-Gm-Message-State: AOAM530uIEZEGMf5GHFxD4Nb3ck7dN37MqFzYKb7sVpe/gCFGnNiDyx5
        M+bcLd485mO7CqlFvrvrKYdrUAG5Vio=
X-Google-Smtp-Source: ABdhPJxx/kXQUHhMbAu4PcQ3Uu5jT98DQA8zw8x6tuNzzi/4gJlcjN1b8GS//Wq6qPXenWF6HFNYLg==
X-Received: by 2002:adf:f552:: with SMTP id j18mr10295664wrp.128.1601566489179;
        Thu, 01 Oct 2020 08:34:49 -0700 (PDT)
Received: from [192.168.178.63] (dynamic-077-009-049-048.77.9.pool.telefonica.de. [77.9.49.48])
        by smtp.gmail.com with ESMTPSA id e13sm10358077wre.60.2020.10.01.08.34.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 08:34:48 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 0/2] Document void *
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001150638.102544-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <71c5f264-38f4-18ee-fe96-39aad08c3369@gmail.com>
Date:   Thu, 1 Oct 2020 17:34:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001150638.102544-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 10/1/20 5:06 PM, Alejandro Colomar wrote:
> Hello Michael,
> 
> This type is very special,
> so I will probably have missed some details about it.

I do wonder if we actually need this in page at all, and given:

> Also, do you like the link name?

I really don't like it... I don't want to create files
whose names are globbing characters; that's a road to pain.

So, even if we did document this type in the page,
I don't think we can have a good link name. (I suppose we
could add it to the pagewithout having a link.)

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
