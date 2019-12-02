Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1163210F247
	for <lists+linux-man@lfdr.de>; Mon,  2 Dec 2019 22:41:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725825AbfLBVlm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Dec 2019 16:41:42 -0500
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:55800 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725775AbfLBVlm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Dec 2019 16:41:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1575322899;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=UN2SpHZ0MNOcjwCZUyTSH5FmUurvYUBO+J7A6zaaDCU=;
        b=H2InBE9OGBnVdMdME57WCcriP6j30WZUlE+kgMM4svewN6CREd2Fa86wH/JEW+UPbwTIFW
        AQo7qcrVgFraV/X1TuSqwNM1xN4PiIzhlQaRfq1jdd0pJKTN3rfk3rQ3/b5IB9o/rjYlAO
        zuGHffa2XAjCFjxW9trTNt3RxmY/hjE=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-140-aDIONCcjOkiEXmYizJd8TQ-1; Mon, 02 Dec 2019 16:41:38 -0500
Received: by mail-qt1-f198.google.com with SMTP id l4so875657qte.18
        for <linux-man@vger.kernel.org>; Mon, 02 Dec 2019 13:41:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UN2SpHZ0MNOcjwCZUyTSH5FmUurvYUBO+J7A6zaaDCU=;
        b=hfu0krsTxXeEU9JmiLdHI+5opzwCi5GJ/pUCscn3+Hrl+Wkic2qXtLenvlMlFGhkQy
         NBfggjIj2QVMH3xdgLQwBXJDvWgRMVmCle6zwDYf9lq6z4sSyPEoMZVNDrtmSQihzRp5
         N63U0eZVTETbVKP8IwKpmqr90TQhTGdZWedJhKjnUf1rZbEvUDW1bXcHgaY+/WQwahU6
         n/oZdotjBg/Uv6BJWzqYmt+o4rnd1Yo1GU91uFPVwZ9u/tQUOHF6G6Dnpia9rN7K9B9R
         O/7sBYJ8Pk09j58m1cJOjUPe+H5SrdML1XwakWRG8NnVH9FoVn9GqrAVaP6oHUdfgxLr
         LStQ==
X-Gm-Message-State: APjAAAUhXHidITPAV/ol2CoG93n6LWZ5lICvhdeMwbjP/l/bTedkGgny
        OLH0MHmmJNVVtqeMCmVmomxm42tq9BgFHf8ktl8q2dKOzTXwg4815PIAZ4fTFi+81gsD0x7gYoX
        tHXpxyi3hGHrwdeaCEdQ/
X-Received: by 2002:a37:9d0c:: with SMTP id g12mr1280811qke.200.1575322897832;
        Mon, 02 Dec 2019 13:41:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqzwyfx+/6edE6y4pg715k7OBvWWApv7GZGV1cMhkTElmYee1hS18YeFvS4T0n4YCaovyv48tg==
X-Received: by 2002:a37:9d0c:: with SMTP id g12mr1280780qke.200.1575322897557;
        Mon, 02 Dec 2019 13:41:37 -0800 (PST)
Received: from [192.168.1.4] (135-23-175-75.cpe.pppoe.ca. [135.23.175.75])
        by smtp.gmail.com with ESMTPSA id 24sm506901qka.32.2019.12.02.13.41.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2019 13:41:36 -0800 (PST)
Subject: Re: [patch] ldconfig.8: Document file filter and symlink pattern
 expectations
To:     DJ Delorie <dj@redhat.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <xna78awjsl.fsf@greed.delorie.com>
From:   Carlos O'Donell <codonell@redhat.com>
Message-ID: <61151119-f965-3472-0ad5-5b1dd9be26ee@redhat.com>
Date:   Mon, 2 Dec 2019 16:41:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <xna78awjsl.fsf@greed.delorie.com>
Content-Language: en-US
X-MC-Unique: aDIONCcjOkiEXmYizJd8TQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/2/19 3:32 PM, DJ Delorie wrote:
> 
> Information gleaned from comments in glibc's elf/ldconfig.c
> 
> diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
> index 4f799962c..15585243c 100644
> --- a/man8/ldconfig.8
> +++ b/man8/ldconfig.8
> @@ -93,6 +93,28 @@ option.
>  .B ldconfig
>  should normally be run by the superuser as it may require write
>  permission on some root owned directories and files.
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
>  .SH OPTIONS
>  .TP
>  .BR \-c " \fIfmt\fP, " \-\-format=\fIfmt\fP
> 

I wrote the relevant comment in glibc here after a frustrating
night of debugging :-)

elf/ldconfig.c

 884           /* If the path the link points to isn't its soname or it is not
 885              the .so symlink for ld(1), we treat it as a normal file.
 886 
 887              You should always do this:
 888 
 889                 libfoo.so -> SONAME -> Arbitrary package-chosen name.
 890 
 891              e.g. libfoo.so -> libfoo.so.1 -> libfooimp.so.9.99.
 892              Given a SONAME of libfoo.so.1.
 893 
 894              You should *never* do this:
 895 
 896                 libfoo.so -> libfooimp.so.9.99
 897 
 898              If you do, and your SONAME is libfoo.so.1, then libfoo.so
 899              fails to point at the SONAME. In that case ldconfig may consider
 900              libfoo.so as another implementation of SONAME and will create
 901              symlinks against it causing problems when you try to upgrade
 902              or downgrade. The problems will arise because ldconfig will,
 903              depending on directory ordering, creat symlinks against libfoo.so
 904              e.g. libfoo.so.1.2 -> libfoo.so, but when libfoo.so is removed
 905              (typically by the removal of a development pacakge not required
 906              for the runtime) it will break the libfoo.so.1.2 symlink and the
 907              application will fail to start.  */

Should we be more specific about always doing:

	libfoo.so -> SONAME -> Arbitrary package-chosen name.

Users love having examples of how to do it right :-)

-- 
Cheers,
Carlos.

