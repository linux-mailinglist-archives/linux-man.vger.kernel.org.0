Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2E4BDBB39D
	for <lists+linux-man@lfdr.de>; Mon, 23 Sep 2019 14:24:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730425AbfIWMYe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Sep 2019 08:24:34 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:41274 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730431AbfIWMYe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Sep 2019 08:24:34 -0400
Received: by mail-wr1-f68.google.com with SMTP id h7so13692241wrw.8
        for <linux-man@vger.kernel.org>; Mon, 23 Sep 2019 05:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ghLjuA56L8C01Quf/D6qhg+CVX6NwtK15Wwdi4KNc7Y=;
        b=KzV19g0EC4beiW9+yN9kEBMh4Gf8GXZxwtxqPOFN/5mif4HoX8xsuikPvAbx3OAj5q
         wYYzVg+H3Kxp/5UcUCBa0cW1KXcueUJslPivCwBxJVYKgWWGp8QAhqn2KF8ccg2IOjyQ
         +tKgIRoAbmo0MW2CWIAvjc5Tm+4Y9Wc0+2Fne20rAV16307aL1e1a8oRR3jpp0jSVq9Y
         y4KaifLN2GsnLNomHwhQ6EqRYHVrUQ3DjFN0iIwwDUfLYtA/lZ6ftyd6Mr3PipwZXEUm
         DuKVNvZIdOd3x/pIdtPgPGqN9DDnEBIw7rAOv0DJVXXMRO723tohvKe8oThoISxUf9Da
         uDbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ghLjuA56L8C01Quf/D6qhg+CVX6NwtK15Wwdi4KNc7Y=;
        b=g/kOvo3J4aVWwxs/KwcYzR7B0GLOkpLh2rrkScXq7bLb/FFTwZ/PuyCCqAWIiFGQyR
         Ks1S9RKnZ4Dsc/KL1XmXo7nNScItM1DqspMFKJm5VXkxDxfMJJnFOJgnRkOis42CGrv1
         ExIzLrOldRFcf6D1960oNFZCn94ZyBjgpFSn/6tvvV+m0jrx3KkAJy7x4I7ChxX2Hs6p
         5lJD9u2YaGm5kGYHCyw/oKclgvbwL0eBFpv6rV+HX5Nk3VQObgNUQl8EE6ScLljnE6ka
         m4QJwWqQLSwMGN6Bo65OlGrLfogfuQmqBBiOwG48eA21mz3sn+WwDeHCmfQtbDdYS0xi
         F5JA==
X-Gm-Message-State: APjAAAUCktVXadYqQ9TcSVOiD2Q83v7yIu0rBZSMjmk9cHZY+L7TTtOB
        9ACkbKZ9okbW4zKjwRIfFJuHlJfX
X-Google-Smtp-Source: APXvYqw6Lmg70Yh5mK6Rntzakh/IOTNIMBJYlCf4vgdRmWuJzc4fq0NpULphNF2NPW4sGyEf55gRAA==
X-Received: by 2002:adf:828d:: with SMTP id 13mr21739995wrc.115.1569241472224;
        Mon, 23 Sep 2019 05:24:32 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id a10sm11355813wrm.52.2019.09.23.05.24.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2019 05:24:30 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: bug in strtok_r(3) man page
To:     eponymous alias <eponymousalias@yahoo.com>
References: <707183138.6864091.1568969037896@mail.yahoo.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3abee548-2732-fb3a-4ade-7c9e372a4ff3@gmail.com>
Date:   Mon, 23 Sep 2019 14:24:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <707183138.6864091.1568969037896@mail.yahoo.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,

On 9/20/19 10:43 AM, eponymous alias wrote:
> The 2019-03-06 strtok_r(3) man page says:
> 
> On the first call to strtok_r(), str should point to the string to be
> parsed, and the value of saveptr is ignored.
> 
> Uh, no. That would make saveptr totally useless. A quick fix would
> be:
> 
> On the first call to strtok_r(), str should point to the string to be
> parsed, and the value of *saveptr is ignored.

Thanks. I applied the patch below.

Michael

diff --git a/man3/strtok.3 b/man3/strtok.3
index 32552534e..9efb18a8d 100644
--- a/man3/strtok.3
+++ b/man3/strtok.3
@@ -146,12 +146,12 @@ On the first call to
 .BR strtok_r (),
 .I str
 should point to the string to be parsed, and the value of
-.I saveptr
+.I *saveptr
 is ignored.
 In subsequent calls,
 .I str
 should be NULL, and
-.I saveptr
+.I *saveptr
 should be unchanged since the previous call.
 .PP
 Different strings may be parsed concurrently using sequences of calls to


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
