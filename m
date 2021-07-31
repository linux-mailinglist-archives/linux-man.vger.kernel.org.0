Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0A5A3DC5A6
	for <lists+linux-man@lfdr.de>; Sat, 31 Jul 2021 13:04:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232501AbhGaLFA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 31 Jul 2021 07:05:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232450AbhGaLE7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 31 Jul 2021 07:04:59 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD3CAC06175F
        for <linux-man@vger.kernel.org>; Sat, 31 Jul 2021 04:04:52 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id f14-20020a05600c154eb02902519e4abe10so10758821wmg.4
        for <linux-man@vger.kernel.org>; Sat, 31 Jul 2021 04:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ID26RlCylFXJE+xHMdQGqEB68XZXtx4INKM07+40dyk=;
        b=L2W0YV4o/Y8vckeAJwAgL1S8HmIM1O61h70x3QOHDRa7OIW/kDZloQHNswidPINUH5
         Sghyt4L7ugS+2TmAmjiIcVWBB5LriRA4JFjJE5oyUrvM94XCpnzD9iiAlk1B4IsSNOoe
         O92PTDCJFwucxeMCaFPAfapgS/Mwr9EgGYbZNOk3quFY9dZRBMtuQGbeioZMq6IA0NWs
         /VPrK0jmJ0VBXwSHoe4w1Xv/2rstb/35cDfS5P+/KPh/k5EBZdCB/idyNyriPpKwGaRB
         SjeifQqDjkHYvrvKPBnFNjSbVD8h1JhF489XuSWKG5y1HFAr7/1dIEAi913evn31LlQj
         0YJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ID26RlCylFXJE+xHMdQGqEB68XZXtx4INKM07+40dyk=;
        b=gTnEW6GL/qTxs2jf9bilnXhOR5twxwjiXxe5GBr72o8/OUY8lRrmzScahv1rUkadbP
         HKemZE0EyRBtNeQwWik7gd+SaBaMr+EGIumT/+kMuai1gpUnD/POEHAGjiM0ceFbL2uW
         lOI9MezLxnrNxgDhy0rTK/KaRPNWM4AF3JX2HRMurUoAGOiwCHSrvsN4+bQU5nFhUL9L
         MG0+rCr2IpoUpykdC+KbHHliyZtADJkGj0ZGVI2iGBKDef5QiINxqtLmKe8nnDg0PBso
         nR72n8o1LiwUWvm0wF1JNBY7+ysmkEXVUO221jtm3P0YiqR61wHoe75ONvzzeOlMClCG
         oAgA==
X-Gm-Message-State: AOAM530j7m7D2DmaiI0Ys3a8VMx4f6EsM9aEjVGc4sA/No0rkQcR3su9
        5o2cpWRWblcf3QwxEgj3+oscwnQNJRk=
X-Google-Smtp-Source: ABdhPJxJnaKw5jB+YqH+ez3DFl48H7QKXfevEySZhktk41DMj4x2uU96+J3U7oTFnriiHc9loaWHcQ==
X-Received: by 2002:a05:600c:41d3:: with SMTP id t19mr7700062wmh.157.1627729491424;
        Sat, 31 Jul 2021 04:04:51 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id v15sm4686338wmj.11.2021.07.31.04.04.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jul 2021 04:04:51 -0700 (PDT)
Subject: Re: [PATCH v2] termios.3: Add information how to set baud rate to any
 other value
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210730153044.23673-1-pali@kernel.org>
 <20210730184536.13620-1-pali@kernel.org>
 <20210731001943.pqpclzfhjgwztdo7@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b0ac0201-e102-0556-04f9-9685abf1c5c9@gmail.com>
Date:   Sat, 31 Jul 2021 13:04:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210731001943.pqpclzfhjgwztdo7@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 7/31/21 2:19 AM, G. Branden Robinson wrote:
> Hi, Pali!
> 
> At 2021-07-30T20:45:36+0200, Pali Rohár wrote:
>> +Setting the baud rate to a value other that those defined by
>> +.B Bnnn
>> +constants is possible via the
> 
> I'd say
> 
> .BI B nnn
> 
> because the "nnn" is not literal, but variable.

Agree.

But as I already merged the patch, I'll add a new patch with that 
change.  Moreover, man pages mostly-consistently use .B Bnn style 
(although incorrectly, from reading groff_man(7)), so it deserves a 
separate patch.

Thanks,

Ale

> 
> Regards,
> Branden
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
