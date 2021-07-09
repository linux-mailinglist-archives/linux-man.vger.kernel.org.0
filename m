Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 390463C230A
	for <lists+linux-man@lfdr.de>; Fri,  9 Jul 2021 13:43:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230180AbhGILp6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Jul 2021 07:45:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230024AbhGILp5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Jul 2021 07:45:57 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EC63C0613DD
        for <linux-man@vger.kernel.org>; Fri,  9 Jul 2021 04:43:13 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id l7so10821343wrv.7
        for <linux-man@vger.kernel.org>; Fri, 09 Jul 2021 04:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ClWSPkoyZ4kyPTi1hPaPEc5rFfqFNG7FC+IrpcYZj3o=;
        b=aYy2weH95BD/JVNID7Odp4Fbtw/WD43SU1QOK34lRI/UhZ89JGGArneZ1IfrPqJtYX
         1X4JyLcuq/PhuxJ4LT0nVjqO+iGEsmVv7by3EwigvKntu0cb/xLUvbh6RKD9MK0N/ryu
         sTWKbP2OvW0WDvIG7k5FL0rUaTU6hAFyfYaTUZyqFYPXWeIOWXWs+VQcwmYZDszcZoE9
         FcBjBGwFUKL9J0QyafSxwwkrwsBz1D8PRhJLm38zHuiW+CRfaFsBcamp7AgJp/M/ppjs
         8aM2PA3jwO2kZq7DFvMxSex1wq1i5dzHw4xyt8f+j55HAjuOY+KhC7RmNZUokpRV2Jko
         giEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ClWSPkoyZ4kyPTi1hPaPEc5rFfqFNG7FC+IrpcYZj3o=;
        b=eof5444hrB7UTnM3ItahQpSloilMiJHaDAcmZgcUmsr2yDxesODtAxru5MQT5bv6Pm
         i1JpnVV37h0Mg+rU1lknBiK28U6aRWozCVXLmPuyf+xPER08K6dvgIfF9CssGhdRfkfc
         koMfOkVCv4lOnSPFBzOWQdKdZ53RqPUIXg7aLylhyihuXQMBLPpzptS5aqUnqClBIynP
         vRaP9juC79w3LObhRuPeMLQVjY0a1PQeaCQnRi+q9RWFvLkVXGQ+9e8TfbLUo26rhHIV
         Vy0E2yh9z8KaRyvT8H7uN8Qp6a7CkohnhVprefMBKi369B8+0RBzz1trbuIlXjlkORGj
         gYqg==
X-Gm-Message-State: AOAM533UKPObZxl5rUYaBeeLhM6V+lU3pkiQVwNXsHUcVnOuJuIIeSVs
        LFRexZFRGXA5997Zh/MUMUk=
X-Google-Smtp-Source: ABdhPJybBr0jQ470m8EgprRmf4ezldPduYDnQbu/YFrwCPlPEuNZQt/ARSnbYMmMLHlLsxTzPsfuXA==
X-Received: by 2002:adf:e689:: with SMTP id r9mr22263091wrm.416.1625830991858;
        Fri, 09 Jul 2021 04:43:11 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y204sm143540wmg.9.2021.07.09.04.43.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jul 2021 04:43:11 -0700 (PDT)
Subject: Re: strlen
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fw@deneb.enyo.de>, gcc-help@gcc.gnu.org,
        Segher Boessenkool <segher@kernel.crashing.org>,
        Xi Ruoyao <xry111@mengyan1223.wang>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
 <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
 <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
 <5566b180-1333-d73b-22ee-6c6d32053921@jguk.org>
 <feb6c15d-b242-83fc-c58d-2ebfbcd4f2bd@gmail.com>
 <9d1681ef-1d97-2d08-9abe-dc63d817ca8a@jguk.org>
 <0ea47fb3-9acc-3517-9593-debcdbce2dd4@gmail.com>
Message-ID: <35c7db99-fa18-7d77-5c4b-eb80ed621bdf@gmail.com>
Date:   Fri, 9 Jul 2021 13:43:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <0ea47fb3-9acc-3517-9593-debcdbce2dd4@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 7/9/21 1:27 PM, Alejandro Colomar (man-pages) wrote:
> Annex K has been an attempt of Microsoft to provide safer functions, but
> while there are some functions there that have good intentions, most of
> them are just badly designed.  That annex K is DOA, and will probably be
> marked as deprecated in C22 (currently C2x).
> 
> I think that a standard should not try to design new functions, and
> instead just annotate common usage, as they did in the first ones.
> Problems like the ones Annex K suffers could have been detected early if
> they had been implemented as an extension to some compiler(s) decade(s)
> before being standardized.  Therefore, if the implementation passes the
> test of time, you standardize it, else not, IMO.  Otherwise, we have a
> standard that is declared deprecated in the next version of the
> standard, similar to what is happening with the C++ standards (which,
> guess what, BTW I recently read that they are undeprecating a lot of C
> stuff they deprecated in the first standards).

But let's analyze Annex K (C11):

It has been designed by Microsoft.

MS's compiler (MS Visual Studio) doesn't even fully support C99 yet (and
by that trend, I doubt it never will).  At most it supports C89.  Visual
Studio has a long history of not supporting C except for those parts
required to implement their C++ compiler.  Would you buy a car designed
by a bike manufacturer?


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
