Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BACFC270BDA
	for <lists+linux-man@lfdr.de>; Sat, 19 Sep 2020 10:30:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726245AbgISIaA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 19 Sep 2020 04:30:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726041AbgISI37 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 19 Sep 2020 04:29:59 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ED6EC0613CE
        for <linux-man@vger.kernel.org>; Sat, 19 Sep 2020 01:29:59 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id e16so7808992wrm.2
        for <linux-man@vger.kernel.org>; Sat, 19 Sep 2020 01:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TDVIdTe/xX5fU7qpr9j7N7xjF7fk2kDC/NMX0ewWre8=;
        b=ZTV5mlkY3twR5XtzHv6MReWrgoEhFSZzs9O/sUAmtkDeahLSaG1n7tQk1Ij/idjjaN
         bJmeXiOCBoEN6q/sk8Af5BbCVv5YNrBOXXOwzvd/maKZrnyFvwi5ZbEqA5yCzEMVwSKB
         wFcdZYOr1UA5SDZ0BEy+fWUoNeUnUje4bTX9WCCDvwdgrG0Rzm3NG3KPBU6cgxA2aOzK
         zUTykmnwahpfaQ0KloDnmPhQhVw1bvtb0TQ2LA36EZtCGezawYakx2r9e+8C9Nc9zfoz
         Kf+K1v7B4MlzPgAkIhf1ZxQpS/wo2LXTZlu0tKNURo80WjlaqhVul/TdWrpEZI09OyIu
         T+eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TDVIdTe/xX5fU7qpr9j7N7xjF7fk2kDC/NMX0ewWre8=;
        b=m2lepW2dHTvy/bammVpkX2tGFR+dF/mZqMDxDIiziGdFDJQWFCJEkxqVasWbW2WGw2
         aoAW+Eu0bda4ih2fjj/JpHi0HabfFa93Jm0kOyFgGz9jFRTiW+pUqZVLM0t2Zi4bXP+F
         BvJ1RUL/xmaDgNQ10+IbaUlWH1mftg8kQz6dDX3y1U57+14EhPfzcNduOBYoTS53sRFa
         BlXbmkLHaCaK8xNQlbT/UKn5dCHmIAkw71LRR0XrTa/e1Eu/cN4gLLezv5R0iKPfoagi
         r4GoWtOOHYv92R/9I+gUAWXc1aGuk3B55AcklLwGzkRz5kg0ld5e/ZtYZ/Aqnqo2TgV0
         VOPQ==
X-Gm-Message-State: AOAM532Sy3+WUrceiuz60YwIEE0RHzRfLu682neErz2H6Qa84kQuFmTk
        HsM0jgaUFBSM8UK2ouQC/zAcz3eJ0hQ=
X-Google-Smtp-Source: ABdhPJyzY8SqpAEmlFnTuJpgsGH4Plb49gXt4vgjZ5Sfo/QKouw1K8fHIONm0SHaEUC6Q/VaGW1NEw==
X-Received: by 2002:a5d:4910:: with SMTP id x16mr45182480wrq.204.1600504197762;
        Sat, 19 Sep 2020 01:29:57 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id l18sm9794528wrp.84.2020.09.19.01.29.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Sep 2020 01:29:57 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [draft] Code of conduct for Linux man-pages project
To:     Jakub Wilk <jwilk@jwilk.net>
References: <02fd2df7-a3dc-c28d-a929-f126f676b3e0@gmail.com>
 <20200917103848.uf2yejfedifllpby@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <359ba4c5-cf21-018a-4639-2b7670eeb5b7@gmail.com>
Date:   Sat, 19 Sep 2020 10:29:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200917103848.uf2yejfedifllpby@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/17/20 12:38 PM, Jakub Wilk wrote:
> * Michael Kerrisk <mtk.manpages@gmail.com>, 2020-09-17, 10:41:
>> I've put a draft up at:
>> https://www.kernel.org/doc/man-pages/code_of_conduct.html
> 
> Some technical issues:
> 
> * The document is in UTF-8, but the encoding is not declared anywhere. 
> As a consequence, my Firefox shows mojibake â€™ instead of curly 
> apostrophe.
> 
> * It should be </li> instead of </l>.
> 
> * Semicolon after "&gt" is missing in one place.

Thanks, Jakub. All of this is fixed now, I think.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
