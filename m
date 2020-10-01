Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B63B627FE7E
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:35:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731816AbgJALfG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:35:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731243AbgJALfG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:35:06 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0DC6C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:35:05 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id e16so5293726wrm.2
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sc1HEdjN9yz+BVm5n5xkhm7v/iKC9N04FA/4jML8/rM=;
        b=Mky5znyaxIjT5jVOv9Wmjg0jlk36wBJi+4Xaj4ystoDOY2nJ6D6Hue5vWSp5tHDMMV
         OFBMLzc67xWs+CudC2mEQWfMdHTCVPYoq6L0/5E1zTAwrb0YQIWdES+KmzSBqtxpRkeI
         vvgREbDZiGHlIQKc2mAA6QMqs4MQO7y8f0MC2siMujM+bWjq7yU0wH85TdQN0NGMQbdt
         V/N1jfMR3lhNHuoAHF/Or+N5KU9B3luGZUqg30oUUhyWR5nWwFWTgmUUh8T7Xv3bKliE
         8UhMC63tZSYlAbSKXGbxoNrOERdwrm+4XLbO7n5JHJst46OK/lMAujikWNROtdgigee7
         AfJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sc1HEdjN9yz+BVm5n5xkhm7v/iKC9N04FA/4jML8/rM=;
        b=Fad9JDBSH/9vB5WIDc+nyos3PC81KiGF9JbVc0B0whPikPM7nDsTPM2B989T5r11ex
         iSCdkugVi8waSwtKoTuBwvzSREavhzABQtujNxFtur0eNeiWJprTq7xicWZyGUeyKOuQ
         nsh8kPFLTloi6IOBEBvkfqKvkbPdHeFOz+joecalvbQxRIxHxF67ftcYbFwbnuVvejjK
         033PTKWryntaqxgiA25ONnEQ76Y2rBNVmDlhYoyUwPPw2caSzDd9FCJ0g95nIplyHqgJ
         oZ6s3pWpt5s431aSxSVJIEaEi+txDmn1fj+VzAW1nHOi42TFSywOzXSe8rAgJQbB63zl
         Wj0w==
X-Gm-Message-State: AOAM533mojhPdUOojENcftDLvFVCARQLEexFX5fl3x9AOFMKBjEM7pts
        PFzZe7FfJHL3wdhhocGYfR4=
X-Google-Smtp-Source: ABdhPJyHFccR9+45NqAmsnb8oltLItauoa22FKwcH1M0dU4MIBl+GVg3rz86gx/WPRMVLc3Qa8e1gA==
X-Received: by 2002:a5d:69c2:: with SMTP id s2mr8465078wrw.389.1601552104487;
        Thu, 01 Oct 2020 04:35:04 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id v9sm9156641wrv.35.2020.10.01.04.35.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:35:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: Re: [PATCH 13/16] system_data_types.7: Add 'intptr_t'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
 <20201001101559.77163-14-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b1665782-2df3-8b5b-9dcf-0b07519bd8c2@gmail.com>
Date:   Thu, 1 Oct 2020 13:35:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201001101559.77163-14-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/1/20 12:15 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 65 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)

Thanks. Patch applied.

Cheers,

Michael

> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index f768e87ba..2632436ed 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -616,6 +616,71 @@ and
>  .I unsigned __int128
>  types in this page.
>  .RE
> +.\"------------------------------------- intptr_t ---------------------/
> +.TP
> +.I intptr_t
> +.RS
> +Include:
> +.IR <stdint.h> .
> +Alternatively,
> +.IR <inttypes.h> .
> +.PP
> +A signed integer type
> +such that any valid
> +.RI ( "void *" )
> +value can be converted to this type and back.
> +According to the C language standard, it shall be
> +capable of storing values in the range
> +.RB [ INTPTR_MIN ,
> +.BR INTPTR_MAX ].
> +.PP
> +The length modifier for
> +.I intptr_t
> +for the
> +.BR printf (3)
> +family of functions
> +is expanded by the macros
> +.B PRIdPTR
> +and
> +.B PRIiPTR
> +(defined in
> +.IR <inttypes.h> );
> +resulting commonly in
> +.B %"PRIdPTR"
> +or
> +.B %"PRIiPTR"
> +for printing
> +.I intptr_t
> +values.
> +The length modifier for
> +.I intptr_t
> +for the
> +.BR scanf (3)
> +family of functions
> +is expanded by the macros
> +.B SCNdPTR
> +and
> +.B SCNiPTR,
> +(defined in
> +.IR <inttypes.h> );
> +resulting commonly in
> +.B %"SCNdPTR"
> +or
> +.B %"SCNiPTR"
> +for scanning
> +.I intptr_t
> +values.
> +.PP
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
> +.PP
> +See also the
> +.I uintptr_t
> +and
> +.I void *
> +.\" TODO: Document void *
> +types in this page.
> +.RE
>  .\"------------------------------------- lconv ------------------------/
>  .TP
>  .I lconv
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
