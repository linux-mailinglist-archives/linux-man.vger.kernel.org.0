Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 882872FCD10
	for <lists+linux-man@lfdr.de>; Wed, 20 Jan 2021 10:03:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729214AbhATJAL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jan 2021 04:00:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727143AbhATI7w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jan 2021 03:59:52 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A079C061757
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 00:50:59 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id a1so947134wrq.6
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 00:50:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xC9WeKeoax5DWLj28MWI/hv9RqCVFqTymI5urzoFJEk=;
        b=YWauVGhhx911IwnXjOJ1GNjQ0lFIPKOMxNy79mZxNhFRXncuurdxvRhX5B+fbApovW
         +ghtKMffcGHR6W1synDdeFlysorIgmWMoU40CuaKLwtJAzLpTHvu/0fhMjx3Xmk8QJdH
         mGCV59bVbmNBN9dM51mhtaiIgYp6LVbjmvnow19L3WIFDwUGsAQ+viO64ydWlSL8A6tg
         hnu6tu/n+rsKYttK3JlHN/LoUIAjp1QU6IJ1l5mkIavx5tW4dWCIgm/QLVF7kw5C9pGS
         591ZsFHvc9mcS3tGs0gggBS6Dw9Xd3ZCKuccDVxXN0v2yircxaAlG2Oj/lxKinQciO+J
         eiGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xC9WeKeoax5DWLj28MWI/hv9RqCVFqTymI5urzoFJEk=;
        b=uI5SJ8h2lX6VYjrXKCjmB9+ulGUQrXaKQv1T5JpUqo2mwllYvG5480O7xpGL7S9slm
         lfUBlHAyaxMOeYM58qOgGWE7G8sxjl5Nw7RLd9O2jVkRTFRIbrtj+T1/9jeQhmdW0PnX
         seOpst90gDrHj9DJ+jP0+zbC54Ll+YaEe0Yuq1VQGjeXL+1HzwvNYjpYd4oNYLBUHmLq
         o3b9mUi55Hf9btpAvQWOpLX44ONzK0/KYg5mN5lWCMjZW92Kdqf6zZ1ZgwOvnVSP1JMI
         /abl5dzj/UcT8NS7WafkWzQ50zo5IVLh6y7xnXGr7BYKQgW+hCxD6D9xW4nsQ9ngtb8C
         nLVw==
X-Gm-Message-State: AOAM530drqCjKWusDNo9wQpCgq9Z5bsyubOFCYbAAHDJ/YPEivoCfZNi
        mO5ljjtVx+uCplRvbg+et2g92f7ZuLQ=
X-Google-Smtp-Source: ABdhPJwUhG900ijchXWzExQ7uVaHm8iy2bZSEhS1VLJIZn3CIcgrkK2wCOlMItUl3pWVAbCX+3KmmA==
X-Received: by 2002:a5d:4d06:: with SMTP id z6mr8475246wrt.70.1611132657963;
        Wed, 20 Jan 2021 00:50:57 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id h5sm2833677wrp.56.2021.01.20.00.50.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 00:50:57 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2] posix.py: ffix: Correctly format URIs
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
 <20210110145745.4360-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7e480760-48c9-af90-5e2e-81e51d45834c@gmail.com>
Date:   Wed, 20 Jan 2021 09:50:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210110145745.4360-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/10/21 3:57 PM, Alejandro Colomar wrote:
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
>        ⟨http://www.fwi.uva.nl/~mes/jargon/h
>        /HackerWritingStyle.html⟩, for more information).   Older
>        documents  suggested inserting the prefix "URL:" just be‐
>        fore the URI, but this form has never caught on.
> 
> Enclose URIs in .UR/.UE,
> which encloses the URIs in between <> (or similar characters).
> It is especially important in this case,
> as the URIs are followed by '.'.
> 
> This also fixes the extraneous space that was used to
> separate the URIs from the final period.
> In some cases, the period ended in a line of its own.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  posix.py | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/posix.py b/posix.py
> index 55e401a..60271cc 100755
> --- a/posix.py
> +++ b/posix.py
> @@ -337,14 +337,16 @@ for file in sys.argv[2:]:
>        "Electrical and Electronics Engineers, Inc and The Open Group.\n"
>        "In the event of any discrepancy between this version and the original IEEE and\n"
>        "The Open Group Standard, the original IEEE and The Open Group Standard\n"
> -      "is the referee document. The original Standard can be obtained online at\n"
> -      "http://www.opengroup.org/unix/online.html .\n"
> +      "is the referee document.  The original Standard can be obtained online at\n"
> +      ".UR http://www.opengroup.org/unix/online.html\n"
> +      ".UE .\n"
>        ".PP\n"
>        "Any typographical or formatting errors that appear\n"
>        "in this page are most likely\n"
>        "to have been introduced during the conversion of the source files to\n"
> -      "man page format. To report such errors, see\n"
> -      "https://www.kernel.org/doc/man-pages/reporting_bugs.html .\n"
> +      "man page format.  To report such errors, see\n"
> +      ".UR https://www.kernel.org/doc/man-pages/reporting_bugs.html\n"
> +      ".UE .\n"
>        )
>  
>      text = "".join(lines)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
