Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6D2D1AB958
	for <lists+linux-man@lfdr.de>; Thu, 16 Apr 2020 09:07:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438058AbgDPHHO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Apr 2020 03:07:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S2437880AbgDPHHN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Apr 2020 03:07:13 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA56BC061A10
        for <linux-man@vger.kernel.org>; Thu, 16 Apr 2020 00:07:12 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id d27so3563479wra.1
        for <linux-man@vger.kernel.org>; Thu, 16 Apr 2020 00:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rh8xMeEIpyWIiC7aMHBLMtRmurioowqA4YNaApf4PqY=;
        b=GtDSM1CJMu2L4l1jyXtNzr3vpmW+x/EwvXZmxjrtAE72IL+poL0cBFZW4zd2y/Kj33
         WPVlM4nSvJl0qG44u26//VfEI6Pen2pltjFoKA5UKyXSjHl7qKAKdMSqs3rvmZghEn2P
         FF+nvrMx01iOyia6H5Nc1K2UcgrIe9JBIB+ka9u8S9KMzTUqDNtNOochTA8mdCpSMrr1
         BfS5X2c4ed2SJbcMqKfGRZfTeuq3A6N9KXNm9Pfc6iT3UHISWN53W8fxDOX/I7MFSYRU
         bumh7ZjlhzWov3FQm5OzSzI5WmC41IwYjpzkLOYWSzOo0cbDlkrNKrKK4Pp+6UYEZMTC
         jm6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rh8xMeEIpyWIiC7aMHBLMtRmurioowqA4YNaApf4PqY=;
        b=p4jIU9UkrpUAHvcYXk7wnMAhFU+T42xfIdZPGk8X3nFmQ84pkFqef94cwUK/MZ+LTi
         ivdps4tOa0ERB067fgP8HlUaQ6Ofs3xCnNpJuBxErDnkD6bGS1UZsUhO06Bx1J10zOP2
         07IaAanE/rsXL0Hc2vY/HYIZM4KUGG4l1zgP+5OI25x9bRHUFHexTsuUGw05xAkWDr6G
         fcbIGzOYQU1Lbd458p5mASyijaf6QQf4oaQyy6s5CS22ypC3BmNRM4SVaQYc+a4aLhgu
         scJJ2HjFhSKEd+lACUSXqJjo/Hx82rO9AfLco43UY7o4lD9UFmuUPHONWghxUE7s8PWI
         Fbjg==
X-Gm-Message-State: AGi0PuYwdgzuxwrMm6KczedewbOoPb/vPkNzSmWn1KeRkrdugpU0twYv
        2SOCGzfYtfu7ZU7HAH3caJA=
X-Google-Smtp-Source: APiQypIkQkKlB3KKBf/ImZZknDkeKX9rObsHwa3J1aYQiCANTd151H5F4Nu4ZwXU9NT396zMWFC5jA==
X-Received: by 2002:adf:f091:: with SMTP id n17mr18218639wro.200.1587020831358;
        Thu, 16 Apr 2020 00:07:11 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id c18sm25772486wrx.5.2020.04.16.00.07.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 00:07:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Sonny Rao <sonnyrao@google.com>,
        Jesse Barnes <jsbarnes@google.com>,
        Vlastimil Babka <vbabka@suse.cz>,
        Minchan Kim <minchan@kernel.org>,
        "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
        Lokesh Gidra <lokeshgidra@google.com>
Subject: Re: [PATCH v2] mremap.2: Add information for MREMAP_DONTUNMAP.
To:     Brian Geffon <bgeffon@google.com>
References: <20200415164949.44562-1-bgeffon@google.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <092fc948-4adb-cda8-f525-7d16a85674e7@gmail.com>
Date:   Thu, 16 Apr 2020 09:07:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200415164949.44562-1-bgeffon@google.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC expanded to include a few people who tested/acked/reviewed the
original kernel patch.]

