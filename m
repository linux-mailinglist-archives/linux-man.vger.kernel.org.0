Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A93D21AC085
	for <lists+linux-man@lfdr.de>; Thu, 16 Apr 2020 13:59:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2634658AbgDPL6o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Apr 2020 07:58:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2634633AbgDPL6k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Apr 2020 07:58:40 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C151C061A0C
        for <linux-man@vger.kernel.org>; Thu, 16 Apr 2020 04:58:40 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id a25so4539227wrd.0
        for <linux-man@vger.kernel.org>; Thu, 16 Apr 2020 04:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jINxFzLiMqM5E2LUKRu+tLYq5vXqNvr0hX3F9EXQ21U=;
        b=rooN6gIgSnV9KXBaOdJ6g32f4Jdl/4TqbLhdkTO9hqjvivA0NH1VnFWQayga444szv
         1HUQc7f/8uWhmhBPKF7XIaiqIvj0hRg1uSsh8qmGB6X0xG3p7dkT+OZAybk8h4WVEUBf
         YWwL/1S/VA7PAS2/GXZzSBUnKDSw33Y97yVYu2M/6fy8OZph178p7FmP8dfzxlw3s5kX
         1b7U+utzevUyIwhfO/3vG5vLYVw8YsY/PF9ggSBjkNWnocM4rMimP/d7fedV/acUFFIl
         h98RRyojSPDLMgxdJ0y3h0H9wa+oT9P5daG2J3xbxYW/zeTEjA9m/WHEdQwFihMPqUX+
         Hr/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jINxFzLiMqM5E2LUKRu+tLYq5vXqNvr0hX3F9EXQ21U=;
        b=mUIQHDqktnbWiQR6cpU3DJO25QrrBfY6XR4RJg5kXcbTSEu/uEWuDXQZ6o1FAUWnrq
         RUCdJkzi62dMqW1liKe1JCDaIwheVoXuFzE/4Po6KprQdIawJp80YyQHTxTqPalE66Cm
         p6IddhD8OmCH+yl3kIK1JB/3SfqWSIhxwhtO9wlWGMzbEhiG5w6OaEuG0rIkhzjfkD+F
         XJ28kz0uW46OyTMdxq4x7n7Al5BJUigmULF9MS7kEzl0vQojdo2M1Tp8DE1InAs9g0i+
         ZU805gP/bK3AWaCMOw9YLkTgnkBmz9OKaSGYG6FwXB8Svc8FVesyZ4Gn8+vFZdyJ+9LG
         NaOQ==
X-Gm-Message-State: AGi0PuZXkcICMYMaOMoYEukMHeozt4voswV86RBMb9cqFX0KYGReQWho
        XNYqISzzTBjcbqpwCpNs8ueTp0Ji
X-Google-Smtp-Source: APiQypKxIp6sqglBrtXEDo6vrx4TnGt+j3KG9h6URxg6wprXYW0t9Lh4DcVZZvueoWJEYVz63tT9vg==
X-Received: by 2002:a5d:6503:: with SMTP id x3mr28857976wru.153.1587038319006;
        Thu, 16 Apr 2020 04:58:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id g6sm8095540wrw.34.2020.04.16.04.58.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 04:58:38 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] cgroups.7: Mention cgroup.sane_behavior file
To:     Marcus Gelderie <redmnic@gmail.com>
References: <20190125212123.bxhcvvyvmjzsfvuv@goedel.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c1d67604-31b2-f320-6ea5-726c75bb2024@gmail.com>
Date:   Thu, 16 Apr 2020 13:58:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20190125212123.bxhcvvyvmjzsfvuv@goedel.localdomain>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Marcus,

On 1/25/19 10:21 PM, Marcus Gelderie wrote:
> The cgroup.sane_behavior file returns the hard-coded value "0" and is
> kept for legacy purposes. Mention this in the man-page.

Patch applied.

Thanks,

Michael

> ---
>  man7/cgroups.7 | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/man7/cgroups.7 b/man7/cgroups.7
> index a2dd7efa6..0670610ce 100644
> --- a/man7/cgroups.7
> +++ b/man7/cgroups.7
> @@ -87,6 +87,10 @@ Initially marked experimental, and hidden behind the
>  mount option, the new version (cgroups version 2)
>  was eventually made official with the release of Linux 4.5.
>  Differences between the two versions are described in the text below.
> +The file
> +.IR cgroup.sane_behavior ,
> +present in cgroups v1, is a relic of this mount option. The file
> +always reports "0" and is only retained for backward compatibility.
>  .PP
>  Although cgroups v2 is intended as a replacement for cgroups v1,
>  the older system continues to exist
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
