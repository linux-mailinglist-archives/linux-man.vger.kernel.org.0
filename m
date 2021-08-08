Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0E963E37CC
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 03:22:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229882AbhHHBWk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 21:22:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229865AbhHHBWk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 21:22:40 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0CD7C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 18:22:21 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id b13so16357949wrs.3
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 18:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wKnx2LawPuzkDAqklkcbUP9RtdpZdmC3nNciWIitjG8=;
        b=qm2ErpO9jxNMnCOwRLHWQYLcUtESwC5Dv2UhAlgIv2D/cPd/sgzQBxEntTCxetIOl0
         OYOm+QjnvUcmX2Qof3VsVr0VybFNFAlLGS/+mIhnOmM7Xaxuoh+L6RE2g/xGnwbXXL8N
         Xyfn2O7bn0/aYNJEk/G4DPyD19A6BBhQWG3z/+veckZh4rSY5YsOImdAkCmsk2hOHPfF
         z38ctA59cJc1XqaJL5jU2Q8OeNbO/jaoibu6oEluFKAvX3NCtWIp1q+wlhtA9+GmfVuK
         iC9bLjstFZgWuR7JEemI1BL5I4yL2YgdeQO2/E9Ij7iP8EDhqQOkdDr2MksCghSpznLE
         6LnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wKnx2LawPuzkDAqklkcbUP9RtdpZdmC3nNciWIitjG8=;
        b=kJf4nCofOnUEXiCFVtIVObfsbbj/63gGglllXlre9vYG2tn5XFF/DiXbKtW36B0dXG
         iUCG6Geh9q5OnD0Old96sP0zJZwlPGoREVn9A/hS3COEIa/VWtZmYAGUyvAsMSIMuEtQ
         o/yg/QQ9Y2MEota6IOAMzPzq9EG5pwOxw1bC4jE5k7ZbQOJkMaPrnUvZrzbNOYi1Zdyk
         uk+947hem9P10H4ZiRyyfXoV91D1CofQTwYlTzG0EyIE6VxRgaeNY1F9lfTaQOpa3z5d
         I9t8VNpBumHDl5zet42Tpjj61WE33fytB8DzoD+hzBaUV5M9pdURZLPquvi7UWklzWOp
         8poQ==
X-Gm-Message-State: AOAM530zT/b6mlY5uZDmSuy2Tiv62eNvynHiuQhhZu4AEOl/oecZE6sH
        aGH/oeQikk438eq9HBI2fDbzuAV65R0=
X-Google-Smtp-Source: ABdhPJyOZ2sAhqIk6lLtKX+ZxjkBBQemZw/HwXxNaHMWIWgRoog5pfe3F4TjRasFr6rn1cdDVDJTzQ==
X-Received: by 2002:a05:6000:108c:: with SMTP id y12mr17663796wrw.293.1628385740650;
        Sat, 07 Aug 2021 18:22:20 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id v12sm14225788wrq.59.2021.08.07.18.22.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 18:22:20 -0700 (PDT)
Subject: Re: [PATCH 17/32] seccomp_unotify.2: Minor tweaks to Rodrigo's patch
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Rodrigo Campos <rodrigo@kinvolk.io>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-18-alx.manpages@gmail.com>
 <080245bf-feed-ee5f-8217-ac0ab9dc012e@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <6b3ee830-c039-5f64-3852-e4e84ce37278@gmail.com>
Date:   Sun, 8 Aug 2021 03:22:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <080245bf-feed-ee5f-8217-ac0ab9dc012e@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 8/8/21 3:13 AM, Michael Kerrisk (man-pages) wrote:

> 
> Good clean-ups, but still I added some fixes, as below. (The first change
> is just some slightly smoother wording, IMO.)
> 

Yes, it reads better!  Thanks!

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
