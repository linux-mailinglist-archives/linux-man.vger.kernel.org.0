Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A6C161D461B
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2020 08:47:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726371AbgEOGrX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 May 2020 02:47:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726339AbgEOGrW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 May 2020 02:47:22 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6770DC05BD09
        for <linux-man@vger.kernel.org>; Thu, 14 May 2020 23:47:22 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id l17so2173238wrr.4
        for <linux-man@vger.kernel.org>; Thu, 14 May 2020 23:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=imngnl/lF41nZ49UmZU+klsEFyfX/VTgp6waeCaaMAw=;
        b=MpsDkQE+QKx50f9d+ECq7Sd4e2tXZvoQWevgZb2UFYtMyfiFAIVMEFdsiBlaVmJvF1
         6AAgTnIdSIBQ06HkU65S6efr/rCXIQye2OH/03IWFToD4NBGfc0cV0AxpL/B+WUp/Y+1
         Pr3DItxgnUywsXWUTivIth6JBSvZ5/v8EKO2E5fhICQKMommVgisrw3u8IveQrzObWa1
         asB2itWFhb/ELyDHRZnDX8kMRInK9GPdNp1UzBThplrV8ZlEBAqpUfqqJhlRoxXr4O3M
         XySC0xmS4Es7Oq+aghL0dbL0QqNdn/zDm0GJFjjbX7lPe/ueIAAtLSP8cr64a0c1w1mb
         YWcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=imngnl/lF41nZ49UmZU+klsEFyfX/VTgp6waeCaaMAw=;
        b=YKQaGyoNCZTa27M7t1b34nWUAHT9YqkLbDqdI+zDg0JRwTQZd8aK6JG5w8IGJuXgVb
         8ulIcblpfI25L3Zb6QXwIBOc4xTaWIvnOAdLyVAXIKsY+mS7p9b5Mr1exqjbVdEc6UzR
         IyoEI/TV3Fas9ACWPB3gIGGgBHsBOCaqlIBr4w1H/ppZxuMWGp1XqZXpHXNi226WtF8p
         HVccwvWzpWC7DOj87fYar+tpcjQytrvTQmXgKs3NOm3jVrCNdu/m78cRrEAYtQJ4Zzh7
         DvpWG4VURgjRh7igDSvpXP7NnhGRgX8eyq/C99G4YuncdzDHb1zL//VNmdoq7tWs1Sg+
         jAUg==
X-Gm-Message-State: AOAM531fcpE1PB2R8L2eYGDqa3FISuUw3vnRZurU8iWmxzZ5FYaF81wP
        kkTMX4nvgxHwVc8JgdR1aOpIkMYk
X-Google-Smtp-Source: ABdhPJyKoBr1n0qMdrBru5nRTW43Umpnb7HYde8pnrU37U3I6SE8cvzJ48rPINhh56UUelawaoMFrw==
X-Received: by 2002:adf:eccf:: with SMTP id s15mr2481023wro.70.1589525240854;
        Thu, 14 May 2020 23:47:20 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5? ([2001:a61:2482:101:a081:4793:30bf:f3d5])
        by smtp.gmail.com with ESMTPSA id q9sm2039405wmb.34.2020.05.14.23.47.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 May 2020 23:47:20 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] ip.7: tfix
To:     Ondrej Slamecka <ondrej@slamecka.cz>
References: <20200514182348.361147-1-ondrej@slamecka.cz>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e9b98b5d-9009-dc8c-2d05-cdde131b8eaf@gmail.com>
Date:   Fri, 15 May 2020 08:47:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200514182348.361147-1-ondrej@slamecka.cz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 5/14/20 8:23 PM, Ondrej Slamecka wrote:
> ---
>  man7/ip.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Thanks, Ondřej. Patch applied.

Cheers,

Michael

> diff --git a/man7/ip.7 b/man7/ip.7
> index 8076101d8..06f47715e 100644
> --- a/man7/ip.7
> +++ b/man7/ip.7
> @@ -352,7 +352,7 @@ The
>  structure is similar to
>  .I ip_mreqn
>  described under
> -.BR IP_ADD_MEMBERSIP .
> +.BR IP_ADD_MEMBERSHIP .
>  The
>  .I imr_multiaddr
>  field contains the address of the multicast group the application
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
