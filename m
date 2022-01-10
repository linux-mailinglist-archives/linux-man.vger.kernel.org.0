Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24EB5489EE8
	for <lists+linux-man@lfdr.de>; Mon, 10 Jan 2022 19:13:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238855AbiAJSNw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Jan 2022 13:13:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238832AbiAJSNv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Jan 2022 13:13:51 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 421D9C06173F
        for <linux-man@vger.kernel.org>; Mon, 10 Jan 2022 10:13:51 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id w26so3502148wmi.0
        for <linux-man@vger.kernel.org>; Mon, 10 Jan 2022 10:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ypmop1/MF0zLOarzcvjTFrgYuvcxzN4x/kVZCXvZL8Y=;
        b=XvIN9VgMqXqWGSdtuhvVrR5ErOJSf8YT2icTMkWnl57cNw7l8nCCI53/AC9QUoZkp2
         aFQUZyrQijcgxMkW4vOfUXIwcBzIQ8u2RYhPhEDM+kl3tyE/r/MjMqtEW7zX1GUkj+DM
         IDSFg/9RL/nKrFO1GwkoEVLWw2ymrKfTK7xcg+akiR7IlUbFnurxvkKe0KVBIKGvcJlP
         bYuajF2qbnHzlI/+nroirrcPc9A4BkmoW/HQs0+68tSRI24MMmZ+HJ86/SqZZqybjxCq
         n/cHtDiThBC7OrA8Df/hzkh9x+AwywiYsYjDE8ESm0MtSmb+uTo2DbGUd54oTAaD41rt
         sQKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ypmop1/MF0zLOarzcvjTFrgYuvcxzN4x/kVZCXvZL8Y=;
        b=02CW96nBRrzGbpraGGD2xdr8CiydPl4n/dvE6htqd/L7kO+cWvH5CebLPHHmOn1amj
         5fR/J0yzM81jiWgyPEkzoO95iWMM+I0rR7p/piq5is2Mt6IIpNucXjnnFRsFBKd+t1Ci
         M4K1JnFWkXLFc5VD+BTC96V+Pb3yDpKLFhvql1nFjIpM9UXdqOl/EU0mMxTyWiFhalT7
         nXxMLe1NpNuTojs7Mscbz+jZVGSX3YcEYQOwfuBKEOqTCkDlC2yZsNNP+NYkh/GZvXWs
         UnXws+OcsJnUeAv2SvW1kNxTpbChl7auPv4XScqzP3omzQfhemCApgBXMu9/IMjqkQI8
         /xPg==
X-Gm-Message-State: AOAM531ddyJyfl0dx3H/4KRqyXX6Ae0hEUqLjA1GlYQgw3o7vNzLT4MZ
        rc6FPLOhxJMyblD0kLebynVp9nnfBmI=
X-Google-Smtp-Source: ABdhPJySCAPsU4OzVdODmQfRQ24vFzvXruO6EHNQofMD5rBwqYptgczFeBu57Bkyn3pmXH56n0TqDg==
X-Received: by 2002:a05:600c:1e17:: with SMTP id ay23mr17081648wmb.77.1641838429808;
        Mon, 10 Jan 2022 10:13:49 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l6sm1511394wmq.22.2022.01.10.10.13.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jan 2022 10:13:49 -0800 (PST)
Message-ID: <738c0961-b640-cad3-524e-79f7903aacdc@gmail.com>
Date:   Mon, 10 Jan 2022 19:13:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH] pkeys.7: ffix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220109162131.oi7qv4shvk2swsa2@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220109162131.oi7qv4shvk2swsa2@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi наб,

On 1/9/22 17:21, наб wrote:
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
>   man7/pkeys.7 | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/man7/pkeys.7 b/man7/pkeys.7
> index 73ddcdc43..0fff6493f 100644
> --- a/man7/pkeys.7
> +++ b/man7/pkeys.7
> @@ -42,9 +42,7 @@ to change the contents of a register in order to remove write
>   access, or all access to a tagged page.
>   .PP
>   Protection keys work in conjunction with the existing
> -.BR PROT_READ /
> -.BR PROT_WRITE /
> -.BR PROT_EXEC
> +.BR PROT_READ / PROT_WRITE / PROT_EXEC

It's not that your formatting seems worse to me in this case.

However, since we already have some kind of norm of writing each 
identifier on its own line, I'll keep it like that for consistency.
That consistency also helps write scripts to find some patterns.

But I'm open to discussion, if you want.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
