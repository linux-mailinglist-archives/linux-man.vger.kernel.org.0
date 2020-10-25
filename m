Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D0552980DC
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 09:48:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414594AbgJYIsj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 04:48:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1414593AbgJYIsh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 04:48:37 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E01AC0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 01:48:37 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id j7so8637785wrt.9
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 01:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QD97vfXg7J8wCGZ4I1gpcND54eLJBLt/2e7k2qLqoIE=;
        b=tVG4he+PHSrU1cwb9MUMGN2x/UKl+xOWjQGdOMKo2ufeY0Evhc/yMpQqcJX09PCd3h
         jl+EkiZGPiZ2y+RVG09QTHH3nT41tuetckBzAaob1VygUK1JUnKIhYqxVpptD6IZCeOy
         cRcdzEMVar3Ac15uqkSANNmO11Kk77cKypT8Gqoj2pzN2dy3OdsMjfOscVzWkYFxR7bg
         55Kw8MOLubTToTIiiC2MRmkmjUuQb4pYnNs0gSdNswlrKgbnXbA4Ox1ga7eR6y+ObgkW
         d9BBuuRiAlmv8GyjVyVDoL28x2UkxwPIpPs/cWyXpUXryFK90S1kKfai33ifOSkfw8xS
         VDQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QD97vfXg7J8wCGZ4I1gpcND54eLJBLt/2e7k2qLqoIE=;
        b=I3wSKzrR2K22PHmyG8PBFm2WshdOKtwQxXSiAxjBkNQTF5t3Hg8xyRCoKvwAvNSdei
         qubrhkl1ILpsPev8WpxNfysmQvGiG0GF/INxtUQFFsdZN/YrWMoM5EBoR646Nmst41Rr
         tU2loQ8hf2YPheNd7AKA/vVp2Fz4O7OKWn+QeiINNVXqoTpsj7i+EOQZx2XYkpcyuJGr
         gcBdfxqk0YDuxaYsTyBr75MqdW6LtGwbpOjitcqHZdciOhzaQoRiDHAfPjrl7s6QNXKI
         XLtPZtd07WooO5xFzIW3rMc0Yrup9ThSswkiHD4441eGUsurCfycTgnL857g/hNgjhVB
         xuuA==
X-Gm-Message-State: AOAM530G229f5iLncIkRW8Et+bgpLUw4PwlBglJGRupltL3h7lcO29I2
        3orLz6uL7hL04M4MrAB1kgLT7gR39Jo=
X-Google-Smtp-Source: ABdhPJxKQXlAHUqgge+9f9FNCoH2grBAF1ulaUBR4ka0AForqXsLK67yL3pZPrqKiqTFSIpAJvo2tA==
X-Received: by 2002:adf:93c1:: with SMTP id 59mr11514809wrp.369.1603615715915;
        Sun, 25 Oct 2020 01:48:35 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id y201sm3356189wmd.27.2020.10.25.01.48.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 01:48:35 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] proc.5: wfix
To:     Jing Peng <pj.hades@gmail.com>
References: <CAL+Ps4Q4M95LM8M1yeSKZqMN1yd3JxWNS=WY7u=y93w3JDrOMw@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <35c9a991-1a91-eee2-17b1-546d03f5ec05@gmail.com>
Date:   Sun, 25 Oct 2020 09:48:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAL+Ps4Q4M95LM8M1yeSKZqMN1yd3JxWNS=WY7u=y93w3JDrOMw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/25/20 12:18 AM, Jing Peng wrote:
> In the section for /proc/[pid]/smaps, the description of field
> ProtectionKey occurs twice: both before and after the description of
> VmFlags.
> 
> Changes made by this patch:
> 1) Only the first occurrence is kept because its order matches the
> output of /proc/[pid]/smaps.
> 2) The kernel version that CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS was
> introduced is only mentioned in the second occurrence. Now it's moved
> to the first one.
> 
> Signed-off-by: Jing Peng <pj.hades@gmail.com>

Thank you, Jing Peng. Patch applied.

Cheers,

Michael

> ---
>  man5/proc.5 | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/man5/proc.5 b/man5/proc.5
> index ed309380b..ac58c789a 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -1987,7 +1987,7 @@ contains the memory protection key (see
>  associated with the virtual memory area.
>  This entry is present only if the kernel was built with the
>  .B CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS
> -configuration option.
> +configuration option (since Linux 4.6).
>  .IP
>  The "VmFlags" line (available since Linux 3.8)
>  represents the kernel flags associated with the virtual memory area,
> @@ -2026,13 +2026,6 @@ encoded using the following two-letter codes:
>      um  - userfaultfd missing pages tracking (since Linux 4.3)
>      uw  - userfaultfd wprotect pages tracking (since Linux 4.3)
>  .IP
> -"ProtectionKey" field contains the memory protection key (see
> -.BR pkeys (7))
> -associated with the virtual memory area.
> -Present only if the kernel was built with the
> -.B CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS
> -configuration option. (since Linux 4.6)
> -.IP
>  The
>  .IR /proc/[pid]/smaps
>  file is present only if the
> --
> 2.29.1
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
