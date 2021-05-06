Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA3843753A1
	for <lists+linux-man@lfdr.de>; Thu,  6 May 2021 14:16:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230209AbhEFMRK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 May 2021 08:17:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229777AbhEFMRK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 May 2021 08:17:10 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45D09C061574
        for <linux-man@vger.kernel.org>; Thu,  6 May 2021 05:16:12 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id t18so5377008wry.1
        for <linux-man@vger.kernel.org>; Thu, 06 May 2021 05:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5olwlUmXuGoE28t+ZOTEVcXSvKF2jmzJKEQa4vkKk+8=;
        b=NaQGNrEmfz/S4ylROf+UvkIWY52pd/VQwME9bUzfGRyrn8HXIkBaEksIWhwIgN1DZK
         QhcKhYsfZFCefK12SfO0dgvgVq8RgG5oGBqXQ+jM58hQfXKdk7/hck1NOpef/M0YKb8P
         QE8lji6E0EZ92hDjYcw6gIflWEdH6hn3kW3a+lfibS9S0XoSSNvWWHdwBSS0Qil1E/3H
         E9F9OPK3CIR6E8TdUkpH6moGvm76KO5sGyr+lVUuFQ0n4vIgsdPalnx2OoRdqxieBsdr
         b4HGvIfnJr75sGy6cuZASnK2qdVltoZZJyFcv+OzXKd9D+MrxiT7WiBcn4JWZ0JFV4kF
         kENQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5olwlUmXuGoE28t+ZOTEVcXSvKF2jmzJKEQa4vkKk+8=;
        b=WysS15drWj6mI28H3B/wiMM7B+hw6D/dyqr4u+DjFc5JlbUz/xxm956wVKW8VY+RrG
         Y0fmWdN8NLzzwJVKd+sELFWMDlyXv+Uo/fkd94+QXx6rFsH9Fczn9/bB0u0tyVxO8u5h
         3b6K4k0ozock59IFsFz9dAeVtfKuW7jNEM9JwwL7rv5LaTVjr4j6MD6EPKehIufb3u0W
         E9IOCb4rHo+ln/lsr316jhLwDV6Ou2BaGUltGJOwPn3jAlA7RO81AfRuYG8OwMXi9LDh
         a+jXoaCa4Zo/1rYsiKMichY521aiZVuWMY0H8Xa5kf7q7JCBtLGI4HlUpIfPNKZOq4vp
         9MEg==
X-Gm-Message-State: AOAM533SKOE7KCyVJSK35Xae3ijhe7eK6zTy+dmm2NLWLrBU7asJy+T2
        NA+0ltXfmcBSt7HQuvkPf84=
X-Google-Smtp-Source: ABdhPJw+eEoihlhxKoUj6JVuKab7gfeoaO0y2meKDDYvjorhWEDmbF02oFwQ6H/E7emap+NPvck9Og==
X-Received: by 2002:adf:df03:: with SMTP id y3mr4876452wrl.409.1620303371064;
        Thu, 06 May 2021 05:16:11 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id s1sm10526905wmj.8.2021.05.06.05.16.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 05:16:10 -0700 (PDT)
Subject: Re: [patch] fanotify.7: ffix
To:     Akihiro Motoki <amotoki@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <CALhU9tkuovaHEhB6u6iL=V7+B51FYWEuBgRuekSojiibXnUzOw@mail.gmail.com>
 <cf2e3ee0-1ecc-8eb2-cd1e-df2568aefe8e@gmail.com>
 <CALhU9tmOLL=JuYLpDD7OCEK9+mSfq5DvWLaMVSQKZA3x9j18FA@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b7e3e750-70fe-ef9b-9d87-23f3a4257045@gmail.com>
Date:   Thu, 6 May 2021 14:16:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CALhU9tmOLL=JuYLpDD7OCEK9+mSfq5DvWLaMVSQKZA3x9j18FA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Akihiro,

On 5/6/21 2:04 PM, Akihiro Motoki wrote:
> I just posted an output of "git diff". Is the output of git am preferred?

The preferred way is using `git send-mail` (after `git format-patch`). 
Nevertheless, could you please tell me how to apply those patches?  I 
tried `git am` and `git apply`, and both failed.  I don't know if 
they're malformed due to the mailer, or if I just don't know how to 
apply them.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
