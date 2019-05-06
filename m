Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B53C8154C9
	for <lists+linux-man@lfdr.de>; Mon,  6 May 2019 22:05:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726124AbfEFUFd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 May 2019 16:05:33 -0400
Received: from mail-vs1-f66.google.com ([209.85.217.66]:42506 "EHLO
        mail-vs1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726268AbfEFUFd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 May 2019 16:05:33 -0400
Received: by mail-vs1-f66.google.com with SMTP id r62so2136765vsc.9
        for <linux-man@vger.kernel.org>; Mon, 06 May 2019 13:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GU1TyF9dwtkAX1w7HYBABT9SLJ9LNQ7mS+pykpuVx38=;
        b=NoSjf6WayaQZELhfPv7oeQcGKGbum364nlNNAWF3NWXes7AIcJDweoICaDuQxc3Fco
         +xKrmYvL427w8o5boof6rKe/BOuf5cHOLuQXhXCGphezpGqVmWB7vZ0/LsiypJ6qiouL
         v6atxGQ8GDp3LA2DFXNaPSvOZCgYGgac+QscSeZ5gFzRg7xHX3+IVMk2RED9Y2Tbdple
         gijuFapkzjlHiZ0MkBbPMk82+8WJnedh7c9C0KvQt4pi1sf3BRjRQZISGMFfakf9oWzM
         Q1A2b6lYt5J/cyRsHlQhScQtuG2zUfVEMtHNQayfVeyVBT0BEpZ4QqXcT78BHTQUVQnt
         ZvaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GU1TyF9dwtkAX1w7HYBABT9SLJ9LNQ7mS+pykpuVx38=;
        b=TTG7e8UpaJMtNdPI7xVkVeP3zf0OCR2o6S9l35OIwwN9LZ0z3vgJVDqPmhiQ4UexYo
         fl7xYi3i7sl/r9+LNICULDF7s9qBo1i0iSeGyxIwfUTfTdKJNPVOdwsQ1GYuDhtJHWRs
         gY854PL9EcoNud2QpV/h/QclA9EmT002yda/TN0vJPNXE8yjiOm8RGxmDpX8bxW8QYdM
         sTy6NZnhHWvca+sny7u/Aj/d4be+xVOetvXH1+bqEyQjeW8b8mqMyVwb30hAM1rySUKM
         PPt2JGSZ78wX/L05/OOpu+beqfvz+xFSjlDB3/7gzr/VzPfAVx1InkGv7KhV6FOhqIOC
         GZpQ==
X-Gm-Message-State: APjAAAW8VkEiYXvH6/MpyA157bZ5NzCFisiWXTM80I2AWIN6FB2GtzQM
        dvTa4ye9w+CYUWJV+2Wa2Gmeae1T
X-Google-Smtp-Source: APXvYqyTWFWxIJyqfNIgUX1LhptMCIzl2pxOgFJHdMKUwThLQedSR1rUpGOmB3evtlqqJApsfh45zg==
X-Received: by 2002:a67:6945:: with SMTP id e66mr14893361vsc.44.1557173131713;
        Mon, 06 May 2019 13:05:31 -0700 (PDT)
Received: from [192.168.0.8] (dynamic-190-25-35-141.dynamic.etb.net.co. [190.25.35.141])
        by smtp.gmail.com with ESMTPSA id r3sm7140674vkr.18.2019.05.06.13.05.30
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 May 2019 13:05:31 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] console_codes.4: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20190309145503.4193-1-jwilk@jwilk.net>
 <20190309145503.4193-2-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fb47d9e8-6edd-0bfe-6aa3-9a15dff622ab@gmail.com>
Date:   Mon, 6 May 2019 15:05:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190309145503.4193-2-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 3/9/19 9:55 AM, Jakub Wilk wrote:
> Add missing periods.

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>   man4/console_codes.4 | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man4/console_codes.4 b/man4/console_codes.4
> index 99895952b..ddafb5d2d 100644
> --- a/man4/console_codes.4
> +++ b/man4/console_codes.4
> @@ -364,8 +364,8 @@ Colors are in SGR parameters:
>   cyan, 7 = white; 8\(en15 = bright versions of 0\(en7.
>   .TS
>   l l.
> -ESC [ 1 ; \fIn\fP ]	Set color \fIn\fP as the underline color
> -ESC [ 2 ; \fIn\fP ]	Set color \fIn\fP as the dim color
> +ESC [ 1 ; \fIn\fP ]	Set color \fIn\fP as the underline color.
> +ESC [ 2 ; \fIn\fP ]	Set color \fIn\fP as the dim color.
>   ESC [ 8 ]       	Make the current color pair the default attributes.
>   ESC [ 9 ; \fIn\fP ]	Set screen blank timeout to \fIn\fP minutes.
>   ESC [ 10 ; \fIn\fP ]	Set bell frequency in Hz.
> @@ -379,7 +379,7 @@ Bring the previous console to the front
>   T}
>   ESC [ 16 ; \fIn\fP ]   	T{
>   Set the cursor blink interval in milliseconds
> -(since Linux 4.2)
> +(since Linux 4.2).
>   T}
>   .\" commit bd63364caa8df38bad2b25b11b2a1b849475cce5
>   .TE
> 
