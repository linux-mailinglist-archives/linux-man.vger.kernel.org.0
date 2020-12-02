Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8E152CC001
	for <lists+linux-man@lfdr.de>; Wed,  2 Dec 2020 15:47:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727010AbgLBOpt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Dec 2020 09:45:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726121AbgLBOpt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 2 Dec 2020 09:45:49 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3FEBC0613CF;
        Wed,  2 Dec 2020 06:45:08 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id r3so4275431wrt.2;
        Wed, 02 Dec 2020 06:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=m+yukannt9F6hWVviswNsRd6nUI7x7SIk2Qpw5pl3qQ=;
        b=BKAEfAvnu1KXL9sGLVkjvH3uIBVU8hOHj6dt/BLSWjLlzAlZcR8yAp/JkuG33HiqeC
         AeQP23/rOi/eJzXk92x/RoD6DaKxW+0Z1GEnLrsjYoK7uTKdDaN4WrWBVeF1CDLcjsEa
         Yjs/O93ZFfiibsLpyIU41/0OD82dX/6bMhvC3AK0s/0mnKMVIgU/sAsbOpcer3++2pKh
         xYjOECFwd5hXVxKoMn3q/QCRMdLda2Ifo8THoQLiPb6gH1pbDn/NgrmsYY2RZ8ihGGEU
         LPAocplKtiDGcJKawT+OkKa/ICmxv5xzmO/0dr3WJSzxx3vk7YCjG4+bWPPQwiebuMYV
         crpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=m+yukannt9F6hWVviswNsRd6nUI7x7SIk2Qpw5pl3qQ=;
        b=nAAKf8UX6I5u/ofn4C+tHmvzOdobyEmqntZC+milFpLZBvrnQNp6XZczec0ZC3aPgV
         wx9JSEfJkGIagE//clbS6Wr+amK2RbmgRYU6OZO4o2ePXSQ0AjYvwHS/9mP56iBlnjGN
         3y4zUNFwefNMYHhWkXVvbdy9vNpVX5IYpECMz2wApJR3W3VxfvSEYzQdAZvrzwCNTkyo
         LAyFCuju7nEYQQrCPRAAQ6MyMVD9zao9+0XW39YXGy3bXsxB1IQGvK66MOhnffFWhv3q
         OQ1TnFyYGyrQlk7Bp8e53KjPo+cPHo5CcOnWX1NZfZvnMmIuc92ipaQn3a6DKKpJGqQo
         qfrg==
X-Gm-Message-State: AOAM533fORe1WKkVzVz1OBoIWHYbn4JpQbtW2yCafKZoIWzZd5N4+flQ
        94/Qd8ZOCNMh5UgS/G4WxUE=
X-Google-Smtp-Source: ABdhPJyYjF6rRy8axaZI7hZ9OW8zTZHmxJZDNYfmWDeaWxm3WvGMID6xEULJ2l/1+yjaxmGB1RqF2g==
X-Received: by 2002:a5d:6050:: with SMTP id j16mr3872871wrt.158.1606920307399;
        Wed, 02 Dec 2020 06:45:07 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id n10sm2354884wrv.77.2020.12.02.06.45.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 06:45:06 -0800 (PST)
Subject: Re: [PATCH] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Jarkko Sakkinen <jarkko@kernel.org>
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        dave.hansen@linux.intel.com, x86@kernel.org
References: <20201202071543.74866-1-jarkko@kernel.org>
 <f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com>
 <c698b115-2daa-c92b-da92-abe261a37222@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b57aa7d7-b4d0-6358-258c-45fa69e40df8@gmail.com>
Date:   Wed, 2 Dec 2020 15:45:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <c698b115-2daa-c92b-da92-abe261a37222@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 12/2/20 3:20 PM, Michael Kerrisk (man-pages) wrote:
>>> +There is also a hardware constrain that the size must be a power of two,
> 
> s/constrain/constrain/

?
