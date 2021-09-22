Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A40A4144DF
	for <lists+linux-man@lfdr.de>; Wed, 22 Sep 2021 11:12:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234376AbhIVJOH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Sep 2021 05:14:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234396AbhIVJOD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Sep 2021 05:14:03 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39E6CC061574
        for <linux-man@vger.kernel.org>; Wed, 22 Sep 2021 02:12:33 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id d21so4561531wra.12
        for <linux-man@vger.kernel.org>; Wed, 22 Sep 2021 02:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QI+BF5fVSmFevzT05qW/WGFMqvzcJj/HGqFbaSdePJQ=;
        b=MgoVP2Y7pOJ0S3AgG1/RUqz5Nga7WohAVjtbeQxbCkdq38qcOp16o1tCl735EiKDaA
         khJ1tJY7RJhL0tNUMXuyHKFz7rv9dVk4MhsX7Hv1ydByqCRDsmaq7omD4GNOqtKZEZTc
         gZzPWH7avnI3iUcqcin6yKTHvgjOXI3cVYHQZeUBThw4ebs9WhovfiU9ax1/M6scQU2y
         b3Qs3Ou1bB7kiRbMTlV3T85S024pVGRKMWkoMlKIggzvlmm9pMPjJ4sKgFuPr1O09860
         CUUbGDl7A5r1ThH7NmbkLplka22DU+KXycWyIx9jJ/mRBKpYtSC2/4DsgUG3MWRDIn2k
         L7XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QI+BF5fVSmFevzT05qW/WGFMqvzcJj/HGqFbaSdePJQ=;
        b=FDvQAdi72/DknrXg9D0g2G9P75+jszg1zTstgaHzlgu0xbrd9NeQT6KVdUhfKS/pN+
         TbMvw1kGKHuw1B1WsL6AScDQa+7+joTvpuOW7Yiq+eRlGN9TON44xm5h9FXbN9uQzMyW
         smS5k+vAnTV7kswL5hiYfZSfkTcIJYoBbSWYur42G2waBPZutN9A8Op3xjKsFOZPtfk9
         kjSXI7XoYIljmPSggBERPgiLbtWKNDVxA9VF4oO1/gvoFSZBwrWOnCJavLOxS8uzhi3B
         Iuxpss7jEaAzQEBrsuUG8QwJ4gtcNPb/UKxRQXyLRUVHaMfKP9Qeq2lkzHNV51A/EDU8
         72AA==
X-Gm-Message-State: AOAM530Xb9NkwKRFby8NzwgIeqfyJFYsnb4R8eHsQHoJXTcpR9DgMWzV
        N4RhjlL+muO0c/PfdX7NzbHTIHt38Nw=
X-Google-Smtp-Source: ABdhPJxUkeBA7xiG9st2r3eyiRQROMinF0nOWFwQ4K6EREQxGkgN3uWI4mDTOOoksEWgE2OED8LJqA==
X-Received: by 2002:a1c:ac03:: with SMTP id v3mr9398196wme.127.1632301951822;
        Wed, 22 Sep 2021 02:12:31 -0700 (PDT)
Received: from [10.8.0.46] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id f18sm1798277wrw.63.2021.09.22.02.12.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 02:12:31 -0700 (PDT)
Subject: Re: [PATCH 1/2] rpmatch.3: remove first-character-only FUD
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <8f5f9b7d4f067a4a479fe400dee99120bf0a1abd.1632231952.git.nabijaczleweli@nabijaczleweli.xyz>
 <be1eaa87-3fa3-2e1f-7e6c-80362adbb935@gmail.com>
 <20210921160609.cq6vg2wqwchthqmt@tarta.nabijaczleweli.xyz>
 <38855813-ada0-24e1-2482-711d82af3e2a@gmail.com>
Message-ID: <64095d5a-e561-d024-5256-2dccdd3b6de8@gmail.com>
Date:   Wed, 22 Sep 2021 11:12:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <38855813-ada0-24e1-2482-711d82af3e2a@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi наб,

On 9/22/21 1:25 AM, Alejandro Colomar (man-pages) wrote:

> Since the C locale is the most important one, IMHO, and it is as 
> problematic as the BUGS section mentions, I think we should keep the 
> warning, and maybe add a mention that it depends on the locale.  What do 
> you think?

I mean, I agree with you that rpmatch(3) is **the correct** way of 
checking for a yes/no user response, but the programmer should also be 
aware of locale's (and especially the C locale) problems, so that he can 
also do some extra work and try to fix the locale he expects to use.

However, I also see it good if we move this bug to where the problem 
really is (instead of here, which is where the problem is noticed), 
which would be one of the locale pages (nl_langinfo(3) for example, as 
you said).

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
