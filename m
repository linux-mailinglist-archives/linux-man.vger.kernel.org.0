Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE86E3778A2
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:14:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229815AbhEIVP1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:15:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbhEIVP1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:15:27 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 796B2C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:14:23 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id l2so14510134wrm.9
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HdJz91UINOaoiD/nR991WEnmh8Au/zV37wlc4vTKB0w=;
        b=ERqHsl4FDc+sXoqw5fs0iiUXn6sHz3fu5wMesjnmV4B8cc0yw2H5a/C5y98zMeuS01
         6er4U+kEukebLTE2PbMnK0Sf3v2NVpEGiwDwnUF+agJbfLwYUSg2qUYGwW+U9t2h8B+d
         AmiJFatbEMUyv3MwzhybkYvFWZ4LFb9eEXfe2dY1MqWDLN72gycDsWz2rNekATtLEbb1
         BbR/HqpiIrNq5DhSSRPsZlET/0LTyzZ21u3vcBWcHPMUFHpuzcePW3vmzqxqT3nkBka/
         8abig41jxsCeiPlH9viEAUIAMjcktt5PnJSsIMul5r7VaYdHgGPZL3dUt9lp6zZwTbRM
         btEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HdJz91UINOaoiD/nR991WEnmh8Au/zV37wlc4vTKB0w=;
        b=TEEzALjErNtXwO14x5NypSzxSUCrHurbElZ1sX8NcX9T6QFh+p6Q1K6hi0pUScRY9v
         9fjXoyyNmWBF2TbSAkixgWrnpoFFJhFdNscbc01h0O7gp1P9tD+zcDdQ0PETpcRNn1g5
         1ftaduzYUBnmAwIqnyrROhlKmvFbqtlG9CozQ3dZds7MnSyZUrCR6mVNC00WJJVWeERV
         VpJ2a0JAvPMu6Z2PuGcgqqW70CcKvraVF1CBDSNW3PJnUMUgpDAmbtGgyDM1If1+iGZ6
         HvX9LA3ZVu3kObqgKXGl1yJ9+LRBZbDftNCge+H+1/Mf7JosORQTeZ2LApX4xnkSbyWl
         AxzQ==
X-Gm-Message-State: AOAM533pTMME431ALhZCCTQKTr1P/1vMcjOT8FcglKrZMxEYNjTu3Ja0
        VQ+sRRWKOMFfJ9OdnmTR5Io=
X-Google-Smtp-Source: ABdhPJwKVRopa1MqE68yIQ/9prgUOXboK83NbLb50C9VHg+Y5PIf/io4CJW1KkCxmCLyD05CoLbUlA==
X-Received: by 2002:a5d:5310:: with SMTP id e16mr25872003wrv.321.1620594862339;
        Sun, 09 May 2021 14:14:22 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 16sm16594911wmi.13.2021.05.09.14.14.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 14:14:22 -0700 (PDT)
Subject: Re: [PATCH v6 0/3] Use standard features in the Makefile
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <20210406111448.20392-1-alx.manpages@gmail.com>
 <20210408085713.7093-1-alx.manpages@gmail.com>
 <b7e20ce5-3bf1-5c03-9492-418ab4ea9131@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <6c92ab1c-0b53-eea6-836d-0b871ea6c355@gmail.com>
Date:   Sun, 9 May 2021 23:14:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <b7e20ce5-3bf1-5c03-9492-418ab4ea9131@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 5/9/21 11:02 PM, Michael Kerrisk (man-pages) wrote:
>> Alejandro Colomar (3):
>>   Makefile: Use standard features (IMPORTANT: default prefix changed)
>>   Makefile: Fix bug when running in parallel
>>   .gitignore: Add file
>>
>>  .gitignore |  12 ++++++
>>  Makefile   | 116 ++++++++++++++++++++++++++++++++++++++++++-----------
>>  2 files changed, 104 insertions(+), 24 deletions(-)
>>  create mode 100644 .gitignore
> 
> None of the patches in this series applies. Did I miss some prerequisite
> patches?

Yes, but don't mind; I'll resend everything.

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
