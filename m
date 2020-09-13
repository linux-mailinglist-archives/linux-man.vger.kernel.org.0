Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1743267E0D
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 07:54:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725883AbgIMFyU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 01:54:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725806AbgIMFyU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 01:54:20 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7304C061573
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:54:17 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id m6so15261167wrn.0
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7ydjh74hW2xyShb/M6kd40VjN9zQYWvPq0IDvP4QhpU=;
        b=MWOjVpV+tqnxzr3C061JCIvgysKKg94wCakxi9Cl31fA38oiHOS8XI2oMfTL1eV4uA
         Zzw8hPEgmP7Rp1j8s3k9MT1EqF7a609jlMnd4JFBAEuHCatsFQ5oCSw0roRVuUGufYAE
         6j/zV8T2HpGfEN4vPT7W8HUkKKggC2DezhEJ1F/36GZPEhL4/pPUP+r4mS1mhvlhbWNR
         0fPApm2HRjVi3fRLxovOouza/Xe+paMvL3APiLfQzxAYdnUpmUXump8fJlqOGb27dELG
         olFjeHvdknsn5FTUGYcp7O/bS0QEhM//ByD5YJ6ki3vxN66xekZZuTd3lLD1XVd5O8U9
         KDag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7ydjh74hW2xyShb/M6kd40VjN9zQYWvPq0IDvP4QhpU=;
        b=V1cNheqM/RUOS6DqgzaWXm/tpeV1e5cqGjM8NjonmZzjoCD4w2rw5dvaG4xlsCTQlT
         T7QoN+UrVI1EjC/AFh3vwS1ZiVQ6O5vN/ttqmPEYaMi/CkZNWybdBjIL/Oay4l1JhTON
         TZRF9cyEmFsPe3+JfaEtNe4KzeUXAGbhYXduFYida0YOMrKWKT4tgkcMoKLWsAGcz7pV
         R1fjhVvCu+ovG7d2yyu1cXgZJ7AiJ7rywx/ZU1gD/olfsTGR0WvoQG5th7Z/Xem6px4o
         j9mC7hBsIegFTsbxf8bcMuLqYvMqsF7zPBB9XjKntJ9FcOJexCHUAgW9MqmDfS6yX9Bp
         2c2Q==
X-Gm-Message-State: AOAM532qErmGW0kTpt4FZ/rRIUAF8u8OJjxx0SnUPVqGkxFwDatHf3Mn
        F6Ox8BkBh9nAOwp3MtctnKSB9mzFScU=
X-Google-Smtp-Source: ABdhPJw2qIg1F4xiXDWM+ZGJPOzPN4/rFvY6RUl/TgdamvS0kXSOAixePIYEMferUtPR5y1UOmHE5Q==
X-Received: by 2002:adf:9e06:: with SMTP id u6mr9759407wre.208.1599976455160;
        Sat, 12 Sep 2020 22:54:15 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id o9sm13396991wrw.58.2020.09.12.22.54.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 22:54:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 10/12] spu_run.2: Cast 'int' to 'unsigned int' when
 printing with "%x"
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-11-colomar.6.4.3@gmail.com>
 <0dc39cc2-6cbf-b8f9-3b21-f216c70f17f2@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ac533f16-70c8-71a5-995b-865f976d65d5@gmail.com>
Date:   Sun, 13 Sep 2020 07:54:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <0dc39cc2-6cbf-b8f9-3b21-f216c70f17f2@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/12/20 12:29 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> I think this patch of mine should not be applied.
> 
> printf() will internally reinterpret the 'int' as 'unsigned int'
> anyway, and the behaviour is completely defined AFAIK.
> 
> Relevant standard: C18 §6.5.2.2 6
> 
> And in the case you do want this patch, I should have written
> 'unsigned int' in the cast, for consistency.

Okay. 

Thanks,

Michael


> On 2020-09-12 01:14, Alejandro Colomar wrote:
>  > Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>  > ---
>  >   man2/spu_run.2 | 2 +-
>  >   1 file changed, 1 insertion(+), 1 deletion(-)
>  >
>  > diff --git a/man2/spu_run.2 b/man2/spu_run.2
>  > index b6bc2c131..ddd03ffd3 100644
>  > --- a/man2/spu_run.2
>  > +++ b/man2/spu_run.2
>  > @@ -254,7 +254,7 @@ int main(void)
>  >        *   0x00000002 (spu was stopped due to stop\-and\-signal)
>  >        * | 0x12340000 (the stop\-and\-signal code)
>  >        */
>  > -    printf("SPU Status: %#08x\en", spu_status);
>  > +    printf("SPU Status: %#08x\en", (unsigned) spu_status);
>  >
>  >       exit(EXIT_SUCCESS);
>  >   }
>  >
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
