Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF79D377CF6
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 09:13:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230098AbhEJHO1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 03:14:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230002AbhEJHO1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 03:14:27 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDECCC061573
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 00:13:21 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id d4so15393735wru.7
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 00:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8v9CEJ7huhx0L+TIQc8i3pPXLeK9FprJoCqTmo1ZJjM=;
        b=eDvEFiWnJ/tCfXhKwptXZDcx10tQXn3w9A4kaQKAsqntiKkKGD9beZgSf6KyOlWjrG
         OSABEp/eYxw8HHGXFzv/OdHFdfaVLxRGb7jS0mfVn7pK7v8oXM5UdQn6m7OOo8sPCfkM
         IjkQ8eCq1cpdsk0UJMDzMZudPHef/Up3Ls4pjvCYGGpkGlKp6FcgqVAPsjyQ0HrDcf05
         8a+VQtuTCwJgrsBmAx9HhR7aFRq2BBAiGScVjPedC6F9aMzXDbQbY1oT77bQVFbGtiSM
         sDfY4fhjGuAOzQ7Cfae6QybfpXcKvjMmdjSMRRqc6DVPRtzEMI2Bl6kHWX9l4lLhrVr1
         JM9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8v9CEJ7huhx0L+TIQc8i3pPXLeK9FprJoCqTmo1ZJjM=;
        b=ePLkifyXYFClD9Jg383OE5rHjL5dJE4L/dS/vfBenJ0YNdRmP+sC4LpdI5fRnbkkVQ
         NKRKnJ1oMqKnsGQM+Yi1PjgTQO8Kgyk0UqOlMu4kDYix3Eji0WOF5xR27Gp6rChVjAwi
         QU+Q6f8u3RV5Gp6Q5xeOyVgzGWetvZmd/RHtoKEfenBObKNpQJ1zMwq2pNUCK6x2+WGF
         uGgriN/C7NjXaZvk8GBBdb/jQjvapbL1ZDdnmV1hyf8bSRN4n85U0AoBF6ARLVwN8jpw
         cGao2Lx5K/9WAyW5hCg/ge4m/INxtPLQ9pOPXAEj8bHW975EXdpFQVnfvWGXS8gAEfZh
         uVVQ==
X-Gm-Message-State: AOAM530Yt1dj5vpKCzW33yQpyTKMjLzR403zrq37YPURDSBANTI9Z4Mj
        Vfr89I4r4PRAbGLcQ6/IDG258HeoHRA39A==
X-Google-Smtp-Source: ABdhPJw68U7FZwqqPNAxVXm/aRTIrYTiZbfED3zXDn8FR8rPFSyD9BqCSDiP+1TLpYivz5wSeSk25A==
X-Received: by 2002:adf:fb87:: with SMTP id a7mr29016400wrr.58.1620630800610;
        Mon, 10 May 2021 00:13:20 -0700 (PDT)
Received: from [192.168.0.237] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f4sm22568757wrz.33.2021.05.10.00.13.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 00:13:20 -0700 (PDT)
Subject: Re: [PATCH] Makefile: Use standard features (IMPORTANT: default
 prefix changed)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-33-alx.manpages@gmail.com>
 <9f4a8c0c-ced3-4192-05a0-d126afda3285@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <745152cf-d533-d090-d3ad-273e5de22ae6@gmail.com>
Date:   Mon, 10 May 2021 09:13:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <9f4a8c0c-ced3-4192-05a0-d126afda3285@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 5/10/21 1:39 AM, Michael Kerrisk (man-pages) wrote:
>> - Specify shebang
> 
> Why? It's not quite obvious to me, and the commit message
> should really explain...

Hmmm.  I have some minor reasons to add it, but not a really good one.

* Some editors don't recognize 'Makefile' as a special name, so the 
shebang helps detecting which language the file is using (e.g., for 
coloring).

* I tend to subdivide a big Makefile into a small Makefile and many 
submakefiles stored in <./libexec/>.  Those obviously need different 
names, and given that the makefile extension is not very standard (I use 
.mk), having a shebang helps knowing what the file is.  After that, I 
also have it on the main Makefile for consistency.   But here we only 
have one Makefile, so it doesn apply very much.

And some similar reasons.


Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
