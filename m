Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71E997CE91A
	for <lists+linux-man@lfdr.de>; Wed, 18 Oct 2023 22:36:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbjJRUgw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Oct 2023 16:36:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230391AbjJRUgv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Oct 2023 16:36:51 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 211BEF7
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 13:36:50 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1c9bf22fe05so48353085ad.2
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 13:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697661409; x=1698266209; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=fOQ8ysV54S/M1jHBujTBgnm6yXWsVhxu7dFa69/vvDc=;
        b=o39A9CCIyZLk+u/YWJ0tm9ZgQDx8QJC5ETgD+787Pu1QsF6tV4RUa3w9fbHJNxzpF8
         nWRPf3nvZquE4i2NXIz7/J0mKYnnd4pJEID6dgJg6GzfcugV+mCQpOODtIAdpKMAW8fa
         04OnnmLxFxPQZUwjvUY5o/XFpZ3NX4r5vtpkMJdQK2OZBydo+8VDvlEYxWhobtV3uZmM
         FrTvIl1/9OQQJGQ+I1pCn653xyI4yUdHTNTqr2Lm2D9QhUDw7U+PRxFgJ1frD0cj3WFP
         NoxzQww6q8bzvTq197XIV2LtAVsgjisWTHqik7auE4xoRBVApe6+Dt/ISeQfPOL2sZLl
         LpkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697661409; x=1698266209;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fOQ8ysV54S/M1jHBujTBgnm6yXWsVhxu7dFa69/vvDc=;
        b=RGGa79Y69fLPeXMMGTI6IkJfck4ZDhrmiUfivmEBCqD1nQaDwhKzaDjyN/lmg/j0rw
         XXSI9Vlpfu/U9dFciG/rCK3kALMhF0YnBvlj0oG4jrHaCBb7ZxTCqN/kl+5ZUPziNwdA
         fp6O2xBmTqfIpr21r0caa1QgV4rMN9TxPkGl0WXEasld5WvKB0vYHSp1zO55F7XxkDoJ
         XFiSqVu1D4tj5S5/gK82FyiJxRHtEXYEoHo5fcex3lsduTP2698Sd1MxfPNOVCXRuvPm
         J5j2eTpjwlYKIlB512NriEhj9TIzzG/EiEFCo+c2JtqbLRBHhtIAyv1CCGq1pXKLd2WY
         jrhQ==
X-Gm-Message-State: AOJu0Yxk1yfMFflCZxYiZWxwpUmwkdVfRNihF06fHGJghA4NEfy279cX
        UXuY4tgKu3UfxC28ADUMjNfmNHrgY3VE0742TVTfsA==
X-Google-Smtp-Source: AGHT+IGcSvRDgGLCXg7WJyHFAj77HMc4J4MBDD59x9TNncoQb8hOkae7rOEk4IDNTGJBkfOkxxVYNg==
X-Received: by 2002:a17:903:4305:b0:1c5:d0ba:429 with SMTP id jz5-20020a170903430500b001c5d0ba0429mr446830plb.4.1697661409331;
        Wed, 18 Oct 2023 13:36:49 -0700 (PDT)
Received: from ?IPV6:2804:1b3:a7c3:a647:51c8:7d15:99b:dc36? ([2804:1b3:a7c3:a647:51c8:7d15:99b:dc36])
        by smtp.gmail.com with ESMTPSA id d9-20020a170902cec900b001c5f7e06256sm348666plg.152.2023.10.18.13.36.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 13:36:48 -0700 (PDT)
Message-ID: <c18f60f1-fa9d-4b46-b894-b6b275a45001@linaro.org>
Date:   Wed, 18 Oct 2023 17:36:46 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] ld.so.8: Update environment variables from recent
 glibc versions
Content-Language: en-US
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20231018172104.1196993-1-adhemerval.zanella@linaro.org>
 <20231018172104.1196993-2-adhemerval.zanella@linaro.org>
 <ZTAsrnUGVgUll56p@debian>
From:   Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <ZTAsrnUGVgUll56p@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 18/10/23 16:06, Alejandro Colomar wrote:
> Hi Adhemerval!
> 
> On Wed, Oct 18, 2023 at 02:21:00PM -0300, Adhemerval Zanella wrote:
>> Recent glibc version removed support for LD_TRACE_PRELINKING,
>> LD_ASSUME_KERNEL, and LD_USE_LOAD_BIAS.
>>
>> Also adds a note for LD_HWCAP_MASk that since 2.26 the environment
>> variable might be ignored if glibc does not support tunables.
>>
>> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
>> ---
> 
> Patch applied.  Thanks!
> 
> I've also applied some small fixes for consistency, and to use "semantic
> newlines".  See below.

Thanks, I will keep this in mind for future patches.

> 
> Cheers,
> Alex
> 
> P.S.:
> I'm deprecating <alx.manpages@gmail.com>; please use <alx@kernel.org>.
> 
> ---
> 
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index 5b5c22825..1999c24d6 100644
> --- a/man8/ld.so.8
> +++ b/man8/ld.so.8
> @@ -310,7 +310,7 @@ .SS Secure-execution mode
>  .SS Environment variables
>  Among the more important environment variables are the following:
>  .TP
> -.BR LD_ASSUME_KERNEL " (from glibc 2.2.3 to 2.36)"
> +.BR LD_ASSUME_KERNEL " (from glibc 2.2.3 to glibc 2.36)"
>  Each shared object can inform the dynamic linker of the minimum kernel ABI
>  version that it requires.
>  (This requirement is encoded in an ELF note section that is viewable via
> @@ -628,7 +628,9 @@ .SS Environment variables
>  is ignored in secure-execution mode.
>  .TP
>  .BR LD_HWCAP_MASK " (from glibc 2.1 to glibc 2.38)"
> -Mask for hardware capabilities.  Since glibc 2.26 the option might be ignored
> +Mask for hardware capabilities.
> +Since glibc 2.26,
> +the option might be ignored
>  if glibc does not support tunables.
>  .TP
>  .BR LD_ORIGIN_PATH " (since glibc 2.1)"
> @@ -703,7 +705,7 @@ .SS Environment variables
>  .\" (This is what seems to happen, from experimenting)
>  then all prelinking activity is traced.
>  .TP
> -.BR LD_USE_LOAD_BIAS " (from glibc 2.3.3 to 2.35)"
> +.BR LD_USE_LOAD_BIAS " (from glibc 2.3.3 to glibc 2.35)"
>  .\" http://sources.redhat.com/ml/libc-hacker/2003-11/msg00127.html
>  .\" Subject: [PATCH] Support LD_USE_LOAD_BIAS
>  .\" Jakub Jelinek
> 
> 
> $ MANWIDTH=72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>        In the source of a manual page, new sentences should be started
>        on  new  lines,  long  sentences  should be split into lines at
>        clause breaks (commas, semicolons, colons, and so on), and long
>        clauses should be split at phrase boundaries.  This convention,
>        sometimes known as "semantic newlines", makes it easier to  see
>        the  effect of patches, which often operate at the level of in‐
>        dividual sentences, clauses, or phrases.
