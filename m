Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E46ECB2188
	for <lists+linux-man@lfdr.de>; Fri, 13 Sep 2019 16:02:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388675AbfIMOCn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Sep 2019 10:02:43 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:36809 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388084AbfIMOCn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Sep 2019 10:02:43 -0400
Received: by mail-wr1-f66.google.com with SMTP id y19so32222601wrd.3
        for <linux-man@vger.kernel.org>; Fri, 13 Sep 2019 07:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=n/gqFujmTWgKvnGv8gsIqUL/buJSjeNLOjb8vZnbhiw=;
        b=AXnQDZycYSgchDPA7gTwQiI1v/gHsHeFr62sQicUvqUQiMF/VO+IfZ5zcT9tXEQLWj
         +VaR1PUbGQaYzQEgf3R77eoBugDcEWFmM61CQiM03BaOzkJrOxUwVp0yw0CP1ATT8PaS
         Bis7BhMLf3d4Sr+M7E3RogwJoWCee9n/VixV2BIAVJ47v68Lk2k8TG7pwXzpQy8FPyuB
         xlGw54fiPU9F7dtFNEsQsmNx/Z3dxUPp+uosyOSuE6anzibP+SHPh09B1OpeYPSsBSyS
         xn37UdvmBzybUDaM9Zdd7eamtTQdFkN+gOpueFngMURqS5h+/ZjSZQGdfbPPMa3720MC
         o5yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=n/gqFujmTWgKvnGv8gsIqUL/buJSjeNLOjb8vZnbhiw=;
        b=LmjSD1FARKDWn3EGb9CyqAFc6aemu+E4Sq1HHT9ENNu35YgPJAvzPPIhhC2V331KzX
         gGG/uxKUFHMtWwwT6u1yhAS6vj/x6fzYw69WJCVSGzbPNPad/e00216IY0NXrv8oLMz7
         q+rAzkJEaeYt17KJ4p8hI0smqZEyADuS+IEru2nffhaBe/RPeDXkYwlIsJsTT5Px1Es3
         3pWyj4bQXUGHgAT8y/Y1piX69EWBr7tfr/kbJp2TVjlkPqqQIW74M3pZpsqwymhYagBT
         I+gD3+09fJyxIkNzjTW4MrN60aP/UlI1hz32qEIYM+cUPW4Bb7iQq2WsCWS7vftzVL7k
         VUiQ==
X-Gm-Message-State: APjAAAUrEhdh72mW106l5kr+xAQu7MjEg/MAERIs44RLAfsEEk2Nk2T7
        8+ayQZfXqbdQQpQWlzELY0ZBsT7d
X-Google-Smtp-Source: APXvYqwXise7N4Odw4MX9ThF05qx6DsCP1CT0YXh9b2rD9tYtIP8QnYnNO5n/rFlDpypKQIkBMzPOg==
X-Received: by 2002:adf:fa10:: with SMTP id m16mr34414324wrr.322.1568383360699;
        Fri, 13 Sep 2019 07:02:40 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id o9sm36491934wrh.46.2019.09.13.07.02.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 07:02:40 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] resolv.conf.5: update information about search list
To:     nforro@redhat.com
References: <6b42e1b7643304db9de9586858919eb2ae465703.camel@redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8b1db7ac-6904-c4b9-37e7-dddd4b0dc802@gmail.com>
Date:   Fri, 13 Sep 2019 16:02:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <6b42e1b7643304db9de9586858919eb2ae465703.camel@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Nikola,

On 8/7/19 2:17 PM, Nikola Forró wrote:
> Reference:
> https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=3f853f22c87f0b671c0366eb290919719fa56c0e
> 
> Signed-off-by: Nikola Forró <nforro@redhat.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man5/resolv.conf.5 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
> index 57f0a13df..c500864d1 100644
> --- a/man5/resolv.conf.5
> +++ b/man5/resolv.conf.5
> @@ -104,8 +104,10 @@ traffic if the servers for the listed domains are not local,
>  and that queries will time out if no server is available
>  for one of the domains.
>  .IP
> -The search list is currently limited to six domains
> +In glibc 2.25 and earlier, the search list is limited to six domains
>  with a total of 256 characters.
> +.\" commit 3f853f22c87f0b671c0366eb290919719fa56c0e
> +Since glibc 2.26, the search list is unlimited.
>  .TP
>  \fBsortlist\fP
>  This option allows addresses returned by
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
