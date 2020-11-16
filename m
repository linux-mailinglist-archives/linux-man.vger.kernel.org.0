Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B99652B4139
	for <lists+linux-man@lfdr.de>; Mon, 16 Nov 2020 11:36:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729022AbgKPKg0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Nov 2020 05:36:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727192AbgKPKgZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Nov 2020 05:36:25 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7781DC0613CF
        for <linux-man@vger.kernel.org>; Mon, 16 Nov 2020 02:36:25 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id w24so23139040wmi.0
        for <linux-man@vger.kernel.org>; Mon, 16 Nov 2020 02:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=daAAS3oMHDKV5ciyy390rfdv4RLrcZix5gJPiybi9JE=;
        b=KaI/jl20OylVSH6ZEzsBltVIu2p/WJK05MVs7pTW53RSQfUDjmCEbLNycysOHRYjUQ
         f3E4qNNk9RW3Bawig7vPK2qUKDJIl53CYpaR4Le9C8QcbazbjRUIb+1ScP2kIxNv/EtO
         EcbV6XYoGhZY/J/BTNEge3rIwUXahJVh6EOiuTC9kLfJJU6o/elncRwt4Z/jLRUNGqCX
         R9mKEB3c24n7auNob7C8AwoUhRaUe5IbNT1WDd0Ja/9h+WiB6XcWYOuNlUB/NlMzJ54I
         Eue3UQ84m5u09ADJpoFVxLMtv+LsSPCQqSnPozJQG5GyYOLXNV0EIjSNU5GS8VfjccYj
         3tig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=daAAS3oMHDKV5ciyy390rfdv4RLrcZix5gJPiybi9JE=;
        b=WYG+ObMcjOzbl3zxZh2/qKLefVY38gLxWaLLH0+wFmCF2nwtZ1M18pYnqjExdWmrDs
         fLtpfjO2/AgilbcMoSn/kzrF2OmehdQotprtv+lyPTYs8BxpRCzFtFBt91+4d5eS8i6W
         ntY9YXYW4hCl7aj/A+XsuoCuvkZ+WL7KUOPfpCgkYPROVad/9TSPI/NfaeD4uRuRJ8tV
         ZXGXqKNA83qSV0qdRQIwsUqwds4R2hWczz1p5GwmOaAEO1SbKNr2gNiZRzF9QfOnbLAM
         JRTzpbzq1SjRXrYPR7UEEp/bPknTt4dAvcZDViBctA9gWREs4OiHvV8fDvcvp5zvsCZh
         sS4Q==
X-Gm-Message-State: AOAM531WRQ59mPxCsepg+DUaUAS1VFoNNpd5MUeHznqd8H0d/dCFDPFW
        0m+okCTH+qFzcRLZm39rGPk=
X-Google-Smtp-Source: ABdhPJwEYVgRkR2ihsKBomc+DyC4lhakAVDqbZXNlSL13u2MZxO39nTCzpEPvQFlUbafsoX0BRqhQA==
X-Received: by 2002:a1c:5f45:: with SMTP id t66mr14794039wmb.20.1605522983325;
        Mon, 16 Nov 2020 02:36:23 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id q7sm24365971wrg.95.2020.11.16.02.36.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 02:36:22 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        g.branden.robinson@gmail.com
Subject: Re: [RFC] memusage.1, uri.7, user-keyring.7, user-session-keyring.7,
 ld.so.8, tzselect.8: srcfix: Replace \f markup by .
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20201115165256.497403-1-alx.manpages@gmail.com>
 <accea029-e467-4928-af40-d4cc1bc0be21@gmail.com>
 <ace3f6d0-3c8b-1fb2-443c-628b421d9e36@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ecb73c46-ba70-5f9f-7a68-960fdb1f902b@gmail.com>
Date:   Mon, 16 Nov 2020 11:36:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <ace3f6d0-3c8b-1fb2-443c-628b421d9e36@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 11/16/20 1:33 AM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 11/15/20 9:54 PM, Michael Kerrisk (man-pages) wrote:

[...]

> So, except for zic.8, zdump.8, and bpf-helpers.7,
> what do you think about the current usage of \f?
> 
> I've seen a lot of appearances (many thousands),
> and many of them should probably be fixed.
> 
> I think a script to fix them might be a bit difficult,
> but a small C program might be easier to write.

My preference is to avoid \f in favor of .I/.B/etc where possible,
since I find the latter form is often easier to read in the source.

But, as you note, that's not easy in some cases. Every now and then,
when I'm edit some part of a page that uses \f, I'll switch over
to .I/.B/etc.

But, I would prefer not to have a global edit, since:
* Nothing is really broken.
* It's a lot of churn.
* There's the possibility of errors in the change.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
