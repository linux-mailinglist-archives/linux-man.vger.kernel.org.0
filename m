Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07F463FA530
	for <lists+linux-man@lfdr.de>; Sat, 28 Aug 2021 12:56:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233732AbhH1K5T (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Aug 2021 06:57:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232338AbhH1K5T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Aug 2021 06:57:19 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0C31C061756
        for <linux-man@vger.kernel.org>; Sat, 28 Aug 2021 03:56:28 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id e26so41746wmk.2
        for <linux-man@vger.kernel.org>; Sat, 28 Aug 2021 03:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cI/u2GJWWBbOJAo+xmAD8Xw7Xt3G7aRFgQ/D/eD9l7o=;
        b=l+U0LEDgliBNKW3Jj191uwf4WUxQMu0qJrtqn1zO2hzAPfNIg8j2DiPgN8N4ArD7tU
         U1e2/G/U2+UnsFdvVP0cZj06yUs1lYkUSB5/e5qqYM171uuk2jC454URmHkNc1wfNZpj
         ZhpUQFQrLhaGicsc964Be091NxUSKmUKN2fSX5vlWhvPCVVPLKTtH1szmP2EKxq+5xkO
         TCa3sjMVzhwEtG45Jibupph25GjX+M+Ppy2ydCAuwzR/kDmHwvM986JpYL8kJRTGjRDe
         H8c2/vUSGJjoQsCOZMrk8fvBD2H5MP0I8LBzYbDI3L3uUeCB9Dw8yUXMtl5RYRta9Gdg
         kwlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cI/u2GJWWBbOJAo+xmAD8Xw7Xt3G7aRFgQ/D/eD9l7o=;
        b=Qh9o1097ML0XC3pWueAQxLBxCntBREy7dKZKXBEQr95h4D30oleml4yJ3/bsNlS9e/
         Wfwg7MZG7O30HpBd9PPbizzxyXqDcqXsXi5P0VSbCDZHmeYQvkdFVoIOTX6vzI0qyEZN
         r70pn+KRr615ckUsoMwHTLwCfxoGUWyqufyn7BdZRmPyEjeryRwaEvCsbG3xfO3o7SYW
         p/FBNAy0DSSHG8NpfgiyuEDR7EsrEoQ0jzq1ZlntvvJMAgFSbpiEot0MkVbUsXOSwI7K
         ugmtgAoACO5OIh2Lfm//bF10pmsynTnbnQOoqZVQU7DthgJa8S1sdAO64hYQIChhFxba
         Y82w==
X-Gm-Message-State: AOAM531YHlyCMa2sMTBDOt0WVjszHz7bRmj6k9RW0uEf1g5s5lHGLtwE
        9bJDzJWCgG3OZBwQ3H6HLBs=
X-Google-Smtp-Source: ABdhPJyVEr8e+wLWcCt19guVIGYCIyAkJTdOkKYpuYl72yyfiB8EhtKEddN3pVtUL/vapWxpYq5pBw==
X-Received: by 2002:a05:600c:acd:: with SMTP id c13mr18307668wmr.28.1630148186957;
        Sat, 28 Aug 2021 03:56:26 -0700 (PDT)
Received: from [10.8.0.50] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id p5sm10244234wrd.25.2021.08.28.03.56.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Aug 2021 03:56:26 -0700 (PDT)
Subject: Re: Error in 'man operator'
To:     David Sletten <david.paul.sletten@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        Jakub Wilk <jwilk@jwilk.net>
References: <4cc4d818-58ad-529e-dd25-df3cb0fae66d@gmail.com>
 <71c78812-940e-8c15-c9ae-0dcde955232d@gmail.com>
 <40cbdcb1-1356-b749-ed53-61ed9dc2dd2e@gmail.com>
 <8aa463b6-98e0-f68a-a834-c08fb8c406e0@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5e26f905-b990-f2bf-1178-b777538fa650@gmail.com>
Date:   Sat, 28 Aug 2021 12:56:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <8aa463b6-98e0-f68a-a834-c08fb8c406e0@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi David,

On 8/28/21 2:08 AM, David Sletten wrote:
> All right. I knew I wasn't on completely solid ground since I don't have 
> the standard. Thanks for checking.


You can find all of the C and C++ standards easily here:

<https://stackoverflow.com/questions/81656/where-do-i-find-the-current-c-or-c-standard-documents>

And a direct link to the C18 standard (actually a draft, but for most 
things you'll need, it's enough):

<https://web.archive.org/web/20181230041359if_/http://www.open-std.org/jtc1/sc22/wg14/www/abq/c17_updated_proposed_fdis.pdf>

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
