Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB72A29BD6C
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 17:49:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1802386AbgJ0Qga (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 12:36:30 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:36960 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1810230AbgJ0QfM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 12:35:12 -0400
Received: by mail-wr1-f66.google.com with SMTP id w1so2659599wrm.4
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 09:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IUiVVduRbB+5EqIBIHaAEXxUPcqU/MJxAXG6jWNsfPk=;
        b=Y82DZhWCIcbi82gyVYSb+xDtxay1Mlg2rFUqUa6sF7invEvwtZtDwR/AIWh4HduXHq
         DrLoilkwjtGLGyvlbIwxv+5CepCCkGSNEtgflYFaa4PxhSk+5psTzh/9sKliXLmRzIqQ
         U4JkAbBKhjP/ek/txWA5mS7qXVUY8tnGFSYbCO9kVhC58F5LdkvY6kLVFLL2K6AJiYag
         dJ1PGKxNxVEhLbvV/7f5pPsqwOygAb1kUB941E8lz9Gd7dsEn4w9UFSJK6m8Htpkn/gj
         EAoytS66XnS1UZMECGtm60GqEMZlhCpC/3I5ClTOcP33vc+uddl/QL7GZUoP7iNZp9r3
         /9yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IUiVVduRbB+5EqIBIHaAEXxUPcqU/MJxAXG6jWNsfPk=;
        b=Bhua8bo9j7mUiyRBHE41uBk1nSj79Yzhpwq/aCIKol8WLWbyZToXWjDMy8i2ovnPye
         OBp9PGK1hWjV/Q/XXytLspqDZbWe3NMtFlUMfmaN84bKWzFQq2VjmYanI+SAEq5igleO
         81+vyPWBI8yq2xarJS+6BawOlo4skqOgZqOMLtbdYfvwrQww84yNfBdODHsrEYtpYs5m
         wvtjKXbCOjLqr+ZuCt56uYV4LRugpTiwKMCU6jMkrkFGV5OYj+WBd7+5+o7uAS8ilKMu
         gCTO4OPJbEBZQqltUWlLN+Zq6s06ilpEgf+H9zs0awdiJ/79bqmOa1ZskpCCXpYutduU
         9nmA==
X-Gm-Message-State: AOAM533SXLkjftqXbl0XzOr/aY5v9f8OmW6E0QKzJqI+nK/1fcb8mbAI
        qAkw4QrravqOlaUDiTyWDYY=
X-Google-Smtp-Source: ABdhPJwaBox2Zh8vqQxV2lmy6iby+y9venQ/9yOdnhk4MmQLXayK5oCnWuDPso1r7Y6YkI95u3xZOw==
X-Received: by 2002:adf:fdcf:: with SMTP id i15mr4068453wrs.16.1603816509892;
        Tue, 27 Oct 2020 09:35:09 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id o3sm2684215wru.15.2020.10.27.09.35.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 09:35:08 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 0/6] Add loff_t & off64_t, and update off_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201027162114.47521-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b0b5a70c-7a45-d73b-4ddc-0fcc7e26bfae@gmail.com>
Date:   Tue, 27 Oct 2020 17:35:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201027162114.47521-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/27/20 5:21 PM, Alejandro Colomar wrote:
> Hi M,
> 
> I added some details to off_t,
> and added loff_t and off64_t to the page.
> 
> Maybe you would like to improve some wording on these patches.
> There are a few lines that don't convince me fully...
> 
> I might start working on fixing the messy *lseek* pages.

See my other mail. On reflection, I think that those pages are
in a "good enough" state.

And, you raced off a bit too quick for me. I definitely
think loff_t should not be added. And I'm pretty doubtful
about adding off64_t as well.

I've applied patch 2 in this series.

Thanks,

Michael


> Alejandro Colomar (6):
>   system_data_types.7: off_t: SEE ALSO: Uncomment loff_t, off64_t
>   system_data_types.7: off_t: Add note about _FILE_OFFSET_BITS
>   system_data_types.7: Add 'loff_t'
>   loff_t.3: New link to system_data_types(7)
>   system_data_types.7: Add 'off64_t'
>   off64_t.3: New link to system_data_types(7)
> 
>  man3/loff_t.3            |  1 +
>  man3/off64_t.3           |  1 +
>  man7/system_data_types.7 | 76 ++++++++++++++++++++++++++++++++++++----
>  3 files changed, 71 insertions(+), 7 deletions(-)
>  create mode 100644 man3/loff_t.3
>  create mode 100644 man3/off64_t.3
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
