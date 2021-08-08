Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B55403E3CF1
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 00:11:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229903AbhHHWMD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 18:12:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229662AbhHHWMD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 18:12:03 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96CCAC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 15:11:43 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id u5-20020a17090ae005b029017842fe8f82so17818126pjy.0
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 15:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jcZdNQ77mjgfOvNNH+aefAL5pV7VR/nQ1H2/98iFf2k=;
        b=GO9mzGHkphSu3/WbdBLEfdgaqpwsEmhkbZcE4hZgcMQLvG4s0onwDirS2AvvaV3N4C
         5ZivVBYYqqJ3hWAjEZ24rfNqmEb7RNASBsLxEcw2F1QkgjxuLuCDVHKM02mX7sxoO5Ri
         6kxA5o//JMF+ZZIjbQyDdwT4w5IYE9QPOIhKWyE4MAOez42vpLgJy79gFUFq9PRzI0yG
         hNL1/vcNfCYFD2bQlKchj37etwsguU4rT3kQlLwih+TNi8LqlVm8PgprIIMpkxBTmdYW
         1N+pqUTGhlFPOeyJ8xcpn0cgblpnZgoc3Lx6+NF3S3XlAkT1V3QPou/OH8P1Ae67aSlQ
         NXww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jcZdNQ77mjgfOvNNH+aefAL5pV7VR/nQ1H2/98iFf2k=;
        b=a37YSbgiTUbF1iyNyQFzFHJx9ZuzS1aniOcZk/vZq6w9gigeCp6jUiZpPkcSe6FT7C
         AUlHK2OD1IqaDrNGIebDNfdmtE8jz622kN3/J6G0Cuxr9M0iOjUrpAUGGgOBkdFOsg+W
         YHAdKUsKRnMACD1OsPoSy3Uj4NWca8wSCUrRDC3NInHawZJmJXj5+FcPgL22SgOuqe2N
         EOFDX4mBB5ibDfU2ZX2FE7WYrOv6YuSvBfaGBRLwSYVYDWBmmHoQP5CGxchZQyNnpPdS
         C2SpBtJ8zURmaMIpzlBVtdFvBaS+jZVSZBUfzG5JT4MfkoT/f9cdTpOslBZC4voOkstS
         cBWw==
X-Gm-Message-State: AOAM530Hlu9QjCqhn3xUVN2nnDIf6urFleYkDzKGRj1Fn7TTpDYBVWjb
        UvR/zF+nx8zBLFH7syVi29/zbQYwW6o=
