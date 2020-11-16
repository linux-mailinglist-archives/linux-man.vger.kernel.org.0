Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 857DE2B5281
	for <lists+linux-man@lfdr.de>; Mon, 16 Nov 2020 21:28:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732970AbgKPU1N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Nov 2020 15:27:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732962AbgKPU1N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Nov 2020 15:27:13 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D773C0613CF
        for <linux-man@vger.kernel.org>; Mon, 16 Nov 2020 12:27:12 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id d142so557219wmd.4
        for <linux-man@vger.kernel.org>; Mon, 16 Nov 2020 12:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zzSf3kzEm3Bi3jHZVXl8BU6ulgs+XoBWopRXxn0pTQ8=;
        b=U9F7Cpx1PtYLEE0/GWC9Rj2tgtfmsnpZ89Em2CEMQqYsMob4Ykj/cf7DnTqsIqVFxV
         l2ItCEM7i2ka+GzHK5RD2cKQ6DlRLs6V+AZqAHhZnyCUXHYpU8+TTXCpH2kjheWMf1iT
         5T0xSKySlwhjprSI5/MQYwTNdxsfJTq/O80wEkCqq0csZ4EteK6vKl0/BMSn2Xqpb22s
         O4enrkute/totX5dKWrtuwgg/0JoxeacLZuk1eF7m2FrboVzb7acqe1UfL0t2KwZ4UOx
         fE508yZyYJ/Lm2KLUKEJ7WGnVrDu0AXgfZqnHIJomEnv/ieJ7Po6NK7vJJeUkquQ7EDf
         MhjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zzSf3kzEm3Bi3jHZVXl8BU6ulgs+XoBWopRXxn0pTQ8=;
        b=q0zjEi89Kfcc2wexI/FNlTyHvHbcMP2DnpRzsEg0XPSIDFIwc9+NWl4dXQBDBc3CaL
         7xWrR46alceq5sr/4+/M416h9fbV0XKkLZ1uP2QoADboLPs776g6sfBHIPKfCt2nJM7o
         bo1MRT8XeSyiKJJewf7HHsn6kPb2IEqr5KfDB+5vwh8aVbMCh3Gzpad0FkQAcCvScbWM
         wdwVHqAgNyxy9wuapy0SP059AoRlZRLl92keKzeBVaaPkKfGBUJfFil7RYjwvEaURgzV
         guS8NfL7IQxDjH1nnc9usPpcEW4egkKMNl7+X7Dz6AWSnSfaTIySHwSCqA/WIfZru1kq
         UWMA==
X-Gm-Message-State: AOAM532vf24y8AqbqBc+0YrvkIilOCk/3PFEFZo3C4rsIRP8I2J+944V
        MHM5OiBbLFiM4ss92IXHvETykBhijunx0w==
X-Google-Smtp-Source: ABdhPJzXXqdlcjLYoiRI487ErszemFTbYKePmE0o4za1ZiFYSOYCGL+4jvztA0XjwnO9AHej1NQyiw==
X-Received: by 2002:a1c:4e09:: with SMTP id g9mr714959wmh.40.1605558430475;
        Mon, 16 Nov 2020 12:27:10 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id n23sm470536wmk.24.2020.11.16.12.27.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 12:27:09 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] Add script to get modified pages for commit msgs
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <f3253576-63e6-1540-5a07-9b71a10c42e2@gmail.com>
 <20201116194218.5098-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1e43d7f8-f512-c7fa-3e1a-455a3bb292ea@gmail.com>
Date:   Mon, 16 Nov 2020 21:27:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201116194218.5098-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 11/16/20 8:42 PM, Alejandro Colomar wrote:
> The script can be used this way:
> 
> git commit -sm "$(./scripts/modified_pages.sh): Short commit msg"
> 
> And then maybe --amend and add a longer message.
> 
> This is especially useful for changes to many pages at once,
> usually when running a script to apply some global changes.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  scripts/modified_pages.sh | 34 ++++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100755 scripts/modified_pages.sh
> 
> diff --git a/scripts/modified_pages.sh b/scripts/modified_pages.sh
> new file mode 100755
> index 000000000..f6c4a6cea
> --- /dev/null
> +++ b/scripts/modified_pages.sh
> @@ -0,0 +1,34 @@
> +#!/bin/bash
> +
> +## SPDX-License-Identifier: GPL-2.0-only
> +########################################################################
> +##
> +## (C) Copyright 2020, Alejandro Colomar
> +## This program is free software; you can redistribute it and/or
> +## modify it under the terms of the GNU General Public License
> +## as published by the Free Software Foundation; version 2.
> +##
> +## This program is distributed in the hope that it will be useful,
> +## but WITHOUT ANY WARRANTY; without even the implied warranty of
> +## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +## GNU General Public License for more details
> +## (http://www.gnu.org/licenses/gpl-2.0.html).
> +##
> +########################################################################
> +##
> +## The output of this script is a
> +## list of all files with changes staged for commit
> +## (basename only if the files are within "man?/"),
> +## separated by ", ".
> +## Usage:
> +## git commit -m "$(./scripts/modified_pages.sh): Short message here"
> +##
> +
> +
> +git status							\
> +|sed "/Changes not staged for commit:/q"			\
> +|grep -E "^\s*(modified|deleted|new file):"			\
> +|sed "s/^.*:\s*/, /"						\
> +|sed "s%man[1-9]/%%"						\
> +|tr -d '\n'							\
> +|sed "s/^, //"

Thanks. Patch applied!

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
