Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E975278213
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 09:57:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727472AbgIYH5x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 03:57:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727067AbgIYH5w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 03:57:52 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EEBDC0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:57:52 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id p9so2367430ejf.6
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+PkYEf8eapAAKBtChvg72HyUe70WqZ59o7exXALVqWM=;
        b=sB6N7YB61dlmP9n6TZaakOGkZlAGfuaUcmQfGu1XO1OsJY8dhMI/jWeqlLSLzvGlgt
         haHvJZJMKRJODzTUYoPnv84UvkLCrivi4JvUByHRjB5TsgUCVQS89M4GhtxCFXoXYT4y
         g73UjLxl2ScRuA3f5wYlfcouu4oTSgsQt0FgBMrwngPcL3SrP3isl24uEFeXgM5EqGfH
         n7DxqC2k+3YJnLPXERTLQ++B55SS81r7apzQ9BndtguIAIKh/uIRdX5q55onSuSVv776
         ynGtqQQ9tRTH/umZQcYTKzRz9eoR7lT9uzirf2z8T54a6FEVTYB/JaFJN5b9HuVx3Amu
         AwHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+PkYEf8eapAAKBtChvg72HyUe70WqZ59o7exXALVqWM=;
        b=inz3kFcd5scr7EWq0pCA9YA9lIbXHOSdnR8kok96rK/0mJEvkYcDFNIcdEy+AacarK
         jE2dGD+vAgJG7FyItHRhOey/IAYD3KN8UDBDdRMo8lOp0Cri3UlHE84awFeOwFEUdVNh
         UtzRSemqTyHmgXKHUcU/UPdYiw77rhU2Q1VoY7APcILY/O36ExcUbMTxrPaWGhFg/REt
         NOqWcLrFNj25UMSoqcC9l8qFBZH6dG2W68CRtiU8eFAV2xFM6ZlNdFRiwo4VNSd+vV7o
         XWoVcrm8XeDaeUDHpfTTbMvaHsU74WrkPM625pBkxD4SIvw7CXI8w8HXVzqlwyMYDQUb
         V+KQ==
X-Gm-Message-State: AOAM532AwE7lwwCa/XTlVrkNFzkE31I7KfcIFMpwTpe2hqD2mex+FkLD
        ICsyLYcf3PYLB7CVvojGqdg=
X-Google-Smtp-Source: ABdhPJznvldcuVZ6eOVizLPjEIYMVsE2MPhDEq6ROjwUTXkgGTyJV+TtlzmiZESPhankO0pmFEg7gQ==
X-Received: by 2002:a17:907:2506:: with SMTP id y6mr1411372ejl.265.1601020671307;
        Fri, 25 Sep 2020 00:57:51 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id v2sm1320070ejh.57.2020.09.25.00.57.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 00:57:50 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 10/10] getgrent_r.3: Declare variables with different
 types in different lines
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
 <20200925073140.173394-11-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <25fc10c2-7938-0b5d-0368-66e249ffaa18@gmail.com>
Date:   Fri, 25 Sep 2020 09:57:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925073140.173394-11-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/25/20 9:31 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man3/getgrent_r.3 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
> index 8170cd417..64d7f3ac1 100644
> --- a/man3/getgrent_r.3
> +++ b/man3/getgrent_r.3
> @@ -181,7 +181,8 @@ in the stream with all other threads.
>  int
>  main(void)
>  {
> -    struct group grp, *grpp;
> +    struct group grp;
> +    struct group *grpp;
>      char buf[BUFLEN];
>      int i;
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