Hello Brian,

Thanks for this patch. I've applied it, and done quite a
bit of editing. Could you please take a look at the
version in Git, and let me know if I made any bad changes
to your text.

In addition, I have one or two questions below.

On 4/15/20 6:49 PM, Brian Geffon wrote:
> Signed-off-by: Brian Geffon <bgeffon@google.com>
> ---
>  man2/mremap.2 | 49 +++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 49 insertions(+)
> 
> diff --git a/man2/mremap.2 b/man2/mremap.2
> index d73fb64fa..ff5939ff1 100644
> --- a/man2/mremap.2
> +++ b/man2/mremap.2
> @@ -129,6 +129,22 @@ If
>  is specified, then
>  .B MREMAP_MAYMOVE
>  must also be specified.
> +.TP
> +.BR MREMAP_DONTUNMAP " (since Linux 5.7)"
> +.\" commit e346b3813067d4b17383f975f197a9aa28a3b077
> +This flag which must be used in conjunction with
> +.B MREMAP_MAYMOVE
> +remaps a mapping to a new address and it does not unmap the mapping at
> +.BR old_address .
> +This flag can only be used with private anonymous mappings.
> +Any access to the range specified at
> +.BR old_address
> +after completion will result in an anonymous page fault.
> +The anonymous page fault will be handled by a
> +.BR userfaultfd (2)
> +if the range was previously registered on the mapping specified by
> +.BR old_address .
> +Otherwise, it will be zero filled by the kernel.
>  .PP
>  If the memory segment specified by
>  .I old_address
> @@ -176,6 +192,8 @@ a value other than
>  .B MREMAP_MAYMOVE
>  or
>  .B MREMAP_FIXED
> +or
> +.B MREMAP_DONTUNMAP
>  was specified in
>  .IR flags ;
>  .IP *
> @@ -197,9 +215,22 @@ and
>  .IR old_size ;
>  .IP *
>  .B MREMAP_FIXED
> +or
> +.B MREMAP_DONTUNMAP
>  was specified without also specifying
>  .BR MREMAP_MAYMOVE ;
>  .IP *
> +.B MREMAP_DONTUNMAP
> +was specified with and
> +.BR old_address
> +that was not private anonymous;
> +.IP *
> +.B MREMAP_DONTUNMAP
> +was specified and
> +.BR old_size
> +was not equal to
> +.BR new_size ;
> +.IP *
>  \fIold_size\fP was zero and \fIold_address\fP does not refer to a
>  shareable mapping (but see BUGS);
>  .IP *
> @@ -209,10 +240,20 @@ flag was not specified.
>  .RE
>  .TP
>  .B ENOMEM
> +Not enough memory was available to complete the operation.
> +Possible causes are:
> +.RS
> +.IP * 3
>  The memory area cannot be expanded at the current virtual address, and the
>  .B MREMAP_MAYMOVE
>  flag is not set in \fIflags\fP.
>  Or, there is not enough (virtual) memory available.
> +.IP *
> +.B MREMAP_DONTUNMAP
> +was used causing a new mapping to be created that would exceed the
> +(virtual) memory available.
> +Or, it would exceed the maximum number of allowed mappings.
> +.RE
>  .SH CONFORMING TO
>  This call is Linux-specific, and should not be used in programs
>  intended to be portable.
> @@ -238,6 +279,14 @@ call will make a best effort to populate the new area but will not fail
>  with
>  .B ENOMEM
>  if the area cannot be populated.
> +.PP
> +The
> +.BR MREMAP_DONTUNMAP
> +flag may be used to atomically move a mapping while leaving the source
> +mapped.

You write "move", but would it not be more correcrt to say something
like "duplicate"?

> +Possible applications for this behavior might be garbage collection or

Can you elaborate the garbage collection use case a little, please?

> +non-cooperative
> +.BR userfaultfd (2) .

What is noncooperative userfaultfd(2)?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
