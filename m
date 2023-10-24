Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A9EE7D56EC
	for <lists+linux-man@lfdr.de>; Tue, 24 Oct 2023 17:51:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230316AbjJXPv0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 11:51:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233628AbjJXPvZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 11:51:25 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED92C83
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 08:51:22 -0700 (PDT)
Received: from [192.168.194.158] (unknown [116.71.169.209])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: usama.anjum)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 9EAEA6605769;
        Tue, 24 Oct 2023 16:51:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1698162681;
        bh=+g0TJMPCuo+XDSR2rxoFW0Wi1dmgZG2c6CnAhLAH6FY=;
        h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
        b=IFoC8Feqnc5EfoI4HcE6mw5PUoPB3lZ2OsCx8ueEm5g2cmxJMhYkqaL3iOmpGw6FJ
         Lalnm8DQXXQTG0voUoZW5HtTAuk0IYN3Dz7Ih4RjKTcmh25qgjQcys1ObRh9maUaG6
         ax5C+HKg9PL0KAO5X/iuZQFO0yHMDY0rFcYyF0A20+hG1WX+JkjDvU2kxZLcCj+jd9
         WCjeUEo0MKw+w620ZQZhoB4aKvIIh6SGXaSBpkLnxZtbB9TOmI4I4f7BDyKNC2DjQn
         SEitE7gkoHIJIJisVM52kuYiii/Sg1wHcudzcLuOGsc+WJdlddlnxSn/fE+IRG4t7d
         neG3hvFoY320w==
Message-ID: <3c31e823-5cab-4bf5-a361-17511f3a5e8c@collabora.com>
Date:   Tue, 24 Oct 2023 20:51:17 +0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From:   Muhammad Usama Anjum <usama.anjum@collabora.com>
Subject: Re: [PATCH 2/2] ioctl_pagemap_scan: add page for pagemap_scan IOCTL
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Muhammad Usama Anjum <usama.anjum@collabora.com>,
        kernel@collabora.com, linux-man@vger.kernel.org,
        "G. Branden Robinson" <branden@debian.org>
References: <20231019131252.2368728-1-usama.anjum@collabora.com>
 <20231019131252.2368728-2-usama.anjum@collabora.com>
 <ZTbrIskF1mt0zTM_@debian>
Content-Language: en-US
In-Reply-To: <ZTbrIskF1mt0zTM_@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/24/23 2:52 AM, Alejandro Colomar wrote:
> Hi Muhammad,
> 
> [CC += Branden]
> 
> On Thu, Oct 19, 2023 at 06:12:45PM +0500, Muhammad Usama Anjum wrote:
>> Signed-off-by: Muhammad Usama Anjum <usama.anjum@collabora.com>
>> ---
>> The feature has been added to mm-stable:
>> https://lore.kernel.org/all/20231018213453.BF1ACC43395@smtp.kernel.org
>>
>> Changes since v1:
>> - Several formatting updates
>> - Added some additional sentences
> 
> Wow, the formatting is very well done.  Great job!  Patch applied.
Alex, thank you so much for explaining stuff in previous revision and in
this patch. I didn't know that comma before and and or is called Oxford comma.

