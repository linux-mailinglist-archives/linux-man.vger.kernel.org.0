Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 249E7AA4F5
	for <lists+linux-man@lfdr.de>; Thu,  5 Sep 2019 15:48:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731161AbfIENsG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Sep 2019 09:48:06 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:41154 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731008AbfIENsG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Sep 2019 09:48:06 -0400
Received: by mail-lj1-f194.google.com with SMTP id a4so2553696ljk.8
        for <linux-man@vger.kernel.org>; Thu, 05 Sep 2019 06:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UsFa0X2+O4S7vU5Vhw3QmXfggM8ezlKMzOsEh+SGkWQ=;
        b=XKk2brhpzrxNVShOilQMlincfEksFxqF26DFzjqCznTrL7KoCxebx2SIIrw6AeTRE7
         /+nXWmvpi3x+sTO3x1j7Q/ZOYC7x685OJEYQDfoX6UrHuPFwgY6GCTqpIdlSPG/EAteT
         ws0Tpgz1XERpJFhQADu+PnO3YrNfkp7TM5k5pIXmqLnvaC0wEnh0xamIfH2PJklIScdN
         ntFLK9cvsnWqAlX9TXcz40kvHb/OHChmPmTSoP3Kl2QhJLc0jh/r11K1o9/A3R4q8gx2
         2s5E1svjsUl/uWXMrV0bJOY3VEDf1/13bK+BWZORu2z/RS0yjhWriWQf+iTBfl9ZMRGU
         Q3xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UsFa0X2+O4S7vU5Vhw3QmXfggM8ezlKMzOsEh+SGkWQ=;
        b=pLm7ZqApFjAbZ28lctjx1guFepPoqSzWFY5A8PDXT736xfkPJVrBfdENWKgvPTc7rP
         lIxy5orpnAmvUoa9HHcC9c8ayFLtD7cCXo5K41BhsdcVfKGTphdozQo3mh1Xg2Nn2CFM
         DvDFxe0/Wlx+E6I+xWokUriuWkJ6oSCBSpsxRR/al6hPyqHl/sDs1siSKM4r8uMVncho
         qNOu9YSeAnkaB0hZWqxMWExO2T9bIcuwmL3w99WgPdoIebcqbyI+nR7K2GBYO3mdWo1X
         vQwEE2rQTeRvBmPaKt0FdC5hNuzh6QuhpMLcjfY78ODZg1V4RzQEXxJ4e8BHJOhx/ios
         y5sw==
X-Gm-Message-State: APjAAAVhWLR3G4lw7PYk8Kh2Qvi6RK7SMpb8w+zxmEdp+NfYgLOnrMBI
        nb90SaAqoWplgqEdtrB8BOm7nAogMFQ=
X-Google-Smtp-Source: APXvYqwi1WBzB8f+7AmCMqzEZHNapjko9r1urJe02/YZ8NievxXbM2r8pO8+LQDDCPWDeXxcDPHkug==
X-Received: by 2002:a2e:9218:: with SMTP id k24mr1813810ljg.35.1567691284607;
        Thu, 05 Sep 2019 06:48:04 -0700 (PDT)
Received: from [192.168.101.104] ([138.62.237.153])
        by smtp.gmail.com with ESMTPSA id z21sm385235ljn.100.2019.09.05.06.48.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2019 06:48:04 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] fanotify_mark.2: Add kernel version numbers for some
 FAN_* constants
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20190902065536.4878-1-jwilk@jwilk.net>
 <20190902065536.4878-3-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <50d925fd-8bb8-1129-9638-29ee0c5a3f27@gmail.com>
Date:   Thu, 5 Sep 2019 15:47:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190902065536.4878-3-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hell Jakub,

On 9/2/19 8:55 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks for the updates, including also the comments with kernel
commits where they were missing. Patch applied.

Cheers,

Michael
 
> ---
>  man2/fanotify_mark.2 | 20 ++++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)
> 
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 7a497f29c..e62b6d2c2 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -177,28 +177,35 @@ Create an event when a read-only file or directory is closed.
>  Create an event when a file or directory is opened.
>  .TP
>  .BR FAN_OPEN_EXEC " (since Linux 5.0)"
> +.\" commit 9b076f1c0f4869b838a1b7aa0edb5664d47ec8aa
>  Create an event when a file is opened with the intent to be executed.
>  See NOTES for additional details.
>  .TP
> -.B FAN_ATTRIB
> +.BR FAN_ATTRIB " (since Linux 5.1)"
> +.\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when the metadata for a file or directory has changed.
>  .TP
> -.B FAN_CREATE
> +.BR FAN_CREATE " (since Linux 5.1)"
> +.\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a file or directory has been created in a marked
>  parent directory.
>  .TP
> -.B FAN_DELETE
> +.BR FAN_DELETE " (since Linux 5.1)"
> +.\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a file or directory has been deleted in a marked
>  parent directory.
>  .TP
> -.B FAN_DELETE_SELF
> +.BR FAN_DELETE_SELF " (since Linux 5.1)"
> +.\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a marked file or directory itself is deleted.
>  .TP
> -.B FAN_MOVED_FROM
> +.BR FAN_MOVED_FROM " (since Linux 5.1)"
> +.\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a file or directory has been moved from a marked
>  parent directory.
>  .TP
> -.B FAN_MOVED_TO
> +.BR FAN_MOVED_TO " (since Linux 5.1)"
> +.\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a file or directory has been moved to a marked parent
>  directory.
>  .TP
> @@ -218,6 +225,7 @@ or
>  is required.
>  .TP
>  .BR FAN_OPEN_EXEC_PERM " (since Linux 5.0)"
> +.\" commit 66917a3130f218dcef9eeab4fd11a71cd00cd7c9
>  Create an event when a permission to open a file for execution is
>  requested.
>  An fanotify file descriptor created with
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
