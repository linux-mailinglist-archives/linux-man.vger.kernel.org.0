Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 088A51E5C33
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2020 11:38:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728347AbgE1JiJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 May 2020 05:38:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728349AbgE1JiI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 May 2020 05:38:08 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76E31C05BD1E
        for <linux-man@vger.kernel.org>; Thu, 28 May 2020 02:38:08 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id l27so9228750ejc.1
        for <linux-man@vger.kernel.org>; Thu, 28 May 2020 02:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=B44EgXMratvcUgMPL5ieKPYCeDuwYT4f+QWtSVPwgeU=;
        b=ncECb9AOFUZQGRpY5qvHWvC2aFhdMco/1Cl5cVt1UT9WLDimA2ynew0EBXYYkImjz1
         F3eX4iKcpDD2JXnu2IiTqR+8oJCazksm4oNmyU78jzpSxYHfPUZlQzg2xJ4qTOeviUAN
         Bs4rNQ0Uz9c1XlnXIoEq0+ckae28bBJPeuDiI6PZmDLrJFf6O6ODs2txCQUYBPkON8X8
         Nd/qQNYd+oyk5D64jtjYJXtOGbQ/nGCwd6LADrdqIU4cf8BN8Vofh9vUV0WYkmRNpIs1
         PJhM5aR7rPgtO2vTwDbtO/eDHKNxhzuyjfr/CXfSI/QLo7mvdeFOqtHs2Szb+5vrfGEB
         04Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=B44EgXMratvcUgMPL5ieKPYCeDuwYT4f+QWtSVPwgeU=;
        b=f/8cRnVJnfFW9wmRxL8UBzVzzw8SyGBSJb81ZVJ9dkLvsWgzZk//OxAg8c9rNYZcDr
         xX8BtPh6nhBWRqSA3KfjbLwvucTyVhuSDY6UP9XF3dsvdee8/of7QqEFUK4c9myQPvnl
         13whlwuR+tKpvIsKqN8omMNPiws5x6Nl+juARNfAKR2KEKdfSA25u99Abnrz5yYKhfMr
         PY6OmfXaRPEB1bvhVoz8CQ/JPu8NQkluQjGctPYLMODfwoRa7D3BK0jjGABbJ9VM+ZEr
         Z5By4x2+oUqjAl0x9L715RkY0rmy/N7iEH57imdZb4o93AByb2sScwd6jP6V9FFOlKAj
         RZ8w==
X-Gm-Message-State: AOAM533RyUQXmHf4Q/1FRFv7vDT0hKcZRtSHlrnipMvebeaJ/KQXWDHn
        Zf5TkVXTExVSgNwag/MIyRs06oak8XQ=
X-Google-Smtp-Source: ABdhPJwmHwjjuv8LIYXdr+JKJlli7YpQ4OlP2Ey7cKoiGxglKWW/vDBkdfz/R28+53uYb+S9sd4CwQ==
X-Received: by 2002:a17:906:edd3:: with SMTP id sb19mr2096890ejb.39.1590658687151;
        Thu, 28 May 2020 02:38:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:2516:6501:a84b:ccd6:785a:2f0f? ([2001:a61:2516:6501:a84b:ccd6:785a:2f0f])
        by smtp.gmail.com with ESMTPSA id x26sm4502990edv.61.2020.05.28.02.38.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 May 2020 02:38:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Jonny Grant <jg@jguk.org>,
        linux-man@vger.kernel.org
Subject: Re: core sysctl
To:     Jakub Wilk <jwilk@jwilk.net>
References: <9e98156e-3ba9-e656-bb8f-c54229b5ac11@jguk.org>
 <CAKgNAkhkASJ8+Xe64_ifM1_GgrNSCd6Vx0GDdkJ7aFfJ7RG=7A@mail.gmail.com>
 <0e0f3d4e-b811-3423-ffe9-2fd68900c1a0@jguk.org>
 <CAKgNAkgRSAf2MVA-XMbvoQTk88T5j=Hn2-nyzZBo-tVrLxvbsA@mail.gmail.com>
 <0e4f5e7d-85bc-11d6-c73a-16509ab2a3e9@jguk.org>
 <6d57dced-2c9d-480b-8e4e-02ecbe42e4a9@gmail.com>
 <20200528092821.z6esjkiyocn5qp2m@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6433ab7c-607f-3cec-d3fc-07fd76535f7e@gmail.com>
Date:   Thu, 28 May 2020 11:38:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200528092821.z6esjkiyocn5qp2m@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/28/20 11:28 AM, Jakub Wilk wrote:
> * Michael Kerrisk <mtk.manpages@gmail.com>, 2020-05-28, 11:16:
>> +.I core_patter
> 
> Trailing "n" is missing.

Thanks, Jakub.


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
