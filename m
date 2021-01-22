Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE4EF300355
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 13:39:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727293AbhAVMiW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jan 2021 07:38:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727401AbhAVMiC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jan 2021 07:38:02 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35129C061788
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 04:37:22 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id e15so4218076wme.0
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 04:37:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7KxLMuJy+mLp1v88DST7KqRnydpnXb+i9XIZmxOm+7s=;
        b=FYjuM7ddPj65RhaodItdqC413GdvbQvl52XIPIV1sIeWn4297Dw1cm+xicvUnFVFCC
         uoK9b39oQZ2/lnE+UnbK131wK3Z9mbFmmqr4LwsDXGoyrH9WX4vWRA3Shfo1FS/+BPVv
         eFJ1/sSJgRpvc5gWPemI3yO3W+AWvPcsotLMh5QebC6bWm7PmA5HRSe/ewnQAls6lmqa
         Kd3dAz4Usr1zYTN29WkmvDN6fO0kUi0JnFlPnkw2t43p7as3mDlI1V2aQphmfY6jINYr
         BNhVEeSzEdjKN8/JmBhAuVIJ9RoYCWnNED49ZCnutctdPpVubimF7oZsNsWCyAhZHbzF
         l6yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7KxLMuJy+mLp1v88DST7KqRnydpnXb+i9XIZmxOm+7s=;
        b=WBNjK/rqb/+8MNF84nBSiYvDmQ6btQpFsxsp3bLjeYeNTg26JB3d9OtdnaMUFPpEZh
         4+py4izJWIHQ4eMvpVdneSisTrWoSKukl+HKzA4RAT78AHhjWPK4iuUglgB7KuKKrDLh
         vyia4rsPLGCgUAyHP2ASmVcyYajZZko7Ff2BSVqNCtQteOSnaH88Y4eYZdqm3M/xwNzr
         xDcHs9lR4PZsCtDDEbv6jcBgTxPCZk7ZxpadTgyahWbiXpXrInLcC1h248KCiIlEzabt
         xfVD78OCKzQN09sRk8qJDpmlrB27/ESYSzQW0/NgI+gvKKjRw/OZzpvXXBpyj728bjfZ
         NZgA==
X-Gm-Message-State: AOAM530ujPNhDp4xMIniGZYJHtsrWyiihW3vHdLXER3g3AVJpzIgByug
        jkGQkSx3UDjClt9mrBD8fcw=
X-Google-Smtp-Source: ABdhPJzy0YIXi7DvNrnmWQiXIsLKDFSWoGAN+Y1FqUAFQ7e3nq6HiVudPkee2236knJk0mToJxgxag==
X-Received: by 2002:a05:600c:198e:: with SMTP id t14mr3741403wmq.109.1611319040473;
        Fri, 22 Jan 2021 04:37:20 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id m11sm4424962wmc.15.2021.01.22.04.37.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 04:37:19 -0800 (PST)
Subject: Ping: [PATCH] posix.py: ffix: Correctly format URIs
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b5c59c50-3d98-8835-0c26-90fa6bfaf08b@gmail.com>
Date:   Fri, 22 Jan 2021 13:37:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
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

Hey Michael,

Ping!

I'm still very interested in knowing your thoughts about the Hacker
Writing Style from the Jargon File, and more specifically about the
so-called `new' or `logical' quoting method[1].  Especially you being
both a hacker and a writer :-).

[1]: http://www.catb.org/jargon/html/writing-style.html

I'll quote the most important part here so you don't need to follow the
link (but I recommend it, though):

[[
Hackers tend to use quotes as balanced delimiters like parentheses, much
to the dismay of American editors. Thus, if “Jim is going” is a phrase,
and so are “Bill runs” and “Spock groks”, then hackers generally prefer
to write: “Jim is going”, “Bill runs”, and “Spock groks”. This is
incorrect according to standard American usage (which would put the
continuation commas and the final period inside the string quotes);
however, it is counter-intuitive to hackers to mutilate literal strings
with characters that don't belong in them. Given the sorts of examples
that can come up in discussions of programming, American-style quoting
can even be grossly misleading. When communicating command lines or
small pieces of code, extra characters can be a real pain in the neck.

Consider, for example, a sentence in a vi tutorial that looks like this:

    Then delete a line from the file by typing “dd”.

Standard usage would make this

    Then delete a line from the file by typing “dd.”

but that would be very bad — because the reader would be prone to type
the string d-d-dot, and it happens that in vi(1), dot repeats the last
command accepted. The net result would be to delete two lines!

The Jargon File follows hackish usage throughout.

Interestingly, a similar style is now preferred practice in Great
Britain, though the older style (which became established for
typographical reasons having to do with the aesthetics of comma and
quotes in typeset text) is still accepted there. Hart's Rules and the
Oxford Dictionary for Writers and Editors call the hacker-like style
‘new’ or ‘logical’ quoting. This returns British English to the style
many other languages (including Spanish, French, Italian, Catalan, and
German) have been using all along.
]]

BTW, I should remind myself to fix the link in uri.7.

Cheers,

Alex

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
