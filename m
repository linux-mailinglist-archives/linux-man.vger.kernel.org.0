Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 861982F03FF
	for <lists+linux-man@lfdr.de>; Sat,  9 Jan 2021 23:10:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726198AbhAIWKI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 9 Jan 2021 17:10:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726196AbhAIWKI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 9 Jan 2021 17:10:08 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07EEDC061786
        for <linux-man@vger.kernel.org>; Sat,  9 Jan 2021 14:09:28 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id c124so10552742wma.5
        for <linux-man@vger.kernel.org>; Sat, 09 Jan 2021 14:09:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LZbSlmYU/qbIiOM5ABflD6IpVAsf1b3jDI2JgadmgV8=;
        b=hJZrh3c5hvY6ySsgtHvnoHKy3XggsxjOnPERabplRmGyisRDlxEn2vG/tPapZqaz5L
         GbF2X8R3RaJXQfiXT/nZ1TUNaIBJpMZz2N7LYIbVHQiapJGa3fEaAIGAs3Vec6KNk6NK
         raIuaOVdkXMPS71suMjmNzBDx4Yzfr73kofRkPCuDwIkqIrGbpeJN74j+coN7F7cWTch
         y9DQxC4Ai+M+hjMIi05n1vAl32vR0SoPvAF08tZ2p0tCg6FDWFb4Z88BYFDcBAhktrBU
         rR05A3/sw2sCp7qgOif6h64KV9GEYMEy2z3y14kiDF+sMitEsC4IJIugSVYfxAAYbhbF
         Hd5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LZbSlmYU/qbIiOM5ABflD6IpVAsf1b3jDI2JgadmgV8=;
        b=EF3P/UMzU/vP31xY1aR1ddHFbCE68k3f/7fXu1rcJBv0qwiJpBAOexiJwI6OoIF+du
         X/aLcFdfxpz9f841sUSBa7dNX5FyEHtoXknfG/C59Rwwgk+HNfOHI739kEhnUWmCoKEt
         k6hWxXM+/6fb/oBUxSojnnNuc+NqDbGA5gnuchO+Hex6/LnPT2dPkgOwWUeofFhfzLNA
         t9JSDff399/L51LX46CW6W2IwFjMeSgfN4Zl644we8T0YY+FgrROfDD5NMd0jOB8usYl
         jwa2qGxC1CwTDdxBaNtJX4cyLP4pFFn4LqLtuaZZPMP6woydqjKFD39Jf1IJ90Qcx9iH
         tVjw==
X-Gm-Message-State: AOAM532mWkCVU0Zs3v60CsbSCD6FhlnYc8bSveXfsWprX3pNDSqV1dh7
        Rz1UsSGyCHgH8ZVVycdKVpkK7V1q0CI=
X-Google-Smtp-Source: ABdhPJx2grMSjR1H8IWBSjeM5KCUQPLy2jWlpEfi0TjVSuQFDAebHlu4dJSYCG7u8QRRhXRtVKHAbw==
X-Received: by 2002:a7b:cc16:: with SMTP id f22mr8339087wmh.131.1610230166710;
        Sat, 09 Jan 2021 14:09:26 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id b7sm17869321wrv.47.2021.01.09.14.09.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jan 2021 14:09:26 -0800 (PST)
Subject: Re: [PATCH] posix.py: ffix: Correctly format URIs
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <206c9ab7-81d1-7d9b-7236-f87a019d7425@gmail.com>
Date:   Sat, 9 Jan 2021 23:09:25 +0100
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
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>


Hi Michael,

I forgot to setup the email.
Please fix it.

Thanks,

Alex

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
> (actually, I've never read the former in Spanish).
> 
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