> See a few small comments below.
> 
>> ---
>>  man2/ioctl_pagemap_scan.2 | 203 ++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 203 insertions(+)
>>  create mode 100644 man2/ioctl_pagemap_scan.2
>>
>> diff --git a/man2/ioctl_pagemap_scan.2 b/man2/ioctl_pagemap_scan.2
>> new file mode 100644
>> index 000000000..c257072d7
>> --- /dev/null
>> +++ b/man2/ioctl_pagemap_scan.2
>> @@ -0,0 +1,203 @@
>> +.\" This manpage is Copyright (C) 2023 Collabora;
>> +.\" Written by Muhammad Usama Anjum <usama.anjum@collabora.com>
>> +.\"
>> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
>> +.\"
>> +.TH ioctl_pagemap_scan 2 2023-10-17 "Linux man-pages (unreleased)"
>> +.SH NAME
>> +ioctl_pagemap_scan \- get and/or clear page flags
>> +.SH LIBRARY
>> +Standard C library
>> +.RI ( libc ", " \-lc )
>> +.SH SYNOPSIS
>> +.nf
>> +.BR "#include <linux/fs.h>" "  /* Definition of " struct " " pm_scan_arg ", "
>> +.BR "                          struct page_region "and " PAGE_IS_* "constants " */"
> 
> That space is not necessary after a closing '"' is something I don't
> know why exists.  I changed that slightly.
> 
> Also, we use the Oxford comma (a comma right before 'and' and 'or'.
> 
> -.BR "#include <linux/fs.h>" "  /* Definition of " struct " " pm_scan_arg ", "
> -.BR "                          struct page_region "and " PAGE_IS_* "constants " */"
> +.BR "#include <linux/fs.h>" "  /* Definition of " "struct pm_scan_arg" ,
> +.BR "                          struct page_region" ", and " PAGE_IS_* " constants */"
> 
>> +.B #include <sys/ioctl.h>
>> +.PP
>> +.BI "int ioctl(int " pagemap_fd ", PAGEMAP_SCAN, struct pm_scan_arg *" arg );
>> +.fi
>> +.SH DESCRIPTION
>> +This
>> +.BR ioctl (2)
>> +is used to get and optionally clear some specific flags from page table entries.
>> +The information is returned with
>> +.B PAGE_SIZE
>> +granularity.
>> +.PP
>> +To start tracking the written state (flag) of a page or range of memory,
>> +the
>> +.B UFFD_FEATURE_WP_ASYNC
>> +must be enabled by
>> +.B UFFDIO_API
>> +.BR ioctl (2)
>> +on
>> +.B userfaultfd
>> +and memory range must be registered with
>> +.B UFFDIO_REGISTER
>> +.BR ioctl (2)
>> +in
>> +.B UFFDIO_REGISTER_MODE_WP
>> +mode.
>> +.SS Supported page flags
>> +The following page table entry flags are supported:
>> +.TP
>> +.B PAGE_IS_WPALLOWED
>> +The page has asynchronous write-protection enabled.
>> +.TP
>> +.B PAGE_IS_WRITTEN
>> +The page has been written to from the time it was write protected.
>> +.TP
>> +.B PAGE_IS_FILE
>> +The page is file backed.
>> +.TP
>> +.B PAGE_IS_PRESENT
>> +The page is present in the memory.
>> +.TP
>> +.B PAGE_IS_SWAPPED
>> +The page is swapped.
>> +.TP
>> +.B PAGE_IS_PFNZERO
>> +The page has zero PFN.
>> +.TP
>> +.B PAGE_IS_HUGE
>> +The page is THP or Hugetlb backed.
>> +.SS Supported operations
>> +The get operation is always performed
>> +if the output buffer is specified.
>> +The other operations are as following:
>> +.TP
>> +.B PM_SCAN_WP_MATCHING
>> +Write protect the matched pages.
>> +.TP
>> +.B PM_SCAN_CHECK_WPASYNC
>> +Abort the scan
>> +when a page is found
>> +which doesn't have the Userfaultfd Asynchronous Write protection enabled.
>> +.SS The \f[I]struct pm_scan_arg\f[] argument
>> +.EX
>> +struct pm_scan_arg {
>> +    __u64 size;
>> +    __u64 flags;
>> +    __u64 start;
>> +    __u64 end;
>> +    __u64 walk_end;
>> +    __u64 vec;
>> +    __u64 vec_len;
>> +    __u64 max_pages
>> +    __u64 category_inverted;
>> +    __u64 category_mask;
>> +    __u64 category_anyof_mask
>> +    __u64 return_mask;
> 
> I prefer two spaces between the type and the name.  I got that habit
> from nginx.
> <https://nginx.org/en/docs/dev/development_guide.html#code_style>
> 
>  struct pm_scan_arg {
> -    __u64 size;
> -    __u64 flags;
> -    __u64 start;
> -    __u64 end;
> -    __u64 walk_end;
> -    __u64 vec;
> -    __u64 vec_len;
> -    __u64 max_pages
> -    __u64 category_inverted;
> -    __u64 category_mask;
> -    __u64 category_anyof_mask
> -    __u64 return_mask;
> +    __u64  size;
> +    __u64  flags;
> +    __u64  start;
> +    __u64  end;
> +    __u64  walk_end;
> +    __u64  vec;
> +    __u64  vec_len;
> +    __u64  max_pages
> +    __u64  category_inverted;
> +    __u64  category_mask;
> +    __u64  category_anyof_mask
> +    __u64  return_mask;
>  };
> 
> 
>> +};
>> +.EE
>> +.TP
>> +.B size
>> +This field should be set to the size of the structure in bytes,
>> +as in
>> +.IR "sizeof(struct pm_scan_arg)" .
> 
> We try to use \~ for a fillable space; it has the nice effect of
> removing the quotes.
> 
> -.IR "sizeof(struct pm_scan_arg)" .
> +.IR sizeof(struct\~pm_scan_arg) .
> 
>> +.TP
>> +.B flags
>> +The operations to be performed are specified in it.
>> +.TP
>> +.B start
>> +The starting address of the scan is specified in it.
>> +.TP
>> +.B end
>> +The ending address of the scan is specified in it.
>> +.TP
>> +.B walk_end
>> +The kernel returns the scan's ending address in it.
>> +The
>> +.I walk_end
>> +equal to
>> +.I end
>> +means that scan has completed on the entire range.
>> +.TP
>> +.B vec
>> +The address of
>> +.I page_region
>> +array for output.
>> +.PP
>> +.in +8n
> 
> Ahh, this is great, because I needed to explain to groff(1) maintainers
> what is the problem with TP that I was complaining about in another
> thread.
> 
> Branden, here's what I mean.  If you're new to man(7), it is rather
> unintuitive what to do here.
> 
> Muhammad, in this project, we usually use IP to continuate a TP.  PP
> would break the indentation back to before the TP, which is why you
> needed so much in 'in'.
> 
> Another solution, which we're discussing is wrapping everything is RS/RE.
> 
> I applied this:
> 
> -.PP
> -.in +8n
> +.IP
> +.in +4n
> 
> 
>> +.EX
>> +struct page_region {
>> +    __u64 start;
>> +    __u64 end;
>> +    __u64 categories;
>> +};
>> +.EE
>> +.in
>> +.TP
>> +.B vec_len
>> +The length of the
>> +.I page_region
>> +struct array.
>> +.TP
>> +.B max_pages
>> +It is the optional limit for the number of output pages required.
>> +.TP
>> +.B category_inverted
>> +.BI PAGE_IS_ *
>> +categories which values match if 0 instead of 1.
>> +.TP
>> +.B category_mask
>> +Skip pages for which any
>> +.BI PAGE_IS_ *
>> +category doesn't match.
>> +.TP
>> +.B category_anyof_mask
>> +Skip pages for which no
>> +.BI PAGE_IS_ *
>> +category matches.
>> +.TP
>> +.B return_mask
>> +.BI PAGE_IS_ *
>> +categories that are to be reported in
>> +.IR page_region .
>> +.SH RETURN VALUE
>> +On error, \-1 is returned, and
>> +.I errno
>> +is set to indicate the error.
>> +.SH ERRORS
>> +Error codes can be one of, but are not limited to, the following:
>> +.TP
>> +.B EINVAL
>> +Invalid arguments i.e., invalid
>> +.I size
>> +of the argument, invalid
>> +.IR flags ,
>> +invalid
>> +.IR categories ,
>> +the
>> +.I start
>> +address isn't aligned with
>> +.B PAGE_SIZE
>> +or
>> +.I vec_len
>> +is specified when
>> +.I vec
>> +is
>> +.BR NULL .
>> +.TP
>> +.B EFAULT
>> +Invalid
>> +.I arg
>> +pointer, invalid
>> +.I vec
>> +pointer or invalid address range specified by
>> +.I start
>> +and
>> +.IR end .
>> +.TP
>> +.B ENOMEM
>> +No memory is available.
>> +.TP
>> +.B EINTR
>> +Fetal signal is pending.
> 
> And a bit more of semantic newlines:
> 
> @@ -163,29 +163,32 @@ .SH ERRORS
>  Error codes can be one of, but are not limited to, the following:
>  .TP
>  .B EINVAL
> -Invalid arguments i.e., invalid
> +Invalid arguments i.e.,
> +invalid
>  .I size
> -of the argument, invalid
> +of the argument,
> +invalid
>  .IR flags ,
>  invalid
>  .IR categories ,
>  the
>  .I start
>  address isn't aligned with
> -.B PAGE_SIZE
> +.BR PAGE_SIZE ,
>  or
>  .I vec_len
>  is specified when
>  .I vec
> -is
> -.BR NULL .
> +is NULL.
>  .TP
>  .B EFAULT
>  Invalid
>  .I arg
> -pointer, invalid
> +pointer,
> +invalid
>  .I vec
> -pointer or invalid address range specified by
> +pointer,
> +or invalid address range specified by
>  .I start
>  and
>  .IR end .
> 
> 
> Cheers,
> Alex
> 
>> +.SH STANDARDS
>> +Linux.
>> +.SH HISTORY
>> +Linux 6.7.
>> +.SH SEE ALSO
>> +.BR ioctl (2)
>> -- 
>> 2.42.0
>>
> 

-- 
BR,
Muhammad Usama Anjum
