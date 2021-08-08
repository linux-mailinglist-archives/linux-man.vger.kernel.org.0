Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62EDB3E3CF2
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 00:12:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230034AbhHHWMq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 18:12:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229662AbhHHWMq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 18:12:46 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05C5AC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 15:12:26 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id bo18so2893225pjb.0
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 15:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Q7x2KIq9bb6Nw8Cx1YQHc/GEPKXSqsYR3P59GrqGSko=;
        b=FVmGtVyIKElxTJXEHd0qKtR6Dt6v7qVuZ33OGWcfAm9AjmU43BdeHWMD+ulKiRmLs3
         8P7rRqXLskIpTPssQKfyUk+YEG36nli3axuAZVwpyQ7xODJ7xRCkBQbnN1qOZxu6mwBO
         jle9kaIalAloPpPI5rkmqZ/m3zAqjiwLEmgwM8n3/pmZfmPTA5OoSDA0xBeiRJp2tUTr
         KSfrd8JDfm8Vs6R1xGdx5j3NF7dXbHlzvkVY+PThHzwUcWn+zoKf71lSAhi+mwPLR4pF
         Spy2v4X2ZIOd6ZtbUzB/F7uBs4OMtlZHL+2Q2olNAjElJum3cc1Azbi6ofA0lVv0/e/y
         vJoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Q7x2KIq9bb6Nw8Cx1YQHc/GEPKXSqsYR3P59GrqGSko=;
        b=gXppDhHnnblqoakK34nVwcb2Iaw+I7HwCZp7Nk9HSDQyJZOrSWsJvqTarnDaZ2Djbn
         v7jNRa+SD4RrwlwPXKzyD9G8bFL40zLpvp0U5duFh374O8mgtNS7YIxo3TwwRWiQ1UFO
         Cycgw32NIdnSSPuh1F0APPiU108VdX8aTzP5uDIDI7CBUmcI8dVCxz0rNtqiXAsV3k+h
         NhYM/QlS0wSCHz4G1UUdVps2QAf1hX1r38zVGxTxdiVcmJxVVdpjCueGKtVFY5DCnS4I
         lao6OTIakvGqomUhoPpseP6thr0bAkpqvtC+vj/m1J1Izny+ivm49xQF4zp6ZZw63eXi
         Oefw==
X-Gm-Message-State: AOAM5333zegNimqSDY7b3zg6xR0CMKyEU+/k6hxv72Iono4KVOltM48l
        sLAesZlY1l2R01p7G+vzR9M=
X-Google-Smtp-Source: ABdhPJwwtAVcniVnedVDZEuq8fKiiugIA0NP3lqjZAzVLsmk1iO9KTUab45SF98ssfWwY0jnordvEw==
X-Received: by 2002:a63:595f:: with SMTP id j31mr94234pgm.109.1628460745623;
        Sun, 08 Aug 2021 15:12:25 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id g25sm18087794pfk.138.2021.08.08.15.12.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 15:12:25 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        "James O . D . Hunt" <jamesodhunt@gmail.com>
Subject: Re: [PATCH 11/23] getopt.3: Minor tweak to James's patch
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-12-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0a6f9ec7-9ab5-ad03-2058-f18e11fa5e40@gmail.com>
Date:   Mon, 9 Aug 2021 00:12:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-12-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> Cc: James O. D. Hunt <jamesodhunt@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/getopt.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/getopt.3 b/man3/getopt.3
> index 315224c64..f5970075d 100644
> --- a/man3/getopt.3
> +++ b/man3/getopt.3
> @@ -130,7 +130,7 @@ A legitimate option character is any visible one byte
>  .BR ascii (7)
>  character (for which
>  .BR isgraph (3)
> -would return nonzero) that is not \(aq\-\(aq, \(aq:\(aq  or \(aq;\(aq.
> +would return nonzero) that is not \(aq\-\(aq, \(aq:\(aq, or \(aq;\(aq.
>  If such a
>  character is followed by a colon, the option requires an argument, so
>  .BR getopt ()

Thanks, Alex. Patch applied.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
