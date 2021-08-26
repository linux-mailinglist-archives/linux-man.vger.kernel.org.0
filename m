Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0917B3F90D6
	for <lists+linux-man@lfdr.de>; Fri, 27 Aug 2021 01:06:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233866AbhHZXHH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Aug 2021 19:07:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231251AbhHZXHH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Aug 2021 19:07:07 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 860C7C061757
        for <linux-man@vger.kernel.org>; Thu, 26 Aug 2021 16:06:19 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id n13-20020a17090a4e0d00b0017946980d8dso7633525pjh.5
        for <linux-man@vger.kernel.org>; Thu, 26 Aug 2021 16:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=He/zSaDg18V4lMR/ScNHMrX9k7VAD/h285sllsk8kiA=;
        b=jDRzSgV10e47iueBjtgMyB+CFp/DpMjWBRid20bnpMbM8u4LiiTJT4BA50dil5JpFk
         JH/2jHz5vc7AJn5cdOgw1ITsIsXz4WQ9ZjclEKwCn7sPDQgcifZPqxymUuu9uaPNCw/t
         yjWLFjA6jVhWx2nCCrs0aaXHpZD0JLNRNfk7lxtlIL4c4eCoIXaeaCUxbtlsXAZUssM7
         sYz2Y/qi1PG0nGKDjOaQPWd378FgnbQk9j/Br1ssChpi2b5f9M3bhWMRer5q0KDo0yLE
         e6iOnhM5amRT8RN23Bvz7yw3TO/ncZN/MhG80yZFF3fpDSH8siid3QdnbeuWStsHxmPT
         lfJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=He/zSaDg18V4lMR/ScNHMrX9k7VAD/h285sllsk8kiA=;
        b=hEby3zaXdubMj0E2aHrsNc2CJiBa8EMLCTr87J02lb6gEqwPHIF08oI+ZQYmO+wJ6O
         KZCIvePYeiuw63yTrk5az9Niqp1vkp+nr+GAbggMheBx4N3vAhTL1tUzDK6Z76+eXCva
         i2SUeQ/y5J7oD6QzcBdZEauXPFnyLopoq10V16oiUIRQMt6Ej7UUlqcqRlq8tYaHGjkj
         3xuyRf+fdrJq238J4iGa/F42NePsd4ohwS+aNiWFPMqNjNof+r1xufnutWrHFxEdJ7bB
         XTI40/zE+U/3lqBDpa/6hh9WfQPqdDVyA59MtviBKdNU//p2jldk+Us8HeIe7DgcbRDz
         esFw==
X-Gm-Message-State: AOAM530WcfuuxEz/E/2y3iVBREgflLaX53b9q2wPoSrjr4Uxuhp/vAHc
        iWC/1MJFds3WX9w9Ze9YsPZa10FQtG0=
X-Google-Smtp-Source: ABdhPJzqYoH9lSDK0E1+go3muRXU1eBkkvGXyTb/oM5DHeCkbe/NDwTY9EIcW6knl8KQUulvcyzU1A==
X-Received: by 2002:a17:902:ff0f:b0:132:3793:3b0e with SMTP id f15-20020a170902ff0f00b0013237933b0emr5634502plj.57.1630019178974;
        Thu, 26 Aug 2021 16:06:18 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id c24sm5159327pgj.11.2021.08.26.16.06.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 16:06:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Cristian Morales Vega <christian.morales.vega@gmail.com>
Subject: Re: [PATCH] getaddrinfo.3: wfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210825155155.753997-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1f03d339-6e88-fe1e-eb57-061e2db21818@gmail.com>
Date:   Fri, 27 Aug 2021 01:06:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210825155155.753997-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex, Christian,

On 8/25/21 5:51 PM, Alejandro Colomar wrote:
> The previous wording wan't very explicit, leaving room for
> believing that errno may be 0 after returning EAI_SYSTEM.
> 
> Use a wording similar to other pages, for added consistency.
> 
> Reported-by: Cristian Morales Vega <christian.morales.vega@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/getaddrinfo.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/getaddrinfo.3 b/man3/getaddrinfo.3
> index 35071b733..1e13e3ef2 100644
> --- a/man3/getaddrinfo.3
> +++ b/man3/getaddrinfo.3
> @@ -583,9 +583,9 @@ and
>  respectively).
>  .TP
>  .B EAI_SYSTEM
> -Other system error, check
> +Other system error;
>  .I errno
> -for details.
> +is set to indicate the error.
>  .PP
>  The
>  .BR gai_strerror ()
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
