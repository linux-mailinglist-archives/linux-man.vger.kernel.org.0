Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E5C737FE04
	for <lists+linux-man@lfdr.de>; Thu, 13 May 2021 21:25:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231527AbhEMT03 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 May 2021 15:26:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230104AbhEMT03 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 May 2021 15:26:29 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06C9DC061574
        for <linux-man@vger.kernel.org>; Thu, 13 May 2021 12:25:19 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id l14so27920054wrx.5
        for <linux-man@vger.kernel.org>; Thu, 13 May 2021 12:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=9+aa2S7LzcJdXBmIuViuX+TMUrHB28+7j1ipQundgHE=;
        b=tD+Pz3WiK9xNLeUbB9OKwoh1RfJ1KRSjE1Zr1ZouoBrA9wJsO2UFBrvG1CIjN+QEsB
         nPXmwhLeZDeT/L0FfEC2tSMLhtJAowx6hEw5ctz8Bk9PMNnFNEoWV0edXE2zgVUFKjRy
         JNYk6p7VqEdLlT0P1oiXH1AbebWe45Flo2qBm9nGYgPaptjmvZEqfh962+vt2q3aLwen
         h3j9LycZ1VEeDx/TEx678I9X0cvEKLJXcTIKf07GLjj3Y1E4tuginkjTzIi2jxZrU5In
         ifxxeawg3L0mxPC+ejli9G5h8oQf88uZxcL7xpMWCLPzwTPZNF2UWRS1qSGpzUjl7tEe
         7XeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=9+aa2S7LzcJdXBmIuViuX+TMUrHB28+7j1ipQundgHE=;
        b=Jy5KTLKMlS6drtZ535b7NsaWtnyo9wnJnVxRpY704Dh76QYvh+MWSsSstko0zxfmc5
         uYhWAAUB3zEoD9nxLOnm0+/kUzWm1t8RwBnfFhAocbRkYXopxkc+k75mEyphcx7QtIas
         m/C6WLWNLg6esFHZ9KT4xX7UkfCEavEE5KSYAVUWABe/9hc3mpGCCSA5dqGE1CoSVHUW
         PHOqJk9i7ioMKm+PeBR2qNvj+AuDmkFzMUuRf7cuf/fNPCyZSE7585QIRB5RiR1imcJE
         OiS3tBLyY9Qwiwo4i2Yk+8p9ZZrWwsqZOuC1Jb2DWuHUP3jueKDm5uA3mSjWgWzNThGU
         vdJQ==
X-Gm-Message-State: AOAM533BPI6fPM9Xdpo081U6AAdj99FKIe/wBN4rXrAHdUbHjdguyCNc
        UwB8kcO66rRELBm3HSkTNtCRUgndwfg=
X-Google-Smtp-Source: ABdhPJwvUK1uCD07y+TcSJjLQGbUZ0VzLgLfDXmHM3PYIkHDhtO+5YASFf6krl9UcTbS4T4YDhdakg==
X-Received: by 2002:adf:e9cf:: with SMTP id l15mr44305076wrn.209.1620933917779;
        Thu, 13 May 2021 12:25:17 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.56.53])
        by smtp.gmail.com with ESMTPSA id d9sm3771501wrp.47.2021.05.13.12.25.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 May 2021 12:25:17 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: system calls not intended for user space
Message-ID: <cb816b17-df1e-8cb9-5847-1626571f7929@gmail.com>
Date:   Thu, 13 May 2021 21:25:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

There are some syscalls that are not intended to be used from user 
space.  See restart_syscall(2).  Should I document those as 
syscall(SYS_...) or not?  How are they called within the kernel?  As 
sys_restart_syscall()?

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
