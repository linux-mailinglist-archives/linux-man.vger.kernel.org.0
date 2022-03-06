Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE2E74CEC9A
	for <lists+linux-man@lfdr.de>; Sun,  6 Mar 2022 18:39:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232880AbiCFRkh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Mar 2022 12:40:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229955AbiCFRkh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Mar 2022 12:40:37 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE73B1C915
        for <linux-man@vger.kernel.org>; Sun,  6 Mar 2022 09:39:44 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id b5so19981235wrr.2
        for <linux-man@vger.kernel.org>; Sun, 06 Mar 2022 09:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=KXJgPrP5fUWRin6pA7R8hJfAfwmFivm2nKyP8yuX5pM=;
        b=i8tWhqSYPSgD1F8nVRXkHVq0ChxoTHehMWwQ+cPcDrZV2a5mWX++ZvgNvfXdOb5x61
         ZB/0lk8BX/4yUpZK30F7SRJ8nI3+GPoObcUYDPbZ9GXOZaApFfkek4+EEA58xHnuVX1P
         jZjBBKO4lLHRzwnIJeD1dP1goAu9RgKQmVXb8qp+1un+UffRfmV9uGy6Qsjicr2AD1KR
         X5mBlCK7CgEjhjPg8yhIxwe3DzU7TFsIrfe04pTBKiKOwNMkUMOTAL+qRtKXR/ws1hjO
         otHqNPMKE93wGDjym90OSDqFnPQSWX0oZ6zBMhIpqW0IvIIMf70T52i/XfW6GT2QVOt4
         yWlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KXJgPrP5fUWRin6pA7R8hJfAfwmFivm2nKyP8yuX5pM=;
        b=xemqtgQY7SYSNE4xDiU8oTfe5c8xit6GOMkcXCe0kFErhpsgZCwLPbKBQS7xGf5xqj
         gTE0V2NdyUtpOu8aa7U1g+dJPm43sjmZQIeC9vV6HM9NeVdL1gcqSEwcpn6omFqCDpgT
         a6kPK0kXzQw24IsL2ZghgaBt3dRP9nzxmplR+b8PJL42mrDMCjb+meI6BDJcSUrwhGha
         MxiwiKQMwFGI25dGQi1+tOv+JxHQrj8SZFNgz+qUXd36Mwh6M5u5pwpHbYC4XghF70UF
         cXR/FsHGXNA7kZXacEATKghGWVUnAE4yT5A9N/C08SMd7cnqvu7fZCqxuX7BUIjuA7iX
         b3wQ==
X-Gm-Message-State: AOAM53301bJ9eXnBBtqq9GcalwNrJ+qGZwQ/tnWT2QdUC+FMOFUyK3id
        tzTu4dZ5+lm8ezd6SiZ4CnUWJV0msMJx6Ix5444=
X-Google-Smtp-Source: ABdhPJzgtmY33bMpJDlZoddrDl2kN01DNSfYRL+q79e0QU/V4dAtQh/v33hjfS1jn8mlD39Us78HcQ==
X-Received: by 2002:a05:6000:8a:b0:1f0:2d53:8589 with SMTP id m10-20020a056000008a00b001f02d538589mr5519375wrx.431.1646588383361;
        Sun, 06 Mar 2022 09:39:43 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f10-20020a05600c154a00b0037bbbc15ca7sm36527707wmg.36.2022.03.06.09.39.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Mar 2022 09:39:43 -0800 (PST)
Message-ID: <2cf73e77-f734-9c95-81b9-6f343200f401@gmail.com>
Date:   Sun, 6 Mar 2022 18:39:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [patch] futex.2: tfix
Content-Language: en-US
To:     Davide Benini <davide.benini@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <20220303140802.9930-1-davide.benini@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220303140802.9930-1-davide.benini@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Davide,

On 3/3/22 15:08, Davide Benini wrote:
> ---

Patch applied.

Thanks,

Alex

>  man2/futex.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/futex.2 b/man2/futex.2
> index 1dd77ac2f..d2a99b2d3 100644
> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -1854,7 +1854,7 @@ fwait(uint32_t *futexp)
>  }
>  
>  /* Release the futex pointed to by \(aqfutexp\(aq: if the futex currently
> -   has the value 0, set its value to 1 and the wake any futex waiters,
> +   has the value 0, set its value to 1 and then wake any futex waiters,
>     so that if the peer is blocked in fwait(), it can proceed. */
>  
>  static void

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
