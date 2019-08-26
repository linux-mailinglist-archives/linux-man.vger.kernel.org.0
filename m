Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7297C9D898
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2019 23:36:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725983AbfHZVgg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Aug 2019 17:36:36 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:38519 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728704AbfHZVgg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Aug 2019 17:36:36 -0400
Received: by mail-wm1-f66.google.com with SMTP id m125so886660wmm.3
        for <linux-man@vger.kernel.org>; Mon, 26 Aug 2019 14:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+gi39VZ6j5P3VmP2cnk7B5Xo9ZTVbc1+Aay91vXU7p4=;
        b=W3gs1nM+/t0PreHB/sVzBqNF2YqOJIlRzdcj/hqi6YdKAET4lItzqbDSTGlgIJH/Mh
         LDHD2ZW5C+igY7zmGJcSInpISUTWkrG3UEqCsDrzgeeh5AWs5FFJUAyp3P+so7ZLr9Y6
         T2y+oRvYIGgtljwVKSqK8Z0LhTwFT3dOMq+7jP4/pY3ls+0eHGGaVwotqhjLa5mxUxaw
         l3vSjMc4aI/TglugKtlR2Qrmjgr2MV1GzJfBtikDMecEg8b0HhgGQENdM+mYOFbbj2Bn
         fiaBFrNDDwNxMPyrCQ9ZLb95d9WH+/vijaFFkSeyBokuaFizGT1hCVq0MUmyS1mQ/Afz
         0J8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+gi39VZ6j5P3VmP2cnk7B5Xo9ZTVbc1+Aay91vXU7p4=;
        b=YLl1fU9Oe6Z1PR59qePub6FZ6tQ+e1gUPlSXqdNefTUgLg0qm4tPCCHEd/lGrTKE5m
         NCOb7XKF8QRm5RdEChfO2+CKIzwNUTvc+qSM3b2MvcUmv+uGPS89xCEV3+K9BU2O0ryq
         drkNWbUOW7XRXrMrwm4SOI1AWecFzbsIhY6HEXs8etudNmA/zETuJlQsIIrSwzIeAbz7
         ABUTVu33PBe3Pk1aF0fX7Hsl5M8T1ii57x3C3JRf8aTor/+czCPSpdreM7p27vQ36VeN
         lU2nxc/Gou86XVKl8LZs9slFgzquMyAS+iDYEWOnq2ZV6HajxVBFe3J5FKAZ6cF5B8+1
         AzmQ==
X-Gm-Message-State: APjAAAXcph7uw7srHpqsbXch8KlI3aiuwHCxVz3m0DnxjQUlYOzh57DU
        OityCXb09xNxfaVfAaTL234Ivcfr
X-Google-Smtp-Source: APXvYqy2amVnfvETAvGKpdFO1KUp3wC5125ty1eSC2qNR964PX2xMEsJMdd4CDIcWSZti3iPwqcjEA==
X-Received: by 2002:a05:600c:225a:: with SMTP id a26mr25240002wmm.81.1566855394622;
        Mon, 26 Aug 2019 14:36:34 -0700 (PDT)
Received: from ?IPv6:2001:a61:257e:2f01:31ee:f41e:c688:df4? ([2001:a61:257e:2f01:31ee:f41e:c688:df4])
        by smtp.gmail.com with ESMTPSA id m23sm697559wml.41.2019.08.26.14.36.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 14:36:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Kevin.Barnett@microchip.com, scott.teel@microchip.com,
        Justin.Lindley@microchip.com, scott.benesh@microchip.com,
        bader.alisaleh@microchip.com, gerry.morong@microchip.com,
        mahesh.rajashekhara@microchip.com
Subject: Re: [PATCH V3 2/5] smartpqi: update copyright
To:     Don Brace <don.brace@microsemi.com>
References: <156683390892.32298.878243674084910282.stgit@brunhilda>
 <156683409288.32298.1583668158490610794.stgit@brunhilda>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4f1b58e8-ecd4-d1b1-1ea3-685569e7dec6@gmail.com>
Date:   Mon, 26 Aug 2019 23:36:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <156683409288.32298.1583668158490610794.stgit@brunhilda>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/26/19 5:41 PM, Don Brace wrote:
> Reviewed-by: Scott Benesh <scott.benesh@microsemi.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microsemi.com>
> Signed-off-by: Don Brace <don.brace@microsemi.com>

Thanks, Don. Patch applied.

Cheers,

Michael

> ---
>  man4/smartpqi.4 |    3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 704efb735..dc9ef1020 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -1,4 +1,5 @@
> -.\" Copyright (C) 2016-2017, Microsemi Corporation
> +.\" Copyright (C) 2019, Microchip Technology Inc. and its subsidiaries
> +.\" Copyright (C) 2016-2018, Microsemi Corporation
>  .\" Copyright (C) 2016, PMC-Sierra, Inc.
>  .\" Written by Kevin Barnett <kevin.barnett@microsemi.com>
>  .\"
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
