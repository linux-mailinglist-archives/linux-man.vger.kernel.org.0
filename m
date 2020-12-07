Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E53952D165A
	for <lists+linux-man@lfdr.de>; Mon,  7 Dec 2020 17:37:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727915AbgLGQfN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Dec 2020 11:35:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727754AbgLGQfN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Dec 2020 11:35:13 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1441C061794
        for <linux-man@vger.kernel.org>; Mon,  7 Dec 2020 08:34:26 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id z7so13391801wrn.3
        for <linux-man@vger.kernel.org>; Mon, 07 Dec 2020 08:34:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1mvVi+gytWP6lRerptLlAS7iOhyJsjZzYhFUYKXXwwo=;
        b=YXdSn9hTnYdXcCl8DTRvfW3K3Kc+iLp4hxNdACLy/m2Vh40TWbfT+1/ywrelaHdSNU
         +ESXAWc9RbogeqbWlvryE3kMUenPis9kyZ3ETnnCL6xPOo8hgbweuKQH0B0ouMkDGCOY
         WVqT3klUIiRG8hRpIciCflOI+XI0qZHr4B/1vox4BnL5GdYYhc+5fnC06gnSjLi7Hz/N
         C8H+yJfp4tX9JwSAnt9bUtFoalQw4qvm/yNnKYTHnzMOQ/U95nYJBhysjgXO9enw2RdT
         X7XRKO73rJgTgGGGxSZHfFo+fwGZiXYTsf0XKSsUp7huPh8k7rUudl2eZJbDJuR6agmL
         bJBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1mvVi+gytWP6lRerptLlAS7iOhyJsjZzYhFUYKXXwwo=;
        b=Qt7EBJY0LkWgCrWJDBPWdUhkWUOjGUZ8lce1wOjEcbEqVuuj4JY+OPgoOsO5Tz27Zi
         UQQMRb0+JlNvsH4PHipDTuN5Wa0jNEAS6azjMdDFOBcRY1oNoeAFy2jSX4MuHYy/M1Rw
         LrzDPEHJzBxlV3nlyHntTr69hYIauVswmEqwNk2AtQRBKy25To9Je4u0YmXmP98lAEkB
         IljEmURdW3P7YrveC5D1wXOleYqROFUS7iiLsikzjVpExfLrQwj+c7KYjtXmLWccgei0
         YxtiDUcEf/v/2+VLL686eoxzWuZJ/CfAg23AQDjnwAQVdScaQMg9R/1qHG81939BB3DK
         +9uA==
X-Gm-Message-State: AOAM5328pSkRRy2B3J7XTi0VD5dtL+ty3/9VSSYm5kFQ5PXJBlCybUDG
        0SNeO2rLqqiGI7RSQYDFI6tPxAmn6GvC7Q==
X-Google-Smtp-Source: ABdhPJx95FvaJpFHQi+N++G7HsvF6zumeiBVDoytuev1SUSSaVQDAsZSly49sEOg8WLH6D9M9Yg2nQ==
X-Received: by 2002:a5d:6286:: with SMTP id k6mr20694129wru.309.1607358865501;
        Mon, 07 Dec 2020 08:34:25 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id m8sm15071336wmc.27.2020.12.07.08.34.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Dec 2020 08:34:24 -0800 (PST)
Subject: Re: Missing value for tcp_syncookies sysctl
To:     Philip Rowlands <linux-kernel@dimebar.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <e2eacb90-222f-455f-97e2-8784360d7f5f@www.fastmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d02554ae-4cb7-dce8-deac-e68e4bd0ea67@gmail.com>
Date:   Mon, 7 Dec 2020 17:34:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <e2eacb90-222f-455f-97e2-8784360d7f5f@www.fastmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Philip,

On 12/7/20 5:10 PM, Philip Rowlands wrote:
> Under man7/tcp.7 please mention the "2" value for tcp_syncookies, which is no longer a boolean, default "1".
> 
> First mentioned in kernel 3.12
> https://elixir.bootlin.com/linux/v3.12/source/Documentation/networking/ip-sysctl.txt#L443
> 
> The kernel documentation is rather ungrammatical, so suggest instead:
> 
>> Set to 2 to send syncookies unconditionally, which can be useful for network testing (since Linux 3.12).
> 
> 
> 
> Thanks,
> Phil
> 

Thanks for the report, and for the links and suggestion!

I'll update that.

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
