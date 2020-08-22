Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BEB7924E70C
	for <lists+linux-man@lfdr.de>; Sat, 22 Aug 2020 13:29:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727870AbgHVL3k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Aug 2020 07:29:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726920AbgHVL3j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Aug 2020 07:29:39 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CC35C061573
        for <linux-man@vger.kernel.org>; Sat, 22 Aug 2020 04:29:38 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id 88so4214818wrh.3
        for <linux-man@vger.kernel.org>; Sat, 22 Aug 2020 04:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1dcr8OMaxSVNYloN4RD/kfJwbyBTCkXzoSQ4UNoS6zk=;
        b=G7t9gjrSjFTI1XVIAxgOzYRfC1AMWaZUo7Fndx8+/pCHMwhHs6l5nwlbu1W2TaAvnW
         2ir9GCJ2WkBl8K+MMqYRZ4kmHFDDnabXH8iouobfJuyqtD3jyrj+ySH25L0yBWQbTlPF
         u34NZ4e1bD27c1PjVkTx3W7cWG4WYW90tw/3TJqsy/NSIT2YSEE3Hw8vAUauDICb/3mx
         F5Nb+p2j4pCVmxshG3zcxZZgMoEsz8EuK1BQRqZrlePG0SvbQxd/r26SjEx4KSZtYb/H
         F0HuikmqXirmV5USTRYfZ2V6ewTSVt4Pt6q2raJSOd8Sp6LWS4+a4mZoUfkt9mZLpPUf
         f8Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1dcr8OMaxSVNYloN4RD/kfJwbyBTCkXzoSQ4UNoS6zk=;
        b=WVxE5hC80qIi0Bf6QL93r5LfkovD2hFraPzR+KWdB2M3mkxPASkpbnLHBWmsb6+l4w
         syofvUt9oX9ojNCp0bJfcawZOiry5xPRs9XXwDr5b0nHKFWXJ/wsn5w+1eO4GxSFMewW
         MGgQHL4sxzZdjVvBcmNOaS56WbQM/FTMZeixE1AQGlzhvX2ZK00wFmCJGpCh77CNvnip
         V/GJZrcFuRVevXxrTcqtwcVWnTR1gDWws9sGqkx1Lhtpf3yKft3u/Ewk51znyj4ba69a
         dKVu1BnwxDr1sOFk+6vo1LHKO5BAZJ2rp/MBaGtYrotEBxGgngkJvw9oQNhjx/rnR6S6
         KbSg==
X-Gm-Message-State: AOAM530NtRuKChMi1ymHihWgs9mDQXL2sgqwgkvbGbnm5ylvZ0an/yms
        Hak33lESSQE5rgRjcDjGz6zSop/xHyNCaw==
X-Google-Smtp-Source: ABdhPJyrksTtO7K2odr7UJuzn6uyhCbR1UtG8efv1NB38LpN7TcFfNH8BjTvSDRTyF8XeoeUFE8VtQ==
X-Received: by 2002:adf:b454:: with SMTP id v20mr1175370wrd.102.1598095776441;
        Sat, 22 Aug 2020 04:29:36 -0700 (PDT)
Received: from localhost.localdomain ([194.230.147.231])
        by smtp.gmail.com with ESMTPSA id t23sm11068717wra.74.2020.08.22.04.29.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 04:29:35 -0700 (PDT)
Subject: Re: [PATCH] cgroups.7: wfix
To:     Thomas Piekarski <t.piekarski@deloquencia.de>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <ee32e31f-7b79-b54b-b378-9faa7a9a372e@deloquencia.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ae26f37c-6613-bd7d-94fc-127c234cf34c@gmail.com>
Date:   Sat, 22 Aug 2020 13:29:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <ee32e31f-7b79-b54b-b378-9faa7a9a372e@deloquencia.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/19/20 5:19 PM, Thomas Piekarski wrote:
> Removing repeated word "the"
> 
> Signed-off-by: Thomas Piekarski <t.piekarski@deloquencia.de>


Thanks, Thomas. Patch applied.

Cheers,

Michael


> ---
>   man7/cgroups.7 | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/man7/cgroups.7 b/man7/cgroups.7
> index 8ca19e4a8..f189c7a87 100644
> --- a/man7/cgroups.7
> +++ b/man7/cgroups.7
> @@ -879,8 +879,7 @@ Each nonroot cgroup in the v2 hierarchy contains a 
> read-only file,
>   .IR cgroup.events ,
>   whose contents are key-value pairs
>   (delimited by newline characters, with the key and value separated by 
> spaces)
> -providing state information about the
> -the cgroup:
> +providing state information about the cgroup:
>   .PP
>   .in +4n
>   .EX
