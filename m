Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C3D71155BB8
	for <lists+linux-man@lfdr.de>; Fri,  7 Feb 2020 17:26:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727047AbgBGQ0M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Feb 2020 11:26:12 -0500
Received: from mail-wm1-f65.google.com ([209.85.128.65]:54396 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726874AbgBGQ0M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Feb 2020 11:26:12 -0500
Received: by mail-wm1-f65.google.com with SMTP id g1so3157427wmh.4
        for <linux-man@vger.kernel.org>; Fri, 07 Feb 2020 08:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jpglwhL81zlvVfAFzqLOJ/jE43OMC6oGzn9z6Ap2hJ0=;
        b=NAEfIoJmVgEXk37UGqc0m0G14/tJcKUIHBcfqyhmw4712Jn/tNkDW8lJoFq4ljv+4S
         g+A12Egz7ZRd7G9vF5lkR2+rxWgdn5gd567/5BogkYppY9IWglqlbSQLT39C8y9YJJ1x
         3QuC+vFkAnleBITnZAfAkZkKJPBqm9cew3JRX8GTRRTlZTsMA88CujUrdTrUBZA+7Tpe
         k1Ilwb6UA628jbOxxW8Y3OLc0eLJosmwzq7SDxsaAsIZsxAMBA7Y/ExYK59SgWw2/xLC
         5vciTE0BXRHDY2Ea0Gn4gWAwMmK+6Hpplvo0QBTUcCHOr3NOcZwGdQLeoKTEBYq+D0LF
         IrnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jpglwhL81zlvVfAFzqLOJ/jE43OMC6oGzn9z6Ap2hJ0=;
        b=UZ9YpHxE95sh9e/wLqCP2u9tahIFTBJsHs3KpDNbvZG7dj1B0AQ46IBX2ewdk48As1
         57/hOHR4xGZ9oBpyHP3waVZ/2G81/LHSIUYw8bF22FdtMqFDJKub74JXxGstHhCyXdwl
         xW+VXga3nh3VuKtkN8EZh2sT8KMP775wsgihrYr461IZiaxuOBUxHHhCWyu92pM31HB4
         1qwdaPR1/uoLWiJNNjnTvTHvs6XZrzlpmBsYnxoZMw9cu9u3tIAvLFzB9HJdoXzLtocZ
         shuoIsO1yJsba3j1SlbP4qqTlBN5NM+qT3U6kM0b+2Z76ieEjORP56THOPuiut6v2yOc
         Io5Q==
X-Gm-Message-State: APjAAAWp1BIUHzQwbnow0luYd7GC+C7pGRrzRN+lam5bXXRuNFqjRSBp
        ERVSOnPHkWXFdnTFPTI5ppc=
X-Google-Smtp-Source: APXvYqxzExZRL+cpvqqRnkaCoEMOg1sXB8EEeqSvMfOzztN1ZzJh0asAYkypk87wNFS89WxOrC0VSQ==
X-Received: by 2002:a7b:c8d3:: with SMTP id f19mr5040926wml.26.1581092770300;
        Fri, 07 Feb 2020 08:26:10 -0800 (PST)
Received: from ?IPv6:2001:a61:251f:d701:c8c9:6ecf:205c:abb7? ([2001:a61:251f:d701:c8c9:6ecf:205c:abb7])
        by smtp.gmail.com with ESMTPSA id z10sm3756177wmk.31.2020.02.07.08.26.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 08:26:09 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH 2/3] console_codes.4: \e[38m and \e[48m
To:     Adam Borowski <kilobyte@angband.pl>, linux-man@vger.kernel.org
References: <20190308194059.9560-1-kilobyte@angband.pl>
 <20190308194059.9560-2-kilobyte@angband.pl>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <89fad223-3e6c-2b65-17ce-a4e19e45ff32@gmail.com>
Date:   Fri, 7 Feb 2020 17:26:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20190308194059.9560-2-kilobyte@angband.pl>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Adam,

On 3/8/19 8:40 PM, Adam Borowski wrote:
> Supported since cec5b2a9 (3.16).
> 
> Signed-off-by: Adam Borowski <kilobyte@angband.pl>
> ---
>  man4/console_codes.4 | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/man4/console_codes.4 b/man4/console_codes.4
> index d605b058d..4283efe45 100644
> --- a/man4/console_codes.4
> +++ b/man4/console_codes.4
> @@ -271,8 +271,8 @@ T}
>  35	set magenta foreground
>  36	set cyan foreground
>  37	set white foreground
> -38	set underscore on, set default foreground color
> -39	set underscore off, set default foreground color
> +38	256/24-bit foreground color follows, shoehorned into 16 basic colors
> +39	set default foreground color

So here, I think it's important to retain the historical info, so
I made this text:

       38        256/24-bit foreground color follows, shoehorned  into  16
                 basic  colors  (before Linux 3.16: set underscore on, set
                 default foreground color)
       39        set default foreground  color  (before  Linux  3.16:  set
                 underscore off, set default foreground color)

Okay?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
