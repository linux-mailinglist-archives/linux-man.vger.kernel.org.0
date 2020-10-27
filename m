Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA3A529A97B
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 11:23:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2410572AbgJ0KXQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 06:23:16 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:42007 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2410469AbgJ0KXP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 06:23:15 -0400
Received: by mail-wr1-f65.google.com with SMTP id j7so1219329wrt.9;
        Tue, 27 Oct 2020 03:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=B//Sw2wJ0hqD7Gjr+kfAvqiPXu+g6LMWNc+2dvqZKIA=;
        b=U2LVGOjuEcsuTaQ7PTIcv/VGNK7UzLj5gvyajdmn/J8FGZPsqYgUblOpjDzP7cenol
         sxi2McX05b+mBho+dssdYLyRMapbDpvfSfXzHfL9SgAehzDiXtEwEoj4RWmGlIC3hjIS
         Hf4KzrOERlUwhlGwNFYXQ1Sxll3QFB8dF4l0Qh61+G8nhbas5KaVf5u62VWs3QeR0kiy
         D7JmrX4IM0t4b5hSvYxVvy0LwskKa+rmffYjgh9UMqEnG8nFciT6cPRcymmKtsYBRMy8
         MRcXNNRLDS4kQgPjcPkE//GrbUDAKxSeTjzDiFuMlC+i7nGn8yJ4XrNMxh+mfRa2frCx
         xwqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=B//Sw2wJ0hqD7Gjr+kfAvqiPXu+g6LMWNc+2dvqZKIA=;
        b=HxR+3xYXSmKAVs95BwpwNS92gJ0bGafnZNMOZdnI7hnZxHPhI2XSrSAD50MJbAbsPv
         KaK4MDEafMlJDQ1DYD9fAYu8KULcuRuV6f1P642PEfAvufcLsorzhha39X65GA/xPSLa
         g6krl3VgsW7IHisAMBmeJtiQSnEUumUZyG486V19k2WgZcIML4ZV5jPoHn366MDyJDYv
         qX5JOb166KtTOoGCad0zPNVyaqOCq+T6bIojlxtemdXsnGZ9GoxX2Q13eSjQwTUPxmkL
         F4EpJuYudSmdius7nrr6MgorU3S8OkQlYSjGX36AwWOK9L2rqa1r/YPepggHzAy9GQFo
         mLuQ==
X-Gm-Message-State: AOAM5316AiyIghUm44QWaUaiy/Rt89IrNQzNSNJibfSFXxtZbDTLyDDy
        EhipZuUKBM2W3ImL89JHT5l3DYqr6n0=
X-Google-Smtp-Source: ABdhPJzvcuK2CIHkQV/DwWjteTFGMtPQLGAwYCGeX4Ipo1xxA2jrDeD0BwPs11em3axTqMHkiTbdFQ==
X-Received: by 2002:adf:fd09:: with SMTP id e9mr1988097wrr.241.1603794193189;
        Tue, 27 Oct 2020 03:23:13 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id x21sm1338343wmi.3.2020.10.27.03.23.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 03:23:12 -0700 (PDT)
Subject: Re: [PATCH 1/2] system_data_types.7: Add 'off_t'
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org
References: <20201005221247.13065-1-colomar.6.4.3@gmail.com>
 <b24d9f74-d07c-5d07-0788-eb8f1711d71d@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <87faeeeb-f2e0-7f1e-5692-78b43242f20b@gmail.com>
Date:   Tue, 27 Oct 2020 11:23:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <b24d9f74-d07c-5d07-0788-eb8f1711d71d@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-10-07 08:53, Michael Kerrisk (man-pages) wrote:
> On 10/6/20 12:12 AM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> 
> Hi Alex,
> 
> Thanks, patch applied. And I trimmed the "See also" a little.
> I'd hold off on documenting loff_t and off64_t for the
> moment. As you note in another mail, the *lseek* man page
> situation is a bit of a mess. I'm not yet sure what to do.


I saw a TODO in the page about loff_t.
Just wanted to ping you in case you forgot about it (I did).

Thanks,

Alex
