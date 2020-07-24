Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83EEC22C3E8
	for <lists+linux-man@lfdr.de>; Fri, 24 Jul 2020 12:58:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726702AbgGXK6C (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Jul 2020 06:58:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726483AbgGXK6C (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Jul 2020 06:58:02 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 658C3C0619D3
        for <linux-man@vger.kernel.org>; Fri, 24 Jul 2020 03:58:02 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id c10so1384059ejs.5
        for <linux-man@vger.kernel.org>; Fri, 24 Jul 2020 03:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=a4k7LfEY9aCRTk3xlmbvKAwInrQZYRut7U1h3DiVUJY=;
        b=EKmk1H6P1E5JJSctsl3rB6cEKAl//u7xYCbz9Vdyd/mBSckQyYJkPPeg4MIJuRmkIB
         pJkYX9fYNqZzQTBxvZdBS8ALbQyxKgWgm3RnwBY9pO+CDbeftn6oxhDr0N8Dux1Xtk4B
         KP0p5Dn26YbCWKaub9o0rjIBLkKSTTe7Vcc+D1scgFZbKrxBB+0TOBhnL6i00nQOqpOE
         dUsk1zd09DdRUUe6VIrmL/sVUNCbcRFyiDbIq85nCTuVvD67yRz9W73g/yd00i77EeEm
         dOqXi9tO6pd/VQKlxhjTfnQ31+thVtD5DPNkyC+eMos5/KqBBA6WGUrqc5HwmqOrGnvH
         vJWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=a4k7LfEY9aCRTk3xlmbvKAwInrQZYRut7U1h3DiVUJY=;
        b=nVze3GOAujnyB7ZE0Wu4CvmtaUsAmWxM9flmld0Zr5MI3GEnKCI6gQw1Y5NfgduMPJ
         MSIRw1PhdhU39tgaaAdG5TlevaXye3N0tnMV38SkJgOZ/TfT3AqfWhA9RTtqcbOFIVLh
         JY/nYI8dSp1c1NZkeRqBz3rpWwb2OpIR6VEjlXTfpdb/lqNHWEsPOokLjeJXMoV8wSoE
         VpNQnjeIRi7KHoMgqsFg/ZLLon8CUz551k7LL4cwXDTfmV1ggCd1RYXcKjCVbtwwBq5x
         JmTRqvVYu3favfm7MnDbiAqljbhHS7YI64TTjXxR0pCPyU5i1qZ+L8Kg8irS9FuWxg4k
         sQ1g==
X-Gm-Message-State: AOAM5330L/SAKtw7W1gmzexcxqdFmDy/qdEJ4a99C8xsDa0RKQTUUsFw
        UEwRwp3WnVs75mfp8kVWjRaGfyZx
X-Google-Smtp-Source: ABdhPJylTi4ehdKl4NzKwWBXkNgPDYGuhvf5tuVURA+zn6P4ymJ6v3EHLRRzhWRyuNytvdn0VVBGVQ==
X-Received: by 2002:a17:906:1b45:: with SMTP id p5mr8436558ejg.51.1595588280899;
        Fri, 24 Jul 2020 03:58:00 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id z15sm480546edr.13.2020.07.24.03.57.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jul 2020 03:58:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] trim leading blank comment line
To:     Mike Frysinger <vapier@gentoo.org>
References: <20200723215340.13867-1-vapier@gentoo.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <85bdaf5c-fe2a-5a3b-d7ad-ffcc166b200c@gmail.com>
Date:   Fri, 24 Jul 2020 12:57:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200723215340.13867-1-vapier@gentoo.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Mike,

On 7/23/20 11:53 PM, Mike Frysinger wrote:
> From: Mike Frysinger <vapier@chromium.org>
> 
> Very few pages do this, so trim them.

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Mike Frysinger <vapier@gentoo.org>
> ---
>  man5/repertoiremap.5        | 1 -
>  man7/keyrings.7             | 1 -
>  man7/persistent-keyring.7   | 1 -
>  man7/process-keyring.7      | 1 -
>  man7/session-keyring.7      | 1 -
>  man7/thread-keyring.7       | 1 -
>  man7/user-keyring.7         | 1 -
>  man7/user-session-keyring.7 | 1 -
>  8 files changed, 8 deletions(-)
> 
> diff --git a/man5/repertoiremap.5 b/man5/repertoiremap.5
> index a76e866f8f43..06d4814d5722 100644
> --- a/man5/repertoiremap.5
> +++ b/man5/repertoiremap.5
> @@ -1,4 +1,3 @@
> -.\"
>  .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
>  .\" This is free documentation; you can redistribute it and/or
>  .\" modify it under the terms of the GNU General Public License as
> diff --git a/man7/keyrings.7 b/man7/keyrings.7
> index 0983a4da948e..cbe8a6fb0ebd 100644
> --- a/man7/keyrings.7
> +++ b/man7/keyrings.7
> @@ -1,4 +1,3 @@
> -.\"
>  .\" Copyright (C) 2014 Red Hat, Inc. All Rights Reserved.
>  .\" Written by David Howells (dhowells@redhat.com)
>  .\" and Copyright (C) 2016 Michael Kerrisk <mtk.manpages@gmail.com>
> diff --git a/man7/persistent-keyring.7 b/man7/persistent-keyring.7
> index 3367ec153f47..de56255c1d68 100644
> --- a/man7/persistent-keyring.7
> +++ b/man7/persistent-keyring.7
> @@ -1,4 +1,3 @@
> -.\"
>  .\" Copyright (C) 2014 Red Hat, Inc. All Rights Reserved.
>  .\" Written by David Howells (dhowells@redhat.com)
>  .\"
> diff --git a/man7/process-keyring.7 b/man7/process-keyring.7
> index c4dbd127f5a3..9f48aa9c2143 100644
> --- a/man7/process-keyring.7
> +++ b/man7/process-keyring.7
> @@ -1,4 +1,3 @@
> -.\"
>  .\" Copyright (C) 2014 Red Hat, Inc. All Rights Reserved.
>  .\" Written by David Howells (dhowells@redhat.com)
>  .\"
> diff --git a/man7/session-keyring.7 b/man7/session-keyring.7
> index 0b886be5e702..829d1e975e36 100644
> --- a/man7/session-keyring.7
> +++ b/man7/session-keyring.7
> @@ -1,4 +1,3 @@
> -.\"
>  .\" Copyright (C) 2014 Red Hat, Inc. All Rights Reserved.
>  .\" Written by David Howells (dhowells@redhat.com)
>  .\"
> diff --git a/man7/thread-keyring.7 b/man7/thread-keyring.7
> index a09ab4c565e9..0cc429b58c91 100644
> --- a/man7/thread-keyring.7
> +++ b/man7/thread-keyring.7
> @@ -1,4 +1,3 @@
> -.\"
>  .\" Copyright (C) 2014 Red Hat, Inc. All Rights Reserved.
>  .\" Written by David Howells (dhowells@redhat.com)
>  .\"
> diff --git a/man7/user-keyring.7 b/man7/user-keyring.7
> index f13674eeeaa3..de2d7029e699 100644
> --- a/man7/user-keyring.7
> +++ b/man7/user-keyring.7
> @@ -1,4 +1,3 @@
> -.\"
>  .\" Copyright (C) 2014 Red Hat, Inc. All Rights Reserved.
>  .\" Written by David Howells (dhowells@redhat.com)
>  .\"
> diff --git a/man7/user-session-keyring.7 b/man7/user-session-keyring.7
> index 91664dd50297..0934e08e2122 100644
> --- a/man7/user-session-keyring.7
> +++ b/man7/user-session-keyring.7
> @@ -1,4 +1,3 @@
> -.\"
>  .\" Copyright (C) 2014 Red Hat, Inc. All Rights Reserved.
>  .\" Written by David Howells (dhowells@redhat.com)
>  .\"
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
