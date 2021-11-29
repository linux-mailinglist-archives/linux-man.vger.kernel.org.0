Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2EE094616E4
	for <lists+linux-man@lfdr.de>; Mon, 29 Nov 2021 14:44:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231327AbhK2Nrm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Nov 2021 08:47:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231910AbhK2Npl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Nov 2021 08:45:41 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCF98C08EC75
        for <linux-man@vger.kernel.org>; Mon, 29 Nov 2021 04:27:30 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id o13so36282786wrs.12
        for <linux-man@vger.kernel.org>; Mon, 29 Nov 2021 04:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=WmdA0YVGIQCHIUIBgNEFjrHJyFuAstc+vUPv2Z3gvo0=;
        b=jJsZRB0mHO4rIJEQ1P86a+fj2y/MFMkGkJ8FvbrizYvdRsbJd4Z9TxpBPb2Qw7KHJV
         rHvkoQOs1cVfH8kUk47sv9gZoo7WHKAEdWwTeqTeggylpjFusfn/SSkAb0Ks1TrUyhlo
         DUbdMiFXYAxEyn1brpVRRRzNjHXgNnblei1J+L134ogw05rU59slErA+0ItGeFsBVli7
         z8jN/6jea18NmCNo129FRIH5K9r0f9mD4pu6q4aj5zel9/yDF5Z0RXB66Isqm1P+oXQT
         tjOXoa2PSC83/4IOL3N1uhUrY49QbBOBe/5GOMn7lU7M1C6Jjd+PPtSHW5NfmExNWEzz
         hCyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WmdA0YVGIQCHIUIBgNEFjrHJyFuAstc+vUPv2Z3gvo0=;
        b=cb8guu3Wti+X5mxo1ouk0koXRXk5tDmLkEemoevJnSxv6l9xbYvDL8LT8Bl2yRnACM
         R6yFPLq3+PM9dtm/Wrvxwp7lARI59indb3Uc442hpCUwrrpaqsC5Pga6duaL88jU8GoU
         zfC++1WpIyy3byaT8PP5fJSjcB2i8FZ7tOH65Jcvk6dEw+wsODW6As+Uwdkc7sEaBiMx
         V6TZaXzwZoECibCwPAjyFrGyIZ1HdTv/A7xh3wL0pSJu2alWjih0+LKz98Gr5rwqYHss
         hrb75uUoTyf/LU7R1RYOaufIhMxxm+nUCDqbdGgIibupgMF8VftajGP5XQypKtYF1SLn
         K8UA==
X-Gm-Message-State: AOAM533WlcwbNeMxdYttVetGjuE212Vqp8CxCRX/zfIOTKLRg9lBC7qd
        N8TQzQ5sYL86e54YnOq8zcvSNB2sq4ZmYg==
X-Google-Smtp-Source: ABdhPJzy7v3HexOKb2op9P9z6WjrNW+CVBJUgV3+m75n1nCY/2x7c5/KZzKSK3YCHq6cNxGzns45sg==
X-Received: by 2002:a5d:6da2:: with SMTP id u2mr33131309wrs.273.1638188849383;
        Mon, 29 Nov 2021 04:27:29 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h7sm13067003wrt.64.2021.11.29.04.27.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Nov 2021 04:27:29 -0800 (PST)
Message-ID: <74f9b43a-f843-6abe-523a-f1615aa37363@gmail.com>
Date:   Mon, 29 Nov 2021 13:27:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH 2/4] poll.2, sigwaitinfo.2: fix struct timespec::tv_sec to
 be time_t, not long
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
 <4f82c9aeef69bc78d8c61a18aee3675f31e8a4a2.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <4f82c9aeef69bc78d8c61a18aee3675f31e8a4a2.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

As I said, I'd just replace those redefinitions by referencces to 
timespec(3).  The fact that these contained different types for tv_sec 
confirms my guess that not all of the repeated definitions were correct.

On 11/28/21 19:17, наб wrote:
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
>   man2/poll.2        | 2 +-
>   man2/sigwaitinfo.2 | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/poll.2 b/man2/poll.2
> index 620528ec7..a278efbcc 100644
> --- a/man2/poll.2
> +++ b/man2/poll.2
> @@ -329,7 +329,7 @@ This argument is a pointer to a structure of the following form:
>   .in +4n
>   .EX
>   struct timespec {
> -    long    tv_sec;         /* Seconds */
> +    time_t  tv_sec;         /* Seconds */
>       long    tv_nsec;        /* Nanoseconds [0 .. 999999999] */
>   };
>   .EE
> diff --git a/man2/sigwaitinfo.2 b/man2/sigwaitinfo.2
> index 716661479..226625e4e 100644
> --- a/man2/sigwaitinfo.2
> +++ b/man2/sigwaitinfo.2
> @@ -93,7 +93,7 @@ This argument is of the following type:
>   .in +4n
>   .EX
>   struct timespec {
> -    long    tv_sec;         /* Seconds */
> +    time_t  tv_sec;         /* Seconds */
>       long    tv_nsec;        /* Nanoseconds [0 .. 999999999] */
>   }
>   .EE
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
