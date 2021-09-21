Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 630C9413608
	for <lists+linux-man@lfdr.de>; Tue, 21 Sep 2021 17:20:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233932AbhIUPWF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Sep 2021 11:22:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231196AbhIUPWE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Sep 2021 11:22:04 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6944CC061574
        for <linux-man@vger.kernel.org>; Tue, 21 Sep 2021 08:20:36 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id w29so40329198wra.8
        for <linux-man@vger.kernel.org>; Tue, 21 Sep 2021 08:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=A1UoJtpMpmWB8f164yILuz9GPyci8+4+Jgx379hmQH8=;
        b=lC03ZKhwnjXoV8RfsH4naodAPItlmh/zS2ohHECm05F9xF0qkc3r+FzvOv6Apu4Bv/
         EQsYhjv+HtskvFXyrtfo58Oz0NU1sdGzOvw8Y1whvG+8njHuU7pS4ekHJK2Xd6tv4DvZ
         On6jw6UOs+zBG49hPQUYoxxAyQxKuEyvZhnrUP5MJCsoxbzUyOvBePKLufsN/v17h9ub
         piwHtceHrPyjwtuQTiGSJA64A2XOrlkUXmNWV3JxKWax/vA5WHsHdPW+JhZv4Wc4TSLf
         4zCOVHmT1bMJEb8WSqFW352Iv2+eoYXp0GVo1Wcc9GNlElQWqzyWXRUfzhE0nKI+KVJl
         FDww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=A1UoJtpMpmWB8f164yILuz9GPyci8+4+Jgx379hmQH8=;
        b=KZfYutj016yCvrDZpC49EZSZtsBXIKATdj366Cg081/4C4IPhEZis+J+AhLLOj439R
         5f6mwGMpqUERncbzoELF8KLB9FqdSXR4iuOXcmhOk2k4mZSiF3yvPNRY1j6M9sFbLRBu
         cI8CAkU88OCMcN/bTdCCfdNXdN+wH4HRBIKZQ37Ap9R0ZhrplofYtr5WLgc/Y3IQfbra
         nJXUKws/gNk6ktev829HpFtiFY/DqJnaBd7g8AkzsvDJ5EkmQAZwvxIzy9WR+WpEKtUO
         f0mRqnAB2I010JJTeVXGu0dsJT5v9SPGGX3BV3IDP1DW52gBKAPR+1zf9pHNBfWX/lRe
         7cpg==
X-Gm-Message-State: AOAM531OdnDVMFsgfJxo5/04CwokV7kKcZO841rSMwoMXm5sl6152TIK
        8dV9CjlwPmgqY7fyJTu9eVS73B3YT7w=
X-Google-Smtp-Source: ABdhPJy3jhYmRxj+J71Z9reyWmEcP/i2hy5/zXTGreaZSwv7rwxSmkSFTJmqns0Vh4h7NPVE/bPasQ==
X-Received: by 2002:adf:dc85:: with SMTP id r5mr5639736wrj.37.1632237634987;
        Tue, 21 Sep 2021 08:20:34 -0700 (PDT)
Received: from [10.8.0.46] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id i203sm2748980wma.7.2021.09.21.08.20.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Sep 2021 08:20:34 -0700 (PDT)
Subject: Re: [PATCH 1/2] rpmatch.3: remove first-character-only FUD
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <8f5f9b7d4f067a4a479fe400dee99120bf0a1abd.1632231952.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <be1eaa87-3fa3-2e1f-7e6c-80362adbb935@gmail.com>
Date:   Tue, 21 Sep 2021 17:20:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <8f5f9b7d4f067a4a479fe400dee99120bf0a1abd.1632231952.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, наб!

On 9/21/21 3:46 PM, наб wrote:
> It's plain not true; locales can and do provide longer matches
> (Aramaic has a "አዎን" alternative, for example)
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

Are you sure?

I just checked the glibc implementation, and it uses YESEXPR and NOEXPR 
(instead of YESSTR and NOSTR, which would match complete strings).


// stdlib/rpmatch.c
int
rpmatch (const char *response)
{
   /* We cache the response patterns and compiled regexps here.  */
   static const char *yesexpr, *noexpr;
   static regex_t yesre, nore;

   return (try (response, YESEXPR, 1, 0, &yesexpr, &yesre) ?:
	  try (response, NOEXPR, 0, -1, &noexpr, &nore));
}


$ grep -rn define.*YESEXPR;
locale/langinfo.h:570:#define YESEXPR			__YESEXPR


$ grep -rn __YESEXPR;
locale/langinfo.h:569:  __YESEXPR = _NL_ITEM (__LC_MESSAGES, 0), /* 
Regex matching ``yes'' input.  */
locale/langinfo.h:570:#define YESEXPR			__YESEXPR


$ grep -rn 'define _NL_ITEM(';
locale/langinfo.h:34:#define _NL_ITEM(category, index)	(((category) << 
16) | (index))


$ grep -rn LC_MESSAGES localedata/ | grep es_ES
localedata/locales/es_ES@euro:37:category "i18n:2012";LC_MESSAGES
localedata/locales/es_ES@euro:53:LC_MESSAGES
localedata/locales/es_ES@euro:55:END LC_MESSAGES
localedata/locales/es_ES:45:category "i18n:2012";LC_MESSAGES
localedata/locales/es_ES:113:LC_MESSAGES
localedata/locales/es_ES:118:END LC_MESSAGES


$ sed -n '/^LC_MESSAGES/,/END LC_MESSAGES/p' localedata/locales/es_ES;
LC_MESSAGES
yesexpr "^[+1sSyY]"
noexpr  "^[-0nN]"
yesstr  "sí"
nostr   "no"
END LC_MESSAGES



So, it seems to me that by using {yes,no}expr and not {yes,no}str, it is 
limiting itself to the first letter, as the current BUGS section 
specifies.  Right?

Thanks,

Alex


> ---
>   man3/rpmatch.3 | 15 ---------------
>   1 file changed, 15 deletions(-)
> 
> diff --git a/man3/rpmatch.3 b/man3/rpmatch.3
> index 846c492b7..e0f92a20d 100644
> --- a/man3/rpmatch.3
> +++ b/man3/rpmatch.3
> @@ -123,21 +123,6 @@ T}	Thread safety	MT-Safe locale
>   is not required by any standard, but
>   is available on a few other systems.
>   .\" It is available on at least AIX 5.1 and FreeBSD 6.0.
> -.SH BUGS
> -The
> -.BR rpmatch ()
> -implementation looks at only the first character
> -of
> -.IR response .
> -As a consequence, "nyes" returns 0, and
> -"ynever; not in a million years" returns 1.
> -It would be preferable to accept input strings much more
> -strictly, for example (using the extended regular
> -expression notation described in
> -.BR regex (7)):
> -.B \(ha([yY]|yes|YES)$
> -and
> -.BR \(ha([nN]|no|NO)$ .
>   .SH EXAMPLES
>   The following program displays the results when
>   .BR rpmatch ()
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
