Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ABF243267A7
	for <lists+linux-man@lfdr.de>; Fri, 26 Feb 2021 21:07:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229915AbhBZUEo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Feb 2021 15:04:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229795AbhBZUEj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Feb 2021 15:04:39 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FC3AC06174A
        for <linux-man@vger.kernel.org>; Fri, 26 Feb 2021 12:03:58 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id u187so6395266wmg.4
        for <linux-man@vger.kernel.org>; Fri, 26 Feb 2021 12:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FfaCWeZUlj3Y//xvFaENUF6X+zvKMbJQQ58E8u70Luo=;
        b=emGKKdvx6vdBzugJP/e5SpbwTb4J7SgA+3tYWnhxgF5yd535VJJIQPdx1olEGcZwQO
         /IDQul9rlzhE92+qYPhFF3O+EaM3vt3K6PtbYfpfy+W4Y6knmjFc4GeFcTkEKcG0ZmIN
         hCCv2tkLouN3UeMit3OKG2y20vs5pjQaLYrbOROORITF3qncydXOsEikaKDdvi3mPd5G
         cusE6d2yYjUJKn0Qyjdi+49sUWMqwiCF0UPCqap+eyh9SvklGCoMNfjcqtGG21HIGXx6
         5Ce9zQPLiayf7gsQIrNikWYXrbcwTyKw5jtoQUzRsWWPYZ3SdXBLLL6pVQ6NKcpU2PE7
         J/vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FfaCWeZUlj3Y//xvFaENUF6X+zvKMbJQQ58E8u70Luo=;
        b=I1URo/VuDngPEb3qsAXfjbWZfYnjXlj3zRShIq+vLHFrPdVVOGh8cV7hvteD3I+4tf
         1AJbNDSlRG4sW/myCmXESq0CfUl6w50XNernFj4Pz+EFqzba3g/bqavlkfFSPruLK12p
         cD9rypLLc+uM10RaiUrgnuF9IzoVmpIi3dOxHiImxcT+Ua5R1iVan68P49pIezQIY9rk
         Op8gAxZWaAGti6WoX/RHNexXGfyBzfE63OTvAIkTzwrHesqjC046Bx8gql2d578RaETw
         HB7TkaH6uPveHDjNetE1qP3wrZ7vHLl/BjEu9LXxjYCP8ERESV0D3mVq0fNCxWnGwHUL
         fzBQ==
X-Gm-Message-State: AOAM5317DIMtqjXUA5JuknBGD1dqr9qJLJAo5/TrIN0Hq8u5MSD2w+hR
        5IxXEOjm6DFb8bPU3XyBERU=
X-Google-Smtp-Source: ABdhPJzcK7dg5AHvqejFBnz6qbexkp/BefJyMWXLF+FtprSXI2m/c5IZp7iJV8q3ffweNSPR8y2c2A==
X-Received: by 2002:a1c:29c4:: with SMTP id p187mr4484710wmp.8.1614369837168;
        Fri, 26 Feb 2021 12:03:57 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id g9sm15070661wrp.14.2021.02.26.12.03.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 12:03:56 -0800 (PST)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: bug in open(2) example
To:     Walter Harms <wharms@bfs.de>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <cea059cb5360482182409e9093e361cd@bfs.de>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <79255982-1b48-6547-15cc-b2a2c8888f1e@gmail.com>
Date:   Fri, 26 Feb 2021 21:03:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <cea059cb5360482182409e9093e361cd@bfs.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Walter,

On 2/26/21 6:10 PM, Walter Harms wrote:
> the example for O_TMPFILE is broken:
>    linkat(fd, NULL, AT_FDCWD, "/path/for/file", AT_EMPTY_PATH);
>                       ^^^^^^
> as the linkat(2) page says "Empty String" not NULL.

Thanks!  I'll send a patch to Michael.

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
