Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C2F4682FBB
	for <lists+linux-man@lfdr.de>; Tue, 31 Jan 2023 15:51:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232140AbjAaOvb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Jan 2023 09:51:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232127AbjAaOv2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Jan 2023 09:51:28 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C17E45F45
        for <linux-man@vger.kernel.org>; Tue, 31 Jan 2023 06:51:27 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id h16so14421741wrz.12
        for <linux-man@vger.kernel.org>; Tue, 31 Jan 2023 06:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=isovalent-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bx3zmtgQK4UmDMiyLf28lfPRm+xvG7oqsH0MhvB8Gmg=;
        b=htRSyR2hMjgXGGnS+PMV0pEuLajt2q9+he8EoX2iITm3H7vFPQYlAh6FXQZpL4a+fe
         SR/czmJjagAwP5qJIsQwFfX5sjWP8+eVUmPLTpM8mJeSrBhPvAr5XhICYDy9DcKHFKaM
         Jc5HrsIprNYK8X+jzuQJaZ9TUDRtWftZQPz54b6an55nXAnOaVM5po+HxODVfDhiywci
         PSlGdWLw/VftYLBj1lwwYAa8+HCO+du+CUx5O1Kv6qrA59mkHcUtksDkfC3LW5o/Vckk
         g1WpZjRZauUuAqPF6Ts9BHFWtRXh6AMIko/9SJclBk4RaBnHVIzPV5XDig9meggXFyEp
         QHVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bx3zmtgQK4UmDMiyLf28lfPRm+xvG7oqsH0MhvB8Gmg=;
        b=3bx5JubqrycbXX1gpxjDuZDJDvlnyk9PZZjTbBSoYsAni1/Wja42RuGYTvBsWKfGIu
         deGjIPM+0j4Y7cqRuRKj2nVxepznW+glQDGFsf6w2ePVkxui1mVm0opl/Z2WqAyYwRa1
         T0WEZf4V2oDUGaMta9pbXKFuEq4pEdi7VhNvuZMNhsWM4T6q2oRF5dw88gIWyAMELZ4o
         JRwbKktkSoCZDp5M5SkNEGT1z+NbU+dBrJsIa+Px5nMWM3cv96hKkF1sb+cHsRRBmAwk
         neai6IwTUbl5TpuiQqlZCYo++k5vTBRhepMn/Nr6OOPR6UMschgzNMyVkfn5IbjDXyz9
         mFJA==
X-Gm-Message-State: AO0yUKWCqvqNh7W4lsyrULRFiWCiX4tWhLagyiVJfBj52P69EEw8JJxn
        ja1H8iPoyDf9g/GkEHgiPM+azQ==
X-Google-Smtp-Source: AK7set828w387aysuRJkUwRnA05l/lxnMsqOWRm8uQVy41QtADxEbjOQlN4JlnaIOP38wZr84WTPDQ==
X-Received: by 2002:a5d:410f:0:b0:2bf:d940:29bb with SMTP id l15-20020a5d410f000000b002bfd94029bbmr12544677wrp.6.1675176685706;
        Tue, 31 Jan 2023 06:51:25 -0800 (PST)
Received: from ?IPV6:2a02:8011:e80c:0:2c35:6e47:db1a:a1d2? ([2a02:8011:e80c:0:2c35:6e47:db1a:a1d2])
        by smtp.gmail.com with ESMTPSA id n6-20020adff086000000b002bdbead763csm15398144wro.95.2023.01.31.06.51.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 06:51:25 -0800 (PST)
Message-ID: <61a43d5d-4f36-ffb7-2f75-3cb0cea1d05b@isovalent.com>
Date:   Tue, 31 Jan 2023 14:51:24 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: Typo in the man7 bpf-helpers page
Content-Language: en-GB
To:     Zexuan Luo <spacewanderlzx@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        bpf <bpf@vger.kernel.org>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx@kernel.org>
References: <CAADJU1032g+sNGN9AZKeVuMzZywXZ0BWpm3592XcGJdp4goCUQ@mail.gmail.com>
 <991b275a-4a44-a870-24e6-d6683bf69589@gmail.com>
 <877b57f5-77ba-805b-ed5f-57e47fa83b16@gmail.com>
 <195ea485-1449-7ed8-5184-d00cf7e0dd5b@isovalent.com>
 <CAADJU11ei7KAv1c=f1Gj5TzipS9+yenEfDffznfftej14ESZkg@mail.gmail.com>
From:   Quentin Monnet <quentin@isovalent.com>
In-Reply-To: <CAADJU11ei7KAv1c=f1Gj5TzipS9+yenEfDffznfftej14ESZkg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

2023-01-31 22:36 UTC+0800 ~ Zexuan Luo <spacewanderlzx@gmail.com>
> My bad!
> 
>> No, I don't think there is anything wrong with that. I suppose you mean
> bpf_get_socket_cookie_sock_(ad
> dr|ops) (the functions you mentioned don't
> exist), but the four variants of the helper just have the same name, and
> take different objects for their context.
> 
> Yes! I made a mistake in the function names in the first email. Thank
> you for pointing that out.
> 
> I am an eBPF newbie and I am learning it currently. AFAIK, language C
> doesn't support function overriding via different parameters.
> So how do these four functions co-exist?

User space header file knows only about a single
bpf_get_socket_cookie(), which takes a "void *". See:
https://github.com/libbpf/libbpf/blob/v1.1.0/src/bpf_helper_defs.h#L1154

It compiles into the eBPF insruction "call 46", where 46 is the number
associated to these helpers. When your program loads, the verifier finds
out, depending on program type, what function should be called for that
number (see e.g. tc_cls_act_func_proto() in net/core/filter.c, where
BPF_FUNC_get_socket_cookie (46) returns &bpf_get_socket_cookie_proto,
whereas sock_addr_func_proto(), applied to programs of different types,
will return &bpf_get_socket_cookie_sock_addr_proto instead).

> 
> Some naive search in the kernel code leads me to:
> https://elixir.bootlin.com/linux/v6.2-rc6/source/net/core/filter.c#L4919
> ```
> static const struct bpf_func_proto bpf_get_socket_cookie_sock_addr_proto = {
>     .func        = bpf_get_socket_cookie_sock_addr,
>     .gpl_only    = false,
>     .ret_type    = RET_INTEGER,
>     .arg1_type    = ARG_PTR_TO_CTX,
> };
> ```
> 
> https://elixir.bootlin.com/linux/v6.2-rc6/source/net/core/filter.c#L4955
> ```
> static const struct bpf_func_proto bpf_get_socket_cookie_sock_ops_proto = {
>         .func           = bpf_get_socket_cookie_sock_ops,
>         .gpl_only       = false,
>         .ret_type       = RET_INTEGER,
>         .arg1_type      = ARG_PTR_TO_CTX,
> };
> ```
> 
> It seems that the function definitions are quite real...

Yes, but "bpf_get_socket_cookie_addr" (from your message) !=
"bpf_get_socket_cookie_sock_addr".

Quentin
