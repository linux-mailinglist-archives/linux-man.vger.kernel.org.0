Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E41774CEC8C
	for <lists+linux-man@lfdr.de>; Sun,  6 Mar 2022 18:36:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbiCFRh3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Mar 2022 12:37:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229789AbiCFRh3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Mar 2022 12:37:29 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAA383EAA0
        for <linux-man@vger.kernel.org>; Sun,  6 Mar 2022 09:36:35 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id k24so10477559wrd.7
        for <linux-man@vger.kernel.org>; Sun, 06 Mar 2022 09:36:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=99hajOfsL+xskYs5hkJz6spVaUBr14VaY55sEjixenk=;
        b=Krsct1NEgqWk/7GXFjsJHkqzwDOn/LCxP3hjAXicdT9OqdptT0BWA+G7fBGMGAtD89
         1OyI7mRYJMLSyrVz9jqFR26/Gn8P+pS1vxykZeRCCq0SQTeQPsG67l4xPvqFhNGBztE7
         XDKVsFi2ENy+3pXVLtiy3aD62Uo3gqty+hbVrAkaKfSjeP3xZCm6Oz2IBcU59qL7adj6
         ClJp3s+g2htH8fz40OWlW5JENoxKYc6fZpFmhMHVR1dv3YGw8JBmAcZn7+N9fzKhF2kI
         uBgtgLHhaTPdklky5BvXMDUr0dWjLbqRc1gF7I+TVYvKI9ktglL78QGqnkgSDrTZPkEy
         gz7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=99hajOfsL+xskYs5hkJz6spVaUBr14VaY55sEjixenk=;
        b=8GUt7cJl59XXaYRfg5bhnRQ3A1hKoJMZOu3XPMf2609SmU0Jqj1kJw1KD6MSJ275bm
         eCldKphjQ5Eu6rmzCMmy4b3A/QIWHrITRQGt1QO9xkzADj8thYwMAPctPhajV80M8TUu
         9bfim6rfgTgstI6+4+2re/IGTADa+AsHIAkg3YquOQG844exa3I3Ib9u/st9/AKufFAG
         XDeqjWoI2kTuSs0r70y07xYlAqejuqGMHfq5l/37yEeunau8qjUrz/n8sr+3M6Co1jq5
         m7ObuAUhh4NU2esot1kujQSrAdG6W2ug1xXVwyt8ghjy38KJ+/n/ewnXodq/X7fpvvhk
         W7eg==
X-Gm-Message-State: AOAM5333JyLzhpQ85mooleaRK/En2liebpyIFNqAHgpeebWWIkjo2maD
        S+xWY8NR8mB+crWtlgKwhdU=
X-Google-Smtp-Source: ABdhPJw4HfTkxr53V9dDy8LO9wMRG7r6GHagyeKzVNBh0JnIVXYpwKB2hu2fcQxAeHrCRuEV+36HvQ==
X-Received: by 2002:a05:6000:1e12:b0:1f1:e6df:7633 with SMTP id bj18-20020a0560001e1200b001f1e6df7633mr3078212wrb.609.1646588194169;
        Sun, 06 Mar 2022 09:36:34 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o12-20020a5d62cc000000b001f048bc25dfsm9161855wrv.67.2022.03.06.09.36.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Mar 2022 09:36:33 -0800 (PST)
Message-ID: <6105843b-20c6-bdab-a2b9-b3857bb1dd63@gmail.com>
Date:   Sun, 6 Mar 2022 18:36:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH] printf.3: fix prototype indentation
Content-Language: en-US
To:     Mike Frysinger <vapier@gentoo.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220305181001.20757-1-vapier@gentoo.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220305181001.20757-1-vapier@gentoo.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mike,

On 3/5/22 19:10, Mike Frysinger wrote:
> Signed-off-by: Mike Frysinger <vapier@gentoo.org>
> ---
>  man3/printf.3 | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/man3/printf.3 b/man3/printf.3
> index 4fa1f11f3c25..e39fb069b133 100644
> --- a/man3/printf.3
> +++ b/man3/printf.3
> @@ -47,19 +47,19 @@ vsprintf, vsnprintf \- formatted output conversion
>  .BI "int sprintf(char *restrict " str ,
>  .BI "            const char *restrict " format ", ...);"
>  .BI "int snprintf(char *restrict " str ", size_t " size ,
> -.BI "            const char *restrict " format ", ...);"
> +.BI "             const char *restrict " format ", ...);"
>  .PP
>  .B #include <stdarg.h>
>  .PP
>  .BI "int vprintf(const char *restrict " format ", va_list " ap );
>  .BI "int vfprintf(FILE *restrict " stream ,
> -.BI "            const char *restrict " format ", va_list " ap );
> +.BI "             const char *restrict " format ", va_list " ap );
>  .BI "int vdprintf(int " fd ,
> -.BI "            const char *restrict " format ", va_list " ap );
> +.BI "             const char *restrict " format ", va_list " ap );
>  .BI "int vsprintf(char *restrict " str ,
> -.BI "            const char *restrict " format ", va_list " ap );
> +.BI "             const char *restrict " format ", va_list " ap );
>  .BI "int vsnprintf(char *restrict " str ", size_t " size ,
> -.BI "            const char *restrict " format ", va_list " ap );
> +.BI "              const char *restrict " format ", va_list " ap );
>  .fi
>  .PP
>  .RS -4

Those indents are intentional.  See
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=f2667a721278baa6f3dda3a2a42e741ec7ba276b>.

And see man-pages(7):

FORMATTING AND WORDING CONVENTIONS
       [...]

       In the SYNOPSIS, a long function prototype may need to be
       continued  over  to the next line.  The continuation line
       is indented according to the following rules:

       1. [...]

       2. But, where multiple functions in the SYNOPSIS  require
          continuation  lines,  and the function names have dif‐
          ferent lengths, then align all continuation  lines  to
          start  in the same column.  This provides a nicer ren‐
          dering in PDF output  (because  the  SYNOPSIS  uses  a
          variable  width font where spaces render narrower than
          most characters).  As an example:

              int getopt(int argc, char * const argv[],
                         const char *optstring);
              int getopt_long(int argc, char * const argv[],
                         const char *optstring,
                         const struct option *longopts, int *longindex);


Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
