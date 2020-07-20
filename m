Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59F03225B9D
	for <lists+linux-man@lfdr.de>; Mon, 20 Jul 2020 11:27:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727844AbgGTJ1k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Jul 2020 05:27:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727825AbgGTJ1j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Jul 2020 05:27:39 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C7C1C061794
        for <linux-man@vger.kernel.org>; Mon, 20 Jul 2020 02:27:39 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id f7so17113751wrw.1
        for <linux-man@vger.kernel.org>; Mon, 20 Jul 2020 02:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Qp9055O9VAeQa0B87E9chZZ5vuGXeLYjtDGCOdNlAfw=;
        b=U/DMKm0A/lOktQn9AvY/sDEXPkhPQ3hRXkpKGMApUESE/LR5aml08/xerWRyyhZW9Q
         9Acrs1Fek3QVGRo7gBUP9gx4UL3MokIUtTH1CgFYIXiVrNdzgQzTz4pu8gnRJ/pwmPKI
         ww55w0I+oA/KtOE8nqaopQttncg9HJQocxz6JodfMN9JIAn8YpzX9IxtCuMVahWQIFTZ
         VMfdw1Fz9x1EUtK6Gn/F/INfIP72ebOqKaSiBZOuBJhnHjVvAkltN+pzvapCeZirA1ME
         adQ+oaAyA16vvv+Vz7Cr4eKqLYd2T7z7JJ9bR68BSN1bMhH2RkgjsNZwaQdyIhpXD4X8
         WwnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Qp9055O9VAeQa0B87E9chZZ5vuGXeLYjtDGCOdNlAfw=;
        b=FqGkq9BW8kxQH2SPm6HldllojbZLjbokyo/dzHWQIhWyQbPpa6Z7PEj7n0VPFjAk6o
         RenTzXff2TNyZmR5DTZPYyRVYw33eAV3+/kO7cZm2LPw70+p+JnI3bvqBDiUk6831qJi
         LyLsL++i7E/pAEyBlOlsLbeWyl0yCnkUUilYcNRPF8HiCfITWmHCRMPM7F08D6y9pJvu
         VJPxOhoZT3+CqfoAtvUUn7iD6BVIx9jkvnyMwR/elDgjYHOpoFyBbx1wCdBn59W91iTB
         O9sgA3y+3wKgvNbsbgs89aEv/168lFgVRNFZxS0mglsyliaXCZuI3EovSETunyPZyDNQ
         1NGA==
X-Gm-Message-State: AOAM532wOByvxlrSf0nUf0eozcShXkdaPbkgnu/cfbe2pYX7Tu4mKLsv
        eQ9yN3KtEFJomBG/CUlpaJBejLdq
X-Google-Smtp-Source: ABdhPJw2MfHcR9Sq41o2kpeyK/X9BqwbhKMf1r63lwGtS9LXJ/J8eyzeXzsbaANVtnB1bgS/rQMSSg==
X-Received: by 2002:adf:efc9:: with SMTP id i9mr22623287wrp.77.1595237257992;
        Mon, 20 Jul 2020 02:27:37 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id c17sm17646151wrc.42.2020.07.20.02.27.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 02:27:37 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] proc.5: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200720055927.4775-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a77daed1-9f04-1770-f754-76cae5ee5feb@gmail.com>
Date:   Mon, 20 Jul 2020 11:27:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200720055927.4775-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/20/20 7:59 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks, Jakub. Patch applied.

Cheers,

Michael

> ---
>  man5/proc.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man5/proc.5 b/man5/proc.5
> index 0dbc05228..4cffd9718 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -1395,7 +1395,7 @@ is shown unescaped except for newline characters, which are replaced
>  with an octal escape sequence.
>  As a result, it is not possible to determine whether the original
>  pathname contained a newline character or the literal
> -.I \ee012
> +.I \e012
>  character sequence.
>  .IP
>  If the mapping is file-backed and the file has been deleted, the string
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
