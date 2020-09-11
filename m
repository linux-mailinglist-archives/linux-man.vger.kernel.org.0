Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAA01265EEC
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 13:42:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725783AbgIKLmw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 07:42:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725779AbgIKLm3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 07:42:29 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CF22C061757
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 04:42:28 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id s13so4139624wmh.4
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 04:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HKWhX36ND8UY6ly4qcDo3pMPWXTyMefHR44TJDlOz1s=;
        b=aKUfGlDZllAd9O6gbjL5hapkCZncVlDt1rOFQahKuvw3D0O4z2taYRv7nPaPGMVP1/
         VlCwOwiFIveBfk5bVivtXPCSntStV6OUTa2dEizSeLa1YrlrbELJH6pROX6ptMx6j4Sh
         5+ieoEaNNvuie4uURvwKi5gM7I+h4IpV9N3m9f7+w6CoP2kXQ+fAx+EXDfTFWcCuV1+H
         HHa+FzfX2cogIuQmsf/ZUvcrgbRoIH40iz1WBPlEwlhJHmUkWzPl4etpxPGpzpAxnkyH
         NS8XnYW6l31RrKrEirqFk5x3LWhXGaSsFk8e0KqTBa83K7Q7GgDQMaJb3JgM7VCZLv1i
         OcOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HKWhX36ND8UY6ly4qcDo3pMPWXTyMefHR44TJDlOz1s=;
        b=lgVOjUhXzo1/o87h0uPECSvxs2PS5qJ6Ju8PQz4heG6m0C0Sfdv7s8xLWbFw/gxwgw
         oypaz562VXu4d9i2trruolvR+YgyT6tzleZQFZ6avCwx7mdAiGaDIqf+Pd7mm7h1gipC
         BgfEaInKF2V6YJ3V++O2STRy0/VuvJQ+caK2hTGINyanBfoKbL2XRgV+yLnA3AZLTNbp
         wtOnyYLphHx3BG2lDn/crIYgu03UrfzUvS1qRJkHpNZ691ycVgQCp1nK87XuEHArVvas
         C9xghEq3/+QwJidDmdyiTc3/uwjLnSR/himV//UEULD5UXhacI1NSm0+kBDdYq4INomk
         hngQ==
X-Gm-Message-State: AOAM532ShINGwg9sL34BLbpClLQI/fCOJyBnstOT4FAj7Iy17ir0ePyY
        r9S0r4X59bsn+tbN/2ieAj7la7YUHz4=
X-Google-Smtp-Source: ABdhPJzd3o7lESeC2M8gtWqphTKQLWi6tsRDl1j5Wt357ONNib2aJ9Oxeis9nl7KcavkIJKLBIhpIw==
X-Received: by 2002:a1c:c906:: with SMTP id f6mr1921928wmb.9.1599824546860;
        Fri, 11 Sep 2020 04:42:26 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id 70sm4118472wme.15.2020.09.11.04.42.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 04:42:26 -0700 (PDT)
Subject: Re: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-23-colomar.6.4.3@gmail.com>
 <20200911093333.blym5ufplu7xzhwx@jwilk.net>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <70bc7300-0553-d913-48b7-1880b8cb9e27@gmail.com>
Date:   Fri, 11 Sep 2020 13:42:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200911093333.blym5ufplu7xzhwx@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2020-09-11 11:33, Jakub Wilk wrote:
> * Alejandro Colomar <colomar.6.4.3@gmail.com>, 2020-09-10, 23:13:
>> I copied .nf and .fi from futex.2, but they made no visual difference.
>> What do they actually do?
> 
> .nf disables filling and adjusting; .fi re-enables them:
> https://www.gnu.org/software/groff/manual/html_node/Filling-and-Adjusting.html 
> 
> https://www.gnu.org/software/groff/manual/html_node/Manipulating-Filling-and-Adjusting.html 
> 
> 
> In membarrier.2's SYNOPSIS section, there's just a single short line in 
> each paragraph, so it makes no difference.
> 
> It does make a difference in futex.2.
> 
Thanks, Jakub.

Cheers,

Alex
