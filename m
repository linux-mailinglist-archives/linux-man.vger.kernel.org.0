Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54B483DEE3B
	for <lists+linux-man@lfdr.de>; Tue,  3 Aug 2021 14:52:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235945AbhHCMwW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Aug 2021 08:52:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235877AbhHCMwV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Aug 2021 08:52:21 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4A98C061757
        for <linux-man@vger.kernel.org>; Tue,  3 Aug 2021 05:52:10 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id b11so19870837wrx.6
        for <linux-man@vger.kernel.org>; Tue, 03 Aug 2021 05:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/1ZNP0xW4l6ypKbVoLZx8+mju48shDSd7YwXQm0ZkTI=;
        b=oIMeTGxqL+VOj+Ik4+DyPN09zki6Ta95MIvxfxUDqFmDQYQG8iLPaWRyIJiuemYWKL
         GUBqSu7sKfCTVsUF5eCkeKvCy/syhxUgX6G+IKhAwmN/5NGJqd/H1zGQ2CuB7IcOZle0
         Cjd8npvakQgBeW5SVAnFHBzE+/soX7XQSHJSOkkwVxgN/WSCj76Ae8EODEM2N9MWhHJ9
         /GYgu+Vkhbs6hHf3Ygoh/Jzxu8Ai7yhJenZUMqpnbJwvobnCn3kJjJPSdH9WdMP/dVvD
         BWnqvupj0wjAmhVW4Grmlrq3Fwl/LzJqUmkLKdBgmV6wZpZ1fxCN1IFjBPuX2BL6aDL6
         34bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/1ZNP0xW4l6ypKbVoLZx8+mju48shDSd7YwXQm0ZkTI=;
        b=CIJN7o0EgqLmG6b/PyMoctctHZdb0VEijkg2+pdC3G8aySP3jB1F+pPMerQIU7U9rI
         WyHJOBWqFHaNHxFpKlN1Siz0oSGxCPS7J++ljXubbXfFeurFmRqBzlSUDi/thrVrZ5W8
         FLrRK8XB6cP8GvhCnbwRRwzOlFVHpxc0mYo+/HDVUPZsMtx+4pJhdLbS/2qehBxhKcSP
         jpMrnp5Ltcd3wviSKQRbHh+0v41uI2PTiCd/t8RC910abe4cGCvXK060S8kP4DIwIilG
         BoKSKgMY3Z/MXIMCyXaZUgl1YjB4GZ9AXFURCSTSfU3fhkMWJobjSfLRc+kSrjgjgMkJ
         OwOg==
X-Gm-Message-State: AOAM5324JMmHykM1LBDlLARN4BIrrOsI29KGa3gk04045oeClEKhUdEa
        mgOnDZh90yHHJVVRzqXlk1+rfnveUzs=
X-Google-Smtp-Source: ABdhPJzwuTLknnLOdgMGH9AoumYgc02ZXnoqnOwvrEb8Ct3zZ8ooZ5t7p5uvERky+sjJ/Nq0DaeSBA==
X-Received: by 2002:a5d:4951:: with SMTP id r17mr22258705wrs.208.1627995129283;
        Tue, 03 Aug 2021 05:52:09 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id u2sm12940312wmc.42.2021.08.03.05.52.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 05:52:08 -0700 (PDT)
Subject: Re: [PATCH] mount_setattr.2: Minor tweaks to Chirstian's patch
To:     Christian Brauner <christian.brauner@ubuntu.com>
Cc:     Christian Brauner <brauner@kernel.org>, linux-man@vger.kernel.org
References: <20210802104215.525543-1-brauner@kernel.org>
 <20210803113540.330533-1-alx.manpages@gmail.com>
 <20210803122832.3c7c6g4o5wg5pazb@wittgenstein>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <0e4c1074-515b-3871-e6d1-1d4380ac59d9@gmail.com>
Date:   Tue, 3 Aug 2021 14:52:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210803122832.3c7c6g4o5wg5pazb@wittgenstein>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/3/21 2:28 PM, Christian Brauner wrote:

> Thank you! Very happy we'll have a manpage for this soon.
> Christian
> 

:-}

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
