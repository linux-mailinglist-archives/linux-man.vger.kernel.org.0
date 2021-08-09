Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C9483E404B
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 08:40:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233256AbhHIGlM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Aug 2021 02:41:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233234AbhHIGlL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Aug 2021 02:41:11 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B807FC0613CF
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 23:40:50 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id f9-20020a05600c1549b029025b0f5d8c6cso13687431wmg.4
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 23:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=v77ihKvNuwc9Y6JOU+qouViD22Bl9AyCxQMf4xy9dyw=;
        b=ganxY3kOdffCHd8SVReRJyP/qLpFiXMG5xrXa1KC9WBwF/Hcjoz2E3LAB6qmCT7p7g
         Fr5jr+VSGKD9qUky4p22UYVhaxa2PPkOovGr+ePubfvJMwf+3zv0u6rd4vBvD9skjlfl
         tNEYbWUePrXqWBEUzYg1ciRIdV1qrm5JCiaP7Az1ZiXwSZTk8WynohvhW5mMgyg6x8ZP
         3xO7kcc4pBB+2iYgIcn3xp9ToiodjUpGl+agdoiCvkHVg0VNpS2vmRD1ktMhWU92L3Eb
         becIJsZjNAwy2SHquTmI9y+lUuhf8PwajDX2TbIuqivciNQgFEAKCrRGm872EDQoeLnF
         MaXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=v77ihKvNuwc9Y6JOU+qouViD22Bl9AyCxQMf4xy9dyw=;
        b=G39o2x+MMmS7kI2FlYT9I0ScGo2XsmUhbbk3VDXm69KGoPiWrT5UNo9gasdDaQX+0c
         DIuYGuCNeVS+98ABRXEuXKs/e7rOZ6FA+QSu9/hlUeLAq57DfLr++NZSDXN0Ckon2KNp
         P4X/HhaSTc4mgvha4YHa48GjL9Sgm+iSliYNRQtg/wXRNSRRacTSwqDkyvGZDDRZWS5M
         K8dkHFZFSUaGV7Evot3B0KXczLo7vjZvAtpaKrbw3PM78+VjNazu8Qmv6KIUXXCfhQbU
         rdDmLzLMpXjBemjUePAL6Jy5Ake+asaY9FH3QVz9lFr+4/WgNImBSgweb/fU+9ycpba5
         d9nQ==
X-Gm-Message-State: AOAM530rqTaVC6MFqJOJgK8xWu6aTCJH4A4JUBTQTCRd3JCfXJSdnk79
        ORvcW5Ge3UHzdtwlnzM7dPsuE/85x/E=
X-Google-Smtp-Source: ABdhPJzGnIo6ne1nY5iZVqkABkNADGtXQuoeiMGtpiRrfZDwoqNq6OIJZqSlzOILB3qnp1GD7wzjwQ==
X-Received: by 2002:a05:600c:3795:: with SMTP id o21mr15068021wmr.90.1628491249391;
        Sun, 08 Aug 2021 23:40:49 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id p14sm7329367wro.3.2021.08.08.23.40.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 23:40:49 -0700 (PDT)
Subject: Re: [PATCH 10/23] getopt.3: Further clarification of optstring
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "James O. D. Hunt" <jamesodhunt@gmail.com>,
        linux-man@vger.kernel.org
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-11-alx.manpages@gmail.com>
 <eb5b8342-f6b6-86a2-7d0d-f7729996b128@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d9ba887c-172a-ba33-1d1f-0f3e61fd08de@gmail.com>
Date:   Mon, 9 Aug 2021 08:40:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <eb5b8342-f6b6-86a2-7d0d-f7729996b128@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 8/9/21 12:11 AM, Michael Kerrisk (man-pages) wrote:
> 
> Thanks. The patch is good and I applied it
> 
> @James: it would be helpful to explain in the commit
> message how you verified these details.
> 
> @Alex: do not be shy of asking people to improve there commit
> messages in this way :-).

Yes, I should :-)


> 
> See my modified commit message below.
> 
> Cheers,
> 
> Michael
> 
>      getopt.3: Further clarification of optstring
>      
>      Explain that `optstring` cannot contain a semi-colon (`;`)
>      character.
>      [mtk: verfiried with a small test program; see also posix/getopt.c
>      in the glibc sources:
>      
>          if (temp == NULL || c == ':' || c == ';')
>            {
>              if (print_errors)
>                fprintf (stderr, _("%s: invalid option -- '%c'\n"), argv[0], c);
>              d->optopt = c;
>              return '?';
>            }
>      ]
>      
>      Also explain that `optstring` can include `+` as an option
>      character, possibly in addition to that character being used as
>      the first character in `optstring` to denote `POSIXLY_CORRECT`
>      behaviour.
>      [mtk: verified with a small test program.]
>      
>      Test program below. Example runs:
>      
>      $ ./a.out -+
>      opt = 43 (+); optind = 2
>      Got plus
>      $ ./a.out -';'
>      ./a.out: invalid option -- ';'
>      opt = 63 (?); optind = 2; optopt = 59 (;)
>      Unrecognized option (-;)
>      Usage: ./a.out [-p arg] [-x]
>      
>      Signed-off-by: James O. D. Hunt <jamesodhunt@gmail.com>
>      Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>      Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>
>      
>      8x---8x---8x---8x---8x---8x---8x---8x---8x---8x---8x---
>      #include <ctype.h>
>      #include <sys/types.h>
>      #include <stdio.h>
>      #include <stdlib.h>
>      #include <unistd.h>
>      
>      #define printable(ch) (isprint((unsigned char) ch) ? ch : '#')
>      
>      static void             /* Print "usage" message and exit */
>      usageError(char *progName, char *msg, int opt)
>      {
>          if (msg != NULL && opt != 0)
>              fprintf(stderr, "%s (-%c)\n", msg, printable(opt));
>          fprintf(stderr, "Usage: %s [-p arg] [-x]\n", progName);
>          exit(EXIT_FAILURE);
>      }
>      
>      int
>      main(int argc, char *argv[])
>      {
>          int opt, xfnd;
>          char *pstr;
>      
>          xfnd = 0;
>          pstr = NULL;
>      
>          while ((opt = getopt(argc, argv, "p:x+;")) != -1) {
>              printf("opt =%3d (%c); optind = %d", opt, printable(opt), optind);
>              if (opt == '?' || opt == ':')
>                  printf("; optopt =%3d (%c)", optopt, printable(optopt));
>              printf("\n");
>      
>              switch (opt) {
>              case 'p': pstr = optarg;                break;
>              case 'x': xfnd++;                       break;
>              case ';': printf("Got semicolon\n");    break;
>              case '+': printf("Got plus\n"); break;
>              case ':': usageError(argv[0], "Missing argument", optopt);
>              case '?': usageError(argv[0], "Unrecognized option", optopt);
>              default:
>                        printf("Unexpected case in switch()\n");
>                        exit(EXIT_FAILURE);
>              }
>          }
> 
>          if (xfnd != 0)
>              printf("-x was specified (count=%d)\n", xfnd);
>          if (pstr != NULL)
>              printf("-p was specified with the value \"%s\"\n", pstr);
>          if (optind < argc)
>              printf("First nonoption argument is \"%s\" at argv[%d]\n",
>                      argv[optind], optind);
>          exit(EXIT_SUCCESS);
>      }
> 

Nice!

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
