Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06B9431AD2C
	for <lists+linux-man@lfdr.de>; Sat, 13 Feb 2021 17:42:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229674AbhBMQm3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 11:42:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbhBMQm2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 11:42:28 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78127C061574
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 08:41:48 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id a16so2266439wmm.0
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 08:41:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=C0ORPPP7w3c4zKSWHwAkQ1f7VPAzJEIWHDjAUdx/Scw=;
        b=vLeq2asK0v9w/XeZUvtxSj6YyYl+QsGz6vhjWD3ea13Xy5laajXGq0/Rfae1xUenxu
         ucFjimvnXKtonhwf3HE7jZOxIqUqN0PU7S3JXRw4UOuW+Qj+V1vDhZxG5G+sJ8mop+jS
         urkgzVgYZzhfdc/LwSH3GJnJCOryjwVTGSXkeqS3FHHup7TWjEe/TPrsETPS1252QjCH
         V9TpNo5fxdzCm6ahA1Gd+HsGBtMW0/SrwotRxUKegWyzN5R8AlLjQ2DtQ9mnKhibyI8d
         l4rFhF7i6S4+KytietrmIr++Z81Y8eSNpny1AuDEsTIlw9PlwNXkYq02dRnegPubYCR7
         DT6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=C0ORPPP7w3c4zKSWHwAkQ1f7VPAzJEIWHDjAUdx/Scw=;
        b=joAOIgApsFT1ybThOfW5tn+3amGuwOQVM3eyVydOt3uJZlSzYwvlAMPtTPLqbtaRS2
         Mf53TiCn+PRwVbVkSJsC9j0qfg4ON67AQBA/xzIfoTt59FsNizy5Gja7mQOR7b/pg0IY
         1QrCciGRr7k6dG6GKZyEPxjRiZSK+Z8Jrxmhec0tpBTg2k4p/Fb+yk9dYZzrbbBab9Et
         Gsgf+puv7dtSM3gdAK9MEon5w+z5ieFira28SPBkxHwTVdkCIgEgT/5eT+DYRGhskFCx
         q91nDMfZkIJtD5o2WJtqKigPk/plGOEzerO0it8Ig+005zMugnO3IRP8SlRQsnZ9osFU
         xaKA==
X-Gm-Message-State: AOAM5313qD8EzeQNk3KKuPWb5TFP4zmLQAf7pDhWDk1r4nrkFvhanWPI
        gO4s7OmX+9TbzBHL+Im2ncEaAtaB4h4=
X-Google-Smtp-Source: ABdhPJxs4zswN5oQY40MC5XNOTXjsA6r6QHdz6G/MlzgVNNxtst7omqo5uSkmVRA6CQDeKtbC9t87g==
X-Received: by 2002:a1c:4e07:: with SMTP id g7mr7261220wmh.147.1613234507043;
        Sat, 13 Feb 2021 08:41:47 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id l1sm15860356wrp.40.2021.02.13.08.41.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Feb 2021 08:41:46 -0800 (PST)
Subject: Re: sigprocmask.2: s/kernel_sigset_t/sigset_t/
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <cd449862-373b-c058-6abf-fd4b4efc8acf@gmail.com>
 <89b4b88d-a5e1-345e-b2c8-3d9479177e22@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <02fb777e-5d22-6066-2fde-d93159ba414b@gmail.com>
Date:   Sat, 13 Feb 2021 17:41:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <89b4b88d-a5e1-345e-b2c8-3d9479177e22@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/13/21 5:05 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 2/12/21 4:28 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> AFAICT, the syscalls [rt_]sigprocmask use '[old_]sigset_t' (there's the
>> '__user' modifier too), so 'kernel_' should be removed from the types,
>> shouldn't it?
> 
> Looks like you're right. Will you send a patch?

Yup!

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
