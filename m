Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 80CB37936C
	for <lists+linux-man@lfdr.de>; Mon, 29 Jul 2019 20:51:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727858AbfG2Svs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jul 2019 14:51:48 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:34800 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727115AbfG2Svs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jul 2019 14:51:48 -0400
Received: by mail-wm1-f66.google.com with SMTP id w9so43626525wmd.1
        for <linux-man@vger.kernel.org>; Mon, 29 Jul 2019 11:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3zqeHXT0xEaJggeI3v9EBCYr4zTnYpsRs/jrPQecjls=;
        b=AJr35P0otLcBeeZeylqrg5fRKPIt9TQvTwKbugV/+ZdZpwGT00ycwqKrDNqD6XFj3K
         rk5XNSXQ+Daa3sd6XabHZ6yFj7ZOFHIFhv0pjdP1x61BwuNGVF9bHKgoDv4QLqrtlD3t
         ZJ7lci60n78kTIqq/4fgFaQTC5Rmp9omZ/b2Zalg8KllsIj+tZm8ChgQQ7hDEqNrcbaf
         VH7u8EiT4AQt8fTfj3O0yl5+jJT9zOCdBNvP62lBeLBbjS9+oil5OhwWFMzSPh67csCP
         xu4eKIDNC5O18kDJ7naW/i+wYzG/IA66pew/9YeTASEuc7UcRNlGxlqnS0+R/IIni9hH
         5+nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3zqeHXT0xEaJggeI3v9EBCYr4zTnYpsRs/jrPQecjls=;
        b=rad4VYoHCYvQxMpP6jCEinvw0KtM85P1xkH8i+DVgz8ZXkEFSFLd+AKahAu1UFvWNt
         fJQEEakkym3Dvu+NJSdRNrTpDehdbx5ipGtW8ZxSjf7eYG7UIwqjoB9Gpi5zGG/h1r3t
         rJXYWNEHaE428PF38TdptfaJBkezWR5MkDQPnI82yUBnY8YenBQ96LgmOL+82/iS41h2
         Pbj/O2gI+3kDD9mQofTYbmsvMaeKelbVpgdNl5QKOLtCVkVq2N5P9k0ZVRg2ruj1Y6r+
         d0N2zVcu0Pe02jXZj5X0mhpOHiKLVquHKiPUCig1VvJ1MM2eT7C3dKEt1xeO6sm5l094
         bXig==
X-Gm-Message-State: APjAAAWUFbP8b4Ppf/DXBkzawoEa0n3SZiKUVJzJj5hf2d6PkYz73yqm
        +qUbH4KypuH+SkE1AFr4AbaqR4F7
X-Google-Smtp-Source: APXvYqx6q56N94taHqVdHUeJP3+GOYk4njqYmd/SnEyUSu/XbjME0j1HpeaxcIuqXMlmrNR7C+eTPQ==
X-Received: by 2002:a1c:a7c6:: with SMTP id q189mr102203040wme.146.1564426305777;
        Mon, 29 Jul 2019 11:51:45 -0700 (PDT)
Received: from [192.168.178.31] (aftr-62-216-209-22.dynamic.mnet-online.de. [62.216.209.22])
        by smtp.gmail.com with ESMTPSA id o26sm128715106wro.53.2019.07.29.11.51.44
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 11:51:44 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] socket.7: Add description of SO_SELECT_ERR_QUEUE
To:     Ricardo Biehl Pasquali <pasqualirb@gmail.com>, corbet@lwn.net
References: <20190624014047.GA14572@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f053fe2c-20e5-4754-8b13-89cddfbfb52d@gmail.com>
Date:   Mon, 29 Jul 2019 20:51:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190624014047.GA14572@localhost.localdomain>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Ricardo,

On 6/24/19 3:40 AM, Ricardo Biehl Pasquali wrote:
> Signed-off-by: Ricardo Biehl Pasquali <pasqualirb@gmail.com>
> ---
>  man7/socket.7 | 26 ++++++++++++++++++++++----
>  1 file changed, 22 insertions(+), 4 deletions(-)
> 
> Jonathan, can you help to reach Michael or review yourself?
> Sorry for bothering you.
> 
> It's the fourth time I'm sending this.
> First time was on 2019-02-28.

Sorry -- I've not had a lot of cycles to spare for man-pages of late.

> version 2: Rewrite the description for greater clarity.
> 
> diff --git a/man7/socket.7 b/man7/socket.7
> index b8d053dfe..b43075185 100644
> --- a/man7/socket.7
> +++ b/man7/socket.7
> @@ -49,10 +49,6 @@
>  .\"	commit a8fc92778080c845eaadc369a0ecf5699a03bef0
>  .\"	Author: Pavel Emelyanov <xemul@parallels.com>
>  .\"
> -.\" SO_SELECT_ERR_QUEUE (3.10)
> -.\"	commit 7d4c04fc170087119727119074e72445f2bb192b
> -.\"	Author: Keller, Jacob E <jacob.e.keller@intel.com>
> -.\"
>  .\" SO_MAX_PACING_RATE (3.13)
>  .\"	commit 62748f32d501f5d3712a7c372bbb92abc7c62bc7
>  .\"	Author: Eric Dumazet <edumazet@google.com>
> @@ -869,6 +865,28 @@ Indicates that an unsigned 32-bit value ancillary message (cmsg)
>  should be attached to received skbs indicating
>  the number of packets dropped by the socket since its creation.
>  .TP
> +.BR SO_SELECT_ERR_QUEUE " (since Linux 3.10)"
> +.\"	commit 7d4c04fc170087119727119074e72445f2bb192b
> +.\"	Author: Keller, Jacob E <jacob.e.keller@intel.com>
> +Makes poll adding
> +.B POLLPRI
> +when
> +.B POLLERR
> +event is returned. It does not affect wake up.
> +.IP
> +Background: The flag was added when waking up on
> +.B POLLERR
> +required requesting
> +.B POLLIN
> +or
> +.B POLLPRI.
> +After the commit 6e5d58fdc9bedd0255a8 ("skbuff: Fix not
> +waking applications when errors are enqueued"), introduced
> +in Linux 4.16, waking up on
> +.B POLLERR
> +does not require requesting other events. The flag is kept
> +only for backwards compatibility.
> +.TP
>  .B SO_SNDBUF
>  Sets or gets the maximum socket send buffer in bytes.
>  The kernel doubles this value (to allow space for bookkeeping overhead)

Thanks for the patch. But your text doesn't quite capture the idea
in this commit message:

commit 7d4c04fc170087119727119074e72445f2bb192b
Author: Keller, Jacob E <jacob.e.keller@intel.com>
Date:   Thu Mar 28 11:19:25 2013 +0000

What would you think of something like this:
       SO_SELECT_ERR_QUEUE (since Linux 3.10)
              When this option is set on a socket, an error condition  on
              a socket causes notification not only via the exceptfds set
              of select(2).  Similarly, poll(2) also  returns  a  POLLPRI
              whenever an POLLERR event is returned.

              Background:  this  option  was  added  when waking up on an
              error condition occurred occured only via the  readfds  and
              writefds  sets of select(2).  The option was added to allow
              monitoring for error conditions via the exceptfds  argument
              without simultaneously having to receive notifications (via
              readfds) for regular data that can be read from the socket.
              After changes in Linux 4.16, in Linux 4.16, the use of this
              flag to achieve the desired notifications is no longer nec‐
              essary.  This option is nevertheless retained for backwards
              compatibility.

?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
