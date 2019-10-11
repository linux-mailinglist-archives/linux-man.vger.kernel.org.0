Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ADC04D4A0D
	for <lists+linux-man@lfdr.de>; Fri, 11 Oct 2019 23:46:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728935AbfJKVqV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Oct 2019 17:46:21 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:56174 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728719AbfJKVqV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Oct 2019 17:46:21 -0400
Received: by mail-wm1-f67.google.com with SMTP id a6so11735071wma.5
        for <linux-man@vger.kernel.org>; Fri, 11 Oct 2019 14:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mY9kCJS53MdOmhip4JTvUj1Wg5nLYRD6+cR4ocbUy4A=;
        b=cC8rwwYPtfFVpyMK25gF35iSyAf6xahlYxLt9XrVAXqvGLgzt0ZwdVbtxjQ8NZvXPM
         Jd9OZWaxp0gxNUmGIuxmW2mtifzCXWtIJNe1+rxIzzo5zPe7ish7/c+HcvciHnA91eX7
         QmbG1dFCQKv9+fuwamnxvS9GFoUlb6w7dbwdlymtKFFXqLC0fPAZnY8Dt+AHa82aJfMb
         Tf1+n5gByLTGwxl2uwl1Za9rw1rMn5hrITWs9nXulWclU/aIkPwB6PrLdpk4tP2WcGdk
         1JDG39UfdCDsOKLa/p+m3sn8/KwU4Qks2+33yl7lFiVSIuFjC5PrkHyBqi7jlrf6jMbP
         434g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mY9kCJS53MdOmhip4JTvUj1Wg5nLYRD6+cR4ocbUy4A=;
        b=io3zdF6fuQP8b2D1KHCM+b4D5oP6cxaph/23i2gjzQyZCVYS6lbquxJIUFVjrOT92P
         UUC5LetNqwO8NvRL89AhaPfbucvg/Plw+W+oUFKoPBCpCoulOyfhPoazQQ4OtRXHoqIZ
         PoK8eCB3D04FVMGlM9zv+hxhuNbmzA454nX/aEdEmuk8oLK5eAlJWGdB5Z/XlOJCtJRN
         aYajfLl3GcwwRYP/gTcjgGRknQC3nhHQTxbPvCXVYkP287XYniauY/VhIkmF8SmvQnhC
         ETYxqB6pDMs+NQ21tnmz6KVy6MP8p1Qhl2zXh/tljJ78blZ2t82RH6SsQENj/rGEqrhQ
         8PTw==
X-Gm-Message-State: APjAAAWeCZMa1tqrx2E89qArGj1TTNBOm4OmMQ9qy6B7pNBPlLl9dEQG
        ae9NXG4VLEVlskcfARvmP4ys+Juj
X-Google-Smtp-Source: APXvYqyx9m9RHziBL6KKbw8QRQSHQASkffgOEczVpDQC/N9JaDBEC3UN52CdgMk1fFLEAPoIJwUv1w==
X-Received: by 2002:a1c:5f82:: with SMTP id t124mr5019158wmb.114.1570830377692;
        Fri, 11 Oct 2019 14:46:17 -0700 (PDT)
Received: from ?IPv6:2001:a61:3a5c:9a01:fb47:94a9:abbd:4835? ([2001:a61:3a5c:9a01:fb47:94a9:abbd:4835])
        by smtp.gmail.com with ESMTPSA id 207sm16884622wme.17.2019.10.11.14.46.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 14:46:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] mount_namespaces.7: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20191011205811.3214-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <879a9ffc-7fd4-c9ee-406d-4dc7996f1490@gmail.com>
Date:   Fri, 11 Oct 2019 23:46:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191011205811.3214-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/11/19 10:58 PM, Jakub Wilk wrote:
> Remove duplicated word.
> 
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks! Applied.

Cheers,

Michael

> ---
>  man7/mount_namespaces.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/mount_namespaces.7 b/man7/mount_namespaces.7
> index 2447e3067..5c5d3f6c0 100644
> --- a/man7/mount_namespaces.7
> +++ b/man7/mount_namespaces.7
> @@ -1097,7 +1097,7 @@ An application that creates a new mount namespace directly using
>  or
>  .BR unshare (2)
>  may desire to prevent propagation of mount events to other mount namespaces
> -(as is is done by
> +(as is done by
>  .BR unshare (1)).
>  This can be done by changing the propagation type of
>  mount points in the new namespace to either
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
