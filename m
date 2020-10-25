Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C62552980FF
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 10:34:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414783AbgJYJes (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 05:34:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1414681AbgJYJes (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 05:34:48 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7423EC0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:34:35 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id w23so7123164wmi.4
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BXG6Qr/hFFlty9MnUIT78MPYmBFCfIxzP9Tat26zMlo=;
        b=StqCVCBZ2juoGDwCwMUaFQutztksTczc3lgsMpFjRIdqtiNymVlLGuTT4aecQGDUx1
         2u/9fEbLgai9zild3WgP+oYM9P2CD07HKYBXf1Hm3bwccjxE3NSzsBbOqWut5xJEL3io
         KKOSZMbVTFE/fsrNao+PqHjL9zxAXLPhhviG7uH8fTWhIlRDvz9Brx57ntC8CTdzLEct
         5pMBwatb0/gNHkbT9b+PU+d6zJRnzcI7osbA6ez6KOj5ijXscbYGMFntQcxzRg3U79zA
         jBlv/mGQ17a3cJaNmxHdgTDJNGZ0I7uM1vvKnKyfu0QEm1a4eMXQva/lM3AA6sUjuxyA
         Ypzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BXG6Qr/hFFlty9MnUIT78MPYmBFCfIxzP9Tat26zMlo=;
        b=MxV8vCFs/B+oXrrTmxE30OUFojrU62PMMAYCOK3pbbJqrNrgwFfA0Se50L6dcvuI3Q
         8xnnY440qcs3Jub06CKSYS2Q12PqY/2FgRJKeccHxZpzK2xQkA/N5N0G9pn+xO+ieB4E
         B/7BFGelE5la40BuMtfu4DPsARz+cWTJQQORzwFB3n2QlCFZJHt4gLhVMk+/44YIZdi8
         AEKgUv9zCZvYRyI2riy2trFyjv8uWWgoQZD/SUFeJ/2BipMVQBIQlG5v8N014CAxxX5G
         atACgLOlQHInGSDcoV3FUKrAi+GpjfIzUJhma71FiVvaeOnCaGUhvedYqVAXa/SN1957
         AlyQ==
X-Gm-Message-State: AOAM530KnEGQJSo83whQYMwMRjoTHF3ZlNgNj129R5bv9jk1aNvvIxVX
        EokJJblbY9u7WGaeUXcnik3xIQKIQwE=
X-Google-Smtp-Source: ABdhPJz0YyfOOEEKd76LZgShS9LUrpOjliXmWOqm0d2dyUSnIkRtkWsKfpQO2CSwuUGW2Nn5iJ6soA==
X-Received: by 2002:a1c:770e:: with SMTP id t14mr10695693wmi.34.1603618473924;
        Sun, 25 Oct 2020 02:34:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id o7sm4250986wrp.23.2020.10.25.02.34.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 02:34:33 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] circleq.3, list.3, slist.3, stailq.3: Fix return type of
 macros
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201025091922.3233-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <45d13e9b-4ba1-823c-67b9-da4577d28dcb@gmail.com>
Date:   Sun, 25 Oct 2020 10:34:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201025091922.3233-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/25/20 10:19 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man3/circleq.3 | 10 +++++-----
>  man3/list.3    |  8 ++++----
>  man3/slist.3   |  6 +++---
>  man3/stailq.3  |  8 ++++----
>  4 files changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/man3/circleq.3 b/man3/circleq.3
> index 54df3fa20..a70a22079 100644
> --- a/man3/circleq.3
> +++ b/man3/circleq.3
> @@ -58,7 +58,7 @@ CIRCLEQ_REMOVE
>  .PP
>  .B CIRCLEQ_ENTRY(TYPE);
>  .PP
> -.BI "CIRCLEQ_ENTRY *CIRCLEQ_FIRST(CIRCLEQ_HEAD *" head ");"
> +.BI "TYPE *CIRCLEQ_FIRST(CIRCLEQ_HEAD *" head ");"
>  .PP
>  .BI "CIRCLEQ_FOREACH(TYPE *" var ", CIRCLEQ_HEAD *" head ", CIRCLEQ_ENTRY " NAME ");"
>  .PP
> @@ -83,7 +83,7 @@ CIRCLEQ_REMOVE
>  .BI "void CIRCLEQ_INSERT_TAIL(CIRCLEQ_HEAD *" head ", TYPE *" elm ","
>  .BI "                CIRCLEQ_ENTRY " NAME ");"
>  .PP
> -.BI "CIRCLEQ_ENTRY *CIRCLEQ_LAST(CIRCLEQ_HEAD *" head ");"
> +.BI "TYPE *CIRCLEQ_LAST(CIRCLEQ_HEAD *" head ");"
>  .PP
>  .BI "void CIRCLEQ_LOOP_NEXT(CIRCLEQ_HEAD *" head ", TYPE *" elm ","
>  .BI "                CIRCLEQ_ENTRY " NAME ");"
> @@ -91,9 +91,9 @@ CIRCLEQ_REMOVE
>  .BI "void CIRCLEQ_LOOP_PREV(CIRCLEQ_HEAD *" head ", TYPE *" elm ","
>  .BI "                CIRCLEQ_ENTRY " NAME ");"
>  .PP
> -.BI "CIRCLEQ_ENTRY *CIRCLEQ_NEXT(TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
> +.BI "TYPE *CIRCLEQ_NEXT(TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
>  .PP
> -.BI "CIRCLEQ_ENTRY *CIRCLEQ_PREV(TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
> +.BI "TYPE *CIRCLEQ_PREV(TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
>  .PP
>  .BI "void CIRCLEQ_REMOVE(CIRCLEQ_HEAD *" head ", TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
>  .fi
> @@ -266,7 +266,7 @@ and zero if the queue contains at least one entry.
>  and
>  .BR CIRCLEQ_PREV ()
>  return a pointer to the first, last, next or previous
> -.I CIRCLEQ_ENTRY
> +.I TYPE
>  structure, respectively.
>  .PP
>  .BR CIRCLEQ_HEAD_INITIALIZER ()
> diff --git a/man3/list.3 b/man3/list.3
> index 4c07a1fab..cbe8b8d1c 100644
> --- a/man3/list.3
> +++ b/man3/list.3
> @@ -57,7 +57,7 @@ LIST_REMOVE
>  .PP
>  .B LIST_ENTRY(TYPE);
>  .PP
> -.BI "LIST_ENTRY *LIST_FIRST(LIST_HEAD *" head ");"
> +.BI "TYPE *LIST_FIRST(LIST_HEAD *" head ");"
>  .PP
>  .BI "LIST_FOREACH(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ");"
>  .\".PP
> @@ -79,9 +79,9 @@ LIST_REMOVE
>  .PP
>  .BI "void LIST_INSERT_HEAD(LIST_HEAD *" head ", TYPE *" elm ", LIST_ENTRY " NAME ");"
>  .PP
> -.BI "LIST_ENTRY *LIST_NEXT(TYPE *" elm ", LIST_ENTRY " NAME ");"
> +.BI "TYPE *LIST_NEXT(TYPE *" elm ", LIST_ENTRY " NAME ");"
>  .\".PP
> -.\".BI "LIST_ENTRY LIST_PREV(TYPE *" elm ", LIST_HEAD *" head ", TYPE, LIST_ENTRY " NAME ");"
> +.\".BI "TYPE *LIST_PREV(TYPE *" elm ", LIST_HEAD *" head ", TYPE, LIST_ENTRY " NAME ");"
>  .PP
>  .BI "void LIST_REMOVE(TYPE *" elm ", LIST_ENTRY " NAME ");"
>  .\".PP
> @@ -264,7 +264,7 @@ and zero if the list contains at least one entry.
>  and
>  .BR LIST_NEXT ()
>  return a pointer to the first or next
> -.I LIST_ENTRY
> +.I TYPE
>  structure, respectively.
>  .PP
>  .BR LIST_HEAD_INITIALIZER ()
> diff --git a/man3/slist.3 b/man3/slist.3
> index c0182f804..b514f3576 100644
> --- a/man3/slist.3
> +++ b/man3/slist.3
> @@ -57,7 +57,7 @@ SLIST_REMOVE_HEAD
>  .PP
>  .B SLIST_ENTRY(TYPE);
>  .PP
> -.BI "SLIST_ENTRY *SLIST_FIRST(SLIST_HEAD *" head ");"
> +.BI "TYPE *SLIST_FIRST(SLIST_HEAD *" head ");"
>  .PP
>  .BI "SLIST_FOREACH(TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ");"
>  .\".PP
> @@ -77,7 +77,7 @@ SLIST_REMOVE_HEAD
>  .PP
>  .BI "void SLIST_INSERT_HEAD(SLIST_HEAD *" head ", TYPE *" elm ", SLIST_ENTRY " NAME ");"
>  .PP
> -.BI "SLIST_ENTRY *SLIST_NEXT(TYPE *" elm ", SLIST_ENTRY " NAME ");"
> +.BI "TYPE *SLIST_NEXT(TYPE *" elm ", SLIST_ENTRY " NAME ");"
>  .PP
>  .BI "void SLIST_REMOVE(SLIST_HEAD *" head ", TYPE *" elm ", SLIST_ENTRY " NAME ");"
>  .\".PP
> @@ -270,7 +270,7 @@ and zero if the list contains at least one entry.
>  and
>  .BR SLIST_NEXT ()
>  return a pointer to the first or next
> -.I SLIST_ENTRY
> +.I TYPE
>  structure, respectively.
>  .PP
>  .BR SLIST_HEAD_INITIALIZER ()
> diff --git a/man3/stailq.3 b/man3/stailq.3
> index 2896d27c9..01b6107b5 100644
> --- a/man3/stailq.3
> +++ b/man3/stailq.3
> @@ -62,7 +62,7 @@ STAILQ_REMOVE_HEAD,
>  .PP
>  .B STAILQ_ENTRY(TYPE);
>  .PP
> -.BI "STAILQ_ENTRY *STAILQ_FIRST(STAILQ_HEAD *" head ");"
> +.BI "TYPE *STAILQ_FIRST(STAILQ_HEAD *" head ");"
>  .PP
>  .BI "STAILQ_FOREACH(TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
>  .\" .PP
> @@ -85,9 +85,9 @@ STAILQ_REMOVE_HEAD,
>  .PP
>  .BI "void STAILQ_INSERT_TAIL(STAILQ_HEAD *" head ", TYPE *" elm ", STAILQ_ENTRY " NAME ");"
>  .\" .PP
> -.\" .BI "STAILQ_ENTRY *STAILQ_LAST(STAILQ_HEAD *" head ", TYPE *" elm ", STAILQ_ENTRY " NAME ");"
> +.\" .BI "TYPE *STAILQ_LAST(STAILQ_HEAD *" head ", TYPE *" elm ", STAILQ_ENTRY " NAME ");"
>  .PP
> -.BI "STAILQ_ENTRY *STAILQ_NEXT(TYPE *" elm ", STAILQ_ENTRY " NAME ");"
> +.BI "TYPE *STAILQ_NEXT(TYPE *" elm ", STAILQ_ENTRY " NAME ");"
>  .PP
>  .BI "void STAILQ_REMOVE(STAILQ_HEAD *" head ", TYPE *" elm ", TYPE,"
>  .BI "                STAILQ_ENTRY " NAME ");"
> @@ -303,7 +303,7 @@ and zero if the queue contains at least one entry.
>  and
>  .BR STAILQ_NEXT ()
>  return a pointer to the first or next
> -.I STAILQ_ENTRY
> +.I TYPE
>  structure, respectively.
>  .PP
>  .BR STAILQ_HEAD_INITIALIZER ()
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
