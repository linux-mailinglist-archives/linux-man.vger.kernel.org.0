Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D547B25EF2A
	for <lists+linux-man@lfdr.de>; Sun,  6 Sep 2020 18:43:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726209AbgIFQni (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Sep 2020 12:43:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725841AbgIFQnh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Sep 2020 12:43:37 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D771CC061573
        for <linux-man@vger.kernel.org>; Sun,  6 Sep 2020 09:43:35 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id k15so12424039wrn.10
        for <linux-man@vger.kernel.org>; Sun, 06 Sep 2020 09:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oSe7Rh5C3nyTeivlg6P/NMaZkDEXL7xFJOigD9VcOe8=;
        b=Zk3XZGFAKFlpRJG5rQBJbGrQH7bKYpU3lSyBc2mT4HL2JdB1y9mw2top0HTW1RIPzX
         8Pj0ZtaG3iDcsUFxB6nuyCmr4Zsbsp7R/ZQP1bNqvONwkRCPT5mb9p/fsj2r/t+ZaBI0
         FeslPtGALVgJjpZvt1meU8Ykf9DcZ+t1pNSahIHakHIDEBq7k60CLKYnI++UCYroEF56
         PH1IVmanYPwVt2ttZ3oSfz7pi4/z6mCjRxNNFzxgquwR+BNLlrLKFjDgdIgNddFI3g2r
         ixLhweiXnQx5oP59JWQ6fuXgL+HKV4ynYlnYF0qPuq72SDWvhAY3hOWmb/nQ52AgVAqs
         WLJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oSe7Rh5C3nyTeivlg6P/NMaZkDEXL7xFJOigD9VcOe8=;
        b=PGhEiPzVuGk1+3NjLqx73EEZGeyPQRPL7G5v8OoNOpc5eva8amtcjYv5PKZ2+k+PR2
         6jz9ICOWhC1YE+6l+6K7QK9BuR+FqdkIKA1v4o5LflEzKmI/NRETBQUUIJ7K+55fAsxW
         Z708YmVEGaQ4u2S1Ja3CkPXMniUsRFtMp6eu3Cuk5LcUYaJXGYGr3LWzdWmZmli8XzTL
         a7/OIX8HiORmoIRYrqBETDHqOGhCcCY1TxDvhUtMzQehPDJQ7ug9OdsJsqi4OXAsKP4W
         ezmHd5RNmHAmmipO+Fc7kEBXnuRPumzGeAoNewhQl27xSEPTvfwux5tliBgKLvtthHSX
         Bweg==
X-Gm-Message-State: AOAM531by0EzO1083RAuMrjPfs3JIJvQ8566pczj4Rn2I4DsBWnVyyCW
        JjL4LVR3M5N0zjjI5Gi0yGdvE4hGwAdvvw==
X-Google-Smtp-Source: ABdhPJwsUxJ0ZIidvIJpuupQt0tUQeT+djF662jCm2P53UO7J3f2Tfk5ITjUn6G85lb5AUONizCnsQ==
X-Received: by 2002:a5d:4a48:: with SMTP id v8mr17751990wrs.304.1599410614259;
        Sun, 06 Sep 2020 09:43:34 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id h8sm23582520wrw.68.2020.09.06.09.43.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Sep 2020 09:43:33 -0700 (PDT)
Subject: Re: [PATCH 5/7] dlopen.3: Remove unneeded cast
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
 <20200905151501.609036-6-colomar.6.4.3@gmail.com>
 <e2a7096a-5678-245f-f5c2-0fa37d10ecbf@gmail.com>
 <0e29a44e-f3a5-aa28-a6dd-76f38c6295ec@gmail.com>
 <8e98e43c-665f-6554-0ee6-41e1fcd5e0ba@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <9ccab24b-c76f-f981-e0b9-850f8d3bf025@gmail.com>
Date:   Sun, 6 Sep 2020 18:43:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <8e98e43c-665f-6554-0ee6-41e1fcd5e0ba@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-06 17:13, Michael Kerrisk (man-pages) wrote:
>> The only thing with the casts is to avoid the warning, but they don't
>> avoid the possible undefined behaviour (only in non-POSIX systems).
> 
> Yes. (But, dlopen() is a "UNIX-only" API, and thus non-POSIX
> doesn't matter here.)

Agreed.  The cast is useful in this case.
The warning that is completely useless this time.

Cheers,
Alex.
