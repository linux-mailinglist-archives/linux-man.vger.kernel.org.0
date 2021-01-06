Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00B0C2EBDFC
	for <lists+linux-man@lfdr.de>; Wed,  6 Jan 2021 13:57:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726780AbhAFMz0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Jan 2021 07:55:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726706AbhAFMzR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Jan 2021 07:55:17 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED18CC061369
        for <linux-man@vger.kernel.org>; Wed,  6 Jan 2021 04:54:13 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id j16so4350255edr.0
        for <linux-man@vger.kernel.org>; Wed, 06 Jan 2021 04:54:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fHZgSYWbZraZsnxcj35HJ+t5gSVDP5gg186soNN0fyI=;
        b=OCxAwsZwc7KfV/d3DM3NS9vF1uUooWB7EtUpulf9/Y2z2bwSnClkY/FABtjKR3auq2
         Wr/TELN7yTPXSLVF9UgrdLbckRd5dNG4zgItq45Vujmf8lokUlqMrCUWjFIe4wY3K/0D
         eOghOF3EtU0+I99LJbEoOlt7srrwEJC8uzqQWOh0EMP9JRpaDOr1ijynMAaZYkeoQ1ed
         ldXsE0M7ymlK5CXGhYS3QV3P0x0Tp4K3v6CxuHdwi4wy5IAIZn+ptYQJUg6T0tj5C8wZ
         5oV1ecpk99e6jLRW5dWT4a75SSU3mGySV64wW8yB2Zj6U/pCALpjy6cVXQJepdenmtOS
         RRpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fHZgSYWbZraZsnxcj35HJ+t5gSVDP5gg186soNN0fyI=;
        b=uH784quw2qbwjDyNnjBykMKjua5jDSCc7SB6UHGbSeX2nhLsxrKHTm3B3Q7+/unOzI
         g8cOp3qoE5qZp0gYyF3kpL8ZKt+d5hgFzpF6jf/hefvyGD+4PnjSdWdKcyAuu+6DjRa5
         BejGWq9nUIPwdx/kf7D2q8e6K9RqAek6nZIy7rIwJ8FL5sTm+ylTviwwZUXii0urr4mU
         BvqPmFzGaVpChxd0gsJD98ujp4exTBVRJIHHLiF2Y7jqwMRt0VUiIk9rEipxITnwfoXQ
         Qx1o394HxU9Izrh7PqFGuAZasRpucUTWNnghjvQEdeeTtDOXQ46lad8iXkQxqFdq98ZZ
         o/bQ==
X-Gm-Message-State: AOAM531fBN/K9v7PKBNpTpMp9UqP6uNHAsjOh6Oblh2q+Rvo6EzTfvWS
        ObVwPZg8OOTLpvBunVXCpLQVftqK8vw=
X-Google-Smtp-Source: ABdhPJyUyqr1JpNUceILyPGoFp8rhAPopk2TfMKLudgctb2TOgPSlqLWZmO2qsHz0imwrPw3UH4ORQ==
X-Received: by 2002:aa7:dcd0:: with SMTP id w16mr3888688edu.229.1609937652465;
        Wed, 06 Jan 2021 04:54:12 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id b7sm1227486ejp.5.2021.01.06.04.54.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 04:54:11 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] circleq.3, list.3, slist.3, stailq.3, tailq.3: Improve
 readability, especially in SYNOPSIS
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <21860ed2-c519-aff1-5d1d-ee2e76ead61a@gmail.com>
 <20210105223955.63678-1-alx.manpages@gmail.com>
 <4ec7cc66-fe37-30d7-cc03-a93438fad0cd@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a0dd72d6-00f9-94a8-b17d-0e9a29344040@gmail.com>
Date:   Wed, 6 Jan 2021 13:54:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <4ec7cc66-fe37-30d7-cc03-a93438fad0cd@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

>> +.IR SLIST_REMOVE ().
> 
> s/.IR/.BR/
> 
> [...]

Fixed.

Thanks,

Mcihael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
