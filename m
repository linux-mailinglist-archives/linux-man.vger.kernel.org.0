Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 764C62706A5
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 22:16:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726828AbgIRUQq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 16:16:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726168AbgIRUQE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 16:16:04 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D94E2C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:16:03 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id l9so6757749wme.3
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 13:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gBQRXIIS9qnBHstyqkjXUV+QoSAoeLbWWMcRo4jcJfo=;
        b=igmEVEpWdnCRrLOIgktTHzs+3vyXgMc/re1XjQkx239iaM6KPoM8auEp7IYjPRK74k
         oKWyZMj11oo66xcXfhFcDb6Eerm7RTzeTb9Y5/NSJNPcqRjj0uj3+11p/IUEKNJSnXmZ
         PdX4JDfkpZrC20v+g58OHjeMQYQhTkcN12IxrY9PdYVDYg44B6ohlZez/NOHcaL2FNBL
         ATuIQqNam9gr2rB2HDT8j0T2J52HS7YM9B/vnLguNhHhgij7vd2hvcvdpSuPcJR5vkeD
         8+1MDBFSguxhbE9vrb+HMPCdQWlbFWhRwFuGQek0vrT11uLA9vfRXIp+5Bz+5QGZWJPd
         05Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gBQRXIIS9qnBHstyqkjXUV+QoSAoeLbWWMcRo4jcJfo=;
        b=jBj6Hm8TCwPRcqHs+/557Rx8sf91tVzN8s0zrUsSMpUwtBfhB3j/5IcTXPi1CojLif
         Y+eFulqN26UfUvhyCkaSMtShS5eFl01mZyMG4zHuWNsXl/6UOVC2qinwvwnTyW6yClYi
         i4AqtMTSY+UXZ0G2TuLBgfFWeZmiYyAVB5oZ/ya8AjAUt2Z7HqWDeHvHVe3O26XJ/Em+
         KvcNW9gUbHiAsYGbK196FJ+a+c07YqsoGUBueTZasMpLZaM2NlutsRHNqEtVT/V0STJ5
         PqNY62IfxVABl2DR6IHlpwbgPA1xHa5LuC3BT888NY9YbbxZQqxpj8S/4erB62GwvKCD
         cyzA==
X-Gm-Message-State: AOAM532WaXf2jMGeGiK74/mMKaQkBejPX3sCEc9KsmBG+d+h6kmpsiaS
        j7M8ENf81XsFkhetqkMrILU=
X-Google-Smtp-Source: ABdhPJylJs4XGnDq/eJNp9nl26CTldbBCHfI6NRUY2Jk9RCERmEHczma3njl56kizGYHQGjjAWNbWQ==
X-Received: by 2002:a1c:e904:: with SMTP id q4mr18279488wmc.151.1600460162542;
        Fri, 18 Sep 2020 13:16:02 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id b64sm7054868wmh.13.2020.09.18.13.16.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:16:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 1/4] system_data_types.7: srcfix: Remove TODO comment
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200918120440.30281-1-colomar.6.4.3@gmail.com>
 <20200918120440.30281-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <680a4501-06ba-c15f-92c5-17c5a4ed4c44@gmail.com>
Date:   Fri, 18 Sep 2020 22:16:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918120440.30281-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/18/20 2:04 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Patch applied.

Thanks,

Michael


> ---
>  man7/system_data_types.7 | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 041e7e243..72afe9e81 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -27,9 +27,6 @@
>  .SH NAME
>  system_data_types \- overview of system data types
>  .SH DESCRIPTION
> -.\" TODO:
> -.\"	* Add types
> -.\"	* Curate "See also"
>  .\" Layout:
>  .\"	A list of type names (the struct/union keyword will be omitted).
>  .\"	Each entry will have the following parts:
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
