Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 336E4265B17
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 10:06:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725879AbgIKIF6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 04:05:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725601AbgIKIFv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 04:05:51 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89AB9C061573;
        Fri, 11 Sep 2020 01:05:50 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id s13so3542427wmh.4;
        Fri, 11 Sep 2020 01:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=p7ZEqYEXNNDQfZTyyRtEq4ezyf6jRAc/A0d3cWdelG8=;
        b=Rqyi/pPDFnO111d2wHVM9Tc2uqcMysHCnWXUvkE6Vmna5G8Ok7ekCImU0bFlpVZOXM
         uW/K98RdI7k26X1gg0pyDNU4luS1UmOvQpTN/1kv9w21xpqK9tgyg/RgF9C9yxwpZ+q4
         Wgni6Qw1aUaNdEAcu+4grqxdZLZvJpKWZaZNqa0KMjAbFqm/Z7aKg0idCOrEyPnTKTWg
         5H3kBiT5m+KCmQ0+N09280E1TRBrR2VhgkPZQbGtaKcxN6mi10Ap7XyA4gdNqv7oY7G+
         4yGt8qMGfM3/8LL+kYay2VDblqSu4o5BCwowidkOuH72ppxrDjvbftLvjtJwLHXZvlzD
         /1vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=p7ZEqYEXNNDQfZTyyRtEq4ezyf6jRAc/A0d3cWdelG8=;
        b=rbl4liZmVHn0jWJJj9x8mfM3u2Bf/hIVz0GFV2YabobusPhXDt6pbn/+vppohUzUli
         Lx7GHx+LsIv8MrphAXQJxcVF2MwOEvk7qvsZYh76kcIECM/fuoRVG+jaBuaLEBD4h1iB
         IwKIHGWe1cu8G2fJgeDg3iO7cv08URkmy5v8AXtdCb6YrK/dqR0Ae3azsGVtkfIUnU8f
         KP1CWXSyu036W2CTfCcFLYOpPzEW2e6zk6v7o709+JERgXPjqxqEi0g7eX8tctzLE4Hd
         UrO7gjhQIhcViXFFgh2OHi7E/jZNtE+aHzja/uVqlVi4PpMS37sRKPurMIsdYL1LfG8n
         0jYw==
X-Gm-Message-State: AOAM530v3g2Ju7ll10isQGnlOOsbGDBHReWeZ95puRJZq7Z/j6zFLiI8
        wvIcMa0ewNDzHQUtagW6e9xzDU9mKHs=
X-Google-Smtp-Source: ABdhPJw1ujdf1sble0/tg5PgTp8ivyNx++2Lik1eKyetzOqWWiCy5wyvWrE0NHaScbVWk2fQtGnUXw==
X-Received: by 2002:a7b:cf30:: with SMTP id m16mr957729wmg.0.1599811549027;
        Fri, 11 Sep 2020 01:05:49 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id d190sm2596254wmd.23.2020.09.11.01.05.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 01:05:48 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 15/24] unix.7: Use sizeof() to get buffer size (instead of
 hardcoding macro name)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-16-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5629c8df-7ed7-d825-01d9-7b2ed7fbd042@gmail.com>
Date:   Fri, 11 Sep 2020 10:05:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-16-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch Applied.

Cheers,

Michael


> ---
>  man7/unix.7 | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/man7/unix.7 b/man7/unix.7
> index f61b51424..50828a5bc 100644
> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -991,7 +991,7 @@ main(int argc, char *argv[])
>  
>              /* Wait for next data packet. */
>  
> -            ret = read(data_socket, buffer, BUFFER_SIZE);
> +            ret = read(data_socket, buffer, sizeof(buffer));
>              if (ret == \-1) {
>                  perror("read");
>                  exit(EXIT_FAILURE);
> @@ -999,16 +999,16 @@ main(int argc, char *argv[])
>  
>              /* Ensure buffer is 0\-terminated. */
>  
> -            buffer[BUFFER_SIZE \- 1] = 0;
> +            buffer[sizeof(buffer) \- 1] = 0;
>  
>              /* Handle commands. */
>  
> -            if (!strncmp(buffer, "DOWN", BUFFER_SIZE)) {
> +            if (!strncmp(buffer, "DOWN", sizeof(buffer))) {
>                  down_flag = 1;
>                  break;
>              }
>  
> -            if (!strncmp(buffer, "END", BUFFER_SIZE)) {
> +            if (!strncmp(buffer, "END", sizeof(buffer))) {
>                  break;
>              }
>  
> @@ -1020,7 +1020,7 @@ main(int argc, char *argv[])
>          /* Send result. */
>  
>          sprintf(buffer, "%d", result);
> -        ret = write(data_socket, buffer, BUFFER_SIZE);
> +        ret = write(data_socket, buffer, sizeof(buffer));
>          if (ret == \-1) {
>              perror("write");
>              exit(EXIT_FAILURE);
> @@ -1116,7 +1116,7 @@ main(int argc, char *argv[])
>  
>      /* Receive result. */
>  
> -    ret = read(data_socket, buffer, BUFFER_SIZE);
> +    ret = read(data_socket, buffer, sizeof(buffer));
>      if (ret == \-1) {
>          perror("read");
>          exit(EXIT_FAILURE);
> @@ -1124,7 +1124,7 @@ main(int argc, char *argv[])
>  
>      /* Ensure buffer is 0\-terminated. */
>  
> -    buffer[BUFFER_SIZE \- 1] = 0;
> +    buffer[sizeof(buffer) \- 1] = 0;
>  
>      printf("Result = %s\en", buffer);
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