X-Google-Smtp-Source: ABdhPJzJphLQRhInDYR51/Vs6Szhdl45jyFKVgEV9hFvwRKjKEXy5H08WTqtEmc679ioz4navAdQPw==
X-Received: by 2002:a63:4c03:: with SMTP id z3mr319857pga.130.1628460702749;
        Sun, 08 Aug 2021 15:11:42 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id g11sm15789942pju.13.2021.08.08.15.11.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 15:11:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, "James O. D. Hunt" <jamesodhunt@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 10/23] getopt.3: Further clarification of optstring
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-11-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <eb5b8342-f6b6-86a2-7d0d-f7729996b128@gmail.com>
Date:   Mon, 9 Aug 2021 00:11:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-11-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello James and Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> From: "James O. D. Hunt" <jamesodhunt@gmail.com>
> 
> Explain that `optstring` cannot contain a semi-colon (`;`) character.
> 
> Also explain that `optstring` can include `+` as an option character,
> possibly in addition to that character being used as the first character
> in `optstring` to denote `POSIXLY_CORRECT` behaviour.
> 
> Signed-off-by: James O. D. Hunt <jamesodhunt@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/getopt.3 | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/getopt.3 b/man3/getopt.3
> index ce4c28088..315224c64 100644
> --- a/man3/getopt.3
> +++ b/man3/getopt.3
> @@ -130,7 +130,7 @@ A legitimate option character is any visible one byte
>  .BR ascii (7)
>  character (for which
>  .BR isgraph (3)
> -would return nonzero) that is not \(aq\-\(aq or \(aq:\(aq.
> +would return nonzero) that is not \(aq\-\(aq, \(aq:\(aq  or \(aq;\(aq.
>  If such a
>  character is followed by a colon, the option requires an argument, so
>  .BR getopt ()
> @@ -166,6 +166,14 @@ If the first character of
>  .B POSIXLY_CORRECT
>  is set, then option processing stops as soon as a nonoption argument is
>  encountered.
> +If \(aq+\(aq is not the first character of
> +.IR optstring ,
> +it is treated as a normal option.
> +If
> +.B POSIXLY_CORRECT
> +behaviour is required in this case
> +.I optstring
> +will contain two \(aq+\(aq symbols.
>  If the first character of \fIoptstring\fP is \(aq\-\(aq, then
>  each nonoption \fIargv\fP-element is handled as if it were the argument of
>  an option with character code 1.  (This is used by programs that were

Thanks. The patch is good and I applied it

@James: it would be helpful to explain in the commit
message how you verified these details.

@Alex: do not be shy of asking people to improve there commit
messages in this way :-).

See my modified commit message below.

Cheers,

Michael

    getopt.3: Further clarification of optstring
    
    Explain that `optstring` cannot contain a semi-colon (`;`)
    character.
    [mtk: verfiried with a small test program; see also posix/getopt.c
    in the glibc sources:
    
        if (temp == NULL || c == ':' || c == ';')
          {
            if (print_errors)
              fprintf (stderr, _("%s: invalid option -- '%c'\n"), argv[0], c);
            d->optopt = c;
            return '?';
          }
    ]
    
    Also explain that `optstring` can include `+` as an option
    character, possibly in addition to that character being used as
    the first character in `optstring` to denote `POSIXLY_CORRECT`
    behaviour.
    [mtk: verified with a small test program.]
    
    Test program below. Example runs:
    
    $ ./a.out -+
    opt = 43 (+); optind = 2
    Got plus
    $ ./a.out -';'
    ./a.out: invalid option -- ';'
    opt = 63 (?); optind = 2; optopt = 59 (;)
    Unrecognized option (-;)
    Usage: ./a.out [-p arg] [-x]
    
    Signed-off-by: James O. D. Hunt <jamesodhunt@gmail.com>
    Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
    Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>
    
    8x---8x---8x---8x---8x---8x---8x---8x---8x---8x---8x---
    #include <ctype.h>
    #include <sys/types.h>
    #include <stdio.h>
    #include <stdlib.h>
    #include <unistd.h>
    
    #define printable(ch) (isprint((unsigned char) ch) ? ch : '#')
    
    static void             /* Print "usage" message and exit */
    usageError(char *progName, char *msg, int opt)
    {
        if (msg != NULL && opt != 0)
            fprintf(stderr, "%s (-%c)\n", msg, printable(opt));
        fprintf(stderr, "Usage: %s [-p arg] [-x]\n", progName);
        exit(EXIT_FAILURE);
    }
    
    int
    main(int argc, char *argv[])
    {
        int opt, xfnd;
        char *pstr;
    
        xfnd = 0;
        pstr = NULL;
    
        while ((opt = getopt(argc, argv, "p:x+;")) != -1) {
            printf("opt =%3d (%c); optind = %d", opt, printable(opt), optind);
            if (opt == '?' || opt == ':')
                printf("; optopt =%3d (%c)", optopt, printable(optopt));
            printf("\n");
    
            switch (opt) {
            case 'p': pstr = optarg;                break;
            case 'x': xfnd++;                       break;
            case ';': printf("Got semicolon\n");    break;
            case '+': printf("Got plus\n"); break;
            case ':': usageError(argv[0], "Missing argument", optopt);
            case '?': usageError(argv[0], "Unrecognized option", optopt);
            default:
                      printf("Unexpected case in switch()\n");
                      exit(EXIT_FAILURE);
            }
        }

        if (xfnd != 0)
            printf("-x was specified (count=%d)\n", xfnd);
        if (pstr != NULL)
            printf("-p was specified with the value \"%s\"\n", pstr);
        if (optind < argc)
            printf("First nonoption argument is \"%s\" at argv[%d]\n",
                    argv[optind], optind);
        exit(EXIT_SUCCESS);
    }

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
