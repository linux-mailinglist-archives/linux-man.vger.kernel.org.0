Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D0412FCD03
	for <lists+linux-man@lfdr.de>; Wed, 20 Jan 2021 09:58:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729110AbhATI4N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jan 2021 03:56:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729225AbhATIzq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jan 2021 03:55:46 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86F0AC061786
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 00:55:05 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id g10so3885917wrx.1
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 00:55:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xC9WeKeoax5DWLj28MWI/hv9RqCVFqTymI5urzoFJEk=;
        b=tAB8eOwLSXK5qVY+VkBEcKHfkpirKzMUe1srCc6Bkkft4/acbtn5iJ/WSwjH/b6XkR
         2dd5LmRLxgphI8GAWTrMniXNFMSOV/ScjGiWyNq3NNG6ammYkfrq09DZ0NBRauLX4du0
         7dP7KCfDJVwbMlg3A91OwGLgwfGhMAphoCap7IeQ5TUq6fiPCkaa0Izo/8LK5YlRN1zX
         nhNWL/nUWZiXms8Qk9Iigw/t281e09/DVCZ2/hyhBK1SdW1LTSYmoldJJnfveGFIPntm
         N1tkf3WmYl326EzBW/E75bOKcxuNcBMYcklxlcakte4oaQrCo0XWxeBxuWWyx27wAbfB
         F7Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xC9WeKeoax5DWLj28MWI/hv9RqCVFqTymI5urzoFJEk=;
        b=FsUsllKSrKg1/teBvdXGAt5UP2ULJK/3lOBRwlLZ6AIF9rD9HS2GO6ban1Kx+tfyh/
         /wFsBqZltTXZ7N+1HM8kLd93cP/SPFB7tXhs/hGDW71zlQRFhX6/IWtgNWO/Gfmp2axL
         5r8tjue0PGAc3E/NCh+EjiVqL3qd4QwWFIGxqbc7m5Y/o31XhfXypljJSmdLrzJYp2/7
         5///YDiVGM45aNm+qzyznRq4Qhao57haWX946/AJGGRpphPOhMRi5OubrC+WYY0EDC7V
         3CJt8WcWWTgPdWZ1EEiGd5l/UUirPr/9Dje18Yh+VZyHoo9cEjKovhQzS3Rnb53J4clT
         2gHQ==
X-Gm-Message-State: AOAM530y/FvL1HXHAi0Lo1mXsO/LruDxaJWctpVBRNXPESf+3MLMnDkz
        YclbML7mfRwMpTkC1RDYEoCIQcAuEmg=
X-Google-Smtp-Source: ABdhPJymiPf5a3Iwb4/HJ9Ui9jWe69PlmaCDiu6zrgOD+UVuLjDncfL/95fTwc3CM9EACahwYLAaIw==
X-Received: by 2002:adf:fad0:: with SMTP id a16mr8465073wrs.390.1611132904028;
        Wed, 20 Jan 2021 00:55:04 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id a25sm2467396wmb.25.2021.01.20.00.55.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 00:55:03 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2] posix.py: ffix: Correctly format URIs
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
 <20210110145745.4360-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <94fd301c-7c42-f968-e6c9-04081f5982ae@gmail.com>
Date:   Wed, 20 Jan 2021 09:55:00 +0100
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
