Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2C6D2CC00C
	for <lists+linux-man@lfdr.de>; Wed,  2 Dec 2020 15:49:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728210AbgLBOsY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Dec 2020 09:48:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728172AbgLBOsY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 2 Dec 2020 09:48:24 -0500
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CE29C0613D4;
        Wed,  2 Dec 2020 06:47:38 -0800 (PST)
Received: by mail-ed1-x542.google.com with SMTP id r5so4123151eda.12;
        Wed, 02 Dec 2020 06:47:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=B0I8jxm6Jyec8wKIomsaIxY6GAnbevbFCLxngFdIpiI=;
        b=euCPwGeplk35KSCpnhNHw69ul2jBDHjFlCR++dr+nCwaWhwSk1bz/yCaIigTFCKcTs
         gM4kfCWZGJ6YNNyIISklxQeV2aeTPjZJgsFaCPA6orKuU/jwex/1sCRFY5hvlr2/BmZY
         Vf8Ls7PJwmuVvpt6z/xDd7752++XVmoKnyCEIWh4uOf/dKqJQqVsS0Gknhwqlv076fiQ
         uh8KifmZZR4jwVFZxhSGZcTGhoHNIU2gh+iFclcaSzfRFHQzYoswgLa/Tsb0nYaUMqKF
         A2lOlhDHAgIK90rldu0BQDQYN0BooTdys1UpITp2c8jueomLXgHgEXSnguDKROZo8vVt
         HQ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=B0I8jxm6Jyec8wKIomsaIxY6GAnbevbFCLxngFdIpiI=;
        b=JuzLhdH/duTVSw/WO5Gtk10hma/QU5EARz81B9KwMgLbTcH/DBkcUa4fMhUkT3v52O
         RXcpWyQaN4R8xWQYzuZHfnBrazvuc40zMiXnKCPWDg5n7FuQOeNnF96r1oJhC0cPUQpw
         OBtqQM3ba+yT4LXeoMfEXZ5tJid9nOZzRT7URFIDE+MPojbNvq5HItA77er+nrpfSQMp
         N6In92l9K/0sAIJ13vKimRlBOYIEdb4cwyLcvZcCdEnjDnyHahEHwQHzJbmojBtsQYym
         3jiGGZmgpSoZ1I3vFy8F7D8EP23/Pjb4pNPi3J3H2X1c8qwxXpFnmweCV1DZBD+8xAkT
         1udg==
X-Gm-Message-State: AOAM532zt68lBGwuma4WB/4wdAr0Kz8uvIv/GnK9xpcF4YXTCznHd8Ua
        32WxqliSFFQVK6H7cOIl0gw=
X-Google-Smtp-Source: ABdhPJwwSV0IiOkpP2AeI1tXkytaPPFlCjcJN+uV7hbQYC3VkjtbcgMIHrdO7D0637I0CJF7HOmUaA==
X-Received: by 2002:a05:6402:31a5:: with SMTP id dj5mr252594edb.110.1606920456876;
        Wed, 02 Dec 2020 06:47:36 -0800 (PST)
Received: from ?IPv6:2001:a61:3aad:c501:15d9:d9fb:bc21:cb92? ([2001:a61:3aad:c501:15d9:d9fb:bc21:cb92])
        by smtp.gmail.com with ESMTPSA id c25sm57983ejx.39.2020.12.02.06.47.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 06:47:36 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-sgx@vger.kernel.org, dave.hansen@linux.intel.com,
        x86@kernel.org
Subject: Re: [PATCH] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Jarkko Sakkinen <jarkko@kernel.org>
References: <20201202071543.74866-1-jarkko@kernel.org>
 <f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com>
 <c698b115-2daa-c92b-da92-abe261a37222@gmail.com>
 <b57aa7d7-b4d0-6358-258c-45fa69e40df8@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1b818d58-4a82-4192-ab01-16a5ff2d7cfa@gmail.com>
Date:   Wed, 2 Dec 2020 15:47:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <b57aa7d7-b4d0-6358-258c-45fa69e40df8@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/2/20 3:45 PM, Alejandro Colomar (man-pages) wrote:
> 
> 
> On 12/2/20 3:20 PM, Michael Kerrisk (man-pages) wrote:
>>>> +There is also a hardware constrain that the size must be a power of two,
>>
>> s/constrain/constrain/
> 
> ?

Oops. s/constrian/constraint/



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
