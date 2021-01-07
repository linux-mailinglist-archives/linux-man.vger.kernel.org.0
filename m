Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A1802ED5A3
	for <lists+linux-man@lfdr.de>; Thu,  7 Jan 2021 18:30:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728131AbhAGR3Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 7 Jan 2021 12:29:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726073AbhAGR3Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 7 Jan 2021 12:29:24 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E996C0612F5
        for <linux-man@vger.kernel.org>; Thu,  7 Jan 2021 09:28:44 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id g185so6228161wmf.3
        for <linux-man@vger.kernel.org>; Thu, 07 Jan 2021 09:28:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=ujdJh86hPTejYAGB/jY2ep49ywKMMLgRZMfGN2mWMEE=;
        b=kAde9pjsH6iHuTgvo6o+5vN1uodBqXjYW09Kc86EBMOLIS4T+uR2mO17gTwMF4m7jC
         W66rbwCX9OJ3J9Hf/7uIEnSvjFhQRYTqfIZL/w3YBqM9Dx3Da3UOrAKF47lKb0EMwuMq
         r0NrfYmNCKankBr37jXlMBRg9uG99tFp+s9CXyPOuDmHzZCfIN7oLw739/EX/hHAEMfy
         3upyy2JEraZdxYxhLI28ikWnOsO94crAMOu3GafqZfQEgUAxxmGDoN1WSuWohCN1/0Vr
         6Kool2sYFLdNJiXPkKpp/W7RhBewnoS3P81pKuno4Dde0Tb0XkpPdHafjR+reTZOgfvg
         0X3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=ujdJh86hPTejYAGB/jY2ep49ywKMMLgRZMfGN2mWMEE=;
        b=WxP/mqejZJVA7M7xp8MMByKt3qK0zymGhKNjcBEQp6z0yjwxKcJnrHnuULYdH2XvRI
         eGlbUEKXY7z96iBc/1nVpywZwCTG8Q/Pqzdb74Qe0ne+ntKSQl4ZNoewbXiMcbJHcVgt
         OEDz87VHS5v4n+m7OhqWiNytdp3Q5pLsVpVzRIIsJQioq/uYTb80eIcf7V9KMg+qS90l
         ehCetCsRFnZbnUJylnASbotLyadWiIuQHF7jyKgv1aJmqVMLowM35TFBjFJSbvsIdtoh
         xRahE2LQcZ9QBAbrAAcN9fwkKO/r5XSOdWBLZxR102H/Ie+KcmrexHdYy81wPK8+W2tJ
         /9fA==
X-Gm-Message-State: AOAM530hnQuvm2nyfCQDsYYALgSalmM7BelIv0dAqwrr9Oa2t2gp1GqY
        2T8EvLC+dkLu0mn8EV6xYs94OVki6Oo=
X-Google-Smtp-Source: ABdhPJwJRM/I+CckbKkVOKOP9uxZVk+4pAyTWtDLFcvh3X4ffieurPm0NzkJHBDXBqc6NxfNJjldoQ==
X-Received: by 2002:a1c:df57:: with SMTP id w84mr8848245wmg.37.1610040523276;
        Thu, 07 Jan 2021 09:28:43 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id x13sm9732361wrp.80.2021.01.07.09.28.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 09:28:42 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: keyctl.2: ERRORS: EINVAL: wfix needed
Message-ID: <b319d144-b1e7-a662-4c68-73de42afad8d@gmail.com>
Date:   Thu, 7 Jan 2021 18:28:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Reading keyctl(2), I found the following:

(Around keyctl.2:1749)
[
       EINVAL operation  was  KEYCTL_SEARCH  and the size of the de‐
              scription in  arg4  (including  the  terminating  null
              byte)  exceeded  4096  bytes.  size of the string (in‐
              cluding the terminating null byte) specified  in  arg3
              (the  key type) or arg4 (the key description) exceeded
              the limit (32 bytes and 4096 bytes respectively).

]

It's hard to read because of [. size], but AFAICS it looks like two
completely different errors (both setting errno to EINVAL), and
therefore it should be two separate entries, shouldn't it?

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
