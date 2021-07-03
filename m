Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E83C23BAA24
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 21:37:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbhGCTk3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 15:40:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbhGCTk3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 15:40:29 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6532FC061762
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 12:37:54 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id m18so16814772wrv.2
        for <linux-man@vger.kernel.org>; Sat, 03 Jul 2021 12:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1xHZoBzUXlKeh5CfjI7UTaI8AknrEb5uyBgCdyvmTi8=;
        b=CaxOhf3l3g+7JJl1fU4jzBsBObRygQxN1/jgfIDe3xyhK8qWZNLCEnJZxCD7Mtcwb2
         9QNY7KnzmwQjGPn95ikc6D7kBi10H8mLgNknypAwVRv7ec8wJVjJuM+B59UcBhZCafHg
         CvmsjWufj4yjaL5P6mJjwTLGDWkb2LH5rnbAf2zb2pknO7Dk/UeCJdmtyKc2EalXFGOI
         azpX6j3JtWPdq5wDZAm6Wgi8GRXR6ucH0tEbIVpG8IZyAxewlxVKpoklCHiyeAUKA/1B
         SAbSGVivNcz7QsiNu3aZSrzdK2OKfWfzBFOshpHtKLP3c4n1RauTB6e6wM8ufH921jrG
         MbmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1xHZoBzUXlKeh5CfjI7UTaI8AknrEb5uyBgCdyvmTi8=;
        b=ByaMhbE6w6wYQETDZ17H3xGuUQ7IGVyt+UCTIqikFKuN0TrJmoF9npr5kTEyHjoQxx
         ORgjGWT1nx5ADbm/DvLEgSegvzpL9FC8xeTadirLr5lFKM4IGDzkNXscF4K0WevY9ZRV
         nVvW8o6qHvHSi+idSocmIih7owEFji1pGKNfrLPR/utPoMNtqIH7Uuqa7BoYPMTb7cjd
         XyXGfQ8RxR+psbkSD1bz/RtBfwWAWBW7sGgDxx1ibRd6Poa2LaPQmcS180seyYekkBso
         x4kUtuL+5SNgwB7dSZ+tw7jqVukSonMdQkNnZkLaqNtjQYoTBhH5fr8nIySAPs7coyhb
         EfiQ==
X-Gm-Message-State: AOAM532GlWnUxUf5NnhhPti5HIsR9PNY3+FmGea6q5nEPw6BTUwmlfAB
        UtuNlY08HrpWzaukd/XECxc=
X-Google-Smtp-Source: ABdhPJwc6Thm8osv6wHZnZJnkJxmu4rzTtnUehlm/36rCaw7zPpE7QnMfT8/ZvXiIjbUJOnZxUXWxQ==
X-Received: by 2002:a5d:4590:: with SMTP id p16mr6740678wrq.253.1625341072630;
        Sat, 03 Jul 2021 12:37:52 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x21sm12355051wmj.6.2021.07.03.12.37.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jul 2021 12:37:52 -0700 (PDT)
Subject: Re: [PATCH 3/3] capabilities.7, user_namespaces.7: describe
 CAP_SETFCAP
To:     Kir Kolyshkin <kolyshkin@gmail.com>, linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210629215700.137856-1-kolyshkin@gmail.com>
 <20210629215700.137856-3-kolyshkin@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <f4bc11ae-8b5d-2e37-1b48-1ee6b3c7e413@gmail.com>
Date:   Sat, 3 Jul 2021 21:37:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210629215700.137856-3-kolyshkin@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Kir,

On 6/29/21 11:57 PM, Kir Kolyshkin wrote:
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>

I applied all 3 patches in this series (and some minor tweaks).

Thanks,

Alex

> ---
>  man7/capabilities.7    | 6 ++++++
>  man7/user_namespaces.7 | 6 ++++++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/man7/capabilities.7 b/man7/capabilities.7
> index 9f8f0087f..2f9c9a61e 100644
> --- a/man7/capabilities.7
> +++ b/man7/capabilities.7
> @@ -349,6 +349,12 @@ write a group ID mapping in a user namespace (see
>  .TP
>  .BR CAP_SETFCAP " (since Linux 2.6.24)"
>  Set arbitrary capabilities on a file.
> +.IP
> +.\" commit db2e718a47984b9d71ed890eb2ea36ecf150de18
> +Since Linux 5.12, this capability is
> +also needed to map uid 0 (as in
> +.BR unshare\ -Ur ,
> +.RB see unshare (1).
>  .TP
>  .B CAP_SETPCAP
>  If file capabilities are supported (i.e., since Linux 2.6.24):
> diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
> index 518e7a3bb..3378b6057 100644
> --- a/man7/user_namespaces.7
> +++ b/man7/user_namespaces.7
> @@ -577,6 +577,12 @@ or be in the parent user namespace of the process
>  The mapped user IDs (group IDs) must in turn have a mapping
>  in the parent user namespace.
>  .IP 4.
> +.\" commit db2e718a47984b9d71ed890eb2ea36ecf150de18
> +If a writing process is root (i.e. UID 0) trying to map host user ID 0,
> +it must have
> +.B CAP_SETFCAP
> +capability (since Linux 5.12).
> +.IP 5.
>  One of the following two cases applies:
>  .RS
>  .IP * 3
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
