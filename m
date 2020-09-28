Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29E7127ABF0
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 12:37:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726607AbgI1Khk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 06:37:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726565AbgI1Khj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 06:37:39 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 304FDC061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 03:37:39 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id k18so609206wmj.5
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 03:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=20GmMkQ8IpcyI8vtAzS1czMYhWjTs+xp59m7ltxSz+w=;
        b=CUGS9hwnj5CoBgLzsI3NBxGkfbdM2oAH631y0M1NZ2FSoDhkbfm375VY3GzEXVuH9N
         7SHvFp1uL0O1GL48+cPBCy9sWtpdiEo3tLBvwyiMfUbHYWuLPZIWdJe6gBnwDcXel4Gj
         UrwV1zg4LF7SMTX/XfXWyqKhrknrxkXEPpOL3ePgbBhMbNqE1oSM2z1OUZ3t3LiQyN0G
         cXExJyCk+qjN746qbt6xvTGK7WzUSJ98SaaLj8lZFKeGO4enUS0zfVX8asg7pZBOCl5D
         ivjg44F5hdd989RNQy7gUpymINS8k7WgZYtezTwLegnTxtTwd5sp/ljiTs98BfHjLuDK
         KenA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=20GmMkQ8IpcyI8vtAzS1czMYhWjTs+xp59m7ltxSz+w=;
        b=I+XlgclMag5kRtm9izVGT/sjNy6O3hZ9kO4uXLIoLnbFTr153ob8roExyRtv/P6Vz8
         OV8CD8qlB6A4GQtWdWZr6B1+yknLJGh+O8xXAELPO4Cav5HocovwSD6oEbN4Ij9FdOcM
         jZzloYAbSxoCLnXKhgGbkcvAmRaPmsxcUsu/NyCRYARaKBADnYMiN/BB2Hbu7jZt0E9p
         q+GOngZ+yzqMdkD0zx0gpcmuvyzrEWgLB6jC+cdd0m2kcyF2C3QuzYfi0T8/mS5FLWPa
         nWVZMUhLvmFjnSIvxCb7qGZk5VVlcKqQMkgfNNes0m50ci6cBaOixxbuXcjSkODrgaod
         a3+Q==
X-Gm-Message-State: AOAM531+NPV5z+lksoOqrkaRxjdfwyNAKdVi3zPvuRHffwumjscPS0pp
        4IDwiQTd3a0B6TGaI1S9EX8=
X-Google-Smtp-Source: ABdhPJzhwBX4sKe3Bb1xi7ZY4kC7m95JL7WtYQXjTjUpEiyWJ7bRkjdUIowRbw0x07ZvRY81GsznNQ==
X-Received: by 2002:a05:600c:c5:: with SMTP id u5mr953749wmm.14.1601289457962;
        Mon, 28 Sep 2020 03:37:37 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id g14sm872000wrv.25.2020.09.28.03.37.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 03:37:37 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] system_data_types.7: ffix
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com>
 <20200928090322.2058-1-colomar.6.4.3@gmail.com>
 <CAKgNAkjOX27k+RFvJC+icZp3dC2bK7aQiTb4Qj4Oc=NfDYZP5w@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <a26eae0e-3c3d-74b9-2afe-8106815c6905@gmail.com>
Date:   Mon, 28 Sep 2020 12:37:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkjOX27k+RFvJC+icZp3dC2bK7aQiTb4Qj4Oc=NfDYZP5w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-28 12:34, Michael Kerrisk (man-pages) wrote:
>> BTW, is there any way to copy the CC list with git send-email
>> from the email I'm answering to?
>> Right now I'm manually copying all of them each time from Thunderbird.
> 
> Sorry, I don't know. (Not really an answer to your question,
> but are you also aware of "git format-patch --to=... --cc=..." ?)

Nope, I didn't. I'll try them :)

Thanks!

Alex
