Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5727C1B1480
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 20:31:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726013AbgDTSbt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 14:31:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725784AbgDTSbt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 14:31:49 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0AF1C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:31:48 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id i10so13408954wrv.10
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2qGodW4q8hE326TW/zvRfn5PnqJnLbaAYVGO1upc8iY=;
        b=OnXR1OvAUzGCFZ1NDGdBE1HpEe5mVmXDgND0QOxdFvInRbntnCnxG7bsjvFUJPqyks
         azS7Sl76ntRKYJJWT+DHO/yD0J+NeehjTQ/Q7ojFMgg/o6ZzBolIZSe90eQlASlTsjjx
         aFEgN0J7gvfnJzABOKoQeGU9uNolUg/ez5uYI36KT5zHg5F1bvecdgO9egkK6QgUwydY
         mkvCDW3FOnbOF00n7+b3hX0PhCfMyXgwQrPAg9z3PfdYGz2OuK31fFGA4F7gibDanHTr
         dQME5ud8fVuiv6xAdU+ziONErcgrTFu2PdkUWJoQrnSn0Hge/PSUUUMuV2odvJAp3Vai
         qzfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2qGodW4q8hE326TW/zvRfn5PnqJnLbaAYVGO1upc8iY=;
        b=mbtDHObuD9gmI7D45igyHnfgJ5bP274DQ+qTZn0+0VqYYnh3LdbKQa3v37LqnOB4Cn
         6uJzlU9x+S6sMLPWf+20AinEvdXrngJvzf7ug1VlV4eBt72FZhy7tLu0W1G65ohm4cWy
         aNEYcJuDLIKZp9366octncRXTq9VlmxmgE+IYyGnRCVu1vspt/lhCumP0QkurS7wmW81
         /NNxcJJubDRxMlgSMlPLqYhgul2Gx+6wxqiyD/QloF/LJh+vg84l+h6kXbijPGQbm+AH
         8yiwmT1X9rwJ/Isl9rEcekrQT5vTtoTXj+dI3PezC/f+xiKlJRBSBsaTDmvcWL0zu3nW
         CeMQ==
X-Gm-Message-State: AGi0PubJTenieIZeR6geg49QpNvJ1u/2pKjxuGPP1E3MFYuxnAIR0EES
        mgaI7YzEmls3szd3qQvxgw2DGY/D
X-Google-Smtp-Source: APiQypI8ABXYdMSBW+w453zGjnpZzOXNwMRxHo16lxsVPJNozaUtUT4tOOTJ91L9vtif30GkNv7NPQ==
X-Received: by 2002:a5d:4246:: with SMTP id s6mr20285748wrr.421.1587407507031;
        Mon, 20 Apr 2020 11:31:47 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id h17sm333811wmm.6.2020.04.20.11.31.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 11:31:46 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] posix_spawn.3: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200420135600.450-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c8dd9bb1-468f-9153-7d23-faae1ceabaae@gmail.com>
Date:   Mon, 20 Apr 2020 20:31:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200420135600.450-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub

On 4/20/20 3:55 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man3/posix_spawn.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
> index 63168b63e..c21c90f50 100644
> --- a/man3/posix_spawn.3
> +++ b/man3/posix_spawn.3
> @@ -393,7 +393,7 @@ instead of
>  .BR fork (2).
>  The
>  .B _GNU_SOURCE
> -feature test macro must be defined to obtain the definition of this contant.
> +feature test macro must be defined to obtain the definition of this constant.
>  .TP
>  .BR POSIX_SPAWN_SETSID " (since glibc 2.26)"
>  If this flag is set,
> @@ -403,7 +403,7 @@ group in the session (see
>  .BR setsid (2)).
>  The
>  .B _GNU_SOURCE
> -feature test macro must be defined to obtain the definition of this contant.
> +feature test macro must be defined to obtain the definition of this constant.
>  .\" This flag has been accepted in POSIX, see:
>  .\" http://austingroupbugs.net/view.php?id=1044
>  .\" and has been implemented in glibc since version 2.26

Thanks. Applied.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
