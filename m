Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FE23268860
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 11:30:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726297AbgINJac (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 05:30:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726249AbgINJa0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 05:30:26 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96FC8C061788
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 02:30:24 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id m6so17939642wrn.0
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 02:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VtQreQVpp3U/5c3XKBWLNUGRfniiwGTdrdkqstHMRcY=;
        b=Wsuo79aqdi3+VXGtpD/IlCXO8moGd4aauFEZRL1S/uRqdlfJC+sPeTYOomeDFCXIyV
         RvHbl2XFAR2brhD9P4A1K1vMO46fqmbdCHcDmIzkbWkWxksPLqF1e6/pv0eehGKoXfF3
         5t5ePjYCQbw2q8ZN1gRuNEUJK5UwKAqzsCdhUoaxyETK/hLuVlWB3V1Xj8TNASFuZl4M
         2u41qeft3WuaSPYHYgRLofqH8KDxjz6DNr/4S0kTxhnCciCrrOgCYQ9+fwWqUUcU/o/p
         X33GLngS4V9yIj9z9OqwxxNSN0saLET8vF7CV0CrnpuAwcIYGWzPdaNeIzNYqBxn/FBG
         ruiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VtQreQVpp3U/5c3XKBWLNUGRfniiwGTdrdkqstHMRcY=;
        b=SnWO4GvCXu7c2J3hvJROGDTtQIt3vIRcqh+ZjplGjq1rQQ/eFdqEPgNPNk7lIiNxYa
         m5FAidumm8m9/uccq147YZP4NEuBXV+xYfU4CLcmHkxS/Ag6IGhEFoUx+3hADiai/bX5
         kRo+wkz+bXvSpMGXQk/ukfv+vI+OnHI8D1c02Rh6KfCMssRENSRVk4+jYnVTJWfR0cxw
         uyGXJ4DdDQM/646teEwm1RD/k4umGTDIw4mUU+KROBGP9V5ydhdcjWA6I+xBUsOh21lt
         Wfe2N5lgRsS759T01/RRhMmGjf2fvn0ZqhPjIi+GFF3HokC6bp+JXhMOKSB6DnQy18+e
         w0LA==
X-Gm-Message-State: AOAM531KoLdX/lbt484F0o8S8G21uAhtT0zosYFsZsCYsdUz023C6fK0
        QmpHnIU5EiBmCsvjK8uIiW0=
X-Google-Smtp-Source: ABdhPJwG6WHtqAs1coFMNNEBd46rh+PAUPWkIZjtA5akB3Hh/YxBynbhNDLyd9bOGxWfWvBmWJWmpA==
X-Received: by 2002:a5d:554c:: with SMTP id g12mr14950827wrw.294.1600075823276;
        Mon, 14 Sep 2020 02:30:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 197sm19048611wme.10.2020.09.14.02.30.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 02:30:22 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        "Dmitry V. Levin" <ldv@altlinux.org>
Subject: Re: [PATCH] stat.2: fixed inode printing in example program
To:     Konstantin Bukin <kbukin@gmail.com>
References: <CAF98MALn=1yCiQZ3vGjEtAfy9Nus5ScgFhYdWuBBp2x7MXxK9g@mail.gmail.com>
 <20200913194041.14349-1-kbukin@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <edd2b0d9-253b-9fd3-688f-7324a4939b71@gmail.com>
Date:   Mon, 14 Sep 2020 11:30:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200913194041.14349-1-kbukin@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Konstantin,

On 9/13/20 9:40 PM, Konstantin Bukin wrote:
> inode numbers are expected to be positive. Casting them to a signed type
> may result in printing negative values. E.g. running example program on
> the following file:
> 
> $ ls -li test.txt
> 9280843260537405888 -r--r--r-- 1 kbukin hardware 300 Jul 21 06:36 test.txt
> 
> resutls in the following output:
> 
> $ ./example test.txt
> ID of containing device:  [0,480]
> File type:                regular file
> I-node number:            -9165900813172145728
> Mode:                     100444 (octal)
> Link count:               1
> Ownership:                UID=2743   GID=30
> Preferred I/O block size: 32768 bytes
> File size:                300 bytes
> Blocks allocated:         8
> Last status change:       Tue Jul 21 06:36:50 2020
> Last file access:         Sat Sep 12 14:13:38 2020
> Last file modification:   Tue Jul 21 06:36:50 2020
> 
> Such erroneous reporting happens for inode values greater than maximum
> value which can be stored in signed long. Printing inode as unsigned
> long long fixes the issue.
> ---
>  man2/stat.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/stat.2 b/man2/stat.2
> index 7e5417480..82eaefcda 100644
> --- a/man2/stat.2
> +++ b/man2/stat.2
> @@ -681,7 +681,7 @@ main(int argc, char *argv[])
>      default:       printf("unknown?\en");                break;
>      }
>  
> -    printf("I\-node number:            %ld\en", (long) sb.st_ino);
> +    printf("I\-node number:            %llu\en", (unsigned long long) sb.st_ino);
>  
>      printf("Mode:                     %lo (octal)\en",
>              (unsigned long) sb.st_mode);

Thanks for your patches and problem report. But, it seems best to 
go with Alejandro's suggestion to use uintmax_t + %ju. See the
patch that Alejandro has sent.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
