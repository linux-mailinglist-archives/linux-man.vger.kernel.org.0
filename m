Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43063280E89
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 10:10:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726017AbgJBIKI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 04:10:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725993AbgJBIKI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 04:10:08 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12D74C0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 01:10:08 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id k10so735495wru.6
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 01:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6saKikvunIQTzy9VDa8ect9p8mNJs0urWp3gRQrdgIE=;
        b=Mz1gYZ2Mwa3u0OC1RPVkHx+inF7f9uRvH2jI6JLnFD3bLNv5cY+dDYcDyWeh+B5yGM
         yn2K+wBVOqFlyxfLgaJcRrZQQcfD36PyJFw13P/4uWZ8VOsZ1TXZmiwHcvc8G6y0EpW9
         cd28t6RO276Ax0vpqA23cIkWP2PtCadL+JR7YAgPkKULTGwfLI8/lsk+0NPwUKiAeI3/
         /toD+hs495CuIK1InbIsz2vjq7y8KtOIz9wM8YuRsOgpm3eynqbOLjPRhQwVQyPlaZ5S
         l5z4hx5z18hn3wFhEAmDJ7l5xecknPb7OG20amcT110ZXF5Pm4z2D9C4FeY0eyWTYIoQ
         r0dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6saKikvunIQTzy9VDa8ect9p8mNJs0urWp3gRQrdgIE=;
        b=XG8IVVdrzEonCJYakls/NzvMAc6ybbV3qoM0389CjmYjDiYyC+lsUDztWLA+tMLtdc
         h1TkPcPSr/gziwU+rIzcYkwsGh1YXB0QTYEWsTFyiTkxpKJPEBlPRgxaQWB6OB+DAjVU
         Bp8HNgpM9UMctJuV52iltfSPea1jJ3dCXqXqLrIgQgRJnMktMQEc+LeaJVMko/TyKzeE
         oybO59JUrv1eFnuSezQIOPTvf4DBBqqbR7v0hfndlU2TwtcL+PrFTYoeGu4oRhE+z8zv
         T53z7Y1FMYC4UkyjXC1C4XeY5s7zJWEY5u3VyptCim2rclq3RZLBNtnyd7NOrrTVm364
         uoHw==
X-Gm-Message-State: AOAM533ik79A1XnSAdYoxFo8sik1+RkUglmvrBzhF1tVMWCqBe8hUXLY
        ByFabpIYXd6s+Bsq2Uh0MMg=
X-Google-Smtp-Source: ABdhPJw83aaqW7Yfk1b2jV78TmD789hbiTKe1QfM2NCOQZCvf4+5ml6EBJVpsuKNXFGtvOorUrVtqA==
X-Received: by 2002:adf:eacb:: with SMTP id o11mr1526026wrn.209.1601626206675;
        Fri, 02 Oct 2020 01:10:06 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id y14sm800110wma.48.2020.10.02.01.10.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 01:10:05 -0700 (PDT)
Subject: Re: [RFC] man7/system_data_types.7: Document [unsigned] __int128
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     Jonathan Wakely <jwakely.gcc@gmail.com>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
        linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <f6179bab-bbad-22f7-0f87-c06988928ec2@gmail.com>
 <CAH6eHdSHEjjjDtBCFO93NXb3bCGtYg6L35injf6pz3bMoL=3Fw@mail.gmail.com>
 <5ed7272e-1c81-d1f5-6a54-0fee4270199e@gmail.com>
 <alpine.DEB.2.21.2010011724580.4323@digraph.polyomino.org.uk>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <5e12ffdb-4b7b-0720-98a1-3c111acff6ae@gmail.com>
Date:   Fri, 2 Oct 2020 10:10:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.2010011724580.4323@digraph.polyomino.org.uk>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2020-10-01 15:46, Jonathan Wakely wrote:
 > I hope WG14 will adopt something like
 > http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2465.pdf  and the
 > whole mess will go away.
 >
 > intmax_t will be deprecated, and implementations can provide 128-bit
 > integers without caveats.


On 2020-10-01 19:31, Joseph Myers wrote:
> On Thu, 1 Oct 2020, Alejandro Colomar via Gcc wrote:
> 
>> Because 'intmax_t' has a bug
>> (actually I know GCC rejected the bug report,
>> but the problem is still there and users should be informed about this)
>> which is related to __int128.
> 
> __int128 is not an integer type as defined by any existing version of ISO
> C, precisely because it's wider than intmax_t, and changing intmax_t would
> be a big ABI problem (involving new symbol versions for about 100
> printf/scanf-related functions in glibc, 200 on platforms with multiple
> long double variants).
> 
> See the proposed removal of intmax_t in C2x (accepted in principle at the
> first virtual Freiburg meeting, but so far without any wording accepted
> for any specific approach to removal regarding e.g. preprocessor
> arithmetic and other places depending on intmax_t).  That removal would
> allow __int128 to be considered an extended integer type as defined by C2x
> and later (with int128_t typedef in <stdint.h>, etc.), if desired.
> 


Thanks for pointing out that the standard acknowledges
the bug in [u]intmax_t.  It's good to know.
Also good to know they plan to fix it.

Thanks,

Alex
