Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E85431F20A8
	for <lists+linux-man@lfdr.de>; Mon,  8 Jun 2020 22:27:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726606AbgFHU1K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Jun 2020 16:27:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726522AbgFHU1J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Jun 2020 16:27:09 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D474EC08C5C2
        for <linux-man@vger.kernel.org>; Mon,  8 Jun 2020 13:27:08 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id l26so786614wme.3
        for <linux-man@vger.kernel.org>; Mon, 08 Jun 2020 13:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fgBO0nmaod6VJiMwJuPfCHnfMY/+wt+/frBMdWAURR8=;
        b=a2TFDdZrXZ1963YTrcRD9d0GONGGOCLmh9fteAbUl5yJtRQ+B7tv/3KsKhp32RKwzE
         VUg3PKumlrsfu3ttTXyJ/tcpAImDffMnzxLjAjGlvn3Hr32H3w6rYoYKyXsCA690L1Aa
         XogzmCj7oZqbO2raWhj/yuPZHd/ZNR7+QpOjuYT1dC9ZxHg87hzYTBARqTmVhS9EXffe
         0XT54At/Kv/wUWteCyTECObz7m9FrEVGPWVaZUemKmPjtvXA63CWnWAeqbwepIXy9PYa
         0c1MmFSwVFK1HL+b9JscnFy/F8VsN6DhO/7DywSdcLVHvUwuvt0J/l7i2nGZB2nHfKv1
         //3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fgBO0nmaod6VJiMwJuPfCHnfMY/+wt+/frBMdWAURR8=;
        b=lhiBBlOXgT/rW2tlEqqj6jEUZvzyr/S7drGpkvb5A4B+olvu4QVBp5KlrEYohyOPjS
         R5zsqdoorD089nXWFehQPwSGi1QkWpUnKiodvxRyZ75vHJXcnimk/p6F2jdzDHZJZAC2
         D+FeoA66RvmcqKLBREbO9Ku0nBILClJaVz6ZOkLHjQFGwfMFpr6oc0PyvPu9MnzleQiT
         lntZWfD7UQrw0AwEBzrbb3ehNwjvPDSed7ZflwmjEGLjO4s4P8A9bNQTdc+bLhXsAUFp
         awm5wWByHhu3af4W8jj/FoQaWApg5+mp/ynpwICfhm+LcjqkC1rAL9CxLvoUIWS1GanJ
         otLQ==
X-Gm-Message-State: AOAM530eeOeKu9SEjsKNXtYOii6J+YiNaF+PTHEnk7Eg71kZS+sYev2y
        w3aqCTxvZab937MxgWShuYO+PxZX4pw=
X-Google-Smtp-Source: ABdhPJxduP6lZtAsF8ThhwsOOYfjuKWwOkxWg2X6uxv8i+LVtNLl7atzo2/23OS5t4FZfUd/gU7/0Q==
X-Received: by 2002:a7b:c385:: with SMTP id s5mr425487wmj.121.1591648027573;
        Mon, 08 Jun 2020 13:27:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id h188sm628034wmh.2.2020.06.08.13.27.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 13:27:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        walter harms <wharms@bfs.de>
Subject: Re: [patch] random.3: wfix: RAND_MAX is for rand(3)
To:     John Marshall <John.W.Marshall@glasgow.ac.uk>
References: <02185B3C-F6E5-4674-BB34-E549E04C5B37@glasgow.ac.uk>
 <627c601ec03b4da9b1ce98ee0e61a6ba@bfs.de>
 <20200608110416.GA21314@Johns-MacBook-Pro.local>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bec22479-dc29-cbaf-89d2-1fc95da2fcc2@gmail.com>
Date:   Mon, 8 Jun 2020 22:27:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200608110416.GA21314@Johns-MacBook-Pro.local>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 6/8/20 1:04 PM, John Marshall wrote:
> POSIX fixes random()'s range at 2^31-1; RAND_MAX may be smaller on some
> platforms (even though with glibc or musl on Linux they are the same).
> ---
> 
> On Sat, Jun 06, 2020 at 12:45:58PM +0000, Walter Harms wrote:
>> that RAND_MAX is 2^31-1 in some cases does not matter. IMHO
>> it is wrong to mention RAND_MAX in the random page. it can
>> simply be replaced with (2**31-1)
> 
> Thanks for confirming, Walter. I forgot to mention I was happy to
> provide a patch -- suggested fix in this git-format-patch message.
> 
>     John
> 
>  man3/random.3 | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/random.3 b/man3/random.3
> index 76b076f42..e3550f802 100644
> --- a/man3/random.3
> +++ b/man3/random.3
> @@ -69,7 +69,7 @@ The
>  function uses a nonlinear additive feedback random
>  number generator employing a default table of size 31 long integers to
>  return successive pseudo-random numbers in
> -the range from 0 to \fBRAND_MAX\fR.
> +the range from 0 to 2^31\ \-\ 1.
>  The period of this random number generator is very large, approximately
>  .IR "16\ *\ ((2^31)\ \-\ 1)" .
>  .PP
> @@ -125,7 +125,9 @@ or be the result of a previous call of
>  The
>  .BR random ()
>  function returns a value between 0 and
> -.BR RAND_MAX .
> +.BR INT32_MAX ,
> +i.e.,
> +.IR "(2^31)\ \-\ 1" .
>  The
>  .BR srandom ()
>  function returns no value.

Hello John,

Thanks. I applied this patch. I also agree with Walter. There's no
real need to mention INT32_MAX, so I removed that piece.

Cheers,

Michael




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
