Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA97B2DD58A
	for <lists+linux-man@lfdr.de>; Thu, 17 Dec 2020 17:56:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728161AbgLQQ4p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Dec 2020 11:56:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728055AbgLQQ4o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Dec 2020 11:56:44 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96757C061794
        for <linux-man@vger.kernel.org>; Thu, 17 Dec 2020 08:56:03 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id a6so6145401wmc.2
        for <linux-man@vger.kernel.org>; Thu, 17 Dec 2020 08:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=E+vWKpyWDDgJ4PFLnHfDaH+0Ty0pAIBCHmpWjPCHYmU=;
        b=KTmWcTB7H5TXvPKuNWAyUdojhCYsqDNQ+J9v7knTT38yPx0BN+nMCT2ERezfOKOLU2
         9hrGWWQ9PXEh61Yz3P4K++xmSFwQ0dPT5wmPvaTnLtnbiKfxE04kBb8WqhNnLlVkj1AU
         QcYD4LmvKJ0f9+cPkbtd7BHbZELdQh1ZoMEdRuyJz/nAURhDa+Vg5TtFwEqrfR71UVc5
         LZ/rLKXxxhv7emCBsyZ5+hVOkIVKmXwqYE/YhRaVgmpgAKi5Xvc1QFwc4/itS8vcYp6j
         CHz/iVuwfX4/hWChInQ/fN/SJFLyLmfPCHf5ZV1Ge5eAhYQeNclr7BMhN/KN0z5Q7xKe
         YmWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=E+vWKpyWDDgJ4PFLnHfDaH+0Ty0pAIBCHmpWjPCHYmU=;
        b=AV2I1UGq//rZa48hTWb3SnTD08ygmOWMfmEaSeW/xo1vclmMs3sQxxW0WGGyCEBXr1
         Jej4y+CGGIzXf+9rG6Q77YrFJap1l2kZAK5YDGlC0RpM2CQE1rdED94aDhOyaW/aR8wC
         6Xj99dJb7OcjtgtYoucsvTiTfKKIw7qp+eptE1/IVjqulIVaXudL4ORGhExesqOejFfw
         FO5em/VR8qw3u8p8olqyzwBgFxahTK5pHRBB9D3WeTqINatzoNnYQGPPOCWorT6nwwRN
         0pvBn5MhnO32knIbscQeygKqvTrhSsx0GM1xyWPdXusHRxNZcucnY9zlsz9CX9v4fltf
         kIVA==
X-Gm-Message-State: AOAM531lwTMbu8Qh7im3+QAEdBGiWgkH8mok+wozTdeUgKMAcKEv7b44
        S02EksPxkzAvQhaU3RkV3l4dSVvm+Hg=
X-Google-Smtp-Source: ABdhPJyDl+UI0xFhEFiiTp8SDTb6enXnAiOF4V+h9bE1VeqSZlg9PIe21q0nz0/X4ylUjgGbLKm7cQ==
X-Received: by 2002:a1c:3b02:: with SMTP id i2mr195717wma.141.1608224162294;
        Thu, 17 Dec 2020 08:56:02 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id s6sm10418276wro.79.2020.12.17.08.56.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Dec 2020 08:56:01 -0800 (PST)
Subject: Re: [PATCH 2/2] filesystems.5: note ncpfs removal from kernel
To:     =?UTF-8?Q?Ahelenia_Ziemia=c5=84ska?= 
        <nabijaczleweli@nabijaczleweli.xyz>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <4443342faae85cfa74bae6efa1a12ff40efe18c0.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
 <365585882722e9c64478aab1b558923e3153b671.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
 <71269cb4-db6e-2908-5c42-2747eb930a53@gmail.com>
 <20201217164028.rphpncqtdavr27uy@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <09db431f-0fac-f1d3-be94-ee2cc3b0921b@gmail.com>
Date:   Thu, 17 Dec 2020 17:56:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201217164028.rphpncqtdavr27uy@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ahelenia,

Please, could you append that into the first paragraph?
I feel 3 paragraphs is too much for a fs that has been already removed.

[
       ncpfs     is  a network filesystem that supports the NCP
                 protocol, used by Novell NetWare.  It was removed
                 from the kernel in 4.17.

                 To use ncpfs, you need special programs, which can
                 be found at ⟨ftp://linux01.gwdg.de/pub/ncpfs⟩.
]

Something like this.  This way, the "removed" notice is also closer to
the name.

Thanks,

Alex

P.S.: Sorry for not spotting this before :/

On 12/17/20 5:40 PM, Ahelenia Ziemiańska wrote:
> On Thu, Dec 17, 2020 at 05:23:06PM +0100, Alejandro Colomar (man-pages) wrote:
>> Could you remove the '-rc4' part from the version?
>> So that we show the first stable version where it was removed.
> Sure thing, see updated scissor-patch below:
> 
> -- >8 --
> Subject: [PATCH 2/2] filesystems.5: note ncpfs removal from kernel
> 
> Relevant Linux commits:
>  * moved to staging in 1bb8155080c652c4853e6228f8f0d262b3049699
>    (describe: v4.15-rc1-129-g1bb8155080c6) in Nov 2017,
>    described as "broken" and "obsolete"
>  * purged in bd32895c750bcd2b511bf93917bf7ae723e3d0b6
>    (describe: v4.17-rc3-1010-gbd32895c750b) in Jun 2018,
>    "since no one has complained or even noticed it was gone"
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
>  man5/filesystems.5 | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/man5/filesystems.5 b/man5/filesystems.5
> index 6ec2de9f0..1eda05b22 100644
> --- a/man5/filesystems.5
> +++ b/man5/filesystems.5
> @@ -160,6 +160,10 @@ To use
>  you need special programs, which can be found at
>  .UR ftp://ftp.gwdg.de\:/pub\:/linux\:/misc\:/ncpfs
>  .UE .
> +.IP
> +The
> +.B ncpfs
> +filesystem was removed from the kernel in 4.17.
>  .TP
>  .B nfs
>  is the network filesystem used to access disks located on remote computers.
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
