Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DB1124350C
	for <lists+linux-man@lfdr.de>; Thu, 13 Aug 2020 09:38:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726048AbgHMHiL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Aug 2020 03:38:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726044AbgHMHiK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Aug 2020 03:38:10 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B20CC061757
        for <linux-man@vger.kernel.org>; Thu, 13 Aug 2020 00:38:10 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id c16so5091219ejx.12
        for <linux-man@vger.kernel.org>; Thu, 13 Aug 2020 00:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nIus1uCJWJV67UzSQi5bxHztdawISsjKZw+eiguIDkY=;
        b=VnZyeKswLTnRHnr8Fb31NePkbStzUhJhYk/ppDbPDXvsbvPjlezGdWN+heyKsEX5im
         /6B5XxyRe+mnlX8Zb0kTvC2G1m1Pu2HqS7YRagdFEZgxEK4utYVh7Sgib9YqueAwWB+p
         QAsQGKGYOgi+Vlr1aZoLSO5OiOCHtyrB1HzdMKRpWpN0sfMwDdpoB3KkMnZbujrGDBP9
         KgfHI1a8K9IX+X+nT0bGhGUEzc1jlIbShu5RZED+ENZAq5Ys3O32jChW05sytiFobqBp
         XexyhQVX+/5eUBj9taTmj4ij5vaErJ8iIuPHRP4HqldGZYYD4Vv87/N5AHapcaRnuzaO
         7tbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nIus1uCJWJV67UzSQi5bxHztdawISsjKZw+eiguIDkY=;
        b=ZVztF+d7B5srBxZfU+NgwGMoThpL7TApAsD/CyqPND0rThNVkuzf6z+Wf8AMHXX1x6
         XPzDp7Nf9JqQI5+6on2KEs2UfT1NbtH3dQ31DNCL37tPWVSzsCVZpJp51tkT5tKnR7dv
         WCEGS6wDashQMtdvl19Ol7b6N3bXAfQJaV6iIY7nkEUWUTjuNFq9pWJuq+HGk3U6D5TO
         UoQfcxCS8gRu/IPx2IY6bh/6ATWJUOOHUTQjm3NX9NenpEIG5K/7FKELPgXdkA5ps3Es
         qU1+ZpQfcCX+NEpQpWMRdqDxOAjJAeorMLOkfQ94PTxlcFC6Fpx7K7HRgd15kS9aUOct
         VJ1Q==
X-Gm-Message-State: AOAM5322olgonuNu46Xy825JLoWzQElqA1g5McBM95I7XdMg4G9PZnR7
        tJsMLpeFei6288ww04/VIBtLvdpp
X-Google-Smtp-Source: ABdhPJw6WU87HqO0LXI6l9qE0Eo28hjT5juTEONdkhK/dgavjueLW74+UqlrYPxzXLbufgLrUCdXRA==
X-Received: by 2002:a17:906:80d3:: with SMTP id a19mr3718414ejx.217.1597304288450;
        Thu, 13 Aug 2020 00:38:08 -0700 (PDT)
Received: from ?IPv6:2001:a61:241a:1101:8c63:f991:aa91:da82? ([2001:a61:241a:1101:8c63:f991:aa91:da82])
        by smtp.gmail.com with ESMTPSA id dc12sm3315037ejb.124.2020.08.13.00.38.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Aug 2020 00:38:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] [rfc] drop "coding: UTF-8" header
To:     Mike Frysinger <vapier@gentoo.org>
References: <20200726062340.28800-1-vapier@gentoo.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c2d1c695-d6fe-465c-5c4f-a76df9754feb@gmail.com>
Date:   Thu, 13 Aug 2020 09:38:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200726062340.28800-1-vapier@gentoo.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mike,

