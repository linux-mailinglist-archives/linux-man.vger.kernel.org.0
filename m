Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC2F5267807
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 07:59:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725824AbgILF7D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Sep 2020 01:59:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725808AbgILF7B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Sep 2020 01:59:01 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBF67C061573
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 22:59:00 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id z9so6584398wmk.1
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 22:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=iMT/MpN7IQB0lLLj5OVUekcHvnufLs/0h9ceLGzfP5A=;
        b=cTga/CKGE7a06Dv7I/4CmPTgh0QYROtgFNmTYA+wNu+NMUhjFNI5HxYdCrazOacGOK
         QNdeUOBgsWfMycs7twxSOdG7fDbdsIcJZL0EiD38/xi04IK6UKrkImZSjFFWocDrxaw9
         I0V5wUKtKtleWfEO7fF0C4BY2OqT+Mzo4BbrOGK4Jl1Oxl4UJfqbjp0pScEYWEFNCZCp
         nvYhCxI3+x/q9leO/roaAI/DFnRqD2sMvnZO3BQd05BG7N81J99G6tQBRUrjRi80794d
         sxW3YHhwc5uUxTAarwWIDOUHxtWr1ju8HMrkOdMcTrCP4YQ+OOqVfEVC9/01ve8VgtNy
         ARyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iMT/MpN7IQB0lLLj5OVUekcHvnufLs/0h9ceLGzfP5A=;
        b=LehXGmJxCqJJlkI9JA4IDN7Iswriymae+QjKVNYWtmcscv46+5HkiNauWsqH+lNg/b
         JvSRb8PjfS8JIxJgK0/U5BDwbnk8oUVuzPf6kqkMUBoKlPb6gqAl3I5+NZJLKG7SU0wb
         kcfydLPSjTj8RRJKG644HbmACzIZYZOXDHR6zTZd428zYjtgW5tbWlSanhIavqVL3r05
         4qGnaGAsP4sq8dznFZiyLnp7k6jCPIxj6JQ8m0nkQZILf+ug+qwAkyJSaPNMpcvhlkqE
         NWQzB3WWB4dOYUlXNpAW3mevxqOvgwX+wS4+3aky2OlEltiH9fjwKqvlORqL4Hq0c3Nl
         t+Jw==
X-Gm-Message-State: AOAM533teuxrDVLxKp8Zzw2O2BVBbTUXlVwOTQ5dDxyWfLzrWthvPjMe
        NqAo+Es9hAM0W54rDlCE/FyMPNA+JSI=
X-Google-Smtp-Source: ABdhPJw/FO7CTV2a1d9ZpkgSSiYEKExir6tUDizHWL02e4nIza7Yw+NxpjkC5Bf+5ocvTfRKDo/DQQ==
X-Received: by 2002:a1c:3505:: with SMTP id c5mr5781716wma.65.1599890339180;
        Fri, 11 Sep 2020 22:58:59 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id c18sm8956451wrx.63.2020.09.11.22.58.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 22:58:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] getaddrinfo_a.3: Use C99 style to declare loop counter
 variables
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200911230918.28148-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <abcc96aa-0e34-fc33-1ac9-64359d23ba21@gmail.com>
Date:   Sat, 12 Sep 2020 07:58:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911230918.28148-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/12/20 1:09 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/getaddrinfo_a.3 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man3/getaddrinfo_a.3 b/man3/getaddrinfo_a.3
> index 3a8ddc98e..ca108df1a 100644
> --- a/man3/getaddrinfo_a.3
> +++ b/man3/getaddrinfo_a.3
> @@ -495,7 +495,7 @@ static void
>  wait_requests(void)
>  {
>      char *id;
> -    int i, ret, n;
> +    int ret, n;
>      struct gaicb const **wait_reqs = calloc(nreqs, sizeof(*wait_reqs));
>                  /* NULL elements are ignored by gai_suspend(). */
>  
> @@ -516,7 +516,7 @@ wait_requests(void)
>          return;
>      }
>  
> -    for (i = 0; i < nreqs; i++) {
> +    for (int i = 0; i < nreqs; i++) {
>          if (wait_reqs[i] == NULL)
>              continue;
>  
> @@ -554,11 +554,11 @@ cancel_requests(void)
>  static void
>  list_requests(void)
>  {
> -    int i, ret;
> +    int ret;
>      char host[NI_MAXHOST];
>      struct addrinfo *res;
>  
> -    for (i = 0; i < nreqs; i++) {
> +    for (int i = 0; i < nreqs; i++) {
>          printf("[%02d] %s: ", i, reqs[i]\->ar_name);
>          ret = gai_error(reqs[i]);
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
