Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E52B040CD63
	for <lists+linux-man@lfdr.de>; Wed, 15 Sep 2021 21:48:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230451AbhIOTth (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Sep 2021 15:49:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229732AbhIOTth (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Sep 2021 15:49:37 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBF5BC061574
        for <linux-man@vger.kernel.org>; Wed, 15 Sep 2021 12:48:17 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id b21-20020a1c8015000000b003049690d882so5649292wmd.5
        for <linux-man@vger.kernel.org>; Wed, 15 Sep 2021 12:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ywrBW0+H4bunHy8q5Ph4p7xp983OSWUrYyJ5JaJFYwo=;
        b=dpvOynFxP2O/NvJRHEB22ZvcS2nifQ9k79NWclCXz7cYgihrMCTrZNwyxxHKG75VEX
         //pad5XTAJUyLae72cwiSHB9v+BZAWNxjiy4VBwDZsA46IAAY009Fw6B/K0nYfSC4qJ7
         IEA/AFvl8BFJ9QMMPEj7yx7z03uL3/WhYeJyit5i+lojelJT8X/hD9X13U3XPILY6Aj3
         uVW9pD4tEiXoa4M8Q9W30Uv9tQnjEDxzHi/ZLUaBp2LKI9HpHr155urcL/4JaH5nk4iE
         9PZZUv6ojDb3S30Yff92qyCOLK8BgV6ONX9ZZ4JspOA5NwCbRK8Rs9csRXdeYBZIYiqX
         RjmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ywrBW0+H4bunHy8q5Ph4p7xp983OSWUrYyJ5JaJFYwo=;
        b=JIj/owu/Q9lkLhaRDDya5PkLqO+Z1nuhJJ79s/2GwVy26suHBeG3auwxNZVr8d6j5L
         b1hjUl3hhDIZs3ut117n2qpsY83veAmB4XVfAG8FHNWJw/GDDpwfkIlwPe/pdFtFoEWj
         VucI05qFscbgerHcjJ7I3hVmukeZMqGGityQ/lI/ZvXPeWzwp5dSfW3JUBWITyqx4aZA
         6TvoSULSRTc1TixdH5W5cwEwHi8BoHANs4uo4YsUMsve6obZYIZIWdeBNfTUkfxurR57
         rJToLNm6MMIS1G62eWFfdUbOZ+Wh5kjqzHkfMLvx8JD8W9RRg//6uKh1S6LLA7ayC8Wj
         8cBw==
X-Gm-Message-State: AOAM5326hNBBpIRSiRtx+5yrZ2gvcIEOxB/SBiog33UFVQxUn+oGSpD6
        TgNSHyAXDSiWz5AeIrxSWrI=
X-Google-Smtp-Source: ABdhPJxOPdfWlGe5kPL7HC3EQq5Bavv3lNmdWnHbzrA6QMi8zBYSFGy9AGbzRglRghm8spHP3BPb9A==
X-Received: by 2002:a1c:f706:: with SMTP id v6mr6317334wmh.167.1631735296418;
        Wed, 15 Sep 2021 12:48:16 -0700 (PDT)
Received: from [10.8.0.26] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id c23sm838766wmb.37.2021.09.15.12.48.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Sep 2021 12:48:15 -0700 (PDT)
Subject: Re: [PATCH v2 4/5] alloca.3: remove GCC faffling from NOTES
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <fadbb957726f6d70ec87ca7f27fdf41c3042533e.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <15f837fb-1212-d974-5102-7b8075153761@gmail.com>
Date:   Wed, 15 Sep 2021 21:48:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <fadbb957726f6d70ec87ca7f27fdf41c3042533e.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, наб!

On 9/14/21 2:41 PM, наб wrote:
[...]
> +is required, lest a symbol dependency be emitted.

Sorry that I'm not a native English speaker.  I tried to learn what 
"lest" means, but it's difficult to me, and I'm not sure I understand 
this line.  Could you maybe please reword it?  :)

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
