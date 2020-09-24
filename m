Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5754276F46
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 13:05:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726821AbgIXLFw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 07:05:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726303AbgIXLFw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 07:05:52 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03EC9C0613CE
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 04:05:52 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id l17so2881186edq.12
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 04:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CcHpxtg4XPjm1SGyD+r8VHtzLTpoY2lbDeWo8Deg5aU=;
        b=lfvj9SyuTDg5TA6DBLutJYHGmBqm6b5VwsrqhOf1cGL6PpDS0hcsJO89IkbevwHmEj
         +1zgX7p4bLTl6G/d/PaQ3GUTdZEiF6Pi44uwM8i8o2lnvLWb9Z1ewx1qVCDyq6GqukzW
         83J4VbdSnCJIMqytVSduyi7hHObN0bkmNYUTTLK22/wKM2M62WMGNraTlHBOnD1e5CIt
         BD9V8S10jUCNbMNubsrMS1B4fTLnpy1QE52n5I9ylptXv0FIVkJZQ7sXCOYACseYUN+2
         t3f/2yojTzsp0nvD6ze8Y8iRY+absJbt4IRYBs8Hne/5eF2772xlub3TgBe9iln+j48B
         VBAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CcHpxtg4XPjm1SGyD+r8VHtzLTpoY2lbDeWo8Deg5aU=;
        b=Ypyz3WWP5n/QOvpmHGANYxMHA/wbkAGH/ddHywSHSE+UmF6FH1yvJK/e9FwMDz5zt0
         50aRg2tSoIi6SpXn/ik18wnjTx2M47hBgikVC154HqiRhg/cOeR2H2CsC6tNoJcNkX2S
         wQgciwPY+xQ+LXq0CLn8g5JNJ34oa/PbnBlAyxLUnS5g9Cwl8rDZ+ulLvqFag8hNR9Rs
         gbIUn4oslcG60X2oWjeSZ5BbM+7omWptC57IjjK1vO6jUZXns18Od9yn5NU44Y9Nkb1t
         LVEH+p+tzWe6Gjje9jCmCr0YAjRlNGvKTXc7SgTEDSJ9Y21AUvXnnjBOIDE5qrRiJNu6
         gYWg==
X-Gm-Message-State: AOAM530UqKlf78vxNvcSfV27Tb5yHJzkPc4GSabH3wBhidZAo3x9Naql
        q3zvpBg5zSHVrDfLOsYfM2hJUd2kI8Q=
X-Google-Smtp-Source: ABdhPJwvJIpiB0fqOGgnF0UODMY6nCBhRvZ1OQfapSQVLTIZAhu40S+GiXgBm2Rx1pmyzVfQexYFgw==
X-Received: by 2002:a50:ed02:: with SMTP id j2mr400098eds.137.1600945550486;
        Thu, 24 Sep 2020 04:05:50 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id r13sm2307416edo.48.2020.09.24.04.05.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 04:05:49 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 3/6] system_data_types.7: Add ldiv_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
 <20200924101308.78204-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cfee51c5-75df-60e8-6684-fed6bfa513ba@gmail.com>
Date:   Thu, 24 Sep 2020 13:05:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200924101308.78204-3-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/24/20 12:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 077d669b4..1f7c172d7 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -226,6 +226,28 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
>  .IP
>  See also:
>  .BR imaxdiv (3)
> +.\"------------------------------------- ldiv_t -----------------------/
> +.TP
> +.I ldiv_t
> +.IP
> +Include:
> +.IR <stdlib.h> .
> +.IP
> +.EX
> +typedef struct {
> +    long    quot; /* Quotient */
> +    long    rem;  /* Remainder */
> +} ldiv_t;
> +.EE
> +.IP
> +It is the type of the value returned by the
> +.I ldiv (3)
> +function.
> +.IP
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.IP
> +See also:
> +.BR ldiv (3)
>  .\"------------------------------------- pid_t ------------------------/
>  .TP
>  .I pid_t
> 


Applied.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
