Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB42A4834BE
	for <lists+linux-man@lfdr.de>; Mon,  3 Jan 2022 17:25:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232926AbiACQZu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jan 2022 11:25:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231721AbiACQZu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jan 2022 11:25:50 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E132C061761
        for <linux-man@vger.kernel.org>; Mon,  3 Jan 2022 08:25:50 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id o3so12690557wrh.10
        for <linux-man@vger.kernel.org>; Mon, 03 Jan 2022 08:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=5TUTOIbGtAccmFwjW0uyU0jG5WfoXov86n2kgyMVDoU=;
        b=EUxdgq3WQYD6L5TjNk+Mw3sGiffQe5NClTiGiiCH1LWxl8q3ma/cSWLl6fF3L0PgNb
         NjLkAl5+e/LnGwCJSiVqUhpAVw66+ULBKBc6cUATWJjCMq/L2wSOe9cYsOEkqzJvSxth
         z6qfcOuT07NHJwfKk+M3H0o6eJZNN30h47USISM+cyeviT/YP++Jap5rLridHSxYIMK1
         KzuWYRS+ZTHm3UzXo11zE6ltMpBWeUqYQ6w+aQmgzb/EmiBkVfZyP8YEawPB2jY4RZ1c
         KEulcT4BoT3I5/CnLOZSRulZkGYsx/X2lYAjPXOeSOSaCTMGLMUrMwdWBGPEjGMevsj9
         uxrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5TUTOIbGtAccmFwjW0uyU0jG5WfoXov86n2kgyMVDoU=;
        b=aj2V1OoSSH2LZUckDpLbErWdVfJ5aEmwHo1mStOf9xEwhoKaNsT0CniLYNx4IkS+d0
         y0xVCwbuA1duixQ6BX5994rAH+Aj2rWYyBJ/ZSt0a/RgB1XhkIQihhdbMHw6hVSvZkQg
         mD4YYJxrhWEGP9u1TXtgBDvpO4Sw3ZwMOKgbOCusL/oEr3H4CZrDsmN8pCBfjKWVpSXU
         kNgpLFj24/6NeAKSq1xaAk8THKiyRp2dh9llm2/kMYnNYOJxp/u03pDTt6GkHUUQsoh4
         rHoqH0o3TSXiRt6GGjTg2ideUPTZhF8SCTQanWJhiE7j9Lp9l0kgmK+guDrYpRJWDou+
         fVoA==
X-Gm-Message-State: AOAM531xLEiuqe3n2HRTHduB3iDBERNTSRKWBvREgxU+JtxkOqdpuuXY
        0dZsLKC7p/NUfLm3J/P45i0=
X-Google-Smtp-Source: ABdhPJzfG7xR9o6DaSH/fhkOQyy9Q+B3tDidcpZEKiWIigr6PfQXCHI82/e/tOo8O5UB+RWyl6rOrg==
X-Received: by 2002:adf:d213:: with SMTP id j19mr38945476wrh.325.1641227148697;
        Mon, 03 Jan 2022 08:25:48 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o64sm34457979wme.28.2022.01.03.08.25.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 08:25:48 -0800 (PST)
Message-ID: <dbc16bd0-ea7e-cffa-e142-ec773873dac7@gmail.com>
Date:   Mon, 3 Jan 2022 17:25:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 2/3] tee.2: use proper types in example, declare variables
 at point-of-use
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <a59610f1d397bf532e4ce46481f439ac089fb05e.1641224016.git.nabijaczleweli@nabijaczleweli.xyz>
 <2b35693db4d1e63c41b0decf949d08f1966e7ad7.1641224016.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <2b35693db4d1e63c41b0decf949d08f1966e7ad7.1641224016.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, наб!

I like the change to use ssize_t, but I prefer C89 declarations of top 
of the function, with the only exception of C99 loop iterators, which we 
do use.  Could you please change the patch accordingly?

Thanks,

Alex

On 1/3/22 16:34, наб wrote:
> ---
>   man2/tee.2 | 14 +++++---------
>   1 file changed, 5 insertions(+), 9 deletions(-)
> 
> diff --git a/man2/tee.2 b/man2/tee.2
> index 14a927c93..17b93882d 100644
> --- a/man2/tee.2
> +++ b/man2/tee.2
> @@ -163,15 +163,12 @@ Tue Oct 28 10:06:00 CET 2014
>   int
>   main(int argc, char *argv[])
>   {
> -    int fd;
> -    int len, slen;
> -
>       if (argc != 2) {
>           fprintf(stderr, "Usage: %s <file>\en", argv[0]);
>           exit(EXIT_FAILURE);
>       }
>   
> -    fd = open(argv[1], O_WRONLY | O_CREAT | O_TRUNC, 0644);
> +    int fd = open(argv[1], O_WRONLY | O_CREAT | O_TRUNC, 0644);
>       if (fd == \-1) {
>           perror("open");
>           exit(EXIT_FAILURE);
> @@ -181,9 +178,8 @@ main(int argc, char *argv[])
>           /*
>            * tee stdin to stdout.
>            */
> -        len = tee(STDIN_FILENO, STDOUT_FILENO,
> -                  INT_MAX, SPLICE_F_NONBLOCK);
> -
> +        ssize_t len = tee(STDIN_FILENO, STDOUT_FILENO,
> +                          INT_MAX, SPLICE_F_NONBLOCK);
>           if (len < 0) {
>               if (errno == EAGAIN)
>                   continue;
> @@ -197,8 +193,8 @@ main(int argc, char *argv[])
>            * Consume stdin by splicing it to a file.
>            */
>           while (len > 0) {
> -            slen = splice(STDIN_FILENO, NULL, fd, NULL,
> -                          len, SPLICE_F_MOVE);
> +            ssize_t slen = splice(STDIN_FILENO, NULL, fd, NULL,
> +                                  len, SPLICE_F_MOVE);
>               if (slen < 0) {
>                   perror("splice");
>                   break;

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
