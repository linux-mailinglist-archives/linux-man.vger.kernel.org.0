Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E166B1EA1BF
	for <lists+linux-man@lfdr.de>; Mon,  1 Jun 2020 12:21:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726022AbgFAKVN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Jun 2020 06:21:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725972AbgFAKVL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 1 Jun 2020 06:21:11 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41F9CC061A0E
        for <linux-man@vger.kernel.org>; Mon,  1 Jun 2020 03:21:10 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id l10so10893286wrr.10
        for <linux-man@vger.kernel.org>; Mon, 01 Jun 2020 03:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=ccJBRa2qX2AbGjtcRmB0gTU2CLQK27ZxnhzTsCY92KU=;
        b=ZR8zIBAlR+zkrrvxV4GGBhiX+ulIxJRsSGj+MDKSQ2lN8yqDMWtPLMCB1HJuZm2Tei
         eIqpKmFlQl4QXhIrdgQR7XioDbkrgPDuc1gHC8hIfV/JVJ1bTi86L8dGGUQ8nAib/0v7
         DLGfHBQB0KP1AVtOfXZCfJQyJ2Chb743qfPiC44ZaEaQusELSAlZYQ8h1kYOh/Xm+ofL
         xXyjEm1oGUyv6mUOVBD2EJ1LGwPfOq6t5GXag4fGOFIxb6m19oMZszP72IVR3c/orZp8
         h4i1iMU2C8dGbY+GzjZXuu68W8ro8e78ftHPyh11E6BZHm0Ubjnbdv3jGybIB1JPieWZ
         +DeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ccJBRa2qX2AbGjtcRmB0gTU2CLQK27ZxnhzTsCY92KU=;
        b=FF2X4JNfGc4vC0KicbtggqI/NJxqbFTW1lAoUrrSldogksAb95d9sbGeRs/A+Sa1YW
         AResAKsgegg7v2aK0nr/4GT0XVWl31CFUK/OKT11QF4o/p45GxU6w8YAllRBhYIYy/Hv
         5OjRMTOxeiNHCNZX9V+l/3rns94IhI/QlpfFpLpkvHAmd/3j3Q8o44tRTvr8mON1b9fr
         qyLLRL1677ZQJspJhCUcOadiWv2m91siVV0641BkHTZxmxhWwEWDgFgeuFyQ+5BYR/0R
         aYilFSS7gXFIhIAEOCcBaQPGf/1TgtDS3ZcF31WWE+iz6E9V2nZ0s5ymJXSaYu0Lx5nG
         ToXQ==
X-Gm-Message-State: AOAM530pq0pi5iifpPfIIHDBJVqRPiKZM6b+XuFGrXyCdIR3tDuo/g+e
        olbJIZAX83ccHNa06otWVNRNhleIKb8=
X-Google-Smtp-Source: ABdhPJysyqlZA+dJMQFppPSx1MTBVehUF/KLfgXF1fySeZsYn32dQJBshGzIyL3tppt60V776l99ng==
X-Received: by 2002:a5d:4ec3:: with SMTP id s3mr22772311wrv.103.1591006868648;
        Mon, 01 Jun 2020 03:21:08 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id o20sm20884793wra.29.2020.06.01.03.21.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jun 2020 03:21:07 -0700 (PDT)
From:   Jonny Grant <jg@jguk.org>
Subject: Re: core man page %e
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <ae5293ba-17dd-fd6d-54b0-312a008e3167@jguk.org>
Message-ID: <99a02979-3d47-6ef8-c619-00d9115321ec@jguk.org>
Date:   Mon, 1 Jun 2020 11:21:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <ae5293ba-17dd-fd6d-54b0-312a008e3167@jguk.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mtk,

BTW, if I add "%P-%e-%s.core" every core starts with the same
"P1000-"

The man page shows:
  %P  PID of dumped process, as seen in the initial PID namespace
                (since Linux 3.12)

Do you see similar? I was only needing something to make the filename unique, so %t is enough.

Cheers, Jonny


On 30/05/2020 11:39, Jonny Grant wrote:
> Hello mtk
> 
> I've noticed "%e-%s.core" often gives something other than the filename and the name is truncated to 16 bytes:-
> 
> ThreadPoolServi-5.core
> Chrome_InProcUt-5.core
> 
> This was set:
> sysctl -w kernel.core_pattern="%e-%s.core"
> 
> 
> 
> In multithreaded applications it looks like %e is giving something other than the filename, perhaps a thread entry-point 
> symbol name.
> 
> https://www.man7.org/linux/man-pages/man5/core.5.html
> 
>             %e  executable filename (without path prefix)
> 
> Could this be updated to:
> 
>             %e  executable filename or thread name truncated to 16 bytes
> 
> Cheers, Jonny
