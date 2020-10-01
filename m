Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F074280417
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 18:38:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732016AbgJAQi4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 12:38:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731917AbgJAQi4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 12:38:56 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EE06C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 09:38:56 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id v12so3838326wmh.3
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 09:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7p7McFU1Um+F/PunafficNL/+JG1lUi18PcAuWj3Hy0=;
        b=AeKnqs9iLZOv1KpRyAIPHJCEnY5DM7QXkzcCIh6J6meV4xNbHLoCFTzks3qpqQKvCQ
         TA+VD8rfiYaMmk2ECFRuZEtjCiFP50hPY2cxasI4/ImWD6slcHuei7jlF938vJ0cIl5c
         S8wiNoW6SYgZcmw6TLS9PPViUlfYKwG+LQQughZhgIwnnBCJHyJ0uOZZ1y1pIfhURjzA
         nannQpTeM1TFHN2uO8D6OtXjVY/mpXDux2pznVCsC7aTNgM2zAQGQyaYN5dRMTuYQVG3
         R7FN6Irk3S+8tFXnzSAqzhY1r9IP4y6ZaAYoJX8FdHuZJFshfNPCr6e0mX7aKOClKjbs
         YB5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7p7McFU1Um+F/PunafficNL/+JG1lUi18PcAuWj3Hy0=;
        b=HewPdavYTZEgjvRFIBCVt9lRuAINcqpZc/Q1VoGKzygLUjSQt8J6IPI+JmQ/GOvRdF
         yAQGwzvL4jLHto7RSlTQ/M4/E1c49kMOeod901Ukg7qvJed+RnlR4Y/x+KYEC/X8fuf4
         S9nk+nc2VzOA34d12pKJROkHGa6mhKr6rfvaHzIbcaEDrJa/3/VKKbX4UOXh6AY9hpab
         pVrGGjGA/qbVnzfyuk2OavRiRaOWREiG3fe4Qvh9q3Nuu5zR+oeE+WP28VmdIe0VMF98
         8WZIrgkL4Uz5Nx9lH4rqkdjr1ruOFi68kfK8ncYxWGvMzZv4eSD2p894TsQ9F6PM+Xbi
         zpaQ==
X-Gm-Message-State: AOAM533oLJn/Bk/ZhZB3CFSnJp77D0kDzd5kxzqNMULxBguCzL4YALrV
        U6aOrEgPbpSqcJm4C6egPzY=
X-Google-Smtp-Source: ABdhPJwEpIlwNWgI8vSGNS7o0wEIF63bzs9Ig65oiR8Y5Tmw995erLRJM1GmLL7dO9ZPHm4fz+H16A==
X-Received: by 2002:a1c:4c05:: with SMTP id z5mr827637wmf.47.1601570334796;
        Thu, 01 Oct 2020 09:38:54 -0700 (PDT)
Received: from [192.168.178.63] (dynamic-077-009-049-048.77.9.pool.telefonica.de. [77.9.49.48])
        by smtp.gmail.com with ESMTPSA id h17sm10384537wro.27.2020.10.01.09.38.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 09:38:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'void *'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d460f3a6-c12b-637d-b474-3596611d10d3@gmail.com>
Date:   Thu, 1 Oct 2020 18:38:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001154946.104626-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

> +According to the C language standard,
> +a pointer to any object type may be converted to a pointer to
> +.I void
> +and back.
> +POSIX further requires that any pointer,
> +including pointers to functions,
> +may be converted to a pointer to
> +.I void
> +and back.
I know you are correct about POSIX, but which part of the 
standard did you find this information in? The only
reference that I find in POSIX is the dlsym() spec. Is it
covered also somewhere else in the standrd?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
