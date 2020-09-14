Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CCDD2688EF
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 12:03:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726303AbgINKDh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 06:03:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726302AbgINKDf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 06:03:35 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA204C06174A
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 03:03:34 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id x14so17987682wrl.12
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 03:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ErLT9H1f4ejUa/z5zwom3+okEj+FV6wFbydq3WOBF6c=;
        b=ewunUpJA7psos6g4xvCxx6gOiHfxq52DcY5hUf4mE+yq5vqOrEq+Vtz2wf4f0G5KlJ
         Cb2S3syVrE7wLo9gfrtkzUzVSYoT8LzXyLA3Kte0v995q574l/Fq9W3y57jOwdXj4anu
         HNP3gohNjaKJV1UtNPXhJt9IL6ov9lawaVboDcVA0OfEP1gx67teMmDzw1GZzTQMjsq0
         ssR3tWcZOPvpMPmGgoVMhuHHApfR93QeNQIJOkWjpGPXYyJA7XcINCR2rW1DSxiGHiE6
         mPGhk26TNXr3RfZcsjFfdpsl3QlmpPNbMyf2UowuIUbZB8Q0a1FcuQmD/WPZAEXBxs/c
         gpnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ErLT9H1f4ejUa/z5zwom3+okEj+FV6wFbydq3WOBF6c=;
        b=qYbo2LH0KGwwy3/mluZFJpUZepDusfyUlw+lh4nd3/Iiz288zaD7sNTBNmMEx7D91c
         xRREiOm/u+A49cHxiEYiflt5eBXr0MHrMSpP1WY6fhNeGxBNvrFZxpNOFEQKF/rWkRUp
         jMNJgtlpkrsriVS3hp6L3zka/PacclUjP1QGiQ/txouL4Gy0FayjaeHnP9TjZjohkE8Y
         T7t1Jh9qa+Xv0NK3MJQGzC2Rqc2tHXhkR+o7+GZWpoJ7gseQCB68RUmTw+0I6dT85Gig
         BkPXvXMzKMV1DKrfKEDeFJTFj/ZBQUtD6M7yAaewsyH8RlTjcTQFWmZC8gHCo5qdcEyf
         uehQ==
X-Gm-Message-State: AOAM530IQxkKLqec0C8BbgFwCKL4wb+RVhTVmCKDcI00uqXxzzAtvNej
        cEHDM111o7cfEtbztW0YOTm/IlaaqlrKEw==
X-Google-Smtp-Source: ABdhPJz3SEPnsEfohxebv1wMeJeq/HLQuERcpZ+du+aL35A6YU5dJq29/Ru8diAxTo8vu5Ch8FdS8Q==
X-Received: by 2002:adf:eb86:: with SMTP id t6mr14950036wrn.411.1600077813683;
        Mon, 14 Sep 2020 03:03:33 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id v204sm19048173wmg.20.2020.09.14.03.03.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 03:03:33 -0700 (PDT)
Subject: Re: [PATCH v2] add_key.2, clock_getres.2, clone.2, futex.2,
 getdents.2, getpid.2, getrlimit.2, ioctl_ns.2, kcmp.2, keyctl.2,
 memfd_create.2, request_key.2, stat.2, timer_create.2, wait.2,
 clock_getcpuclockid.3, dl_iterate_phdr.3, getgrent_r.3, getpwent_r.3,
 getpwnam.3, posix_spawn.3, pthread_getcpuclockid.3, strcat.3,
 feature_test_macros.7, user_namespaces.7: Cast types that don't have a
 printf() length modifier to ([u]intmax_t) for printing
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Konstantin Bukin <kbukin@gmail.com>,
        "Dmitry V. Levin" <ldv@altlinux.org>
References: <20200913175506.576683-1-colomar.6.4.3@gmail.com>
 <d74dd859-91a2-5fad-af6d-b241b0783a9a@gmail.com>
 <c85f7e74-8888-8313-be9f-406d351aeb3f@gmail.com>
 <9039d127-a366-cd8b-992a-038fa11f3308@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <98c426d9-6dde-5578-c1d5-942f21c5080a@gmail.com>
Date:   Mon, 14 Sep 2020 12:03:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <9039d127-a366-cd8b-992a-038fa11f3308@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/14/20 11:30 AM, Michael Kerrisk (man-pages) wrote:
> I've applied this patch. Thank you for doing all of that work!

You're welcome, Michael! :-)

> 
> Just by the way, I presume you didn't send with 'git send-email',
> since the patch was busted (wrapped lines in two places). The
> fix was fairly easy, but just to let you know there was that
> issue.

D'oh!

It was simpler to click reply than adding --in-reply-to=, but I guess
I'll have to use git all the time...

Cheers,

Alex
