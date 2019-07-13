Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC8D867B34
	for <lists+linux-man@lfdr.de>; Sat, 13 Jul 2019 18:16:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727751AbfGMQQU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Jul 2019 12:16:20 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:42677 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727678AbfGMQQU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Jul 2019 12:16:20 -0400
Received: by mail-io1-f68.google.com with SMTP id u19so26921653ior.9
        for <linux-man@vger.kernel.org>; Sat, 13 Jul 2019 09:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZwsDlgezVgU71g96jAPbtlGesTTowoUVW1lGeshn+Dk=;
        b=t9Xlffyo8njVlzAaStKRzKZ0O+iypX66CidWkDzC6QukPWnipa8vRtjz0ofUcJt1yR
         bQJ13X1LcuPChSA+/9TRwSkdr/C1rXTIS+a5ibI5RykDfsaGQSmTwC/u2KDs7CPXJC15
         l0RIOQbVKPxmpKgiOYPaAjbfNtZMU8wNQgXa8wN7uGcfqZMVIwLB92uwmOhA7Kyz8dvu
         VHHGLFq343TwYhOGVGcv3RcHTO2vY7yRTDeHgARDXQvHJaI8qLLunFc+O99ask5W+QBV
         nNiVN/Nur8fO7Rsxt4SglmK5YpOagU7GFOyPSYndzqq5+EdaVL1rITeW+1Ga6CQtCIbO
         7qRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZwsDlgezVgU71g96jAPbtlGesTTowoUVW1lGeshn+Dk=;
        b=GrOPmoBAmwCGAFXnMU7GkoUUSxD+W9DXOCAgMU9A/lFkHSZjOTEqR3WQl+OUUHzHRw
         qLnzh0EEdBBNwnkhGeZXaD4x9BCEo07oT3kuCOQ4OdY1oHROWeXGAD23fIY62I+/j96Y
         cPrecf/K6e9MbduGdTLXfTqwc7J/+yTqf1ZsyZK0aiUPMmnLv7S71bGjAOoLypo9eUIQ
         LwVW/BsT2xLyZGRgdwZer6l/WsO0Dx4iEW7C+n3e/tjPh8Kodc430bD2oGLjOJZuXuvt
         8SUbhEqaccUbs0BO78M9BRFeig/8TCe0hSN2kD8mfsrvLO7vVBgpdgqsWBLj7ce1pHFW
         y24g==
X-Gm-Message-State: APjAAAUmAu8ryHQMg/0a1cY8bt6LTQHGxyRHqp9uLnoooQVgkF6M3vSd
        ynStofkmWD6O2olGBr7aTLCJW51/
X-Google-Smtp-Source: APXvYqx+HGCN7rMesgEy4wWymyH+5d10BQfEgnAykd/zbRXcdkmaUsQbkSyxtliWQ+aowhWPX/z5/w==
X-Received: by 2002:a5d:8b52:: with SMTP id c18mr16528057iot.89.1563034578927;
        Sat, 13 Jul 2019 09:16:18 -0700 (PDT)
Received: from [172.30.248.236] ([67.133.97.99])
        by smtp.gmail.com with ESMTPSA id i23sm8562030ioj.24.2019.07.13.09.16.11
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Jul 2019 09:16:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] execve.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20190710172749.9569-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <de7976fc-d192-1909-8b58-33546c4cb586@gmail.com>
Date:   Sat, 13 Jul 2019 10:16:11 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190710172749.9569-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/10/19 11:27 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks, Jakub. Patch applied.

Cheers,

Michael

> ---
>   man2/execve.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/execve.2 b/man2/execve.2
> index 840562e38..0266adc54 100644
> --- a/man2/execve.2
> +++ b/man2/execve.2
> @@ -325,7 +325,7 @@ will be invoked with the following arguments:
>   .PP
>   where
>   .I pathname
> -is te absolute pathname of the file specified as the first argument of
> +is the absolute pathname of the file specified as the first argument of
>   .BR execve (),
>   and
>   .I arg...
> 
