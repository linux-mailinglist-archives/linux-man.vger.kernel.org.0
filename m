Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 608823E3807
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 05:03:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230131AbhHHDDe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 23:03:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhHHDDd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 23:03:33 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7D94C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 20:03:14 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id z3so12642510plg.8
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 20:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rkaKEddB9W8m9YmnP9LSKX9pvJGI8sfW8lhad5S/zkI=;
        b=vewBo8GMLffLl1EosyZ7r7YgmsiUoc52MpTRppOV9/GNi5Q8YTvUfBxu3shNRCRCwP
         Um3s0FbcQR5rxivXsyMtYaFUdN/MznAwi3Ycu/oLM76GgMoAXOrixKyTgoPxPkhQtTr2
         cyYR4TA3wEPSQ+hxcGb40Qejyqw0l810jOGzHt3EBWyflqBU5BIFT0YoKeTqnfN2G3PU
         4b2TAkoOgd/IT+jb/HCvDzA90lKUrrEV6esfielFMP3bIuX4iG9Js/XW66Y/WRsfBBpN
         CjFpp0ndrJeYczuWYACMGWYa37G72g6vpiieZGgig1Hbr+7fbfAttMXpGZuKuesR+Oow
         wiYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rkaKEddB9W8m9YmnP9LSKX9pvJGI8sfW8lhad5S/zkI=;
        b=pPm/MNeU9jiYWkmPsMak1pEaJymai8NqgjQJVU7Z/NvzHbKS6iD8cd2aq5cnD9QsZB
         UOXluSWd42hs+gl43mbIrj0fY0pTsBkEEqzfx1EPqxLyndwFcGFrdEtn5ROZlHKqpufN
         nxrCQvdtKhLlUen3f7HG77WsUYUZapEunUnFfhydn+I8AgUo50EM7WR+CgUAoe0Use5R
         ApX66dgBAMY6jnxt12jRY/DHIN0To2ECdwFfaMVURrZWFQcQaFtAyjnmbvTKWWDZxBot
         o/gUFd4pEaUldttgq9uCmQkv4Kf9lXPVdXTtUJf0hmixcSYK2OQg7SC9SS745ZvisvgW
         MKog==
X-Gm-Message-State: AOAM531/QU50GF8Ue3n4NE9Cd+jNIjI3+Rdtsegts9vF8SC9hcDPwHiL
        0J3QAmvFVt3w/Ip4Ff5qNaA=
X-Google-Smtp-Source: ABdhPJy3xbzozbw5GiO+c79mZD6bOaMIMw7+vk0yff6hePUBPF2YXQ68FOeVi9KoyMlpm/NNRH/Bcg==
X-Received: by 2002:a17:90a:b795:: with SMTP id m21mr17953049pjr.143.1628391794185;
        Sat, 07 Aug 2021 20:03:14 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id b12sm15909490pff.63.2021.08.07.20.03.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 20:03:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Kir Kolyshkin <kolyshkin@gmail.com>
Subject: Re: [PATCH 15/32] capabilities.7: Minor tweaks to Kir's patch
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-16-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8f16bcb4-99c4-aeab-8f32-42c8b2be1016@gmail.com>
Date:   Sun, 8 Aug 2021 05:03:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-16-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Kir]

Hi Alex,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man7/capabilities.7 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/capabilities.7 b/man7/capabilities.7
> index 2f9c9a61e..4d08545ed 100644
> --- a/man7/capabilities.7
> +++ b/man7/capabilities.7
> @@ -353,8 +353,9 @@ Set arbitrary capabilities on a file.
>  .\" commit db2e718a47984b9d71ed890eb2ea36ecf150de18
>  Since Linux 5.12, this capability is
>  also needed to map uid 0 (as in
> -.BR unshare\ -Ur ,
> -.RB see unshare (1).
> +.IR "unshare -Ur" ,
> +see
> +.BR unshare (1).
>  .TP
>  .B CAP_SETPCAP
>  If file capabilities are supported (i.e., since Linux 2.6.24):

Good. But still a few other things to fix. See my patch below.

Thanks,

Michael

diff --git a/man7/capabilities.7 b/man7/capabilities.7
index 4d08545ed..88dc61e29 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -352,10 +352,10 @@ Set arbitrary capabilities on a file.
 .IP
 .\" commit db2e718a47984b9d71ed890eb2ea36ecf150de18
 Since Linux 5.12, this capability is
-also needed to map uid 0 (as in
-.IR "unshare -Ur" ,
+also needed to map UID 0 (as in
+.IR "unshare \-Ur" ;
 see
-.BR unshare (1).
+.BR unshare (1)).
 .TP
 .B CAP_SETPCAP
 If file capabilities are supported (i.e., since Linux 2.6.24):
diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
index 3378b6057..e35c950ca 100644
--- a/man7/user_namespaces.7
+++ b/man7/user_namespaces.7
@@ -578,8 +578,8 @@ The mapped user IDs (group IDs) must in turn have a mapping
 in the parent user namespace.
 .IP 4.
 .\" commit db2e718a47984b9d71ed890eb2ea36ecf150de18
-If a writing process is root (i.e. UID 0) trying to map host user ID 0,
-it must have
+If a writing process is root (i.e., UID 0) trying to map host user ID 0,
+it must have the
 .B CAP_SETFCAP
 capability (since Linux 5.12).
 .IP 5.




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
