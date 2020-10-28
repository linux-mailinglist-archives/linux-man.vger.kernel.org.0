Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 010B429D563
	for <lists+linux-man@lfdr.de>; Wed, 28 Oct 2020 23:01:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729427AbgJ1WAe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Oct 2020 18:00:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729459AbgJ1WAd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Oct 2020 18:00:33 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C049C0613D2
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:00:33 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id x7so686909wrl.3
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SRAl0o1M8CBRZeYILH3X5LPujnC4oKoZV9P+VqV2tpU=;
        b=Y+hM0ZPhs1m6rvEzHTLklnamykJTYbYm7dpfLsGPYJcf3F955F8+nHw3RBozFMn1ts
         BJKq3fAtlnBc1/KhZwd6qwLuax4MmuLRYdUVbqFwRc+NOV0K2RuLlZPEUmtGh3961tcs
         ym170kfHpUhAb0C28dmWUOaNR4D06t1A2P9zBlzqBdgL+d8RV9xHdUsNszWZQvnEeI3T
         o/wKhzLDK1ORwuGOY5k4bPqiPbfWe4949/X7bYfvDTsdY/RliSOji1KhvK4FP2dWb39Z
         Yt2sHzf9FRwBI/nBVe+8BPbn7199KMs7480v8vJGITcEQBQhwqGCZhVfiC2zZcJuzq59
         MmgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SRAl0o1M8CBRZeYILH3X5LPujnC4oKoZV9P+VqV2tpU=;
        b=W5acoXo4V5HT6fYuIH/VBtbC8WGrO77CpDeYscaZWFshvcQRV8MkJuo3hPk9FMlXNG
         QGr+ZonGGumea45h3bQZgsPEUmJlbWiDSrhjLLp2x1otnahatxg1o6AG718RxmFN+wCj
         wzzkVQrVBQW1VMu8GF2KXZv7fkRdYjf0j40bnvJop+1vkn1Co6OThNhFCbOMAbA/m9uP
         t5X54FmKOOLzCCx6ShsUU+F7e8g9SCP9S1fSQNrMTyOsA5bSoArlNoVJ4Bjk5Wr1xXEq
         tl+ymTCq/7mGQwDtm2K2qeLDKs9gTc1rKD+HkZOxWChUyEmi5iEADrIPZg2euA0irfGE
         kM6w==
X-Gm-Message-State: AOAM530Tpqx0gPSRGxPlyag6Bv5YbkbSW3FF++tBx8SSl5fMqSiNjilV
        zleZVONiVEL+phup8QXLsG8=
X-Google-Smtp-Source: ABdhPJz56ri3YfObkND3kHfhQY9vzJOSfl268rg7iZ1bqeX2K5mqQ+EK7FcLryoaKSL6zkhWxljsFA==
X-Received: by 2002:a5d:5449:: with SMTP id w9mr1731468wrv.182.1603922431918;
        Wed, 28 Oct 2020 15:00:31 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id v12sm1301754wro.72.2020.10.28.15.00.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 15:00:31 -0700 (PDT)
Subject: Re: [PATCH] getdents.2: SYNOPSIS: Add missing header and feature test
 macro
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20201028195123.123843-1-colomar.6.4.3@gmail.com>
 <fec2b038-4124-5fb7-0aec-b9bd9ce59c3b@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <4119a9b5-45bb-6133-837f-25d2dd09505a@gmail.com>
Date:   Wed, 28 Oct 2020 23:00:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <fec2b038-4124-5fb7-0aec-b9bd9ce59c3b@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-28 22:21, Michael Kerrisk (man-pages) wrote:
 > Hello Alex,
 >
 > On 10/28/20 8:51 PM, Alejandro Colomar wrote:
 >> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
 >
 > Thanks. Patch applied. But tweaked with a follow-on commit
 >
 >> ---
 >>   man2/getdents.2 | 4 ++++
 >>   1 file changed, 4 insertions(+)
 >>
 >> diff --git a/man2/getdents.2 b/man2/getdents.2
 >> index 02790b8f7..17904ed66 100644
 >> --- a/man2/getdents.2
 >> +++ b/man2/getdents.2
 >> @@ -35,6 +35,10 @@ getdents, getdents64 \- get directory entries
 >>   .nf
 >>   .BI "int getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
 >>   .BI "             unsigned int " count );
 >> +.PP
 >> +.BR "#define _GNU_SOURCE" "        /* See feature_test_macros(7) */"
 >> +.BR "#include <dirent.h>" "        /* See NOTES */"
 >
 > I removed the piece "/* See NOTES */", since the NOTES don't
 > really explain the #include.

Hi Michael,

Fair enough.

Cheers,

Alex
