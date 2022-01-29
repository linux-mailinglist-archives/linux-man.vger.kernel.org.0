Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B48F4A3267
	for <lists+linux-man@lfdr.de>; Sat, 29 Jan 2022 23:42:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243417AbiA2Wmh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jan 2022 17:42:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353367AbiA2Wmh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jan 2022 17:42:37 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED341C061714
        for <linux-man@vger.kernel.org>; Sat, 29 Jan 2022 14:42:36 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id f202-20020a1c1fd3000000b0034dd403f4fbso6712767wmf.1
        for <linux-man@vger.kernel.org>; Sat, 29 Jan 2022 14:42:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=LWGRGW9HMZ23xo9UAdh89t5lzz3TwV2QulIy8e09koQ=;
        b=LG43femVCxUD9/r15guFFXjYK/ijRhFhIeBAq9VyxRYymEMtRo2bc6URsVjHuxohG9
         xiSe8IEbP/ayH9NrJFxn76XqD5VGJXglM11FfsbMpD1x5hxnHO/QRVhGlwRhTk5vaBjr
         LEhv8ofulKaYvDaj3oiOn/nZTr2U5YeK6A9vSsDUXJx6LrlN5EqJ6OFqpJ25Mj+tkj0R
         UZm++Ud3nwv/tw1s1V598QFN9+dZsstG5G3uENuJRsEGkqU7Je+0ecM0VGO1uRTaxRnb
         1PW9pI+ov30SBhXfNCM+mKI1Bd8nCO4qgaUePs/Rc3t80KruYL2X+mKqx5S+QpG/6xYW
         XVBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=LWGRGW9HMZ23xo9UAdh89t5lzz3TwV2QulIy8e09koQ=;
        b=ti1JSQL3VJzGwRcSQZoETqfNO+nFKV3KR8PZSMuHqz7OBmTq8xF2cC0wsp/zMaDoJf
         v5JX9eWmAAxDe6ZuKjZ8DAaSPz6F/gVMb/JoPkBVvZLGoLeIU3mEMGOy7Ve8XfDRmoC+
         eEYuUlw/Izb77/9CIg5wVrv6SyFsrh7r5N06eL+Xlww3352MoXWtIXaaJu2wzCpXu4oG
         jAUzOq7fsKxydN6oAhgvLpoNXyyFNkGwdr2os0TwXk2v94RumRsfRFC3GAbwf1OKugYW
         tCtn/U2qgBJ8hXFHMc+iduu+CwVTSUkPv23xeHgzjdrqfRjg87VG8SkhA+jnVuRjIFpF
         kulQ==
X-Gm-Message-State: AOAM532sx7rHPp/eOfDrii/+KwlB4mL+3lSlfLXY/tc37eeq5pe0eTxP
        Vbl8sLaRdPTyJ1ZUYI5sojs=
X-Google-Smtp-Source: ABdhPJynZVdVP81aVlhlwAlJ1EXPzLEAEuhJLwLDiJkGg5DYmyZ9nZVZsvzf6jjf5+X0yvkHfBShkw==
X-Received: by 2002:a05:600c:198f:: with SMTP id t15mr20836445wmq.162.1643496155579;
        Sat, 29 Jan 2022 14:42:35 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t18sm8163471wri.34.2022.01.29.14.42.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Jan 2022 14:42:35 -0800 (PST)
Message-ID: <5cf0d670-74ab-1a02-c10e-c5c836a83f17@gmail.com>
Date:   Sat, 29 Jan 2022 23:42:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH 1/2] time.7: tfix
Content-Language: en-US
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <ddac5f5b40345ba565428378e9dcecdf840e23f7.1643483384.git.nabijaczleweli@nabijaczleweli.xyz>
 <5b73149f-ff52-e0d9-fead-0fe2338b40cb@gmail.com>
In-Reply-To: <5b73149f-ff52-e0d9-fead-0fe2338b40cb@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/29/22 23:40, Alejandro Colomar (man-pages) wrote:
> See the SI draft (2006):

s/draft/brochure/

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
