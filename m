Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0525311F035
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2019 05:54:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726671AbfLNEym (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Dec 2019 23:54:42 -0500
Received: from mail-ot1-f48.google.com ([209.85.210.48]:35794 "EHLO
        mail-ot1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726638AbfLNEym (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Dec 2019 23:54:42 -0500
Received: by mail-ot1-f48.google.com with SMTP id o9so1761661ote.2
        for <linux-man@vger.kernel.org>; Fri, 13 Dec 2019 20:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YS5FEh+LuFoA5si/Ppg8lsPaS1nYb2T4W51TCMLMXMg=;
        b=VFqi+u7PVBqPgFwTSFeMgAstzCUzO4rJF1ADNq07Xt5fOyLCUmqNZauxotN1pUy0CI
         +7ykMtLCNAkAEnJkw1EWPKXuoma4HuA6QJwmkcSNFcuX2ZaGsGzeAbJdmI7vL3bjgGzC
         /KbR1wNlw+E2xhjguXAtSPa4/bIOgUHy7S13AXbrMVdlMWUc9JffDouqYfDigQkcmrhm
         p8riELrLtWuXojL0RFi+W5a9LonxDa2pzNbbCzMoBN1fzx4RmzgJOq5geE85+5pUYIsK
         6KqrbMLU6JBN/e8z1v+nJdwoGpzbUrObaVJbZDB7m9/wP8CYdWfoX7/Zw6dSxf1ngmKi
         5eIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YS5FEh+LuFoA5si/Ppg8lsPaS1nYb2T4W51TCMLMXMg=;
        b=OWWFjwnq7M5/LfxBshzI8vqtpy+8ZsGzqKr4FyQtYray9TiPVZ19MIT/Y6/a6+3tww
         A6gGB7wtImkueKXMw1gdnuOBDwNsDOCsiWQkugD2K4bzZsXBH8aiWx+PcAr/6BwiyhfD
         zIKbtGXsUHBq31VZTzVEbdYMnUCdyr3kJ/6TI4ldADwQfjXOm0xL7EZ79Mktw1sHPMUv
         mioPAm8BhJ4r3QdYrC553gD7SlPQakCBQRqWfsLL7OWTpIBWKxfi7LyINg76+wHjaw5n
         VJjJOKvvzd5UxgxmrQCLsof4mOIvKDLBbpOy/bIz9DWXSpWRXlQS28UwBm/8xlOxNSbS
         hFpQ==
X-Gm-Message-State: APjAAAXhvBoX70EGWzILjOlTW4Ak8AFgn+08eIEFwo9PnupMFoPscE+q
        IG/keWTqfM9I/Ia9YylLoCY=
X-Google-Smtp-Source: APXvYqxtTtC4sNkIlLr5jWvfS1/Wl2AFKl9S79slDobX38n2BZQ5NKogUBIeQidb4x6UHWOGbgf41Q==
X-Received: by 2002:a05:6830:1e2d:: with SMTP id t13mr19176141otr.128.1576299281034;
        Fri, 13 Dec 2019 20:54:41 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:dac0:2450::34])
        by smtp.gmail.com with ESMTPSA id h1sm4130187otm.34.2019.12.13.20.54.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2019 20:54:40 -0800 (PST)
Subject: Re: [patch] ldconfig.8: Document file filter and symlink pattern
 expectations
To:     DJ Delorie <dj@redhat.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <xna78awjsl.fsf@greed.delorie.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2ea54ee1-430e-8997-1afc-f8b6dc3795f6@gmail.com>
Date:   Sat, 14 Dec 2019 05:54:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <xna78awjsl.fsf@greed.delorie.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/2/19 9:32 PM, DJ Delorie wrote:
> 
> Information gleaned from comments in glibc's elf/ldconfig.c

Thanks, DJ. Patch applied.

Cheers,

Michael

> diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
> index 4f799962c..15585243c 100644
> --- a/man8/ldconfig.8
> +++ b/man8/ldconfig.8
> @@ -93,6 +93,28 @@ option.
>   .B ldconfig
>   should normally be run by the superuser as it may require write
>   permission on some root owned directories and files.
> +.PP
> +Note that
> +.B ldconfig
> +will only look at files that are named
> +.I lib*.so*
> +(for regular shared objects) or
> +.I ld-*.so*
> +(for the dynamic loader itsef).  Other files will be ignored.  Also,
> +.B ldconfig
> +expects a certain pattern to how the symlinks are set up, like this
> +example, where the middle file
> +.RB ( libfoo.so.1
> +here) is the SONAME for the library:
> +.PP
> +.in +4n
> +.EX
> +libfoo.so -> libfoo.so.1 -> libfoo.so.1.12
> +.EE
> +.in
> +.PP
> +Failure to follow this pattern may result in compatibility issues
> +after an upgrade.
>   .SH OPTIONS
>   .TP
>   .BR \-c " \fIfmt\fP, " \-\-format=\fIfmt\fP
> 
