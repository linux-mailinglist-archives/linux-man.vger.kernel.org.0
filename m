Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B6842749C8
	for <lists+linux-man@lfdr.de>; Tue, 22 Sep 2020 22:05:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726655AbgIVUFW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Sep 2020 16:05:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726567AbgIVUFW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Sep 2020 16:05:22 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DAB4C061755
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 13:05:21 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id c18so18451963wrm.9
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 13:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kiY32ZObv6+sGlZk/FyZDkWTWHg8GbGT+chz3Ei8vRU=;
        b=qcB+XBElTxFc41jrAwujDT7J6bYPCwrvA9kBl71qlhPvYaUrXWBTvwUFiGRG5t4BMT
         QsvP9uG0PAcOd8zO/IwpFY4/6qaAkMcwoyUG6fN1yDc78OkE9KVkGOUUKpSOjIeU2YX9
         VXTqiy/lwaBHKwbvAo5goFNsE3jrvLr7fD6h0I2C0fqpbiNA3L6rdN3yTJmHHLurgECx
         pDhxA4yD6wxdoRqa9bhR94byiL0uBZkLm2DBDoybm1Q6OEsPVzF5ldy0aE3GRVTnxGqS
         d5bAzDLQp+V2YkAjd/jWB6rTgumSoNs8cJL2MZw0/M9F5z3/VbRR4eNsy9WyaCfIFqWC
         D8qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kiY32ZObv6+sGlZk/FyZDkWTWHg8GbGT+chz3Ei8vRU=;
        b=ljPdB4RVxhY1WCp4G4OfpnbWhZWaVqlwoq/x7qJdELE4mY+kClxZ2/h9fMqzOkLQNh
         YkEycFBcAPawgc7vX4YrmPZ24d/TkixVMxvsHfat8M0OA3O9ABpWqONbMAYZnzgmD2G1
         Oqbx/Rig1CsHWpelfVPYCzUfApKziD4X1a84nYgGr+W6WFs4AsDjx7qPm5dLm+WgeT+X
         2edo4EoyozTlY8xFo6eSQ0FA03yxZqUles+I5FHLIXx415gG01ykFoyeskxQgR3T66zw
         y6xjGJwQ4zPMrT+RSRJc8gNaFaBxK5sxVDGPfig+CuYmpRBR6uJPe2nWFwdWfY/OyB6b
         R9uA==
X-Gm-Message-State: AOAM5304f+Rvsr7eUC1sTY4hvDGFb2UIYhVSceF9fW8FDFfoziSPO14F
        98g+41+HNk2ErbyyfLwh/Gs6mzjg3gY=
X-Google-Smtp-Source: ABdhPJyId5LPZI+oyaON6flC04z7rEzSO+ySXTIrRXv0eDIe2um9J7zBZr8OEF8qLr0fQ8iqYB9IgQ==
X-Received: by 2002:adf:f7d0:: with SMTP id a16mr6818544wrq.381.1600805120044;
        Tue, 22 Sep 2020 13:05:20 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id 9sm5455446wmf.7.2020.09.22.13.05.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2020 13:05:19 -0700 (PDT)
Subject: Re: [PATCH 1/2] system_data_types.7: Add 'fexcept_t'
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20200922153822.33728-1-colomar.6.4.3@gmail.com>
 <42f8c77e-27a5-651c-9768-fa08d11e5ba2@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <3eccfa66-3711-df48-9beb-bfea87dfffae@gmail.com>
Date:   Tue, 22 Sep 2020 22:05:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <42f8c77e-27a5-651c-9768-fa08d11e5ba2@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-22 21:57, Michael Kerrisk (man-pages) wrote:
 >
 > The previous sentence is rather hard to parse. What (other) part of
 > the sentence does "to provide auxiliary information" relate to.
 > I suggest splitting the sentence in two and rewording.
 >
 >
 >> +A floating-point control mode is a system variable whose
 >
 > You suddenly introduce "floating-point control mode" here.
 > How does it relate to the preceding sentences? It's not clear.
 >
 > Going off to look at the standard... I see that actually your
 > sentences come pretty much straight from the standard. So, first, I
 > think the standard could have been clearer here. Second, and more
 > important, (for copyright reasons) we are on shaky ground if we just
 > lift whole passages from the standard.  The text does really need to
 > be in your own words. Can you come up with something?>
 > Alternatively, I guess we could explicitly quote the standard.
 > Something like
 >
 >      POSIX describes this type as follows:
 >      .RS
 >      .PP
 >      [The text]
 >      .RE

Yes.  A few patches ago I asked about that,
but you didn't answer to that specifically,
so I guessed that it was just fair use:

https://lore.kernel.org/linux-man/6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com/T/#mbfdcaf4fe625b4ff7ea90dc7396005fda1283612

But I guess explicitly quoting POSIX would be easy and better,
as you proposed.

I never used that type, so I wouldn't dare to describe it in my own words.

Thanks,

Alex
