Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 141C636B842
	for <lists+linux-man@lfdr.de>; Mon, 26 Apr 2021 19:46:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235363AbhDZRri (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Apr 2021 13:47:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234754AbhDZRri (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Apr 2021 13:47:38 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 566C4C061574;
        Mon, 26 Apr 2021 10:46:54 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id a22-20020a05600c2256b029014294520f18so1163094wmm.1;
        Mon, 26 Apr 2021 10:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4XKAccquTkn2r9S6tK2dd4VsmZ5JwMPtXDxEVgO3+sU=;
        b=BVKc7Elf+DJwmd8DO+dUSUES1VeE5m6YInxlMRS46RgdxiEpEF5zQpB4636NUI2Gj3
         iEhS5h0T0BFf1FyjI+oVe4z9l8C0xi9oANZBNkg4wHhVqeNnisv+DRCp6h5/v+nvNQqg
         iPD9IBcxrp0t4BSw+Vsx/c33RLo0qKLFgC3RAr9Wg0pWbuY3KYKnm9Z6GVwhFbXnLy1V
         d1gPd0YtxaDhmxudXE/6avEjdSd/aJ5dEF2mj9Wnxf0wjFKP9F1CNi30nquSqjsvBHLR
         zpjYavSaYHJs3nv61k01H4CQQTGre1fiNKPOJJGONiSUrkm3CdkzRrTOVX1K595n6sgH
         1clQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4XKAccquTkn2r9S6tK2dd4VsmZ5JwMPtXDxEVgO3+sU=;
        b=VNUzc3iINib6aO2pSLN8260qekCqRLnrQMHUZgryMuHCbUsnNNn1rqyHCmL5A6rW8O
         7h0c2Q+LWR91wsmwIdTog9LfsG7wTtEf6U2QRclFhdbcQDoOowcp2yNbmUmDf/Ydsa+h
         iEs5XP/uDVzTjXGiehSmf1+cluvXK+dPvgR8ol7BT4SSUZJL1fxdKCXdDf/JrvVPMROl
         PEeQWFckp4s1xEh85txrB1Q/RaV78DjfweX0BnRcAecm89+oHJrl8zS2O8+QSgo2zVQC
         V1uWpMA7nf5snntIRqhgfagGRwuv4a2afTWmeWBHe+oZqCO/aR1CM6tZgmH53Ciqfl0+
         ak1w==
X-Gm-Message-State: AOAM530hRyvuuTzS6V8IjcSNXq3/JbiBlvf3o1Ps0nT1Wo1OOB9YEXhi
        f/42CmKmh9Ozmbudug/FD8OrD/LaHYY=
X-Google-Smtp-Source: ABdhPJyBTVMEkJVcz7ZsgiS7yXAcyiYnLgSQV4HKlQvUuplG6/YeQfRhYQb/dLRC2hGhs72gw1CxxA==
X-Received: by 2002:a05:600c:40c4:: with SMTP id m4mr206472wmh.25.1619459212987;
        Mon, 26 Apr 2021 10:46:52 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id u8sm933072wrp.66.2021.04.26.10.46.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 10:46:52 -0700 (PDT)
Subject: Re: [RFC] bpf.2: Use standard types and attributes
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        gcc-patches@gcc.gnu.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org
References: <20210423230609.13519-1-alx.manpages@gmail.com>
 <alpine.DEB.2.22.394.2104261717120.641239@digraph.polyomino.org.uk>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c7185e24-b63d-2863-b71c-2258c510ead9@gmail.com>
Date:   Mon, 26 Apr 2021 19:46:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.22.394.2104261717120.641239@digraph.polyomino.org.uk>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Joseph,

On 4/26/21 7:19 PM, Joseph Myers wrote:
> On Sat, 24 Apr 2021, Alejandro Colomar via Libc-alpha wrote:
> 
>> Some pages also document attributes, using GNU syntax
>> '__attribute__((xxx))'.  Update those to use the shorter and more
>> portable C2x syntax, which hasn't been standardized yet, but is
>> already implemented in GCC, and available through either --std=c2x
>> or any of the --std=gnu... options.
> 
> If you mention alignment in the manpage at all, the same reasoning would
> say you should use _Alignas(8) not [[gnu::aligned(8)]], in any context
> where _Alignas is valid.
> 

Agree.

I just didn't know 'alignas()' (a.k.a. '_Alignas()'), so I used 
attributes and only changed the syntax.  But yes, we should use that C11 
feature.  Given that we already used 'noreturn' and not '_Noreturn' (see 
exit(3) and its family), I'll use 'alignas()'.

I'll send a v2 with those changes.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
