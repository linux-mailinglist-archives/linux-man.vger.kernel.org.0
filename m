Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9ABB8BABA3
	for <lists+linux-man@lfdr.de>; Sun, 22 Sep 2019 22:26:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726188AbfIVU0S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Sep 2019 16:26:18 -0400
Received: from mail-wm1-f41.google.com ([209.85.128.41]:50576 "EHLO
        mail-wm1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731875AbfIVU0S (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Sep 2019 16:26:18 -0400
Received: by mail-wm1-f41.google.com with SMTP id 5so7599353wmg.0
        for <linux-man@vger.kernel.org>; Sun, 22 Sep 2019 13:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VE6kk1+BPxDVkEM76X0jbNyaAyRrLkG+ZRZ2Cvy8/iw=;
        b=t+eVtwRr8ZmU5QWth/1eGKf2mu0kBuY8A42vwPlIfLzkVstOdJTAZlDbcRQgPjg35L
         IjxrimjwcjXdLlYSZMCLC0BlFpx+BGRYHM3sTCK6THuRIh97G+qSCPRnR7tVQOWbM97f
         1FlfdwsgbCwZb0R0C3WWVGKxBnBwJBKMDucUolVUQBYObH57rFwD1RO2695k13MGDAAK
         YXOvQ+A31A/EAgUty8bZBRyN2d95453t+7zg+BJGJTQln5JqTJPL4SIuiHySq6Wn5QVX
         jauuPI5y9eKk6aaTl29eH/kCtxKk5CsWWARD7MloUrGcRodaLQIE0jaFLuQaDwllL+gf
         SLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VE6kk1+BPxDVkEM76X0jbNyaAyRrLkG+ZRZ2Cvy8/iw=;
        b=W6/CogHpfAu0Z1LSN1ev7m+bRkZ4HxMJG2eEde0W7eJaue1TrWXQQHOtbHf0lVIpVQ
         QZ1c1Gt3T5JaQVRtl4O5kuH9kOE0GeKSV8XGviMvaI9nhX7zRRT4ZKe+C1MgQBRhVt3h
         r9MkwQ4g+fL2UH3Tb88uc97hX6+cGPPTPCil8o86+1RvIYjLaWo1YcLECGnM/tm6rzre
         vEfAMQte4LbN3U4WL1O8og4Qy7l6nOl8vL72E1VG4/X0QgJZeTjXDZ4J25Ur9v6/b6/5
         X8H/12ReZTHJiQezK9Iw3wd4J1u04zBXJqnzIXkU6uX+a4kL+W5t7DCxQT2/obMRWTfH
         qEFA==
X-Gm-Message-State: APjAAAUXYs/b4rmSR3i/pia4Vose7vyoOzS2SEM9ELjgIVIduT+2Xygl
        IXFe7wR8gL4WY35PNLkkYSYXdzTd
X-Google-Smtp-Source: APXvYqzrU/nQ8ZaQj1gUTBTTmE4vh3n5bltsgrNROSAgMG39ymp/PyCbYMlx+We3Re4Py+MAgy/m+A==
X-Received: by 2002:a1c:6607:: with SMTP id a7mr11773967wmc.125.1569183975011;
        Sun, 22 Sep 2019 13:26:15 -0700 (PDT)
Received: from ?IPv6:2001:a61:243d:bf01:c49e:ef23:e680:96b1? ([2001:a61:243d:bf01:c49e:ef23:e680:96b1])
        by smtp.gmail.com with ESMTPSA id 94sm6030041wrk.92.2019.09.22.13.26.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Sep 2019 13:26:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: typo in SHUTDOWN(8)
To:     "killaken2000@gmail.com" <killaken2000@gmail.com>
References: <CAEOuZD4tWLPLY+zptXsn3JHFALdgsQR0XYcB8HqrkQoJQ1+EVA@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <79c0298c-0dde-209f-e704-855e8cc4a783@gmail.com>
Date:   Sun, 22 Sep 2019 22:26:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAEOuZD4tWLPLY+zptXsn3JHFALdgsQR0XYcB8HqrkQoJQ1+EVA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/22/19 6:00 PM, killaken2000@gmail.com wrote:
> http://man7.org/linux/man-pages/man8/shutdown.8.html
> 
>        -c
>            Cancel a pending shutdown. This may be used [to] cancel the effect of
>            an invocation of shutdown with a time argument that is not "+0"
>            or "now".
> 
> I might be able to rewrite the second sentence to make it a bit more
> clear but I don't want to overstep.
> 
> have a great day,

Hello Rich,

To report bugs for that page, please see
http://man7.org/linux/man-pages/man8/shutdown.8.html#COLOPHON

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
