Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D634C39C2F
	for <lists+linux-man@lfdr.de>; Sat,  8 Jun 2019 11:35:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726638AbfFHJfT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jun 2019 05:35:19 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:38888 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726590AbfFHJfT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jun 2019 05:35:19 -0400
Received: by mail-ed1-f65.google.com with SMTP id g13so6225894edu.5
        for <linux-man@vger.kernel.org>; Sat, 08 Jun 2019 02:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xb5b9xvgnZUDHi12x0+2cu5r7AucrDg6iII3futvk9g=;
        b=Ys5z7C08qhC8SIh1m2HiJDBt0VOXna5XxLLOMrXo/kh52ZgCNeiMJuCCxAIsUoOmcr
         uDCy85OtHVz+8O3ykAqPmA+Mkg7F8/MdCHJY91ZMTdjOsisPMEemYSINnEIPJW6BQdEM
         qR8UDmg60f7uN8UGcd7Z54QyQkk3qxcMk9rtFjxv56nHSn53wkJXE1PDDYNVUsWrgBlX
         zHDMcawHlF30Qzq3KJuS1K/5pRcrYRQ3OoysOuGyl7Y5IcdM7Rab15EuR/osgFPUt1vn
         vmx0ZBomNSUG2O6c033mRhzsj3Nw5UHag7ZYrfs7k6VYIpTimWwNJAH2f7ibV19/guNN
         t4eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xb5b9xvgnZUDHi12x0+2cu5r7AucrDg6iII3futvk9g=;
        b=Bl3b/qebodbQiTTB7DNNu2qzvuTAruI7E6rTt2oUtDOW33hG4b03bg5CDkzBJeP3o4
         QDOjZxkcaFemp/wIbLkjPw7LrPbnEyutPMOQOB2AXPR17XrgYKhTSrMZHmana7rGutso
         F5KcRBXIbAYx3DL1R+DAO9Ayhi1Fbdk6TsWyxZ88EcyB8f3cAW7Vg3J/iZU+9KI6agCg
         Zs91bu6fxpc5Zm/GKmjzFjT6gl21OwNcXn+Ha8hwymEnEsaFOzx+FSBeqbIdEcSncPAa
         0n8jWIhqY3ZH16pUNrroCLBBeyz/OhSX0aGITlRCB8VjjalPyl0kd6Ttogx+YLlG2qdm
         41Bg==
X-Gm-Message-State: APjAAAXOw7SAKQ4e+QGti7nIiRZeHnFk+6uXbss4pUiE50+zeBPH7se2
        EMP2pjffaCt4NQwT3Dp+b11W028e
X-Google-Smtp-Source: APXvYqxvSa7XvEiZp6+A/nK195wSI+chSR1jTPay6n271lux85HWbmGtVFnonCcYdIrl883v4uCS1Q==
X-Received: by 2002:a50:9590:: with SMTP id w16mr39509046eda.0.1559986517592;
        Sat, 08 Jun 2019 02:35:17 -0700 (PDT)
Received: from [10.211.3.146] ([185.12.128.181])
        by smtp.gmail.com with ESMTPSA id u15sm1204902edi.10.2019.06.08.02.35.17
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Jun 2019 02:35:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] syscalls.2: tfix
To:     =?UTF-8?Q?Petr_Van=c4=9bk?= <arkamar@atlas.cz>
References: <20190606130245.GA21162@atlantis>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1c30cb95-8f59-8747-8c30-5e61f80309d0@gmail.com>
Date:   Sat, 8 Jun 2019 11:35:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190606130245.GA21162@atlantis>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Petr,

On 6/6/19 3:02 PM, Petr Vaněk wrote:
> Signed-off-by: Petr Vaněk <arkamar@atlas.cz>
> ---
>   man2/syscalls.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)


Thank you.

Patch applied.

Cheers,

Michael

> diff --git a/man2/syscalls.2 b/man2/syscalls.2
> index 1c0723941..be10ba4ea 100644
> --- a/man2/syscalls.2
> +++ b/man2/syscalls.2
> @@ -174,7 +174,7 @@ l l l.
>   \fBarc_gettls\fP(2)	3.9	ARC only
>   \fBarc_settls\fP(2)	3.9	ARC only
>   .\" 91e040a79df73d371f70792f30380d4e44805250
> -\fBarc_usr_cmpxchg\fP(2)	4.9	ARC onlt
> +\fBarc_usr_cmpxchg\fP(2)	4.9	ARC only
>   .\" x86: 79170fda313ed5be2394f87aa2a00d597f8ed4a1
>   \fBarch_prctl\fP(2)	2.6	x86_64, x86 since 4.12
>   .\" 9674cdc74d63f346870943ef966a034f8c71ee57
> 
