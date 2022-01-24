Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2399449AB19
	for <lists+linux-man@lfdr.de>; Tue, 25 Jan 2022 05:45:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231403AbiAYEXQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Jan 2022 23:23:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1320716AbiAYDOB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 Jan 2022 22:14:01 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C8DDC0604EA
        for <linux-man@vger.kernel.org>; Mon, 24 Jan 2022 15:27:55 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id e8so14740052wrc.0
        for <linux-man@vger.kernel.org>; Mon, 24 Jan 2022 15:27:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=c51PC4wAKzixtK8KWBcsJhJTAcbdkS1J3qElu+6Ozxs=;
        b=VFuY033MoVaWcNK1O6wGZjMnHAnrPYSMpGxBZDeY2PPVuoLEu3T6IxJUz6dJH4FRcV
         04r9hyWUG6uf/5wrak6AT5yuM368t3hHhJmggZgBJot2nm915D+scEXPJFkRdGTn+P9m
         TsYqIgEUwOuhKzF+AC2BEDjrISmzIkQD7zGf79MVi1epdttWwTMdoo+yZsF48y6bDIUf
         W03+NbLq084J/MdnlImY3ZkqUUR8E+DcBI+TKQIZ08Pdv9rUnUE7USJo27IUHMe5yrys
         J4R6eVZSDS3HwaOqT1i4XbU7wWIGtvrvaV5pkMSlFCsbBnHdrqVjqgc1pQg0LKEaop3Y
         DQHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=c51PC4wAKzixtK8KWBcsJhJTAcbdkS1J3qElu+6Ozxs=;
        b=lzJzsH5DY+fRDV80M3hAh9f6w5pAUjkBUVDc/fePKBHimtruT9uYtFMNM1A9i0hsCz
         fNBnNVtSEmc7QLMF/5d0QILsIeqxFUod+SU+40JbGEd8OPfCHISZM8H/zNVcQ8JH8gmC
         YMjCH5+RUz4TebH3ebSRGjqSJED78CvsixWIGQZwaytGeeXekcZ2cmRAbiZFnO7rzD16
         keqYNIU89NyG317ep32c6oPbuNz17eIbpHSVxJzOzBDhgQdteJnMRMjnxD8BScmGmWJf
         EEzHd6Ktuol7JrYSfz33ULbIFU6/FyKMua0MsubCivt5HbF8etcSMZAvsMZH5ELggBei
         ViPg==
X-Gm-Message-State: AOAM531mTfeXeqbmEw6FO9dXljtcczKPjr2cmPv9A6kcGRAChG7B5fcw
        j3bbLopnEi0g4ZvHEvi0/ADE6EX0G34=
X-Google-Smtp-Source: ABdhPJwQjwABrFZpvk2dvPrVTNJGW5jg74eWiT9aKpRU6Z2W/CdKPwxUa5mm5GX1YRrArO5sCweO3Q==
X-Received: by 2002:adf:e18c:: with SMTP id az12mr14406451wrb.322.1643066873687;
        Mon, 24 Jan 2022 15:27:53 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f12sm15038946wrs.1.2022.01.24.15.27.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jan 2022 15:27:53 -0800 (PST)
Message-ID: <3eb39fc3-3582-cb06-ed5d-b9e7b7af9188@gmail.com>
Date:   Tue, 25 Jan 2022 00:27:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2] strsep.3: port strtok(3) example
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220123002121.r6lldjw55n6zvcxi@tarta.nabijaczleweli.xyz>
 <2e4b6b15b6533b067aed6df1a2f4bf077c5d5184.1643064165.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <2e4b6b15b6533b067aed6df1a2f4bf077c5d5184.1643064165.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, наб!

On 1/24/22 23:43, наб wrote:
> Each time I use strsep I want something like this;
> this serves to snappily highlight the programming model,
> esp. in contrast to strtok_r ‒ I elided the long
> (and, frankly, gratuitous, even there) argv explanation
> ‒ if you need it, you can read the original
> (or the usage string, or the seven-line main)
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
All of the other patches look good to me.
This one I haven't reviewed it yet.
I'll probably apply them all tomorrow.

> v2: I accidentally a word in "multiple delimiters or empty tokens"

It made me laugh :p

Thanks,

Alex

> 
>  man3/strsep.3 | 50 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/man3/strsep.3 b/man3/strsep.3
> index fb5f7fd1a..3ce4fc35d 100644
> --- a/man3/strsep.3
> +++ b/man3/strsep.3
> @@ -118,6 +118,56 @@ This function modifies its first argument.
>  This function cannot be used on constant strings.
>  .IP *
>  The identity of the delimiting character is lost.
> +.SH EXAMPLES
> +The program below is a port of the one found in
> +.BR strtok (3),
> +which, however, doesn't discard multiple delimiters or empty tokens:
> +.PP
> +.in +4n
> +.EX
> +.RB "$" " ./a.out \(aqa/bbb///cc;xxx:yyy:\(aq \(aq:;\(aq \(aq/\(aq"
> +1: a/bbb///cc
> +         \-\-> a
> +         \-\-> bbb
> +         \-\->
> +         \-\->
> +         \-\-> cc
> +2: xxx
> +         \-\-> xxx
> +3: yyy
> +         \-\-> yyy
> +4:
> +         \-\->
> +.EE
> +.in
> +.SS Program source
> +\&
> +.EX
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <string.h>
> +
> +int
> +main(int argc, char *argv[])
> +{
> +    char *token, *subtoken;
> +
> +    if (argc != 4) {
> +        fprintf(stderr, "Usage: %s string delim subdelim\en",
> +                argv[0]);
> +        exit(EXIT_FAILURE);
> +    }
> +
> +    for (int j = 1; (token = strsep(&argv[1], argv[2])); j++) {
> +        printf("%d: %s\en", j, token);
> +
> +        while ((subtoken = strsep(&token, argv[3])))
> +            printf("\et \-\-> %s\en", subtoken);
> +    }
> +
> +    exit(EXIT_SUCCESS);
> +}
> +.EE
>  .SH SEE ALSO
>  .BR index (3),
>  .BR memchr (3),

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
