Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6683E2F03B6
	for <lists+linux-man@lfdr.de>; Sat,  9 Jan 2021 22:08:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726080AbhAIVHx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 9 Jan 2021 16:07:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726001AbhAIVHw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 9 Jan 2021 16:07:52 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D1D2C061786
        for <linux-man@vger.kernel.org>; Sat,  9 Jan 2021 13:07:12 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id t30so12377497wrb.0
        for <linux-man@vger.kernel.org>; Sat, 09 Jan 2021 13:07:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wfYwJn1Bl6m65Fh0TO2fAwFStUViBa82pzo24JDyO98=;
        b=NxR43DuXQDi6RPt+fo3XnLdZv8UFVlKZMYhbN2Ksr8e4wyrCuGuE9q5rUGaMDzvquY
         1zH25zWGBZE+QT829ZQ7FJiLftoFwFtrdhSZa4qKM9q2ATuGqqJL7Ner1fjBox3je2QF
         XkXuCBLCBuxb+7vEqeoK11uvG2pUOI5hkpsX5gclCl7EOf1iCvf1z5Tyz5cYOCivi0zW
         nOLly4cLpoQ/epJ7/Igyy721DLjTFscS2GcksYH+MrPAObly0DC6S+KK4eTg4dmQszTu
         8x4nXF8k4Yj7pKtiFHv4QBHOXrJM7LDz85FRCTfS7qtgUQLY9jJGe1oXIm45X5uAOIJ8
         jyRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wfYwJn1Bl6m65Fh0TO2fAwFStUViBa82pzo24JDyO98=;
        b=L0CSgu7Wlefx6tCVxsdVH/XWLYtvMMDjXi9aQugUUiUIZL9cYp3qMEN7+36h/VOJuc
         1qBa/YCIHwLtvkelDg59mQkqjNh+xh4MRKof4zgvSho7SFyMVYg9HiKWpjN+rSIWRKRN
         /Ii/Ders7wrkpQ+3rmdA18JGFa0ZBqC7rjNfMJ9AVj4JxjYcWHtoIyzUWc/spDjnFQ+N
         4U9uuWPzQ14C55E9DNGFoedt9QyinqT48EsHjWk/++dbShWup6PhQIiPA25jurmksc49
         PQebCTD0//Lwd5WF3WviD8wEpzsHUi3uyYTKqTvCn8nhq+h/bOf3E4YJ/HzK/cQ6tBxi
         8bHw==
X-Gm-Message-State: AOAM533H1EOANUu5fKIwnxPOoc28d052BtWhpmQsWPrWSeQX7rOS7Lt6
        F/qO+B4ZSbKOo3b9RKQWbuM=
X-Google-Smtp-Source: ABdhPJz2Hz/dGUfmYxh4JPAp7Kzxh56g2a+Y8FateJ6DoeylFWGX+Y0cVJnS8Jrca31ptx7NAOwO+A==
X-Received: by 2002:a5d:678c:: with SMTP id v12mr9859687wru.115.1610226430479;
        Sat, 09 Jan 2021 13:07:10 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id u9sm17167797wmb.32.2021.01.09.13.07.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jan 2021 13:07:09 -0800 (PST)
Subject: Re: [PATCH] posix.py: ffix: Correctly format URIs
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <a1d2172c-3880-ac79-7df7-0f5fb0bc65af@gmail.com>
Date:   Sat, 9 Jan 2021 22:07:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael, Branden,

On 1/9/21 8:58 PM, Alejandro Colomar wrote:
> $ man 7 uri 2>/dev/null \
>   |sed -n '/Writing a URI/,/^$/p';
>    Writing a URI
>        When  written, URIs should be placed inside double quotes
>        (e.g., "http://www.kernel.org"), enclosed in angle brack‐
>        ets  (e.g.,  <http://lwn.net>),  or  placed  on a line by
>        themselves.  A warning for those who  use  double-quotes:
>        never  move  extraneous  punctuation  (such as the period
>        ending a sentence or the comma in a list) inside  a  URI,
>        since  this  will  change the value of the URI.  Instead,
>        use angle brackets instead, or switch to a quoting system
>        that  never  includes extraneous characters inside quota‐
>        tion marks.  This latter  system,  called  the  'new'  or
>        'logical'  quoting  system by "Hart's Rules" and the "Ox‐
>        ford Dictionary for Writers and  Editors",  is  preferred
>        practice  in Great Britain and hackers worldwide (see the
>        Jargon  File's   section   on   Hacker   Writing   Style,
>        ⟨http://www.fwi.uva.nl/~mes/jargon/h/HackerWritingStyle.html⟩,
>        for more information).   Older
>        documents  suggested inserting the prefix "URL:" just be‐
>        fore the URI, but this form has never caught on.
> 
> Enclose URIs in <>.  It is especially important in this case, as
> the URIs are followed by '.'.
> From "" or <>, I prefer <>, as they are less used in other
> contexts, so they are more easily read as URIs.
> 
> This also fixes the extraneous space that was used to separate
> the URIs from the final period.
> In some cases, the period ended in a line of its own.
> 
> Also enclose them in [.UR/.UE].

I was wondering if, instead of hardcoding <>,
it would be possible to make .UR/.UE embed those characters.
It would make the code more generic, but I don't know if it is feasible
or desirable.

Thanks,

Alex

> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hello Michael,
> 
> This patch is for man-pages-posix.git.
> I found that the link in uri(7) is broken,
> but I found that same document here:
> http://www.catb.org/jargon/html/writing-style.html
> I'll patch uri.7 to fix that link.
> 
> That was a very interesting read.
> I got why you tend to use "xxxx (xxxx.)" and not "xxxx (xxxx).",
> the latter being _much_ more common in Spanish (and other languages)
> (actually, I've never read the former in Spanish).>
> Regards,
> 
> Alex
> 
>  posix.py | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/posix.py b/posix.py
> index 55e401a..27f6207 100755
> --- a/posix.py
> +++ b/posix.py
> @@ -337,14 +337,16 @@ for file in sys.argv[2:]:
>        "Electrical and Electronics Engineers, Inc and The Open Group.\n"
>        "In the event of any discrepancy between this version and the original IEEE and\n"
>        "The Open Group Standard, the original IEEE and The Open Group Standard\n"
> -      "is the referee document. The original Standard can be obtained online at\n"
> -      "http://www.opengroup.org/unix/online.html .\n"
> +      "is the referee document.  The original Standard can be obtained online at\n"
> +      ".UR <http://www.opengroup.org/unix/online.html>\n"
> +      ".UE .\n"
>        ".PP\n"
>        "Any typographical or formatting errors that appear\n"
>        "in this page are most likely\n"
>        "to have been introduced during the conversion of the source files to\n"
> -      "man page format. To report such errors, see\n"
> -      "https://www.kernel.org/doc/man-pages/reporting_bugs.html .\n"
> +      "man page format.  To report such errors, see\n"
> +      ".UR <https://www.kernel.org/doc/man-pages/reporting_bugs.html>\n"
> +      ".UE .\n"
>        )
>  
>      text = "".join(lines)
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