On 7/26/20 8:23 AM, Mike Frysinger wrote:
> From: Mike Frysinger <vapier@chromium.org>
> 
> This header is used inconsistently -- man pages are UTF-8 encoded
> but not setting this marker.  It's only respected by the man-db
> package, and seems a bit anachronistic at this point when UTF-8
> is the standard default nowadays.

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Mike Frysinger <vapier@gentoo.org>
> ---
>  man1/iconv.1                | 2 --
>  man3/mbstowcs.3             | 1 -
>  man3/newlocale.3            | 1 -
>  man5/locale.5               | 1 -
>  man7/armscii-8.7            | 1 -
>  man7/charsets.7             | 1 -
>  man7/cp1251.7               | 1 -
>  man7/cp1252.7               | 1 -
>  man7/iso_8859-1.7           | 1 -
>  man7/iso_8859-10.7          | 1 -
>  man7/iso_8859-11.7          | 1 -
>  man7/iso_8859-13.7          | 1 -
>  man7/iso_8859-14.7          | 1 -
>  man7/iso_8859-15.7          | 1 -
>  man7/iso_8859-16.7          | 1 -
>  man7/iso_8859-2.7           | 1 -
>  man7/iso_8859-3.7           | 1 -
>  man7/iso_8859-4.7           | 1 -
>  man7/iso_8859-5.7           | 1 -
>  man7/iso_8859-6.7           | 1 -
>  man7/iso_8859-7.7           | 1 -
>  man7/iso_8859-8.7           | 1 -
>  man7/iso_8859-9.7           | 1 -
>  man7/koi8-r.7               | 1 -
>  man7/koi8-u.7               | 1 -
>  man8/iconvconfig.8          | 2 --
>  scripts/convert_to_utf_8.sh | 2 +-
>  27 files changed, 1 insertion(+), 29 deletions(-)
> 
> diff --git a/man1/iconv.1 b/man1/iconv.1
> index 3649e6dbe12e..8207e1cea3d6 100644
> --- a/man1/iconv.1
> +++ b/man1/iconv.1
> @@ -1,5 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
> -.\"
>  .\" Copyright (C) 2014 Marko Myllynen <myllynen@redhat.com>
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man3/mbstowcs.3 b/man3/mbstowcs.3
> index f92ab681c56f..cf650506eb80 100644
> --- a/man3/mbstowcs.3
> +++ b/man3/mbstowcs.3
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright (c) Bruno Haible <haible@clisp.cons.org>
>  .\" and Copyright 2014 Michael Kerrisk <mtk.manpages@gmail.com>
>  .\"
> diff --git a/man3/newlocale.3 b/man3/newlocale.3
> index 2d71f1a8cf51..86b961fc628d 100644
> --- a/man3/newlocale.3
> +++ b/man3/newlocale.3
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
>  .\"
>  .\" %%%LICENSE_START(VERBATIM)
> diff --git a/man5/locale.5 b/man5/locale.5
> index 85e548bc17f3..f6b63da9d956 100644
> --- a/man5/locale.5
> +++ b/man5/locale.5
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright (C) 1994  Jochen Hein (Hein@Student.TU-Clausthal.de)
>  .\" Copyright (C) 2008  Petr Baudis (pasky@suse.cz)
>  .\" Copyright (C) 2014 Michael Kerrisk <mtk@manpages@gmail.com>
> diff --git a/man7/armscii-8.7 b/man7/armscii-8.7
> index 94c51e3680c0..163c81d5b27f 100644
> --- a/man7/armscii-8.7
> +++ b/man7/armscii-8.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2009  Lefteris Dimitroulakis <edimitro at tee.gr>
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/charsets.7 b/man7/charsets.7
> index 439ea7343708..79d1c1442238 100644
> --- a/man7/charsets.7
> +++ b/man7/charsets.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright (c) 1996 Eric S. Raymond <esr@thyrsus.com>
>  .\" and Copyright (c) Andries Brouwer <aeb@cwi.nl>
>  .\"
> diff --git a/man7/cp1251.7 b/man7/cp1251.7
> index 382de42c8510..fdc1af847300 100644
> --- a/man7/cp1251.7
> +++ b/man7/cp1251.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2009    Lefteris Dimitroulakis (edimitro@tee.gr)
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/cp1252.7 b/man7/cp1252.7
> index 07ac84bf5d19..759a4061d0bb 100644
> --- a/man7/cp1252.7
> +++ b/man7/cp1252.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2014 (C) Marko Myllynen <myllynen@redhat.com>
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/iso_8859-1.7 b/man7/iso_8859-1.7
> index 202768231f51..8c57bcfbc3eb 100644
> --- a/man7/iso_8859-1.7
> +++ b/man7/iso_8859-1.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 1993-1995 Daniel Quinlan (quinlan@yggdrasil.com)
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/iso_8859-10.7 b/man7/iso_8859-10.7
> index 82c8eeda5f7f..02f89221cdb0 100644
> --- a/man7/iso_8859-10.7
> +++ b/man7/iso_8859-10.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2009    Lefteris Dimitroulakis (edimitro@tee.gr)
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/iso_8859-11.7 b/man7/iso_8859-11.7
> index 073ddc65771e..afc931b00e98 100644
> --- a/man7/iso_8859-11.7
> +++ b/man7/iso_8859-11.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2009 Lefteris Dimitroulakis <edimitro at tee.gr>
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/iso_8859-13.7 b/man7/iso_8859-13.7
> index 06de48839aa8..6a5304b11a51 100644
> --- a/man7/iso_8859-13.7
> +++ b/man7/iso_8859-13.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2009   Lefteris Dimitroulakis (edimitro@tee.gr)
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/iso_8859-14.7 b/man7/iso_8859-14.7
> index 592bd0838e05..cb39a9e915fd 100644
> --- a/man7/iso_8859-14.7
> +++ b/man7/iso_8859-14.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2009   Lefteris Dimitroulakis (edimitro@tee.gr)
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/iso_8859-15.7 b/man7/iso_8859-15.7
> index 5e71a41aae60..9946b0bc266f 100644
> --- a/man7/iso_8859-15.7
> +++ b/man7/iso_8859-15.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 1993-1995 Daniel Quinlan (quinlan@yggdrasil.com)
>  .\" Copyright 1999      Dimitri Papadopoulos (dpo@club-internet.fr)
>  .\"
> diff --git a/man7/iso_8859-16.7 b/man7/iso_8859-16.7
> index 8d9b5a259586..5bf518279b07 100644
> --- a/man7/iso_8859-16.7
> +++ b/man7/iso_8859-16.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2002 Ionel Mugurel Ciobîcă (IMCiobica@netscape.net)
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/iso_8859-2.7 b/man7/iso_8859-2.7
> index 095f0612d0ca..a9e478b58d66 100644
> --- a/man7/iso_8859-2.7
> +++ b/man7/iso_8859-2.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 1999 Roman Maurer (roman.maurer@hermes.si)
>  .\" Copyright 1993-1995 Daniel Quinlan (quinlan@yggdrasil.com)
>  .\"
> diff --git a/man7/iso_8859-3.7 b/man7/iso_8859-3.7
> index 5f2605852f3d..b9e00fd10ed9 100644
> --- a/man7/iso_8859-3.7
> +++ b/man7/iso_8859-3.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2009  Lefteris Dimitroulakis (edimitro@tee.gr)
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/iso_8859-4.7 b/man7/iso_8859-4.7
> index 6eefaef93989..4ef5c0e05a44 100644
> --- a/man7/iso_8859-4.7
> +++ b/man7/iso_8859-4.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2009  Lefteris Dimitroulakis (edimitro@tee.gr)
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/iso_8859-5.7 b/man7/iso_8859-5.7
> index 7e3c8cec1087..1396b36de92e 100644
> --- a/man7/iso_8859-5.7
> +++ b/man7/iso_8859-5.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2009   Lefteris Dimitroulakis (edimitro@tee.gr)
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/iso_8859-6.7 b/man7/iso_8859-6.7
> index 5e1608a2e342..d2c5aea085d5 100644
> --- a/man7/iso_8859-6.7
> +++ b/man7/iso_8859-6.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2009  Lefteris Dimitroulakis (edimitro@tee.gr)
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/iso_8859-7.7 b/man7/iso_8859-7.7
> index f59570888089..97bb728d803b 100644
> --- a/man7/iso_8859-7.7
> +++ b/man7/iso_8859-7.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 1999      Dimitri Papadopoulos (dpo@club-internet.fr)
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/iso_8859-8.7 b/man7/iso_8859-8.7
> index b7e1c5f7b53a..bdfaa571cad7 100644
> --- a/man7/iso_8859-8.7
> +++ b/man7/iso_8859-8.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2009   Lefteris Dimitroulakis (edimitro@tee.gr)
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/iso_8859-9.7 b/man7/iso_8859-9.7
> index b97efc29cf15..705971e454c9 100644
> --- a/man7/iso_8859-9.7
> +++ b/man7/iso_8859-9.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2002      Dimitri Papadopoulos (dpo@club-internet.fr)
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/koi8-r.7 b/man7/koi8-r.7
> index 7ee9e2927d42..7d1977eb3832 100644
> --- a/man7/koi8-r.7
> +++ b/man7/koi8-r.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2001      Alexey Mahotkin <alexm@hsys.msk.ru>
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man7/koi8-u.7 b/man7/koi8-u.7
> index 0c56e949f3e4..987918724d7f 100644
> --- a/man7/koi8-u.7
> +++ b/man7/koi8-u.7
> @@ -1,4 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
>  .\" Copyright 2009  Lefteris Dimitroulakis <edimitro at tee.gr>
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/man8/iconvconfig.8 b/man8/iconvconfig.8
> index 2cc3536f4c11..b572829659b5 100644
> --- a/man8/iconvconfig.8
> +++ b/man8/iconvconfig.8
> @@ -1,5 +1,3 @@
> -'\" t -*- coding: UTF-8 -*-
> -.\"
>  .\" Copyright (C) 2014 Marko Myllynen <myllynen@redhat.com>
>  .\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> diff --git a/scripts/convert_to_utf_8.sh b/scripts/convert_to_utf_8.sh
> index b8a5e83baee1..28f5a72cf8c7 100755
> --- a/scripts/convert_to_utf_8.sh
> +++ b/scripts/convert_to_utf_8.sh
> @@ -33,7 +33,7 @@ fi
>  out_dir="$1"
>  shift
>  
> -enc_line="'\\\" t -*- coding: UTF-8 -*-"
> +enc_line=""
>  
>  for f in "$@"; do
>      enc=$(file -bi "$f" | cut -d = -f 2)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
